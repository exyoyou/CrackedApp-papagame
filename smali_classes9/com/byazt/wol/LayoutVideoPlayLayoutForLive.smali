.class public Lcom/byazt/wol/LayoutVideoPlayLayoutForLive;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x160,
        0x812
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/wol/LayoutVideoPlayLayoutForLive;->c(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Landroid/widget/RelativeLayout;

    .line 6
    .line 7
    invoke-direct {v2, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    const v3, 0x7e06ff02

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    const/4 v5, -0x2

    .line 20
    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    .line 25
    .line 26
    new-instance v3, Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    invoke-direct {v3, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    const v6, 0x7e06ffbc    # 4.48611E37f

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 35
    .line 36
    .line 37
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    .line 39
    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    .line 48
    .line 49
    const/16 v7, 0x11

    .line 50
    .line 51
    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 52
    .line 53
    .line 54
    new-instance v7, Landroid/widget/ImageView;

    .line 55
    .line 56
    invoke-direct {v7, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    const v8, 0x7e06fec3

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    .line 63
    .line 64
    .line 65
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 66
    .line 67
    invoke-direct {v8, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 74
    .line 75
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    .line 77
    .line 78
    new-instance v8, Lcom/byazt/ff/TTProgressBar;

    .line 79
    .line 80
    invoke-direct {v8, v1}, Lcom/byazt/ff/TTProgressBar;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    const v9, 0x7e06feaf

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v9}, Landroid/view/View;->setId(I)V

    .line 87
    .line 88
    .line 89
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 90
    .line 91
    const/high16 v10, 0x42700000    # 60.0f

    .line 92
    .line 93
    invoke-static {v1, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    invoke-static {v1, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 98
    .line 99
    .line 100
    move-result v10

    .line 101
    invoke-direct {v9, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .line 103
    .line 104
    const/16 v10, 0xd

    .line 105
    .line 106
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    new-instance v9, Lcom/byazt/wol/LayoutVideoPlayLayoutForLive$1;

    .line 113
    .line 114
    invoke-direct {v9, v0, v1, v8}, Lcom/byazt/wol/LayoutVideoPlayLayoutForLive$1;-><init>(Lcom/byazt/wol/LayoutVideoPlayLayoutForLive;Landroid/content/Context;Lcom/byazt/ff/TTProgressBar;)V

    .line 115
    .line 116
    .line 117
    const-string v11, "tt_normalscreen_loading"

    .line 118
    .line 119
    const/16 v12, 0x140

    .line 120
    .line 121
    invoke-static {v1, v11, v9, v12}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/qr/c;I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    new-instance v3, Lcom/byazt/wol/ve;

    .line 134
    .line 135
    invoke-direct {v3}, Lcom/byazt/wol/ve;-><init>()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v1}, Lcom/byazt/wol/ve;->inflate(Landroid/content/Context;)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const v7, 0x7e06ffb0

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v7}, Landroid/view/View;->setId(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    new-instance v3, Lcom/byazt/wol/uj;

    .line 152
    .line 153
    invoke-direct {v3}, Lcom/byazt/wol/uj;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3, v1}, Lcom/byazt/wol/uj;->inflate(Landroid/content/Context;)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    const v7, 0x7e06fee8

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v7}, Landroid/view/View;->setId(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    new-instance v3, Landroid/widget/ImageView;

    .line 170
    .line 171
    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 172
    .line 173
    .line 174
    const v7, 0x7e06feaa

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v7}, Landroid/view/View;->setId(I)V

    .line 178
    .line 179
    .line 180
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 181
    .line 182
    invoke-direct {v7, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    .line 187
    .line 188
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 189
    .line 190
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 191
    .line 192
    .line 193
    const-string v7, "tt_new_play_video"

    .line 194
    .line 195
    invoke-static {v1, v7, v3, v12}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 196
    .line 197
    .line 198
    const/16 v7, 0x8

    .line 199
    .line 200
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 204
    .line 205
    .line 206
    new-instance v3, Lcom/byazt/ff/TTProgressBar;

    .line 207
    .line 208
    const v8, 0x103001f

    .line 209
    .line 210
    .line 211
    const/4 v9, 0x0

    .line 212
    invoke-direct {v3, v1, v9, v8}, Lcom/byazt/ff/TTProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 216
    .line 217
    .line 218
    const v8, 0x7e06fec5

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v8}, Landroid/view/View;->setId(I)V

    .line 222
    .line 223
    .line 224
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 225
    .line 226
    const/high16 v11, 0x3fc00000    # 1.5f

    .line 227
    .line 228
    invoke-static {v1, v11}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 229
    .line 230
    .line 231
    move-result v11

    .line 232
    invoke-direct {v8, v4, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 233
    .line 234
    .line 235
    const/16 v11, 0xc

    .line 236
    .line 237
    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    .line 245
    .line 246
    const/16 v9, 0x64

    .line 247
    .line 248
    invoke-virtual {v3, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 249
    .line 250
    .line 251
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    .line 252
    .line 253
    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 254
    .line 255
    .line 256
    const-string v11, "#A5FFFFFF"

    .line 257
    .line 258
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v11

    .line 262
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 263
    .line 264
    .line 265
    const/high16 v11, 0x3f800000    # 1.0f

    .line 266
    .line 267
    invoke-static {v1, v11}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 268
    .line 269
    .line 270
    move-result v11

    .line 271
    int-to-float v11, v11

    .line 272
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 273
    .line 274
    .line 275
    const/high16 v12, 0x40000000    # 2.0f

    .line 276
    .line 277
    invoke-static {v1, v12}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 278
    .line 279
    .line 280
    move-result v12

    .line 281
    invoke-virtual {v9, v4, v12}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 282
    .line 283
    .line 284
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    .line 285
    .line 286
    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 287
    .line 288
    .line 289
    const-string v14, "#FFFFFFFF"

    .line 290
    .line 291
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v14

    .line 295
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v13, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v13, v4, v12}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 302
    .line 303
    .line 304
    new-instance v14, Landroid/graphics/drawable/ClipDrawable;

    .line 305
    .line 306
    const/4 v15, 0x3

    .line 307
    const/4 v10, 0x1

    .line 308
    invoke-direct {v14, v13, v15, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 309
    .line 310
    .line 311
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    .line 312
    .line 313
    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v16, "#FFF85959"

    .line 317
    .line 318
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    move-result v5

    .line 322
    invoke-virtual {v13, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v13, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v13, v4, v12}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 329
    .line 330
    .line 331
    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    .line 332
    .line 333
    invoke-direct {v5, v13, v15, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 334
    .line 335
    .line 336
    new-array v11, v15, [Landroid/graphics/drawable/Drawable;

    .line 337
    .line 338
    aput-object v9, v11, v6

    .line 339
    .line 340
    aput-object v14, v11, v10

    .line 341
    .line 342
    const/4 v6, 0x2

    .line 343
    aput-object v5, v11, v6

    .line 344
    .line 345
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    .line 346
    .line 347
    invoke-direct {v5, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    .line 358
    .line 359
    new-instance v3, Lcom/byazt/lbn/TTViewStub;

    .line 360
    .line 361
    new-instance v5, Lcom/byazt/wol/a;

    .line 362
    .line 363
    invoke-direct {v5}, Lcom/byazt/wol/a;-><init>()V

    .line 364
    .line 365
    .line 366
    invoke-direct {v3, v1, v5}, Lcom/byazt/lbn/TTViewStub;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;)V

    .line 367
    .line 368
    .line 369
    const v5, 0x7e06ff20

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    .line 373
    .line 374
    .line 375
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 376
    .line 377
    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 384
    .line 385
    .line 386
    new-instance v3, Lcom/byazt/lbn/TTViewStub;

    .line 387
    .line 388
    new-instance v5, Lcom/byazt/wol/tt;

    .line 389
    .line 390
    invoke-direct {v5}, Lcom/byazt/wol/tt;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-direct {v3, v1, v5}, Lcom/byazt/lbn/TTViewStub;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;)V

    .line 394
    .line 395
    .line 396
    const v5, 0x7e06fed2

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    .line 400
    .line 401
    .line 402
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 403
    .line 404
    invoke-direct {v5, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 411
    .line 412
    .line 413
    new-instance v3, Lcom/byazt/lbn/TTViewStub;

    .line 414
    .line 415
    new-instance v4, Lcom/byazt/wol/sp;

    .line 416
    .line 417
    invoke-direct {v4}, Lcom/byazt/wol/sp;-><init>()V

    .line 418
    .line 419
    .line 420
    invoke-direct {v3, v1, v4}, Lcom/byazt/lbn/TTViewStub;-><init>(Landroid/content/Context;Lcom/byazt/lbn/c;)V

    .line 421
    .line 422
    .line 423
    const v1, 0x7e06ff74

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 427
    .line 428
    .line 429
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 430
    .line 431
    const/4 v4, -0x2

    .line 432
    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 433
    .line 434
    .line 435
    const/16 v4, 0xd

    .line 436
    .line 437
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 447
    .line 448
    .line 449
    return-void
.end method
