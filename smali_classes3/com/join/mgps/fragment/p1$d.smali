.class public Lcom/join/mgps/fragment/p1$d;
.super Lcom/join/mgps/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/a<",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:I = 0x1

.field public static final j:I = 0x2


# instance fields
.field final synthetic h:Lcom/join/mgps/fragment/p1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/p1;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/p1$d;->h:Lcom/join/mgps/fragment/p1;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/base/a;-><init>(Ljava/util/List;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    const v0, 0x7f0d040b

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    const v0, 0x7f0d040c

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static synthetic B(Lcom/join/mgps/customview/DownloadNormalView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Lcom/join/mgps/customview/DownloadNormalView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/fragment/p1$d;->B(Lcom/join/mgps/customview/DownloadNormalView;Landroid/view/View;)V

    return-void
.end method

.method private z(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    const-string v0, "#"

    .line 6
    .line 7
    invoke-virtual/range {p2 .. p2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f0a054e

    .line 16
    .line 17
    .line 18
    invoke-virtual {v9, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    move-object v10, v2

    .line 23
    check-cast v10, Lcom/join/mgps/customview/DownloadNormalView;

    .line 24
    .line 25
    if-eqz v1, :cond_9

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/JpInfoBean;->isGame()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const v2, 0x7f0a14a2

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    const/4 v4, 0x0

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const v7, 0x7f0a1042

    .line 49
    .line 50
    .line 51
    invoke-virtual {v9, v7, v5}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v9, v7}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroid/widget/TextView;

    .line 59
    .line 60
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 61
    .line 62
    invoke-virtual {v5, v7, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_1

    .line 74
    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_0

    .line 84
    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v9, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 94
    .line 95
    invoke-static {v2, v5}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getPic_info()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    const-string v7, ""

    .line 104
    .line 105
    invoke-static {v7}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-eqz v7, :cond_1

    .line 110
    .line 111
    if-eqz v5, :cond_1

    .line 112
    .line 113
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v7

    .line 117
    if-lez v7, :cond_1

    .line 118
    .line 119
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v9, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 130
    .line 131
    invoke-static {v2, v5}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-ne v2, v3, :cond_2

    .line 139
    .line 140
    const/4 v2, 0x1

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    const/4 v2, 0x0

    .line 143
    :goto_1
    const v5, 0x7f0a0790

    .line 144
    .line 145
    .line 146
    invoke-virtual {v9, v5, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 154
    .line 155
    .line 156
    move-result-wide v11

    .line 157
    const-wide/16 v13, 0x0

    .line 158
    .line 159
    const v2, 0x7f0a1a16

    .line 160
    .line 161
    .line 162
    cmpl-double v5, v11, v13

    .line 163
    .line 164
    if-lez v5, :cond_3

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->showScore()Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_3

    .line 171
    .line 172
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-virtual {v9, v2, v5}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v9, v2, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 184
    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_3
    invoke-virtual {v9, v2, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 188
    .line 189
    .line 190
    :goto_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v2, v1}, Lcom/join/mgps/Util/UtilsMy;->P1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    const v2, 0x7f0a199d

    .line 203
    .line 204
    .line 205
    invoke-virtual {v9, v2, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_4
    const v1, 0x7f0a00ee

    .line 210
    .line 211
    .line 212
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v9, v1, v5}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v9, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 224
    .line 225
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_5
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_6

    .line 241
    .line 242
    const v1, 0x7f0a1bea

    .line 243
    .line 244
    .line 245
    invoke-virtual {v9, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 250
    .line 251
    if-eqz v1, :cond_6

    .line 252
    .line 253
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/video/MultiStandVideo;->l(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/video/MultiStandVideo;->setName(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-object v2, v8, Lcom/join/mgps/fragment/p1$d;->h:Lcom/join/mgps/fragment/p1;

    .line 268
    .line 269
    iget-object v2, v2, Lcom/join/mgps/fragment/p1;->o:Lcom/join/android/app/component/video/h;

    .line 270
    .line 271
    invoke-virtual {v2}, Lcom/join/android/app/component/video/h;->s()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    invoke-virtual {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->hashCode()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    invoke-virtual {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v12

    .line 289
    const/4 v13, 0x0

    .line 290
    const/4 v14, 0x0

    .line 291
    const/4 v15, 0x0

    .line 292
    const-string v16, ""

    .line 293
    .line 294
    move-object v11, v1

    .line 295
    invoke-virtual/range {v11 .. v16}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v1, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 314
    .line 315
    .line 316
    new-instance v2, Lcom/join/mgps/fragment/p1$d$a;

    .line 317
    .line 318
    move-object/from16 v5, p2

    .line 319
    .line 320
    invoke-direct {v2, v8, v10, v5}, Lcom/join/mgps/fragment/p1$d$a;-><init>(Lcom/join/mgps/fragment/p1$d;Lcom/join/mgps/customview/DownloadNormalView;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 324
    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_6
    move-object/from16 v5, p2

    .line 328
    .line 329
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    const v2, 0x7f0a0ed9

    .line 338
    .line 339
    .line 340
    if-eqz v1, :cond_8

    .line 341
    .line 342
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 347
    .line 348
    .line 349
    move-result v1

    .line 350
    if-eqz v1, :cond_7

    .line 351
    .line 352
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    invoke-virtual {v9, v2, v0}, Lcom/join/mgps/base/b;->setBackgroundColor(II)Lcom/join/mgps/base/b;

    .line 361
    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    invoke-virtual {v9, v2, v0}, Lcom/join/mgps/base/b;->setBackgroundColor(II)Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    .line 389
    .line 390
    goto :goto_5

    .line 391
    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 393
    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_8
    const-string v0, "#994558"

    .line 397
    .line 398
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    invoke-virtual {v9, v2, v0}, Lcom/join/mgps/base/b;->setBackgroundColor(II)Lcom/join/mgps/base/b;

    .line 403
    .line 404
    .line 405
    goto :goto_5

    .line 406
    :cond_9
    move-object/from16 v5, p2

    .line 407
    .line 408
    :goto_5
    new-instance v0, Lcom/join/mgps/fragment/p1$d$b;

    .line 409
    .line 410
    iget-object v1, v8, Lcom/join/mgps/fragment/p1$d;->h:Lcom/join/mgps/fragment/p1;

    .line 411
    .line 412
    iget-object v3, v1, Lcom/join/mgps/fragment/p1;->f:Landroid/content/Context;

    .line 413
    .line 414
    move-object v1, v0

    .line 415
    move-object/from16 v2, p0

    .line 416
    .line 417
    move-object/from16 v4, p2

    .line 418
    .line 419
    move-object/from16 v5, p2

    .line 420
    .line 421
    move-object v7, v10

    .line 422
    invoke-direct/range {v1 .. v7}, Lcom/join/mgps/fragment/p1$d$b;-><init>(Lcom/join/mgps/fragment/p1$d;Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v10, v0}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 426
    .line 427
    .line 428
    iget-object v0, v9, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 429
    .line 430
    new-instance v1, Lcom/join/mgps/fragment/q1;

    .line 431
    .line 432
    invoke-direct {v1, v10}, Lcom/join/mgps/fragment/q1;-><init>(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    .line 437
    .line 438
    return-void
.end method


# virtual methods
.method protected A(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/p1$d;->z(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public C(Lcom/join/mgps/base/b;)V
    .locals 2
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    const v0, 0x7f0a1bea

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/p1$d;->A(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    return p1

    .line 25
    :cond_0
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "holder"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/base/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/p1$d;->C(Lcom/join/mgps/base/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
