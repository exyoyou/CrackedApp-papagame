.class public Lcom/byazt/nm/c$c;
.super Lcom/byazt/yl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public da:Lcom/byazt/nc/da;

.field public final synthetic i:Lcom/byazt/nm/c;

.field public sl:Landroid/content/Context;

.field public t:Z

.field public volatile u:Z

.field public x:Lcom/byazt/lsp/c;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/c;Landroid/content/Context;Lcom/byazt/nc/da;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/c$c;->i:Lcom/byazt/nm/c;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/yl/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/byazt/nm/c$c;->u:Z

    .line 8
    .line 9
    new-instance v1, Lcom/byazt/nm/c$c$3;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/byazt/nm/c$c$3;-><init>(Lcom/byazt/nm/c$c;Ljava/util/function/Function;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/byazt/nm/c$c;->x:Lcom/byazt/lsp/c;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/byazt/nm/c$c;->sl:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getComplianceInfo()Lcom/byazt/nc/ve;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/byazt/nc/ve;->getAppName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setAppName(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/byazt/nc/ve;->getDeveloperName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setAuthorName(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/byazt/nc/ve;->getPrivacyUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setPrivacyAgreement(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/byazt/nc/ve;->getAppVersion()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setVersionName(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/byazt/nc/ve;->getPermissionsMap()Ljava/util/Map;

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
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setPermissionsMap(Ljava/util/Map;)V

    .line 76
    .line 77
    .line 78
    const-string v1, "5.4.0.3"

    .line 79
    .line 80
    invoke-static {v1}, Lcom/byazt/xf/tt;->c(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_1

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/byazt/nc/ve;->getFunctionDescUrl()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setFunctionDescUrl(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    const-string v1, "6.8.1.6"

    .line 94
    .line 95
    invoke-static {v1}, Lcom/byazt/xf/tt;->c(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_2

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/byazt/nc/ve;->getRegUrl()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setRegUrl(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {p2}, Lcom/byazt/nc/ve;->getRegNumber()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setRegNumber(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_3
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getTitle()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setTitle(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getDescription()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setAdDescription(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getButtonText()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setActionText(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getIcon()Lcom/byazt/nc/t;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    if-eqz p2, :cond_4

    .line 141
    .line 142
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getIcon()Lcom/byazt/nc/t;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p2}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    :cond_4
    invoke-virtual {p0, v2}, Lcom/byazt/yl/ve;->setIconUrl(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageMode()I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setImageMode(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getInteractionType()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setInteractionType(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getSource()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setSource(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getAppScore()I

    .line 175
    .line 176
    .line 177
    move-result p2

    .line 178
    int-to-double v1, p2

    .line 179
    invoke-virtual {p0, v1, v2}, Lcom/byazt/yl/ve;->setRating(D)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getInteractionType()I

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    const/4 v1, 0x4

    .line 187
    if-ne p2, v1, :cond_5

    .line 188
    .line 189
    const/4 p2, 0x1

    .line 190
    goto :goto_0

    .line 191
    :cond_5
    const/4 p2, 0x0

    .line 192
    :goto_0
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setIsAppDownload(Z)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageMode()I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    const/16 v2, 0x10

    .line 203
    .line 204
    if-eq p2, v2, :cond_8

    .line 205
    .line 206
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageMode()I

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    const/4 v2, 0x3

    .line 211
    if-eq p2, v2, :cond_8

    .line 212
    .line 213
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageMode()I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    const/4 v2, 0x2

    .line 218
    if-eq p2, v2, :cond_8

    .line 219
    .line 220
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageMode()I

    .line 221
    .line 222
    .line 223
    move-result p2

    .line 224
    const/16 v2, 0x83

    .line 225
    .line 226
    if-ne p2, v2, :cond_6

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_6
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageMode()I

    .line 230
    .line 231
    .line 232
    move-result p2

    .line 233
    if-ne p2, v1, :cond_9

    .line 234
    .line 235
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    if-eqz p2, :cond_9

    .line 240
    .line 241
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    if-lez p2, :cond_9

    .line 250
    .line 251
    new-instance p2, Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_7

    .line 269
    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    check-cast v1, Lcom/byazt/nc/t;

    .line 275
    .line 276
    invoke-virtual {v1}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    goto :goto_1

    .line 284
    :cond_7
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setImages(Ljava/util/List;)V

    .line 285
    .line 286
    .line 287
    goto :goto_3

    .line 288
    :cond_8
    :goto_2
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    if-eqz p2, :cond_9

    .line 293
    .line 294
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object p2

    .line 298
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 299
    .line 300
    .line 301
    move-result p2

    .line 302
    if-nez p2, :cond_9

    .line 303
    .line 304
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object p2

    .line 312
    if-eqz p2, :cond_9

    .line 313
    .line 314
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageList()Ljava/util/List;

    .line 315
    .line 316
    .line 317
    move-result-object p2

    .line 318
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    check-cast p2, Lcom/byazt/nc/t;

    .line 323
    .line 324
    invoke-virtual {p2}, Lcom/byazt/nc/t;->getImageUrl()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImageUrl(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2}, Lcom/byazt/nc/t;->getHeight()I

    .line 332
    .line 333
    .line 334
    move-result v0

    .line 335
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImageHeight(I)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2}, Lcom/byazt/nc/t;->getWidth()I

    .line 339
    .line 340
    .line 341
    move-result p2

    .line 342
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setImageWidth(I)V

    .line 343
    .line 344
    .line 345
    :cond_9
    :goto_3
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getImageMode()I

    .line 346
    .line 347
    .line 348
    move-result p2

    .line 349
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->setImageMode(I)V

    .line 350
    .line 351
    .line 352
    invoke-static {p1}, Lcom/byazt/nm/c;->c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-virtual {p1}, Lcom/byazt/dv/tt;->c()Z

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    if-eqz p1, :cond_b

    .line 361
    .line 362
    invoke-virtual {p3}, Lcom/byazt/nc/u;->getMediaExtraInfo()Ljava/util/Map;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    if-eqz p1, :cond_b

    .line 367
    .line 368
    const-string p2, "price"

    .line 369
    .line 370
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object p1

    .line 374
    invoke-static {p1}, Lcom/byazt/xf/tt;->c(Ljava/lang/Object;)D

    .line 375
    .line 376
    .line 377
    move-result-wide p1

    .line 378
    const-string p3, "pangle native \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    .line 379
    .line 380
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p3

    .line 388
    const-string v0, "TTMediationSDK_ECMP"

    .line 389
    .line 390
    invoke-static {v0, p3}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    const-wide/16 v0, 0x0

    .line 394
    .line 395
    cmpl-double p3, p1, v0

    .line 396
    .line 397
    if-lez p3, :cond_a

    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_a
    move-wide p1, v0

    .line 401
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 402
    .line 403
    .line 404
    :cond_b
    return-void
.end method

.method public static synthetic a(Lcom/byazt/nm/c$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method private c()Lcom/byazt/zq/c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    check-cast v0, Lcom/byazt/zq/c;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/nm/c$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/nm/c$c;->t:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/nm/c$c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/nm/c$c;->t:Z

    return p1
.end method

.method public static synthetic n(Lcom/byazt/nm/c$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/nm/c$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/nm/c$c;)Lcom/byazt/zq/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->sp:Lcom/byazt/zq/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/nm/c$c;)Lcom/byazt/nc/da;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/nm/c$c;)Lcom/byazt/zq/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/nm/c$c;->c()Lcom/byazt/zq/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

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

.method public getCreativeId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle banner native: getDislikeDialog = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle banner native : getDislikeDialog = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "TTMediationSDK"

    .line 6
    .line 7
    const-string v1, "pangle banner native : getDislikeInfo"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

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
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

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

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

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

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

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
    iget-boolean v0, p0, Lcom/byazt/nm/c$c;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/nm/c$c;->u:Z

    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nm/c$c$2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/nm/c$c$2;-><init>(Lcom/byazt/nm/c$c;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/me/da;Ljava/util/List;)V
    .locals 8
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
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v6, 0x0

    .line 10
    iget-object v7, p0, Lcom/byazt/nm/c$c;->x:Lcom/byazt/lsp/c;

    .line 11
    .line 12
    move-object v1, p2

    .line 13
    move-object v3, p3

    .line 14
    move-object v4, p4

    .line 15
    move-object v5, p5

    .line 16
    invoke-virtual/range {v0 .. v7}, Lcom/byazt/nc/u;->registerViewForInteraction(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/byazt/lsp/c;)V

    .line 17
    .line 18
    .line 19
    iget-object p3, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 20
    .line 21
    new-instance p4, Lcom/byazt/nm/c$c$1;

    .line 22
    .line 23
    const/4 p5, 0x0

    .line 24
    invoke-direct {p4, p0, p5}, Lcom/byazt/nm/c$c$1;-><init>(Lcom/byazt/nm/c$c;Ljava/util/function/Function;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3, p1, p4}, Lcom/byazt/nc/u;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 31
    .line 32
    const/4 p3, -0x1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/byazt/nc/u;->getAdLogo()Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    if-eqz p6, :cond_2

    .line 42
    .line 43
    iget p1, p6, Lcom/byazt/me/da;->t:I

    .line 44
    .line 45
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    const/4 p4, 0x0

    .line 52
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    instance-of p4, p1, Landroid/view/ViewGroup;

    .line 56
    .line 57
    if-eqz p4, :cond_1

    .line 58
    .line 59
    move-object p4, p1

    .line 60
    check-cast p4, Landroid/view/ViewGroup;

    .line 61
    .line 62
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 63
    .line 64
    .line 65
    new-instance p5, Landroid/widget/ImageView;

    .line 66
    .line 67
    iget-object p7, p0, Lcom/byazt/nm/c$c;->sl:Landroid/content/Context;

    .line 68
    .line 69
    invoke-direct {p5, p7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    iget-object p7, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 73
    .line 74
    invoke-virtual {p7}, Lcom/byazt/nc/u;->getAdLogo()Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object p7

    .line 78
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    .line 80
    .line 81
    sget-object p7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 82
    .line 83
    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 87
    .line 88
    .line 89
    move-result-object p7

    .line 90
    iget-object v0, p0, Lcom/byazt/nm/c$c;->sl:Landroid/content/Context;

    .line 91
    .line 92
    const/high16 v1, 0x42180000    # 38.0f

    .line 93
    .line 94
    invoke-static {v0, v1}, Lcom/byazt/pp/n;->ve(Landroid/content/Context;F)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, p7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 99
    .line 100
    iget-object v0, p0, Lcom/byazt/nm/c$c;->sl:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v0, v1}, Lcom/byazt/pp/n;->ve(Landroid/content/Context;F)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 107
    .line 108
    invoke-virtual {p1, p7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p4, p5, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    instance-of p4, p1, Landroid/widget/ImageView;

    .line 116
    .line 117
    if-eqz p4, :cond_2

    .line 118
    .line 119
    check-cast p1, Landroid/widget/ImageView;

    .line 120
    .line 121
    iget-object p4, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 122
    .line 123
    invoke-virtual {p4}, Lcom/byazt/nc/u;->getAdLogo()Landroid/graphics/Bitmap;

    .line 124
    .line 125
    .line 126
    move-result-object p4

    .line 127
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    :goto_0
    if-eqz p6, :cond_4

    .line 131
    .line 132
    iget p1, p6, Lcom/byazt/me/da;->sp:I

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/widget/FrameLayout;

    .line 139
    .line 140
    if-eqz p1, :cond_4

    .line 141
    .line 142
    iget-object p2, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 143
    .line 144
    if-eqz p2, :cond_4

    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/byazt/nc/u;->getAdView()Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    if-nez p2, :cond_3

    .line 151
    .line 152
    return-void

    .line 153
    :cond_3
    invoke-virtual {p0, p2}, Lcom/byazt/yl/ve;->removeSelfFromParent(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, p2, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 160
    .line 161
    .line 162
    :cond_4
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle banner native: setAdInteractionListener pluginTTAdInteractionListener = "

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
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/byazt/nc/x;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "pangle banner native:  activity = "

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
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 33
    .line 34
    new-instance v1, Lcom/byazt/nm/c$c$4;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-direct {v1, p0, v2, p2}, Lcom/byazt/nm/c$c$4;-><init>(Lcom/byazt/nm/c$c;Ljava/util/function/Function;Lcom/byazt/dhf/c;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1, v1}, Lcom/byazt/nc/u;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

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
    const-string v1, "pangle banner native:  ttDislikeDialogAbstract = "

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
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

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
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle banner native: uploadDislikeEvent event = "

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
    iget-object v0, p0, Lcom/byazt/nm/c$c;->da:Lcom/byazt/nc/da;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/byazt/nc/u;->uploadDislikeEvent(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
