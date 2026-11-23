.class public Lcom/join/mgps/adapter/v;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/v$a;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/danikula/videocache/i;

.field f:Lcom/join/android/app/component/video/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "helper"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/v;->d:Ljava/util/List;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/join/mgps/adapter/v;->b:Landroid/content/Context;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/join/mgps/adapter/v;->f:Lcom/join/android/app/component/video/c;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/join/mgps/adapter/v;->c:Landroid/view/LayoutInflater;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/v;->d(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/v;->e:Lcom/danikula/videocache/i;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "score",
            "down_count",
            "appSize",
            "showTip",
            "tags",
            "view",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/TipNew;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p3, "1"

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    .line 11
    .line 12
    invoke-static {p7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p7

    .line 16
    const v0, 0x7f0d085a

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p7

    .line 24
    const v0, 0x7f0a0108

    .line 25
    .line 26
    .line 27
    invoke-virtual {p7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    const v2, 0x7f0a0114

    .line 34
    .line 35
    .line 36
    invoke-virtual {p7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/widget/TextView;

    .line 41
    .line 42
    const v3, 0x7f0a00fd

    .line 43
    .line 44
    .line 45
    invoke-virtual {p7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/widget/TextView;

    .line 50
    .line 51
    const v4, 0x7f0a17e2

    .line 52
    .line 53
    .line 54
    invoke-virtual {p7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroid/widget/TextView;

    .line 59
    .line 60
    const v5, 0x7f0a1255

    .line 61
    .line 62
    .line 63
    invoke-virtual {p7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-static {p2}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    .line 77
    .line 78
    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 79
    .line 80
    .line 81
    move-result-wide p2

    .line 82
    mul-double p2, p2, v6

    .line 83
    .line 84
    double-to-long p2, p2

    .line 85
    invoke-static {p2, p3}, Lcom/join/mgps/Util/UtilsMy;->Z2(J)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    const/4 p2, 0x0

    .line 93
    const/16 p3, 0x8

    .line 94
    .line 95
    if-eqz p4, :cond_d

    .line 96
    .line 97
    invoke-virtual {p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-eqz v0, :cond_c

    .line 102
    .line 103
    invoke-virtual {p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const-string v4, "7"

    .line 112
    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    const-string v4, "\u00b7"

    .line 118
    .line 119
    if-nez v2, :cond_5

    .line 120
    .line 121
    const-string v2, "23"

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_1
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p5

    .line 138
    :cond_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_3

    .line 143
    .line 144
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_2

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-virtual {p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-nez v2, :cond_2

    .line 177
    .line 178
    move-object v1, v0

    .line 179
    :cond_3
    if-eqz v1, :cond_4

    .line 180
    .line 181
    new-instance p5, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 187
    .line 188
    .line 189
    move-result-object p4

    .line 190
    invoke-virtual {p4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p4

    .line 194
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p4

    .line 204
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p4

    .line 211
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    goto/16 :goto_3

    .line 215
    .line 216
    :cond_4
    invoke-virtual {p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 217
    .line 218
    .line 219
    move-result-object p4

    .line 220
    invoke-virtual {p4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p4

    .line 224
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_5
    :goto_0
    const-string p4, "\u5b89\u5353"

    .line 230
    .line 231
    if-eqz p5, :cond_b

    .line 232
    .line 233
    new-instance v0, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 239
    .line 240
    .line 241
    move-result-object p5

    .line 242
    :cond_6
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    if-eqz v1, :cond_8

    .line 247
    .line 248
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 253
    .line 254
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    if-eqz v2, :cond_6

    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    const-string v6, ""

    .line 265
    .line 266
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-nez v2, :cond_6

    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    const-string v6, "44"

    .line 277
    .line 278
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-nez v2, :cond_6

    .line 283
    .line 284
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    const-string v6, "45"

    .line 289
    .line 290
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-nez v2, :cond_6

    .line 295
    .line 296
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    const-string v6, "47"

    .line 301
    .line 302
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    if-nez v2, :cond_6

    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    const-string v6, "48"

    .line 313
    .line 314
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eqz v2, :cond_7

    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    const/4 v6, 0x2

    .line 326
    if-ge v2, v6, :cond_8

    .line 327
    .line 328
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    goto :goto_1

    .line 332
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 333
    .line 334
    .line 335
    move-result p5

    .line 336
    const/4 v1, 0x1

    .line 337
    if-le p5, v1, :cond_a

    .line 338
    .line 339
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p5

    .line 343
    check-cast p5, Lcom/join/mgps/dto/TipBean;

    .line 344
    .line 345
    if-eqz p5, :cond_9

    .line 346
    .line 347
    invoke-virtual {p5}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p4

    .line 351
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 352
    .line 353
    .line 354
    move-result p5

    .line 355
    if-le p5, v1, :cond_b

    .line 356
    .line 357
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object p5

    .line 361
    check-cast p5, Lcom/join/mgps/dto/TipBean;

    .line 362
    .line 363
    if-eqz p5, :cond_b

    .line 364
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {p5}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object p4

    .line 380
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object p4

    .line 387
    goto :goto_2

    .line 388
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 389
    .line 390
    .line 391
    move-result p5

    .line 392
    if-lez p5, :cond_b

    .line 393
    .line 394
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object p5

    .line 398
    check-cast p5, Lcom/join/mgps/dto/TipBean;

    .line 399
    .line 400
    if-eqz p5, :cond_b

    .line 401
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {p5}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p4

    .line 417
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p4

    .line 424
    :cond_b
    :goto_2
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    .line 426
    .line 427
    goto :goto_3

    .line 428
    :cond_c
    invoke-virtual {v3, p3}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    goto :goto_3

    .line 432
    :cond_d
    invoke-virtual {v3, p3}, Landroid/view/View;->setVisibility(I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v4, p3}, Landroid/view/View;->setVisibility(I)V

    .line 436
    .line 437
    .line 438
    :goto_3
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 439
    .line 440
    .line 441
    move-result p4

    .line 442
    if-eqz p4, :cond_e

    .line 443
    .line 444
    const-string p4, "0"

    .line 445
    .line 446
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result p4

    .line 450
    if-nez p4, :cond_e

    .line 451
    .line 452
    new-instance p3, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string p1, "\u5206"

    .line 461
    .line 462
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v5, p2}, Landroid/view/View;->setVisibility(I)V

    .line 473
    .line 474
    .line 475
    goto :goto_4

    .line 476
    :cond_e
    invoke-virtual {v5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 477
    .line 478
    .line 479
    :goto_4
    invoke-virtual {p6, p7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 480
    .line 481
    .line 482
    return-void
.end method

.method public b(I)Lcom/join/mgps/dto/CollectionBeanSub;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 8
    .line 9
    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public d(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/MApplication;->q(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method e(Lcom/join/mgps/adapter/v$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/v$a;->j:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Lcom/join/mgps/adapter/v$a;->n:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p1, Lcom/join/mgps/adapter/v$a;->o:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/adapter/v$a;->k:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/v$a;->j:Landroid/widget/LinearLayout;

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget-object p2, p1, Lcom/join/mgps/adapter/v$a;->n:Landroid/widget/ProgressBar;

    .line 43
    .line 44
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    .line 46
    .line 47
    iget-object p2, p1, Lcom/join/mgps/adapter/v$a;->o:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/v$a;->o:Landroid/widget/ProgressBar;

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p1, Lcom/join/mgps/adapter/v$a;->n:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object p1, p1, Lcom/join/mgps/adapter/v$a;->k:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/v;->b(I)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "i",
            "convertView",
            "viewGroup"
        }
    .end annotation

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    iget-object v1, v9, Lcom/join/mgps/adapter/v;->c:Landroid/view/LayoutInflater;

    .line 8
    .line 9
    const v2, 0x7f0d089a

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/join/mgps/adapter/v$a;

    .line 18
    .line 19
    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/v$a;-><init>(Lcom/join/mgps/adapter/v;)V

    .line 20
    .line 21
    .line 22
    const v3, 0x7f0a0e70

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->a:Landroid/view/View;

    .line 30
    .line 31
    const v3, 0x7f0a015d

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    .line 42
    const v3, 0x7f0a1b63

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/widget/FrameLayout;

    .line 50
    .line 51
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->c:Landroid/widget/FrameLayout;

    .line 52
    .line 53
    const v3, 0x7f0a1044

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 63
    .line 64
    const v3, 0x7f0a0790

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/widget/ImageView;

    .line 72
    .line 73
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->e:Landroid/widget/ImageView;

    .line 74
    .line 75
    const v3, 0x7f0a1042

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroid/widget/TextView;

    .line 83
    .line 84
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->f:Landroid/widget/TextView;

    .line 85
    .line 86
    const v3, 0x7f0a054e

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/join/mgps/customview/DownloadNormalView;

    .line 94
    .line 95
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->g:Lcom/join/mgps/customview/DownloadNormalView;

    .line 96
    .line 97
    const v3, 0x7f0a1043

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Landroid/widget/TextView;

    .line 105
    .line 106
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->i:Landroid/widget/TextView;

    .line 107
    .line 108
    const v3, 0x7f0a0e73

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Landroid/widget/LinearLayout;

    .line 116
    .line 117
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->j:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    const v3, 0x7f0a1764

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Landroid/widget/LinearLayout;

    .line 127
    .line 128
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->k:Landroid/widget/LinearLayout;

    .line 129
    .line 130
    const v3, 0x7f0a00f7

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Landroid/widget/TextView;

    .line 138
    .line 139
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->l:Landroid/widget/TextView;

    .line 140
    .line 141
    const v3, 0x7f0a0f94

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Landroid/widget/TextView;

    .line 149
    .line 150
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->m:Landroid/widget/TextView;

    .line 151
    .line 152
    const v3, 0x7f0a129e

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Landroid/widget/ProgressBar;

    .line 160
    .line 161
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->n:Landroid/widget/ProgressBar;

    .line 162
    .line 163
    const v3, 0x7f0a12a5

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Landroid/widget/ProgressBar;

    .line 171
    .line 172
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->o:Landroid/widget/ProgressBar;

    .line 173
    .line 174
    const v3, 0x7f0a0e61

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    iput-object v3, v2, Lcom/join/mgps/adapter/v$a;->h:Landroid/view/View;

    .line 182
    .line 183
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    move-object v10, v1

    .line 187
    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    move-object v2, v1

    .line 193
    check-cast v2, Lcom/join/mgps/adapter/v$a;

    .line 194
    .line 195
    move-object/from16 v10, p2

    .line 196
    .line 197
    :goto_0
    move-object v11, v2

    .line 198
    const/4 v1, 0x0

    .line 199
    const/16 v12, 0x8

    .line 200
    .line 201
    if-nez v0, :cond_1

    .line 202
    .line 203
    iget-object v2, v11, Lcom/join/mgps/adapter/v$a;->a:Landroid/view/View;

    .line 204
    .line 205
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 206
    .line 207
    .line 208
    goto :goto_1

    .line 209
    :cond_1
    iget-object v2, v11, Lcom/join/mgps/adapter/v$a;->a:Landroid/view/View;

    .line 210
    .line 211
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    :goto_1
    iget-object v2, v9, Lcom/join/mgps/adapter/v;->d:Ljava/util/List;

    .line 215
    .line 216
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    move-object v13, v2

    .line 221
    check-cast v13, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 222
    .line 223
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_video_url()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    const/4 v3, 0x1

    .line 232
    if-eqz v2, :cond_3

    .line 233
    .line 234
    iget-object v2, v11, Lcom/join/mgps/adapter/v$a;->c:Landroid/widget/FrameLayout;

    .line 235
    .line 236
    if-eqz v2, :cond_2

    .line 237
    .line 238
    iget-object v2, v11, Lcom/join/mgps/adapter/v$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 239
    .line 240
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_pic()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    invoke-static {v2, v4}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_video_url()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    add-int/2addr v0, v3

    .line 252
    iget-object v4, v11, Lcom/join/mgps/adapter/v$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 253
    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    if-eqz v4, :cond_2

    .line 266
    .line 267
    new-instance v4, Lcom/join/android/app/component/video/c$l;

    .line 268
    .line 269
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_pic()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-direct {v4, v0, v2, v5}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v2, v9, Lcom/join/mgps/adapter/v;->f:Lcom/join/android/app/component/video/c;

    .line 277
    .line 278
    new-array v5, v1, [Z

    .line 279
    .line 280
    invoke-virtual {v2, v0, v4, v5}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$l;[Z)V

    .line 281
    .line 282
    .line 283
    :cond_2
    iget-object v0, v11, Lcom/join/mgps/adapter/v$a;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 284
    .line 285
    const v2, 0x7f08018d

    .line 286
    .line 287
    .line 288
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_pic()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-static {v0, v2, v4}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    :cond_3
    invoke-virtual {v13}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    if-ne v2, v3, :cond_4

    .line 304
    .line 305
    iget-object v2, v11, Lcom/join/mgps/adapter/v$a;->e:Landroid/widget/ImageView;

    .line 306
    .line 307
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_4
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->e:Landroid/widget/ImageView;

    .line 312
    .line 313
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    .line 315
    .line 316
    :goto_2
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->f:Landroid/widget/TextView;

    .line 317
    .line 318
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->i:Landroid/widget/TextView;

    .line 326
    .line 327
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v2

    .line 331
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 339
    .line 340
    .line 341
    move-result-wide v1

    .line 342
    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    .line 343
    .line 344
    mul-double v1, v1, v3

    .line 345
    .line 346
    mul-double v1, v1, v3

    .line 347
    .line 348
    double-to-long v14, v1

    .line 349
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 350
    .line 351
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 363
    .line 364
    .line 365
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 378
    .line 379
    .line 380
    move-result-object v5

    .line 381
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    iget-object v7, v11, Lcom/join/mgps/adapter/v$a;->k:Landroid/widget/LinearLayout;

    .line 386
    .line 387
    iget-object v8, v9, Lcom/join/mgps/adapter/v;->b:Landroid/content/Context;

    .line 388
    .line 389
    move-object/from16 v1, p0

    .line 390
    .line 391
    invoke-virtual/range {v1 .. v8}, Lcom/join/mgps/adapter/v;->a(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 392
    .line 393
    .line 394
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->g:Lcom/join/mgps/customview/DownloadNormalView;

    .line 395
    .line 396
    new-instance v2, Lm6/c;

    .line 397
    .line 398
    iget-object v3, v9, Lcom/join/mgps/adapter/v;->b:Landroid/content/Context;

    .line 399
    .line 400
    invoke-direct {v2, v3, v13}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v13}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    if-eqz v1, :cond_5

    .line 411
    .line 412
    iget-object v0, v11, Lcom/join/mgps/adapter/v$a;->k:Landroid/widget/LinearLayout;

    .line 413
    .line 414
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 415
    .line 416
    .line 417
    iget-object v0, v11, Lcom/join/mgps/adapter/v$a;->e:Landroid/widget/ImageView;

    .line 418
    .line 419
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    .line 421
    .line 422
    goto/16 :goto_7

    .line 423
    .line 424
    :cond_5
    if-nez v0, :cond_6

    .line 425
    .line 426
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 427
    .line 428
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 429
    .line 430
    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/v;->e(Lcom/join/mgps/adapter/v$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_7

    .line 434
    .line 435
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 436
    .line 437
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    const-string v2, " dd "

    .line 448
    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    const-string v2, "infoo"

    .line 464
    .line 465
    invoke-static {v2, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v3

    .line 480
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 481
    .line 482
    .line 483
    move-result v2

    .line 484
    if-lez v2, :cond_7

    .line 485
    .line 486
    const/16 v1, 0x2b

    .line 487
    .line 488
    :cond_7
    if-eqz v1, :cond_d

    .line 489
    .line 490
    const/16 v2, 0x2a

    .line 491
    .line 492
    if-eq v1, v2, :cond_c

    .line 493
    .line 494
    const/4 v2, 0x2

    .line 495
    const-wide/16 v3, 0x0

    .line 496
    .line 497
    const-string v5, "/"

    .line 498
    .line 499
    if-eq v1, v2, :cond_a

    .line 500
    .line 501
    const/4 v2, 0x3

    .line 502
    if-eq v1, v2, :cond_8

    .line 503
    .line 504
    const/4 v2, 0x5

    .line 505
    if-eq v1, v2, :cond_c

    .line 506
    .line 507
    const/4 v2, 0x6

    .line 508
    if-eq v1, v2, :cond_8

    .line 509
    .line 510
    const/4 v2, 0x7

    .line 511
    if-eq v1, v2, :cond_d

    .line 512
    .line 513
    packed-switch v1, :pswitch_data_0

    .line 514
    .line 515
    .line 516
    goto/16 :goto_7

    .line 517
    .line 518
    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 519
    .line 520
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 521
    .line 522
    invoke-virtual {v9, v11, v1, v2}, Lcom/join/mgps/adapter/v;->e(Lcom/join/mgps/adapter/v$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 523
    .line 524
    .line 525
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->l:Landroid/widget/TextView;

    .line 526
    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    .line 555
    .line 556
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->m:Landroid/widget/TextView;

    .line 557
    .line 558
    const-string v2, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 559
    .line 560
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    .line 562
    .line 563
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->o:Landroid/widget/ProgressBar;

    .line 564
    .line 565
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 566
    .line 567
    .line 568
    move-result-wide v2

    .line 569
    long-to-int v0, v2

    .line 570
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_7

    .line 574
    .line 575
    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 576
    .line 577
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 578
    .line 579
    invoke-virtual {v9, v11, v1, v2}, Lcom/join/mgps/adapter/v;->e(Lcom/join/mgps/adapter/v$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 580
    .line 581
    .line 582
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->l:Landroid/widget/TextView;

    .line 583
    .line 584
    new-instance v2, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    .line 589
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v3

    .line 593
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    .line 598
    .line 599
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v2

    .line 610
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    .line 612
    .line 613
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->m:Landroid/widget/TextView;

    .line 614
    .line 615
    const-string v2, "\u89e3\u538b\u4e2d.."

    .line 616
    .line 617
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 618
    .line 619
    .line 620
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->o:Landroid/widget/ProgressBar;

    .line 621
    .line 622
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 623
    .line 624
    .line 625
    move-result-wide v2

    .line 626
    long-to-int v0, v2

    .line 627
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 628
    .line 629
    .line 630
    goto/16 :goto_7

    .line 631
    .line 632
    :pswitch_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 633
    .line 634
    invoke-virtual {v9, v11, v1, v1}, Lcom/join/mgps/adapter/v;->e(Lcom/join/mgps/adapter/v$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 635
    .line 636
    .line 637
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->l:Landroid/widget/TextView;

    .line 638
    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    .line 640
    .line 641
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 645
    .line 646
    .line 647
    move-result-wide v3

    .line 648
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v3

    .line 652
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    .line 671
    .line 672
    :try_start_0
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->n:Landroid/widget/ProgressBar;

    .line 673
    .line 674
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 675
    .line 676
    .line 677
    move-result-wide v2

    .line 678
    long-to-int v0, v2

    .line 679
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .line 681
    .line 682
    goto :goto_3

    .line 683
    :catch_0
    move-exception v0

    .line 684
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 685
    .line 686
    .line 687
    :goto_3
    iget-object v0, v11, Lcom/join/mgps/adapter/v$a;->m:Landroid/widget/TextView;

    .line 688
    .line 689
    const-string v1, "\u7b49\u5f85\u4e2d"

    .line 690
    .line 691
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    .line 693
    .line 694
    goto/16 :goto_7

    .line 695
    .line 696
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 697
    .line 698
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 699
    .line 700
    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/v;->e(Lcom/join/mgps/adapter/v$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 701
    .line 702
    .line 703
    goto/16 :goto_7

    .line 704
    .line 705
    :cond_8
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 706
    .line 707
    invoke-virtual {v9, v11, v1, v1}, Lcom/join/mgps/adapter/v;->e(Lcom/join/mgps/adapter/v$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 708
    .line 709
    .line 710
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 711
    .line 712
    .line 713
    move-result-wide v1

    .line 714
    cmp-long v6, v1, v3

    .line 715
    .line 716
    if-nez v6, :cond_9

    .line 717
    .line 718
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->l:Landroid/widget/TextView;

    .line 719
    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    .line 721
    .line 722
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 726
    .line 727
    .line 728
    move-result-wide v3

    .line 729
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    .line 735
    .line 736
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v3

    .line 743
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 747
    .line 748
    .line 749
    move-result-object v2

    .line 750
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 751
    .line 752
    .line 753
    goto :goto_4

    .line 754
    :cond_9
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->l:Landroid/widget/TextView;

    .line 755
    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    .line 757
    .line 758
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 762
    .line 763
    .line 764
    move-result-wide v3

    .line 765
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v3

    .line 769
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v3

    .line 779
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    .line 788
    .line 789
    :goto_4
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->n:Landroid/widget/ProgressBar;

    .line 790
    .line 791
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 792
    .line 793
    .line 794
    move-result-wide v2

    .line 795
    long-to-int v0, v2

    .line 796
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 797
    .line 798
    .line 799
    goto :goto_5

    .line 800
    :catch_1
    move-exception v0

    .line 801
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 802
    .line 803
    .line 804
    :goto_5
    iget-object v0, v11, Lcom/join/mgps/adapter/v$a;->m:Landroid/widget/TextView;

    .line 805
    .line 806
    const-string v1, "\u6682\u505c\u4e2d"

    .line 807
    .line 808
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    .line 810
    .line 811
    goto/16 :goto_7

    .line 812
    .line 813
    :cond_a
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 814
    .line 815
    .line 816
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 817
    .line 818
    invoke-virtual {v9, v11, v1, v1}, Lcom/join/mgps/adapter/v;->e(Lcom/join/mgps/adapter/v$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 819
    .line 820
    .line 821
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 822
    .line 823
    .line 824
    move-result-wide v1

    .line 825
    cmp-long v6, v1, v3

    .line 826
    .line 827
    if-nez v6, :cond_b

    .line 828
    .line 829
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->l:Landroid/widget/TextView;

    .line 830
    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    .line 832
    .line 833
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 837
    .line 838
    .line 839
    move-result-wide v3

    .line 840
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v3

    .line 844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    .line 849
    .line 850
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v3

    .line 854
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v2

    .line 861
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 862
    .line 863
    .line 864
    goto :goto_6

    .line 865
    :cond_b
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->l:Landroid/widget/TextView;

    .line 866
    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    .line 868
    .line 869
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 873
    .line 874
    .line 875
    move-result-wide v3

    .line 876
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object v3

    .line 880
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-static {v14, v15}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v3

    .line 890
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object v2

    .line 897
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    .line 899
    .line 900
    :goto_6
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->n:Landroid/widget/ProgressBar;

    .line 901
    .line 902
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 903
    .line 904
    .line 905
    move-result-wide v2

    .line 906
    long-to-int v3, v2

    .line 907
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 908
    .line 909
    .line 910
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 911
    .line 912
    .line 913
    move-result-object v0

    .line 914
    iget-object v1, v11, Lcom/join/mgps/adapter/v$a;->m:Landroid/widget/TextView;

    .line 915
    .line 916
    new-instance v2, Ljava/lang/StringBuilder;

    .line 917
    .line 918
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    const-string v0, "/S"

    .line 925
    .line 926
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    .line 928
    .line 929
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    .line 935
    .line 936
    goto :goto_7

    .line 937
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 938
    .line 939
    invoke-virtual {v9, v11, v0, v0}, Lcom/join/mgps/adapter/v;->e(Lcom/join/mgps/adapter/v$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 940
    .line 941
    .line 942
    goto :goto_7

    .line 943
    :cond_d
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    invoke-virtual {v13}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v1

    .line 951
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 952
    .line 953
    .line 954
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 955
    .line 956
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 957
    .line 958
    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/v;->e(Lcom/join/mgps/adapter/v$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 959
    .line 960
    .line 961
    :goto_7
    return-object v10

    .line 962
    nop

    .line 963
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
