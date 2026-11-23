.class public Lcom/join/mgps/adapter/a3;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/a3$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/adapter/a3$b;",
        ">;"
    }
.end annotation


# instance fields
.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field f:Landroid/content/Context;


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
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/a3;->e:Ljava/util/List;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/adapter/a3;->f:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "uid"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/a3;->f:Landroid/content/Context;

    .line 4
    .line 5
    const-class v2, Lcom/join/mgps/activity/GameDetailActivity_;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "fromid"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string p1, "_from"

    .line 16
    .line 17
    const/16 v1, 0x2b61

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string p1, "groupuid"

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/adapter/a3;->f:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method static synthetic b(Lcom/join/mgps/adapter/a3;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/a3;->a(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/adapter/a3;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/a3;->g(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static d(Landroid/content/Context;Landroid/view/View;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "itemView",
            "dataBean"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const v1, 0x7f0a14b1

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    .line 12
    const v2, 0x7f0a0858

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    const v3, 0x7f0a1767

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/widget/TextView;

    .line 29
    .line 30
    const v4, 0x7f0a10d8

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/widget/TextView;

    .line 38
    .line 39
    const v5, 0x7f0a0674

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getGame_list()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const/4 v6, 0x0

    .line 53
    if-nez v5, :cond_0

    .line 54
    .line 55
    const/4 v7, 0x0

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getBig_pic()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    sget-object v9, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 66
    .line 67
    const v10, 0x7f080caf

    .line 68
    .line 69
    .line 70
    invoke-static {v1, v10, v8, v9}, Lcom/join/android/app/common/utils/l;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 71
    .line 72
    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getTitle()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    if-eqz v4, :cond_2

    .line 83
    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getNick_name()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getBook_count()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    const-string v1, "0"

    .line 109
    .line 110
    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, "\u8ba2\u9605"

    .line 114
    .line 115
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    if-nez v2, :cond_5

    .line 126
    .line 127
    return-void

    .line 128
    :cond_5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 129
    .line 130
    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const v1, 0x7f0715d6

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    float-to-int v0, v0

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    const v4, 0x7f0714f9

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    float-to-int v3, v3

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    const v9, 0x7f071646

    .line 160
    .line 161
    .line 162
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    .line 163
    .line 164
    .line 165
    move-result v8

    .line 166
    float-to-int v8, v8

    .line 167
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 168
    .line 169
    .line 170
    move-result-object v9

    .line 171
    invoke-virtual {v9, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    float-to-int v4, v4

    .line 176
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    const v11, 0x7f0712fa

    .line 189
    .line 190
    .line 191
    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    const/4 v11, 0x0

    .line 196
    :goto_1
    const/4 v12, 0x4

    .line 197
    if-ge v11, v12, :cond_15

    .line 198
    .line 199
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    const v14, 0x7f0d0361

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13, v14, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v13

    .line 210
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 211
    .line 212
    const/4 v15, 0x3

    .line 213
    if-ne v11, v15, :cond_6

    .line 214
    .line 215
    move v12, v8

    .line 216
    goto :goto_2

    .line 217
    :cond_6
    move v12, v3

    .line 218
    :goto_2
    invoke-direct {v14, v12, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    .line 220
    .line 221
    if-lez v11, :cond_7

    .line 222
    .line 223
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 224
    .line 225
    .line 226
    :cond_7
    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    .line 228
    .line 229
    const v12, 0x7f0a149f

    .line 230
    .line 231
    .line 232
    invoke-virtual {v13, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    check-cast v12, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 237
    .line 238
    const v14, 0x7f0a1b35

    .line 239
    .line 240
    .line 241
    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 242
    .line 243
    .line 244
    move-result-object v14

    .line 245
    const v6, 0x7f0a196e

    .line 246
    .line 247
    .line 248
    invoke-virtual {v13, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    check-cast v6, Landroid/widget/TextView;

    .line 253
    .line 254
    const/16 v16, 0x1

    .line 255
    .line 256
    if-ne v11, v15, :cond_8

    .line 257
    .line 258
    const/16 v17, 0x1

    .line 259
    .line 260
    goto :goto_3

    .line 261
    :cond_8
    const/16 v17, 0x0

    .line 262
    .line 263
    :goto_3
    if-eqz v17, :cond_9

    .line 264
    .line 265
    move/from16 v18, v9

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_9
    move/from16 v18, v1

    .line 269
    .line 270
    :goto_4
    invoke-virtual {v12}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 271
    .line 272
    .line 273
    move-result-object v19

    .line 274
    move-object/from16 v10, v19

    .line 275
    .line 276
    check-cast v10, Lcom/facebook/drawee/generic/a;

    .line 277
    .line 278
    invoke-static/range {v18 .. v18}, Lcom/facebook/drawee/generic/RoundingParams;->d(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 279
    .line 280
    .line 281
    move-result-object v15

    .line 282
    invoke-virtual {v10, v15}, Lcom/facebook/drawee/generic/a;->X(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 283
    .line 284
    .line 285
    if-eqz v17, :cond_a

    .line 286
    .line 287
    if-eqz v14, :cond_a

    .line 288
    .line 289
    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    .line 290
    .line 291
    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 292
    .line 293
    .line 294
    const/high16 v15, -0x67000000

    .line 295
    .line 296
    invoke-virtual {v10, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v10, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v14, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_a
    if-eqz v14, :cond_b

    .line 307
    .line 308
    const v10, 0x106000d

    .line 309
    .line 310
    .line 311
    invoke-virtual {v14, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 312
    .line 313
    .line 314
    :cond_b
    :goto_5
    const/4 v15, 0x3

    .line 315
    if-ge v11, v15, :cond_f

    .line 316
    .line 317
    if-ge v11, v7, :cond_c

    .line 318
    .line 319
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v15

    .line 323
    check-cast v15, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;

    .line 324
    .line 325
    invoke-virtual {v15}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v15

    .line 329
    const v10, 0x7f080caf

    .line 330
    .line 331
    .line 332
    invoke-static {v12, v10, v15}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 333
    .line 334
    .line 335
    const/4 v10, 0x0

    .line 336
    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :cond_c
    const/4 v10, 0x4

    .line 341
    invoke-virtual {v12, v10}, Landroid/view/View;->setVisibility(I)V

    .line 342
    .line 343
    .line 344
    :goto_6
    const/16 v10, 0x8

    .line 345
    .line 346
    if-eqz v14, :cond_d

    .line 347
    .line 348
    invoke-virtual {v14, v10}, Landroid/view/View;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    :cond_d
    if-eqz v6, :cond_e

    .line 352
    .line 353
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    :cond_e
    const v10, 0x7f080caf

    .line 357
    .line 358
    .line 359
    const/4 v15, 0x0

    .line 360
    goto :goto_a

    .line 361
    :cond_f
    const/4 v10, 0x4

    .line 362
    if-lt v7, v10, :cond_10

    .line 363
    .line 364
    const/4 v15, 0x3

    .line 365
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v15

    .line 369
    check-cast v15, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;

    .line 370
    .line 371
    invoke-virtual {v15}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean$GameListBean;->getGame_ico()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v15

    .line 375
    const v10, 0x7f080caf

    .line 376
    .line 377
    .line 378
    invoke-static {v12, v10, v15}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 379
    .line 380
    .line 381
    const/4 v15, 0x0

    .line 382
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 383
    .line 384
    .line 385
    goto :goto_7

    .line 386
    :cond_10
    const v10, 0x7f080caf

    .line 387
    .line 388
    .line 389
    const/4 v15, 0x4

    .line 390
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 391
    .line 392
    .line 393
    :goto_7
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;->getGame_count()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v12

    .line 397
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    goto :goto_8

    .line 402
    :catch_0
    nop

    .line 403
    move v12, v7

    .line 404
    :goto_8
    const/4 v15, 0x4

    .line 405
    if-lt v7, v15, :cond_11

    .line 406
    .line 407
    goto :goto_9

    .line 408
    :cond_11
    const/16 v16, 0x0

    .line 409
    .line 410
    :goto_9
    if-eqz v16, :cond_12

    .line 411
    .line 412
    if-eqz v14, :cond_12

    .line 413
    .line 414
    if-eqz v6, :cond_12

    .line 415
    .line 416
    const/4 v15, 0x0

    .line 417
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 421
    .line 422
    .line 423
    new-instance v14, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v12, "\u6b3e"

    .line 432
    .line 433
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v12

    .line 440
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    .line 442
    .line 443
    goto :goto_a

    .line 444
    :cond_12
    const/4 v15, 0x0

    .line 445
    const/16 v12, 0x8

    .line 446
    .line 447
    if-eqz v14, :cond_13

    .line 448
    .line 449
    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    .line 450
    .line 451
    .line 452
    :cond_13
    if-eqz v6, :cond_14

    .line 453
    .line 454
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 455
    .line 456
    .line 457
    :cond_14
    :goto_a
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 458
    .line 459
    .line 460
    add-int/lit8 v11, v11, 0x1

    .line 461
    .line 462
    const/4 v6, 0x0

    .line 463
    goto/16 :goto_1

    .line 464
    .line 465
    :cond_15
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a3;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "22-"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v2, p0, Lcom/join/mgps/adapter/a3;->f:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/t;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public e(Lcom/join/mgps/adapter/a3$b;I)V
    .locals 3
    .param p1    # Lcom/join/mgps/adapter/a3$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a3;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;

    .line 8
    .line 9
    iget-object v1, p1, Lcom/join/mgps/adapter/a3$b;->d:Landroid/view/View;

    .line 10
    .line 11
    new-instance v2, Lcom/join/mgps/adapter/a3$a;

    .line 12
    .line 13
    invoke-direct {v2, p0, v0, p2}, Lcom/join/mgps/adapter/a3$a;-><init>(Lcom/join/mgps/adapter/a3;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/join/mgps/adapter/a3;->f:Landroid/content/Context;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 22
    .line 23
    invoke-static {p2, p1, v0}, Lcom/join/mgps/adapter/a3;->d(Landroid/content/Context;Landroid/view/View;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$DataBean;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public f(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/a3$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/a3;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const v0, 0x7f0d0360

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance p2, Lcom/join/mgps/adapter/a3$b;

    .line 16
    .line 17
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/a3$b;-><init>(Lcom/join/mgps/adapter/a3;Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/a3;->e:Ljava/util/List;

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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/adapter/a3$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/a3;->e(Lcom/join/mgps/adapter/a3$b;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/a3;->f(Landroid/view/ViewGroup;I)Lcom/join/mgps/adapter/a3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
