.class public Lcom/join/mgps/adapter/q3;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/q3$g;,
        Lcom/join/mgps/adapter/q3$f;,
        Lcom/join/mgps/adapter/q3$e;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll6/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "mustPlay"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ll6/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/q3;->c:Ljava/util/List;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/join/mgps/adapter/q3;->d:Landroid/view/LayoutInflater;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/q3;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/widget/TextView;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "mgListviewItemInstall"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u66f4\u65b0"

    .line 6
    .line 7
    const v2, -0xa81da

    .line 8
    .line 9
    .line 10
    const v3, 0x7f120105

    .line 11
    .line 12
    .line 13
    const v4, 0x7f080f97

    .line 14
    .line 15
    .line 16
    const v5, -0x8d57ef

    .line 17
    .line 18
    .line 19
    const v6, 0x7f080f8b

    .line 20
    .line 21
    .line 22
    const v7, 0x7f080f90

    .line 23
    .line 24
    .line 25
    if-nez v0, :cond_5

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v8, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 33
    .line 34
    invoke-virtual {v8}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v8, ""

    .line 42
    .line 43
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 61
    .line 62
    .line 63
    const-string p1, "\u5f00\u59cb"

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const v0, 0x7f06002b

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v6, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v0, v6, v8}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    invoke-static {v6, v8}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-lez v6, :cond_1

    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    :cond_1
    if-eqz v0, :cond_3

    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    .line 130
    .line 131
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v6, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v0, v6, v8}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_2

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-ge v0, p1, :cond_2

    .line 168
    .line 169
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_3
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->t3(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_4
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->t3(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 245
    .line 246
    .line 247
    move-result v9

    .line 248
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    const-string v9, " dd "

    .line 252
    .line 253
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v9

    .line 260
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    const-string v9, "infoo"

    .line 268
    .line 269
    invoke-static {v9, v8}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 273
    .line 274
    .line 275
    move-result v8

    .line 276
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v10

    .line 284
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v9

    .line 288
    const/16 v10, 0x2b

    .line 289
    .line 290
    if-lez v9, :cond_6

    .line 291
    .line 292
    const/16 v8, 0x2b

    .line 293
    .line 294
    :cond_6
    if-eqz v8, :cond_c

    .line 295
    .line 296
    const/16 v9, 0x1b

    .line 297
    .line 298
    if-eq v8, v9, :cond_b

    .line 299
    .line 300
    const/16 v9, 0x30

    .line 301
    .line 302
    const v11, -0xc57a1e

    .line 303
    .line 304
    .line 305
    if-eq v8, v9, :cond_a

    .line 306
    .line 307
    const/4 v9, 0x2

    .line 308
    if-eq v8, v9, :cond_9

    .line 309
    .line 310
    const/4 v0, 0x3

    .line 311
    if-eq v8, v0, :cond_8

    .line 312
    .line 313
    const/4 v0, 0x5

    .line 314
    if-eq v8, v0, :cond_7

    .line 315
    .line 316
    const/4 v0, 0x6

    .line 317
    if-eq v8, v0, :cond_8

    .line 318
    .line 319
    const/4 v0, 0x7

    .line 320
    if-eq v8, v0, :cond_c

    .line 321
    .line 322
    const/16 v0, 0x2a

    .line 323
    .line 324
    if-eq v8, v0, :cond_7

    .line 325
    .line 326
    if-eq v8, v10, :cond_c

    .line 327
    .line 328
    packed-switch v8, :pswitch_data_0

    .line 329
    .line 330
    .line 331
    goto/16 :goto_0

    .line 332
    .line 333
    :pswitch_0
    const p1, 0x7f080fb6

    .line 334
    .line 335
    .line 336
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 337
    .line 338
    .line 339
    const-string p1, "\u89e3\u538b"

    .line 340
    .line 341
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :pswitch_1
    const p1, 0x7f080550

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 353
    .line 354
    .line 355
    const-string p1, "\u89e3\u538b\u4e2d"

    .line 356
    .line 357
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    .line 359
    .line 360
    const p1, -0x4a4a4b

    .line 361
    .line 362
    .line 363
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    .line 365
    .line 366
    goto/16 :goto_0

    .line 367
    .line 368
    :pswitch_2
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 369
    .line 370
    .line 371
    const-string p1, "\u5b89\u88c5"

    .line 372
    .line 373
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 377
    .line 378
    .line 379
    goto :goto_0

    .line 380
    :pswitch_3
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 381
    .line 382
    .line 383
    const-string p1, "\u7b49\u5f85"

    .line 384
    .line 385
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    .line 390
    .line 391
    goto :goto_0

    .line 392
    :pswitch_4
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    .line 400
    .line 401
    goto :goto_0

    .line 402
    :cond_7
    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 403
    .line 404
    .line 405
    iget-object p1, p0, Lcom/join/mgps/adapter/q3;->b:Landroid/content/Context;

    .line 406
    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    .line 420
    .line 421
    goto :goto_0

    .line 422
    :cond_8
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 423
    .line 424
    .line 425
    const-string p1, "\u7ee7\u7eed"

    .line 426
    .line 427
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    .line 432
    .line 433
    goto :goto_0

    .line 434
    :cond_9
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 438
    .line 439
    .line 440
    const-string p1, "\u6682\u505c"

    .line 441
    .line 442
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    .line 444
    .line 445
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 446
    .line 447
    .line 448
    goto :goto_0

    .line 449
    :cond_a
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 450
    .line 451
    .line 452
    const-string p1, "\u5b89\u88c5\u4e2d"

    .line 453
    .line 454
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    .line 459
    .line 460
    goto :goto_0

    .line 461
    :cond_b
    const-string p1, "\u6682\u505c\u4e2d"

    .line 462
    .line 463
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    .line 465
    .line 466
    goto :goto_0

    .line 467
    :cond_c
    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    invoke-static {p2, p1}, Lcom/join/mgps/Util/UtilsMy;->t3(Landroid/widget/TextView;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 482
    .line 483
    .line 484
    :goto_0
    return-void

    .line 485
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mustPlay"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll6/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/q3;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q3;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/q3;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/q3;->c:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ll6/c;

    .line 18
    .line 19
    invoke-virtual {p1}, Ll6/c;->c()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    const/4 p1, 0x1

    .line 27
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/q3;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez p2, :cond_2

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_0

    .line 15
    .line 16
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/q3$f;

    .line 17
    .line 18
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/q3$f;-><init>(Lcom/join/mgps/adapter/q3;)V

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lcom/join/mgps/adapter/q3;->d:Landroid/view/LayoutInflater;

    .line 22
    .line 23
    const v5, 0x7f0d075b

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4, v5, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    const v4, 0x7f0a0df3

    .line 31
    .line 32
    .line 33
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/widget/LinearLayout;

    .line 38
    .line 39
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->t(Lcom/join/mgps/adapter/q3$f;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 40
    .line 41
    .line 42
    const v4, 0x7f0a0df4

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/LinearLayout;

    .line 50
    .line 51
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->v(Lcom/join/mgps/adapter/q3$f;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 52
    .line 53
    .line 54
    const v4, 0x7f0a0df5

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Landroid/widget/LinearLayout;

    .line 62
    .line 63
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->x(Lcom/join/mgps/adapter/q3$f;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 64
    .line 65
    .line 66
    const v4, 0x7f0a0df6

    .line 67
    .line 68
    .line 69
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroid/widget/LinearLayout;

    .line 74
    .line 75
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->z(Lcom/join/mgps/adapter/q3$f;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 76
    .line 77
    .line 78
    const v4, 0x7f0a00ef

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    check-cast v4, Landroid/widget/TextView;

    .line 86
    .line 87
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->B(Lcom/join/mgps/adapter/q3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 88
    .line 89
    .line 90
    const v4, 0x7f0a00f0

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Landroid/widget/TextView;

    .line 98
    .line 99
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->D(Lcom/join/mgps/adapter/q3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 100
    .line 101
    .line 102
    const v4, 0x7f0a00f1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->F(Lcom/join/mgps/adapter/q3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 112
    .line 113
    .line 114
    const v4, 0x7f0a00f2

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Landroid/widget/TextView;

    .line 122
    .line 123
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->b(Lcom/join/mgps/adapter/q3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 124
    .line 125
    .line 126
    const v4, 0x7f0a00e7

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 134
    .line 135
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->d(Lcom/join/mgps/adapter/q3$f;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 136
    .line 137
    .line 138
    const v4, 0x7f0a00e8

    .line 139
    .line 140
    .line 141
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 146
    .line 147
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->f(Lcom/join/mgps/adapter/q3$f;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 148
    .line 149
    .line 150
    const v4, 0x7f0a00e9

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 158
    .line 159
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->h(Lcom/join/mgps/adapter/q3$f;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 160
    .line 161
    .line 162
    const v4, 0x7f0a00ea

    .line 163
    .line 164
    .line 165
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 170
    .line 171
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->j(Lcom/join/mgps/adapter/q3$f;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 172
    .line 173
    .line 174
    const v4, 0x7f0a00de

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    check-cast v4, Landroid/widget/TextView;

    .line 182
    .line 183
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->l(Lcom/join/mgps/adapter/q3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 184
    .line 185
    .line 186
    const v4, 0x7f0a00df

    .line 187
    .line 188
    .line 189
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    check-cast v4, Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->n(Lcom/join/mgps/adapter/q3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 196
    .line 197
    .line 198
    const v4, 0x7f0a00e0

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    check-cast v4, Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->p(Lcom/join/mgps/adapter/q3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 208
    .line 209
    .line 210
    const v4, 0x7f0a00e1

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    check-cast v4, Landroid/widget/TextView;

    .line 218
    .line 219
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$f;->r(Lcom/join/mgps/adapter/q3$f;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    move-object v6, p3

    .line 226
    move-object p3, p2

    .line 227
    move-object p2, v6

    .line 228
    goto :goto_2

    .line 229
    :cond_1
    new-instance p2, Lcom/join/mgps/adapter/q3$g;

    .line 230
    .line 231
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/q3$g;-><init>(Lcom/join/mgps/adapter/q3;)V

    .line 232
    .line 233
    .line 234
    iget-object v4, p0, Lcom/join/mgps/adapter/q3;->d:Landroid/view/LayoutInflater;

    .line 235
    .line 236
    const v5, 0x7f0d075d

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v5, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object p3

    .line 243
    const v4, 0x7f0a177b

    .line 244
    .line 245
    .line 246
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    check-cast v4, Landroid/widget/TextView;

    .line 251
    .line 252
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$g;->b(Lcom/join/mgps/adapter/q3$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 253
    .line 254
    .line 255
    const v4, 0x7f0a1794

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    check-cast v4, Landroid/widget/TextView;

    .line 263
    .line 264
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$g;->d(Lcom/join/mgps/adapter/q3$g;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 265
    .line 266
    .line 267
    const v4, 0x7f0a14db

    .line 268
    .line 269
    .line 270
    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    check-cast v4, Landroid/widget/LinearLayout;

    .line 275
    .line 276
    invoke-static {p2, v4}, Lcom/join/mgps/adapter/q3$g;->f(Lcom/join/mgps/adapter/q3$g;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 280
    .line 281
    .line 282
    move-object v6, v3

    .line 283
    move-object v3, p2

    .line 284
    move-object p2, p3

    .line 285
    goto :goto_1

    .line 286
    :cond_2
    if-eqz v0, :cond_4

    .line 287
    .line 288
    if-eq v0, v1, :cond_3

    .line 289
    .line 290
    :goto_0
    move-object p3, v3

    .line 291
    goto :goto_2

    .line 292
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p3

    .line 296
    check-cast p3, Lcom/join/mgps/adapter/q3$f;

    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object p3

    .line 303
    check-cast p3, Lcom/join/mgps/adapter/q3$g;

    .line 304
    .line 305
    move-object v6, v3

    .line 306
    move-object v3, p3

    .line 307
    :goto_1
    move-object p3, v6

    .line 308
    :goto_2
    const/16 v4, 0x8

    .line 309
    .line 310
    if-nez p1, :cond_5

    .line 311
    .line 312
    if-nez v0, :cond_5

    .line 313
    .line 314
    invoke-static {v3}, Lcom/join/mgps/adapter/q3$g;->c(Lcom/join/mgps/adapter/q3$g;)Landroid/widget/TextView;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 319
    .line 320
    .line 321
    invoke-static {v3}, Lcom/join/mgps/adapter/q3$g;->e(Lcom/join/mgps/adapter/q3$g;)Landroid/widget/LinearLayout;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_5
    if-nez v0, :cond_6

    .line 330
    .line 331
    iget-object v5, p0, Lcom/join/mgps/adapter/q3;->c:Ljava/util/List;

    .line 332
    .line 333
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 334
    .line 335
    .line 336
    move-result v5

    .line 337
    if-ne p1, v5, :cond_6

    .line 338
    .line 339
    invoke-static {v3}, Lcom/join/mgps/adapter/q3$g;->c(Lcom/join/mgps/adapter/q3$g;)Landroid/widget/TextView;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    invoke-static {v3}, Lcom/join/mgps/adapter/q3$g;->e(Lcom/join/mgps/adapter/q3$g;)Landroid/widget/LinearLayout;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    return-object p2

    .line 354
    :cond_6
    if-nez v0, :cond_7

    .line 355
    .line 356
    invoke-static {v3}, Lcom/join/mgps/adapter/q3$g;->c(Lcom/join/mgps/adapter/q3$g;)Landroid/widget/TextView;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    invoke-static {v3}, Lcom/join/mgps/adapter/q3$g;->e(Lcom/join/mgps/adapter/q3$g;)Landroid/widget/LinearLayout;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/join/mgps/adapter/q3;->c:Ljava/util/List;

    .line 371
    .line 372
    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    check-cast p1, Ll6/c;

    .line 377
    .line 378
    if-eqz v0, :cond_e

    .line 379
    .line 380
    if-eq v0, v1, :cond_8

    .line 381
    .line 382
    goto/16 :goto_6

    .line 383
    .line 384
    :cond_8
    invoke-virtual {p1}, Ll6/c;->a()Ljava/util/List;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    if-nez p1, :cond_9

    .line 389
    .line 390
    goto/16 :goto_6

    .line 391
    .line 392
    :cond_9
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->s(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/LinearLayout;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    const/4 v3, 0x4

    .line 397
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->u(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/LinearLayout;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 405
    .line 406
    .line 407
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->w(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/LinearLayout;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 412
    .line 413
    .line 414
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->y(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/LinearLayout;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .line 420
    .line 421
    const/4 v0, 0x0

    .line 422
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    if-ge v0, v3, :cond_f

    .line 427
    .line 428
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 433
    .line 434
    if-eqz v0, :cond_d

    .line 435
    .line 436
    if-eq v0, v1, :cond_c

    .line 437
    .line 438
    const/4 v4, 0x2

    .line 439
    if-eq v0, v4, :cond_b

    .line 440
    .line 441
    const/4 v4, 0x3

    .line 442
    if-eq v0, v4, :cond_a

    .line 443
    .line 444
    goto/16 :goto_5

    .line 445
    .line 446
    :cond_a
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->y(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/LinearLayout;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 451
    .line 452
    .line 453
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->i(Lcom/join/mgps/adapter/q3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->a(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 465
    .line 466
    .line 467
    move-result-object v4

    .line 468
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    .line 474
    .line 475
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->q(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    invoke-direct {p0, v3, v4}, Lcom/join/mgps/adapter/q3;->b(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/widget/TextView;)V

    .line 480
    .line 481
    .line 482
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->q(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    new-instance v5, Lcom/join/mgps/adapter/q3$e;

    .line 487
    .line 488
    invoke-direct {v5, p0, v3}, Lcom/join/mgps/adapter/q3$e;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    .line 493
    .line 494
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->i(Lcom/join/mgps/adapter/q3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 495
    .line 496
    .line 497
    move-result-object v4

    .line 498
    new-instance v5, Lcom/join/mgps/adapter/q3$d;

    .line 499
    .line 500
    invoke-direct {v5, p0, v3}, Lcom/join/mgps/adapter/q3$d;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    .line 505
    .line 506
    goto/16 :goto_5

    .line 507
    .line 508
    :cond_b
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->w(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/LinearLayout;

    .line 509
    .line 510
    .line 511
    move-result-object v4

    .line 512
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 513
    .line 514
    .line 515
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->g(Lcom/join/mgps/adapter/q3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 516
    .line 517
    .line 518
    move-result-object v4

    .line 519
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v5

    .line 523
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->E(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 527
    .line 528
    .line 529
    move-result-object v4

    .line 530
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    .line 536
    .line 537
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->o(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 538
    .line 539
    .line 540
    move-result-object v4

    .line 541
    invoke-direct {p0, v3, v4}, Lcom/join/mgps/adapter/q3;->b(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/widget/TextView;)V

    .line 542
    .line 543
    .line 544
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->o(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 545
    .line 546
    .line 547
    move-result-object v4

    .line 548
    new-instance v5, Lcom/join/mgps/adapter/q3$e;

    .line 549
    .line 550
    invoke-direct {v5, p0, v3}, Lcom/join/mgps/adapter/q3$e;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    .line 555
    .line 556
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->g(Lcom/join/mgps/adapter/q3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    new-instance v5, Lcom/join/mgps/adapter/q3$c;

    .line 561
    .line 562
    invoke-direct {v5, p0, v3}, Lcom/join/mgps/adapter/q3$c;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    .line 567
    .line 568
    goto :goto_5

    .line 569
    :cond_c
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->u(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/LinearLayout;

    .line 570
    .line 571
    .line 572
    move-result-object v4

    .line 573
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 574
    .line 575
    .line 576
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->e(Lcom/join/mgps/adapter/q3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v5

    .line 584
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->C(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 588
    .line 589
    .line 590
    move-result-object v4

    .line 591
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 592
    .line 593
    .line 594
    move-result-object v5

    .line 595
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 596
    .line 597
    .line 598
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->m(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 599
    .line 600
    .line 601
    move-result-object v4

    .line 602
    invoke-direct {p0, v3, v4}, Lcom/join/mgps/adapter/q3;->b(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/widget/TextView;)V

    .line 603
    .line 604
    .line 605
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->m(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    new-instance v5, Lcom/join/mgps/adapter/q3$e;

    .line 610
    .line 611
    invoke-direct {v5, p0, v3}, Lcom/join/mgps/adapter/q3$e;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 612
    .line 613
    .line 614
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 615
    .line 616
    .line 617
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->e(Lcom/join/mgps/adapter/q3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    new-instance v5, Lcom/join/mgps/adapter/q3$b;

    .line 622
    .line 623
    invoke-direct {v5, p0, v3}, Lcom/join/mgps/adapter/q3$b;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    .line 628
    .line 629
    goto :goto_5

    .line 630
    :cond_d
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->s(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/LinearLayout;

    .line 631
    .line 632
    .line 633
    move-result-object v4

    .line 634
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 635
    .line 636
    .line 637
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->c(Lcom/join/mgps/adapter/q3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 638
    .line 639
    .line 640
    move-result-object v4

    .line 641
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v5

    .line 645
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 646
    .line 647
    .line 648
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->A(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 649
    .line 650
    .line 651
    move-result-object v4

    .line 652
    invoke-virtual {v3}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v5

    .line 656
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    .line 658
    .line 659
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->k(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    invoke-direct {p0, v3, v4}, Lcom/join/mgps/adapter/q3;->b(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/widget/TextView;)V

    .line 664
    .line 665
    .line 666
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->k(Lcom/join/mgps/adapter/q3$f;)Landroid/widget/TextView;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    new-instance v5, Lcom/join/mgps/adapter/q3$e;

    .line 671
    .line 672
    invoke-direct {v5, p0, v3}, Lcom/join/mgps/adapter/q3$e;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    .line 677
    .line 678
    invoke-static {p3}, Lcom/join/mgps/adapter/q3$f;->c(Lcom/join/mgps/adapter/q3$f;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 679
    .line 680
    .line 681
    move-result-object v4

    .line 682
    new-instance v5, Lcom/join/mgps/adapter/q3$a;

    .line 683
    .line 684
    invoke-direct {v5, p0, v3}, Lcom/join/mgps/adapter/q3$a;-><init>(Lcom/join/mgps/adapter/q3;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 685
    .line 686
    .line 687
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 688
    .line 689
    .line 690
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 691
    .line 692
    goto/16 :goto_4

    .line 693
    .line 694
    :cond_e
    invoke-static {v3}, Lcom/join/mgps/adapter/q3$g;->a(Lcom/join/mgps/adapter/q3$g;)Landroid/widget/TextView;

    .line 695
    .line 696
    .line 697
    move-result-object p3

    .line 698
    invoke-virtual {p1}, Ll6/c;->b()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object p1

    .line 702
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    .line 704
    .line 705
    :cond_f
    :goto_6
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
