.class public Lcom/byazt/ows/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/lbn/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x42c,
        0x36
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/Context;)Landroid/view/View;
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const v2, 0x7e06fe92

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    const/4 v4, -0x2

    .line 18
    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 29
    .line 30
    .line 31
    new-instance v5, Landroid/widget/RelativeLayout;

    .line 32
    .line 33
    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    const v6, 0x7e06fe91

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 40
    .line 41
    .line 42
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    .line 44
    const/high16 v7, 0x42300000    # 44.0f

    .line 45
    .line 46
    invoke-static {v0, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    invoke-direct {v6, v3, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    new-instance v6, Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    const v7, 0x7e06fef9

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 65
    .line 66
    .line 67
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 68
    .line 69
    invoke-direct {v8, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    .line 71
    .line 72
    const/16 v9, 0xf

    .line 73
    .line 74
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    .line 76
    .line 77
    const/high16 v10, 0x40a00000    # 5.0f

    .line 78
    .line 79
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 84
    .line 85
    .line 86
    move-result v12

    .line 87
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    invoke-virtual {v8, v11, v12, v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v2}, Landroid/view/View;->setClickable(Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v6, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    invoke-virtual {v6, v8, v11, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    .line 125
    .line 126
    const-string v8, "#6E6E6E"

    .line 127
    .line 128
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    new-instance v11, Lcom/byazt/vfu/c;

    .line 133
    .line 134
    const/16 v12, 0x30

    .line 135
    .line 136
    invoke-direct {v11, v12}, Lcom/byazt/vfu/c;-><init>(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v8}, Lcom/byazt/vfu/c;->c(I)V

    .line 140
    .line 141
    .line 142
    const/high16 v13, 0x40000000    # 2.0f

    .line 143
    .line 144
    invoke-static {v0, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 145
    .line 146
    .line 147
    move-result v13

    .line 148
    int-to-float v13, v13

    .line 149
    invoke-virtual {v11, v13}, Lcom/byazt/vfu/c;->c(F)V

    .line 150
    .line 151
    .line 152
    const-string v14, "#B1B1B1"

    .line 153
    .line 154
    invoke-static {v14}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    new-instance v15, Lcom/byazt/vfu/c;

    .line 159
    .line 160
    invoke-direct {v15, v12}, Lcom/byazt/vfu/c;-><init>(I)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v15, v14}, Lcom/byazt/vfu/c;->c(I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v15, v13}, Lcom/byazt/vfu/c;->c(F)V

    .line 167
    .line 168
    .line 169
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    .line 170
    .line 171
    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 172
    .line 173
    .line 174
    const v16, 0x10100a7

    .line 175
    .line 176
    .line 177
    filled-new-array/range {v16 .. v16}, [I

    .line 178
    .line 179
    .line 180
    move-result-object v12

    .line 181
    invoke-virtual {v3, v12, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 182
    .line 183
    .line 184
    const/4 v11, 0x0

    .line 185
    new-array v12, v11, [I

    .line 186
    .line 187
    invoke-virtual {v3, v12, v15}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    .line 195
    .line 196
    new-instance v3, Landroid/widget/ImageView;

    .line 197
    .line 198
    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 199
    .line 200
    .line 201
    const v6, 0x7e06fef8

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 205
    .line 206
    .line 207
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 208
    .line 209
    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 213
    .line 214
    .line 215
    const/16 v12, 0x11

    .line 216
    .line 217
    invoke-virtual {v6, v12, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 227
    .line 228
    .line 229
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 238
    .line 239
    .line 240
    move-result v15

    .line 241
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 242
    .line 243
    .line 244
    move-result v10

    .line 245
    invoke-virtual {v3, v6, v7, v15, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 246
    .line 247
    .line 248
    new-instance v6, Lcom/byazt/vfu/ve;

    .line 249
    .line 250
    const/16 v7, 0x30

    .line 251
    .line 252
    invoke-direct {v6, v7}, Lcom/byazt/vfu/ve;-><init>(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v6, v8}, Lcom/byazt/vfu/ve;->c(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6, v13}, Lcom/byazt/vfu/ve;->c(F)V

    .line 259
    .line 260
    .line 261
    new-instance v8, Lcom/byazt/vfu/ve;

    .line 262
    .line 263
    invoke-direct {v8, v7}, Lcom/byazt/vfu/ve;-><init>(I)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v8, v14}, Lcom/byazt/vfu/ve;->c(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v8, v13}, Lcom/byazt/vfu/ve;->c(F)V

    .line 270
    .line 271
    .line 272
    new-instance v7, Landroid/graphics/drawable/StateListDrawable;

    .line 273
    .line 274
    invoke-direct {v7}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 275
    .line 276
    .line 277
    filled-new-array/range {v16 .. v16}, [I

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    invoke-virtual {v7, v10, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 282
    .line 283
    .line 284
    new-array v6, v11, [I

    .line 285
    .line 286
    invoke-virtual {v7, v6, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 293
    .line 294
    .line 295
    new-instance v3, Landroid/widget/TextView;

    .line 296
    .line 297
    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 298
    .line 299
    .line 300
    const v6, 0x7e06fff0

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 304
    .line 305
    .line 306
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 307
    .line 308
    const/high16 v7, 0x43480000    # 200.0f

    .line 309
    .line 310
    invoke-static {v0, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    invoke-direct {v6, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 315
    .line 316
    .line 317
    const/16 v7, 0xd

    .line 318
    .line 319
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 323
    .line 324
    .line 325
    const/high16 v8, 0x41c80000    # 25.0f

    .line 326
    .line 327
    invoke-static {v0, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 328
    .line 329
    .line 330
    move-result v10

    .line 331
    invoke-static {v0, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    invoke-virtual {v6, v10, v11, v13, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    .line 340
    .line 341
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 342
    .line 343
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    invoke-static {v0, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    invoke-virtual {v3, v6, v11, v8, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 364
    .line 365
    .line 366
    new-instance v3, Landroid/widget/TextView;

    .line 367
    .line 368
    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 369
    .line 370
    .line 371
    const v6, 0x7e06feab

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 375
    .line 376
    .line 377
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 378
    .line 379
    invoke-direct {v6, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 380
    .line 381
    .line 382
    const/16 v4, 0x15

    .line 383
    .line 384
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 385
    .line 386
    .line 387
    const/16 v8, 0xb

    .line 388
    .line 389
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 393
    .line 394
    .line 395
    const/high16 v9, 0x41700000    # 15.0f

    .line 396
    .line 397
    invoke-static {v0, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 398
    .line 399
    .line 400
    move-result v10

    .line 401
    invoke-virtual {v6, v11, v11, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    .line 406
    .line 407
    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    .line 408
    .line 409
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 410
    .line 411
    .line 412
    const v6, 0x800005

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 419
    .line 420
    .line 421
    const-string v6, "\u53cd\u9988"

    .line 422
    .line 423
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    .line 425
    .line 426
    const-string v6, "#808080"

    .line 427
    .line 428
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    move-result v6

    .line 432
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 439
    .line 440
    .line 441
    new-instance v3, Landroid/widget/LinearLayout;

    .line 442
    .line 443
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 444
    .line 445
    .line 446
    const v5, 0x7e06fedc

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    .line 450
    .line 451
    .line 452
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 453
    .line 454
    const/high16 v6, 0x429a0000    # 77.0f

    .line 455
    .line 456
    invoke-static {v0, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 457
    .line 458
    .line 459
    move-result v6

    .line 460
    const/4 v10, -0x1

    .line 461
    invoke-direct {v5, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    .line 466
    .line 467
    const-string v6, "#ffffff"

    .line 468
    .line 469
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    move-result v6

    .line 473
    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 477
    .line 478
    .line 479
    const/16 v6, 0x8

    .line 480
    .line 481
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 482
    .line 483
    .line 484
    new-instance v6, Landroid/widget/ImageView;

    .line 485
    .line 486
    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 487
    .line 488
    .line 489
    const v10, 0x7e06fe90

    .line 490
    .line 491
    .line 492
    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    .line 493
    .line 494
    .line 495
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 496
    .line 497
    const/high16 v13, 0x3f800000    # 1.0f

    .line 498
    .line 499
    invoke-static {v0, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 500
    .line 501
    .line 502
    move-result v13

    .line 503
    const/4 v14, -0x1

    .line 504
    invoke-direct {v10, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 505
    .line 506
    .line 507
    invoke-virtual {v6, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    .line 509
    .line 510
    const-string v10, "#F2F2F2"

    .line 511
    .line 512
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 513
    .line 514
    .line 515
    move-result v10

    .line 516
    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 520
    .line 521
    .line 522
    new-instance v6, Landroid/widget/TextView;

    .line 523
    .line 524
    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 525
    .line 526
    .line 527
    const v10, 0x7e06fe9a

    .line 528
    .line 529
    .line 530
    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    .line 531
    .line 532
    .line 533
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 534
    .line 535
    invoke-static {v0, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 536
    .line 537
    .line 538
    move-result v13

    .line 539
    const/4 v14, -0x1

    .line 540
    invoke-direct {v10, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 541
    .line 542
    .line 543
    const/high16 v13, 0x41800000    # 16.0f

    .line 544
    .line 545
    invoke-static {v0, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 546
    .line 547
    .line 548
    move-result v14

    .line 549
    const/high16 v15, 0x41000000    # 8.0f

    .line 550
    .line 551
    invoke-static {v0, v15}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 552
    .line 553
    .line 554
    move-result v8

    .line 555
    invoke-static {v0, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 556
    .line 557
    .line 558
    move-result v4

    .line 559
    invoke-virtual {v10, v14, v8, v4, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 560
    .line 561
    .line 562
    invoke-virtual {v6, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 563
    .line 564
    .line 565
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 566
    .line 567
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 571
    .line 572
    .line 573
    const-string v4, "#999999"

    .line 574
    .line 575
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 576
    .line 577
    .line 578
    move-result v8

    .line 579
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 580
    .line 581
    .line 582
    const/4 v8, 0x2

    .line 583
    const/high16 v10, 0x41200000    # 10.0f

    .line 584
    .line 585
    invoke-virtual {v6, v8, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 589
    .line 590
    .line 591
    new-instance v6, Landroid/widget/TextView;

    .line 592
    .line 593
    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 594
    .line 595
    .line 596
    const v14, 0x7e06fef5

    .line 597
    .line 598
    .line 599
    invoke-virtual {v6, v14}, Landroid/view/View;->setId(I)V

    .line 600
    .line 601
    .line 602
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 603
    .line 604
    invoke-static {v0, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 605
    .line 606
    .line 607
    move-result v9

    .line 608
    const/4 v7, -0x1

    .line 609
    invoke-direct {v14, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 610
    .line 611
    .line 612
    invoke-static {v0, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 613
    .line 614
    .line 615
    move-result v7

    .line 616
    const/high16 v9, 0x40e00000    # 7.0f

    .line 617
    .line 618
    invoke-static {v0, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 619
    .line 620
    .line 621
    move-result v9

    .line 622
    invoke-static {v0, v13}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 623
    .line 624
    .line 625
    move-result v13

    .line 626
    invoke-virtual {v14, v7, v9, v13, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v6, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    .line 631
    .line 632
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 633
    .line 634
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 638
    .line 639
    .line 640
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 641
    .line 642
    .line 643
    move-result v2

    .line 644
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v6, v8, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 651
    .line 652
    .line 653
    new-instance v2, Landroid/widget/RelativeLayout;

    .line 654
    .line 655
    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 656
    .line 657
    .line 658
    const v4, 0x7e06fe8f

    .line 659
    .line 660
    .line 661
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 662
    .line 663
    .line 664
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 665
    .line 666
    const/4 v6, -0x1

    .line 667
    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 668
    .line 669
    .line 670
    invoke-static {v0, v15}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 671
    .line 672
    .line 673
    move-result v6

    .line 674
    invoke-virtual {v5, v11, v6, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    .line 679
    .line 680
    const-string v4, "#26C4C4C4"

    .line 681
    .line 682
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 683
    .line 684
    .line 685
    move-result v4

    .line 686
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 687
    .line 688
    .line 689
    new-instance v4, Landroid/widget/TextView;

    .line 690
    .line 691
    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 692
    .line 693
    .line 694
    const v5, 0x7e06fe8e

    .line 695
    .line 696
    .line 697
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 698
    .line 699
    .line 700
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 701
    .line 702
    const/high16 v6, 0x428c0000    # 70.0f

    .line 703
    .line 704
    invoke-static {v0, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 705
    .line 706
    .line 707
    move-result v7

    .line 708
    const/4 v9, -0x1

    .line 709
    invoke-direct {v5, v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 710
    .line 711
    .line 712
    const/16 v7, 0x14

    .line 713
    .line 714
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 715
    .line 716
    .line 717
    const/16 v7, 0x9

    .line 718
    .line 719
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 720
    .line 721
    .line 722
    const/16 v7, 0xa

    .line 723
    .line 724
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 725
    .line 726
    .line 727
    const/16 v9, 0xc

    .line 728
    .line 729
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 730
    .line 731
    .line 732
    const/high16 v9, 0x42800000    # 64.0f

    .line 733
    .line 734
    invoke-static {v0, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 735
    .line 736
    .line 737
    move-result v9

    .line 738
    invoke-virtual {v5, v9, v11, v11, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 745
    .line 746
    .line 747
    const-string v5, "\u5e94\u7528\u6743\u9650"

    .line 748
    .line 749
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    .line 751
    .line 752
    const-string v5, "#1A73E8"

    .line 753
    .line 754
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 755
    .line 756
    .line 757
    move-result v5

    .line 758
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 759
    .line 760
    .line 761
    const/high16 v5, 0x41400000    # 12.0f

    .line 762
    .line 763
    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 764
    .line 765
    .line 766
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 767
    .line 768
    .line 769
    new-instance v4, Landroid/widget/ImageView;

    .line 770
    .line 771
    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 772
    .line 773
    .line 774
    const v5, 0x7e06fe8d

    .line 775
    .line 776
    .line 777
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 778
    .line 779
    .line 780
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 781
    .line 782
    const/high16 v9, 0x3f000000    # 0.5f

    .line 783
    .line 784
    invoke-static {v0, v9}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 785
    .line 786
    .line 787
    move-result v9

    .line 788
    const/high16 v10, 0x41100000    # 9.0f

    .line 789
    .line 790
    invoke-static {v0, v10}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 791
    .line 792
    .line 793
    move-result v10

    .line 794
    invoke-direct {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 795
    .line 796
    .line 797
    const/16 v9, 0xd

    .line 798
    .line 799
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    .line 804
    .line 805
    const-string v5, "#D8D8D8"

    .line 806
    .line 807
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 808
    .line 809
    .line 810
    move-result v5

    .line 811
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 815
    .line 816
    .line 817
    new-instance v4, Landroid/widget/TextView;

    .line 818
    .line 819
    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 820
    .line 821
    .line 822
    const v5, 0x7e06fef4

    .line 823
    .line 824
    .line 825
    invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V

    .line 826
    .line 827
    .line 828
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 829
    .line 830
    invoke-static {v0, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 831
    .line 832
    .line 833
    move-result v6

    .line 834
    const/4 v9, -0x1

    .line 835
    invoke-direct {v5, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 836
    .line 837
    .line 838
    const/16 v6, 0x15

    .line 839
    .line 840
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 841
    .line 842
    .line 843
    const/16 v6, 0xb

    .line 844
    .line 845
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 849
    .line 850
    .line 851
    const/16 v6, 0xc

    .line 852
    .line 853
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 854
    .line 855
    .line 856
    const/high16 v6, 0x42800000    # 64.0f

    .line 857
    .line 858
    invoke-static {v0, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 859
    .line 860
    .line 861
    move-result v0

    .line 862
    invoke-virtual {v5, v11, v11, v0, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 869
    .line 870
    .line 871
    const-string v0, "\u9690\u79c1\u534f\u8bae"

    .line 872
    .line 873
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    .line 875
    .line 876
    const-string v0, "#1A73E8"

    .line 877
    .line 878
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 879
    .line 880
    .line 881
    move-result v0

    .line 882
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 883
    .line 884
    .line 885
    const/high16 v0, 0x41400000    # 12.0f

    .line 886
    .line 887
    invoke-virtual {v4, v8, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 894
    .line 895
    .line 896
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 897
    .line 898
    .line 899
    return-object v1
.end method
