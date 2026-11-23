.class public Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "SourceFile"


# static fields
.field private static final t:Ljava/lang/String; = "EchelonLayoutManager"


# instance fields
.field private n:Landroid/content/Context;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->r:I

    .line 8
    .line 9
    const v0, 0x3f666666    # 0.9f

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->s:F

    .line 13
    .line 14
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->n:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->e()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    int-to-float p1, p1

    .line 21
    const v0, 0x3f5eb852    # 0.87f

    .line 22
    .line 23
    .line 24
    mul-float p1, p1, v0

    .line 25
    .line 26
    float-to-int p1, p1

    .line 27
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->o:I

    .line 28
    .line 29
    int-to-float p1, p1

    .line 30
    const v0, 0x3fbae148    # 1.46f

    .line 31
    .line 32
    .line 33
    mul-float p1, p1, v0

    .line 34
    .line 35
    float-to-int p1, p1

    .line 36
    iput p1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 37
    .line 38
    return-void
.end method

.method private g(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 22

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v0, v6, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->r:I

    .line 13
    .line 14
    iget v1, v6, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 15
    .line 16
    div-int/2addr v0, v1

    .line 17
    int-to-double v0, v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    double-to-int v0, v0

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->f()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget v2, v6, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 28
    .line 29
    sub-int/2addr v1, v2

    .line 30
    iget v3, v6, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->r:I

    .line 31
    .line 32
    rem-int/2addr v3, v2

    .line 33
    int-to-float v4, v3

    .line 34
    const/high16 v5, 0x3f800000    # 1.0f

    .line 35
    .line 36
    mul-float v4, v4, v5

    .line 37
    .line 38
    int-to-float v2, v2

    .line 39
    div-float v2, v4, v2

    .line 40
    .line 41
    new-instance v8, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    add-int/lit8 v9, v0, -0x1

    .line 47
    .line 48
    move v11, v9

    .line 49
    const/4 v12, 0x1

    .line 50
    :goto_0
    if-ltz v11, :cond_2

    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->f()I

    .line 53
    .line 54
    .line 55
    move-result v15

    .line 56
    iget v10, v6, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 57
    .line 58
    sub-int/2addr v15, v10

    .line 59
    div-int/lit8 v15, v15, 0x2

    .line 60
    .line 61
    int-to-double v13, v15

    .line 62
    move v15, v11

    .line 63
    const-wide v10, 0x3fe999999999999aL    # 0.8

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    int-to-double v5, v12

    .line 69
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->pow(DD)D

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    mul-double v13, v13, v5

    .line 74
    .line 75
    int-to-double v5, v1

    .line 76
    float-to-double v10, v2

    .line 77
    mul-double v10, v10, v13

    .line 78
    .line 79
    sub-double v10, v5, v10

    .line 80
    .line 81
    double-to-int v1, v10

    .line 82
    move-object/from16 v11, p0

    .line 83
    .line 84
    iget v10, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->s:F

    .line 85
    .line 86
    move/from16 v17, v9

    .line 87
    .line 88
    float-to-double v9, v10

    .line 89
    add-int/lit8 v7, v12, -0x1

    .line 90
    .line 91
    move/from16 v18, v3

    .line 92
    .line 93
    move/from16 v19, v4

    .line 94
    .line 95
    int-to-double v3, v7

    .line 96
    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 97
    .line 98
    .line 99
    move-result-wide v9

    .line 100
    iget v7, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->s:F

    .line 101
    .line 102
    const/high16 v16, 0x3f800000    # 1.0f

    .line 103
    .line 104
    sub-float v7, v16, v7

    .line 105
    .line 106
    mul-float v7, v7, v2

    .line 107
    .line 108
    sub-float v7, v16, v7

    .line 109
    .line 110
    move-wide/from16 v20, v3

    .line 111
    .line 112
    float-to-double v3, v7

    .line 113
    mul-double v9, v9, v3

    .line 114
    .line 115
    double-to-float v3, v9

    .line 116
    int-to-float v4, v1

    .line 117
    mul-float v4, v4, v16

    .line 118
    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->f()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    int-to-float v7, v7

    .line 124
    div-float/2addr v4, v7

    .line 125
    new-instance v7, La3/a;

    .line 126
    .line 127
    invoke-direct {v7, v1, v3, v2, v4}, La3/a;-><init>(IFFF)V

    .line 128
    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    invoke-virtual {v8, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    sub-double/2addr v5, v13

    .line 135
    double-to-int v3, v5

    .line 136
    if-gtz v3, :cond_1

    .line 137
    .line 138
    int-to-double v2, v3

    .line 139
    add-double/2addr v2, v13

    .line 140
    double-to-int v2, v2

    .line 141
    invoke-virtual {v7, v2}, La3/a;->i(I)V

    .line 142
    .line 143
    .line 144
    const/4 v2, 0x0

    .line 145
    invoke-virtual {v7, v2}, La3/a;->g(F)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7}, La3/a;->d()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->f()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    div-int/2addr v2, v3

    .line 157
    int-to-float v2, v2

    .line 158
    invoke-virtual {v7, v2}, La3/a;->f(F)V

    .line 159
    .line 160
    .line 161
    iget v2, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->s:F

    .line 162
    .line 163
    float-to-double v2, v2

    .line 164
    move-wide/from16 v4, v20

    .line 165
    .line 166
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 167
    .line 168
    .line 169
    move-result-wide v2

    .line 170
    double-to-float v2, v2

    .line 171
    invoke-virtual {v7, v2}, La3/a;->h(F)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_1
    add-int/lit8 v1, v15, -0x1

    .line 176
    .line 177
    add-int/lit8 v12, v12, 0x1

    .line 178
    .line 179
    move-object/from16 v7, p1

    .line 180
    .line 181
    move-object v6, v11

    .line 182
    move/from16 v9, v17

    .line 183
    .line 184
    move/from16 v4, v19

    .line 185
    .line 186
    const/high16 v5, 0x3f800000    # 1.0f

    .line 187
    .line 188
    move v11, v1

    .line 189
    move v1, v3

    .line 190
    move/from16 v3, v18

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_2
    move/from16 v18, v3

    .line 195
    .line 196
    move/from16 v19, v4

    .line 197
    .line 198
    move-object v11, v6

    .line 199
    move/from16 v17, v9

    .line 200
    .line 201
    const/4 v1, 0x0

    .line 202
    :goto_1
    iget v2, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->q:I

    .line 203
    .line 204
    if-ge v0, v2, :cond_3

    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->f()I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    sub-int v2, v2, v18

    .line 211
    .line 212
    new-instance v3, La3/a;

    .line 213
    .line 214
    iget v4, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 215
    .line 216
    int-to-float v4, v4

    .line 217
    div-float v4, v19, v4

    .line 218
    .line 219
    int-to-float v5, v2

    .line 220
    const/high16 v6, 0x3f800000    # 1.0f

    .line 221
    .line 222
    mul-float v5, v5, v6

    .line 223
    .line 224
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->f()I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    int-to-float v7, v7

    .line 229
    div-float/2addr v5, v7

    .line 230
    invoke-direct {v3, v2, v6, v4, v5}, La3/a;-><init>(IFFF)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v3}, La3/a;->e()La3/a;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    goto :goto_2

    .line 241
    :cond_3
    move/from16 v0, v17

    .line 242
    .line 243
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    add-int/lit8 v2, v6, -0x1

    .line 248
    .line 249
    sub-int v7, v0, v2

    .line 250
    .line 251
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    const/4 v3, 0x1

    .line 256
    sub-int/2addr v2, v3

    .line 257
    :goto_3
    if-ltz v2, :cond_6

    .line 258
    .line 259
    invoke-virtual {v11, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 264
    .line 265
    .line 266
    move-result v4

    .line 267
    if-gt v4, v0, :cond_5

    .line 268
    .line 269
    if-ge v4, v7, :cond_4

    .line 270
    .line 271
    goto :goto_4

    .line 272
    :cond_4
    move-object/from16 v9, p1

    .line 273
    .line 274
    goto :goto_5

    .line 275
    :cond_5
    :goto_4
    move-object/from16 v9, p1

    .line 276
    .line 277
    invoke-virtual {v11, v3, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 278
    .line 279
    .line 280
    :goto_5
    add-int/lit8 v2, v2, -0x1

    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_6
    move-object/from16 v9, p1

    .line 284
    .line 285
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 286
    .line 287
    .line 288
    const/4 v14, 0x0

    .line 289
    :goto_6
    if-ge v14, v6, :cond_7

    .line 290
    .line 291
    add-int v0, v7, v14

    .line 292
    .line 293
    invoke-virtual {v9, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v12

    .line 297
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    move-object v13, v0

    .line 302
    check-cast v13, La3/a;

    .line 303
    .line 304
    invoke-virtual {v11, v12}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    .line 305
    .line 306
    .line 307
    invoke-direct {v11, v12}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->h(Landroid/view/View;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->e()I

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    iget v1, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->o:I

    .line 315
    .line 316
    sub-int/2addr v0, v1

    .line 317
    div-int/lit8 v2, v0, 0x2

    .line 318
    .line 319
    invoke-virtual {v13}, La3/a;->d()I

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    iget v0, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->o:I

    .line 324
    .line 325
    add-int v4, v2, v0

    .line 326
    .line 327
    invoke-virtual {v13}, La3/a;->d()I

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    iget v1, v11, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 332
    .line 333
    add-int v5, v0, v1

    .line 334
    .line 335
    move-object/from16 v0, p0

    .line 336
    .line 337
    move-object v1, v12

    .line 338
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    div-int/lit8 v0, v0, 0x2

    .line 346
    .line 347
    int-to-float v0, v0

    .line 348
    invoke-virtual {v12, v0}, Landroid/view/View;->setPivotX(F)V

    .line 349
    .line 350
    .line 351
    const/4 v0, 0x0

    .line 352
    invoke-virtual {v12, v0}, Landroid/view/View;->setPivotY(F)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v13}, La3/a;->c()F

    .line 356
    .line 357
    .line 358
    move-result v1

    .line 359
    invoke-virtual {v12, v1}, Landroid/view/View;->setScaleX(F)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v13}, La3/a;->c()F

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    invoke-virtual {v12, v1}, Landroid/view/View;->setScaleY(F)V

    .line 367
    .line 368
    .line 369
    add-int/lit8 v14, v14, 0x1

    .line 370
    .line 371
    goto :goto_6

    .line 372
    :cond_7
    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->o:I

    .line 2
    .line 3
    const/high16 v1, 0x40000000    # 2.0f

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 10
    .line 11
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public f()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    sub-int/2addr v0, v1

    .line 15
    return v0
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->e()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    int-to-float p2, p2

    .line 22
    const v0, 0x3f5eb852    # 0.87f

    .line 23
    .line 24
    .line 25
    mul-float p2, p2, v0

    .line 26
    .line 27
    float-to-int p2, p2

    .line 28
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->o:I

    .line 29
    .line 30
    int-to-float p2, p2

    .line 31
    const v0, 0x3fbae148    # 1.46f

    .line 32
    .line 33
    .line 34
    mul-float p2, p2, v0

    .line 35
    .line 36
    float-to-int p2, p2

    .line 37
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->q:I

    .line 44
    .line 45
    iget p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 46
    .line 47
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->r:I

    .line 48
    .line 49
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    iget v0, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->q:I

    .line 54
    .line 55
    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 56
    .line 57
    mul-int v0, v0, v1

    .line 58
    .line 59
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    iput p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->r:I

    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->g(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 3

    .line 1
    iget p3, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->r:I

    .line 2
    .line 3
    add-int v0, p3, p1

    .line 4
    .line 5
    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 6
    .line 7
    add-int/2addr p3, p1

    .line 8
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    iget v1, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->q:I

    .line 13
    .line 14
    iget v2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->p:I

    .line 15
    .line 16
    mul-int v1, v1, v2

    .line 17
    .line 18
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    iput p3, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->r:I

    .line 23
    .line 24
    invoke-direct {p0, p2}, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->g(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 25
    .line 26
    .line 27
    iget p2, p0, Lcom/dingmouren/layoutmanagergroup/echelon/EchelonLayoutManager;->r:I

    .line 28
    .line 29
    sub-int/2addr p2, v0

    .line 30
    add-int/2addr p2, p1

    .line 31
    return p2
.end method
