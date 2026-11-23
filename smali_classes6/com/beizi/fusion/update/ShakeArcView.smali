.class public Lcom/beizi/fusion/update/ShakeArcView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:D

.field private g:D

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/beizi/fusion/update/ShakeArcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/beizi/fusion/update/ShakeArcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#CACCCA"

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->a:I

    const-string p1, "#FFFFFF"

    .line 5
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->b:I

    const/4 p1, 0x6

    .line 6
    iput p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->c:I

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 7
    iput-wide p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->f:D

    .line 8
    iput-wide p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->g:D

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->h:I

    const/4 p1, 0x2

    .line 10
    iput p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->i:I

    .line 11
    invoke-direct {p0}, Lcom/beizi/fusion/update/ShakeArcView;->a()V

    .line 12
    invoke-direct {p0}, Lcom/beizi/fusion/update/ShakeArcView;->b()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/beizi/fusion/update/ShakeArcView;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/beizi/fusion/update/ShakeArcView;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;ZFFFFFFI)V
    .locals 2

    .line 8
    :try_start_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p2, :cond_0

    .line 11
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    :goto_0
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 14
    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 15
    invoke-virtual {p2, p5, p6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    invoke-virtual {p2, p7, p8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 18
    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->e:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->e:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->e:Landroid/graphics/Paint;

    .line 18
    .line 19
    iget v1, p0, Lcom/beizi/fusion/update/ShakeArcView;->c:I

    .line 20
    .line 21
    int-to-float v1, v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->e:Landroid/graphics/Paint;

    .line 26
    .line 27
    iget v1, p0, Lcom/beizi/fusion/update/ShakeArcView;->b:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->e:Landroid/graphics/Paint;

    .line 33
    .line 34
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->e:Landroid/graphics/Paint;

    .line 40
    .line 41
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v6, Landroid/graphics/RectF;

    .line 7
    .line 8
    iget v0, v10, Lcom/beizi/fusion/update/ShakeArcView;->c:I

    .line 9
    .line 10
    div-int/lit8 v1, v0, 0x2

    .line 11
    .line 12
    int-to-float v1, v1

    .line 13
    const/4 v11, 0x2

    .line 14
    div-int/2addr v0, v11

    .line 15
    int-to-float v0, v0

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget v3, v10, Lcom/beizi/fusion/update/ShakeArcView;->c:I

    .line 21
    .line 22
    div-int/2addr v3, v11

    .line 23
    sub-int/2addr v2, v3

    .line 24
    int-to-float v2, v2

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget v4, v10, Lcom/beizi/fusion/update/ShakeArcView;->c:I

    .line 30
    .line 31
    div-int/2addr v4, v11

    .line 32
    sub-int/2addr v3, v4

    .line 33
    int-to-float v3, v3

    .line 34
    invoke-direct {v6, v1, v0, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 35
    .line 36
    .line 37
    const/high16 v2, 0x43570000    # 215.0f

    .line 38
    .line 39
    const/high16 v3, 0x42dc0000    # 110.0f

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    iget-object v5, v10, Lcom/beizi/fusion/update/ShakeArcView;->d:Landroid/graphics/Paint;

    .line 43
    .line 44
    move-object/from16 v0, p1

    .line 45
    .line 46
    move-object v1, v6

    .line 47
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    iget-wide v0, v10, Lcom/beizi/fusion/update/ShakeArcView;->g:D

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    const-wide/16 v2, 0x0

    .line 54
    .line 55
    cmpl-double v4, v0, v2

    .line 56
    .line 57
    if-ltz v4, :cond_3

    .line 58
    .line 59
    iget-wide v4, v10, Lcom/beizi/fusion/update/ShakeArcView;->f:D

    .line 60
    .line 61
    cmpl-double v8, v4, v2

    .line 62
    .line 63
    if-lez v8, :cond_3

    .line 64
    .line 65
    cmpl-double v2, v0, v4

    .line 66
    .line 67
    if-ltz v2, :cond_0

    .line 68
    .line 69
    iput-wide v4, v10, Lcom/beizi/fusion/update/ShakeArcView;->g:D

    .line 70
    .line 71
    :cond_0
    iget-wide v0, v10, Lcom/beizi/fusion/update/ShakeArcView;->g:D

    .line 72
    .line 73
    double-to-float v0, v0

    .line 74
    float-to-double v0, v0

    .line 75
    div-double/2addr v0, v4

    .line 76
    double-to-float v8, v0

    .line 77
    const-string v0, "sweepAngle"

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "sweepAngle:"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, ",mMaxProgress:"

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-wide v2, v10, Lcom/beizi/fusion/update/ShakeArcView;->f:D

    .line 98
    .line 99
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v2, ",mCurrentProgress:"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-wide v2, v10, Lcom/beizi/fusion/update/ShakeArcView;->g:D

    .line 108
    .line 109
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget v0, v10, Lcom/beizi/fusion/update/ShakeArcView;->h:I

    .line 120
    .line 121
    const/high16 v1, 0x42dc0000    # 110.0f

    .line 122
    .line 123
    if-ne v0, v7, :cond_1

    .line 124
    .line 125
    const/high16 v2, 0x43570000    # 215.0f

    .line 126
    .line 127
    mul-float v3, v8, v1

    .line 128
    .line 129
    const/4 v4, 0x0

    .line 130
    iget-object v5, v10, Lcom/beizi/fusion/update/ShakeArcView;->e:Landroid/graphics/Paint;

    .line 131
    .line 132
    move-object/from16 v0, p1

    .line 133
    .line 134
    move-object v1, v6

    .line 135
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_1
    if-ne v0, v11, :cond_2

    .line 140
    .line 141
    const v2, 0x43a28000    # 325.0f

    .line 142
    .line 143
    .line 144
    neg-float v0, v8

    .line 145
    mul-float v3, v0, v1

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    iget-object v5, v10, Lcom/beizi/fusion/update/ShakeArcView;->e:Landroid/graphics/Paint;

    .line 149
    .line 150
    move-object/from16 v0, p1

    .line 151
    .line 152
    move-object v1, v6

    .line 153
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_2
    const/high16 v2, 0x43870000    # 270.0f

    .line 158
    .line 159
    neg-float v0, v8

    .line 160
    const/high16 v9, 0x425c0000    # 55.0f

    .line 161
    .line 162
    mul-float v3, v0, v9

    .line 163
    .line 164
    const/4 v4, 0x0

    .line 165
    iget-object v5, v10, Lcom/beizi/fusion/update/ShakeArcView;->e:Landroid/graphics/Paint;

    .line 166
    .line 167
    move-object/from16 v0, p1

    .line 168
    .line 169
    move-object v1, v6

    .line 170
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 171
    .line 172
    .line 173
    const/high16 v2, 0x43870000    # 270.0f

    .line 174
    .line 175
    mul-float v3, v8, v9

    .line 176
    .line 177
    const/4 v4, 0x0

    .line 178
    iget-object v5, v10, Lcom/beizi/fusion/update/ShakeArcView;->e:Landroid/graphics/Paint;

    .line 179
    .line 180
    move-object/from16 v0, p1

    .line 181
    .line 182
    move-object v1, v6

    .line 183
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 184
    .line 185
    .line 186
    :cond_3
    :goto_0
    const-string v0, "#CACCCA"

    .line 187
    .line 188
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    iget-wide v1, v10, Lcom/beizi/fusion/update/ShakeArcView;->g:D

    .line 193
    .line 194
    iget-wide v3, v10, Lcom/beizi/fusion/update/ShakeArcView;->f:D

    .line 195
    .line 196
    cmpl-double v5, v1, v3

    .line 197
    .line 198
    if-nez v5, :cond_4

    .line 199
    .line 200
    const-string v0, "#FFFFFF"

    .line 201
    .line 202
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    :cond_4
    move v12, v0

    .line 207
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    div-int/2addr v2, v11

    .line 220
    iget v3, v10, Lcom/beizi/fusion/update/ShakeArcView;->c:I

    .line 221
    .line 222
    iget v4, v10, Lcom/beizi/fusion/update/ShakeArcView;->i:I

    .line 223
    .line 224
    mul-int v3, v3, v4

    .line 225
    .line 226
    add-int/2addr v2, v3

    .line 227
    div-int/lit8 v13, v0, 0x2

    .line 228
    .line 229
    div-int/lit8 v14, v1, 0x2

    .line 230
    .line 231
    const-wide v0, 0x4046800000000000L    # 45.0

    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 237
    .line 238
    .line 239
    move-result-wide v0

    .line 240
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 241
    .line 242
    .line 243
    move-result-wide v0

    .line 244
    double-to-float v0, v0

    .line 245
    iget v1, v10, Lcom/beizi/fusion/update/ShakeArcView;->h:I

    .line 246
    .line 247
    const-wide/high16 v15, 0x3ff8000000000000L    # 1.5

    .line 248
    .line 249
    const-wide v3, 0x3fc999999999999aL    # 0.2

    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    const-wide v5, 0x3fd999999999999aL    # 0.4

    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    if-ne v1, v7, :cond_5

    .line 260
    .line 261
    int-to-double v7, v13

    .line 262
    mul-double v7, v7, v15

    .line 263
    .line 264
    int-to-float v1, v2

    .line 265
    mul-float v0, v0, v1

    .line 266
    .line 267
    float-to-double v0, v0

    .line 268
    mul-double v5, v5, v0

    .line 269
    .line 270
    add-double/2addr v5, v7

    .line 271
    double-to-float v9, v5

    .line 272
    div-int/lit8 v2, v14, 0x2

    .line 273
    .line 274
    int-to-double v5, v2

    .line 275
    mul-double v0, v0, v3

    .line 276
    .line 277
    sub-double/2addr v5, v0

    .line 278
    double-to-float v4, v5

    .line 279
    add-double/2addr v7, v0

    .line 280
    double-to-float v5, v7

    .line 281
    div-int/2addr v14, v11

    .line 282
    int-to-float v8, v14

    .line 283
    const/4 v2, 0x1

    .line 284
    move-object/from16 v0, p0

    .line 285
    .line 286
    move-object/from16 v1, p1

    .line 287
    .line 288
    move v3, v9

    .line 289
    move v6, v8

    .line 290
    move v7, v9

    .line 291
    move v9, v12

    .line 292
    invoke-direct/range {v0 .. v9}, Lcom/beizi/fusion/update/ShakeArcView;->a(Landroid/graphics/Canvas;ZFFFFFFI)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_1

    .line 296
    .line 297
    :cond_5
    if-ne v1, v11, :cond_6

    .line 298
    .line 299
    div-int/lit8 v1, v13, 0x2

    .line 300
    .line 301
    int-to-double v7, v1

    .line 302
    int-to-float v1, v2

    .line 303
    mul-float v0, v0, v1

    .line 304
    .line 305
    float-to-double v0, v0

    .line 306
    mul-double v5, v5, v0

    .line 307
    .line 308
    sub-double/2addr v7, v5

    .line 309
    double-to-float v7, v7

    .line 310
    div-int/lit8 v2, v14, 0x2

    .line 311
    .line 312
    int-to-double v5, v2

    .line 313
    mul-double v0, v0, v3

    .line 314
    .line 315
    sub-double/2addr v5, v0

    .line 316
    double-to-float v4, v5

    .line 317
    div-int/2addr v13, v11

    .line 318
    int-to-double v2, v13

    .line 319
    sub-double/2addr v2, v0

    .line 320
    double-to-float v5, v2

    .line 321
    div-int/2addr v14, v11

    .line 322
    int-to-float v8, v14

    .line 323
    const/4 v2, 0x1

    .line 324
    move-object/from16 v0, p0

    .line 325
    .line 326
    move-object/from16 v1, p1

    .line 327
    .line 328
    move v3, v7

    .line 329
    move v6, v8

    .line 330
    move v9, v12

    .line 331
    invoke-direct/range {v0 .. v9}, Lcom/beizi/fusion/update/ShakeArcView;->a(Landroid/graphics/Canvas;ZFFFFFFI)V

    .line 332
    .line 333
    .line 334
    goto :goto_1

    .line 335
    :cond_6
    div-int/lit8 v1, v13, 0x2

    .line 336
    .line 337
    int-to-double v7, v1

    .line 338
    int-to-float v1, v2

    .line 339
    mul-float v0, v0, v1

    .line 340
    .line 341
    float-to-double v0, v0

    .line 342
    mul-double v17, v0, v5

    .line 343
    .line 344
    sub-double v7, v7, v17

    .line 345
    .line 346
    double-to-float v7, v7

    .line 347
    div-int/lit8 v2, v14, 0x2

    .line 348
    .line 349
    int-to-double v5, v2

    .line 350
    mul-double v19, v0, v3

    .line 351
    .line 352
    sub-double v5, v5, v19

    .line 353
    .line 354
    double-to-float v4, v5

    .line 355
    div-int/lit8 v0, v13, 0x2

    .line 356
    .line 357
    int-to-double v0, v0

    .line 358
    sub-double v0, v0, v19

    .line 359
    .line 360
    double-to-float v5, v0

    .line 361
    div-int/lit8 v0, v14, 0x2

    .line 362
    .line 363
    int-to-float v8, v0

    .line 364
    const/4 v2, 0x1

    .line 365
    move-object/from16 v0, p0

    .line 366
    .line 367
    move-object/from16 v1, p1

    .line 368
    .line 369
    move v3, v7

    .line 370
    move v6, v8

    .line 371
    move v9, v12

    .line 372
    invoke-direct/range {v0 .. v9}, Lcom/beizi/fusion/update/ShakeArcView;->a(Landroid/graphics/Canvas;ZFFFFFFI)V

    .line 373
    .line 374
    .line 375
    int-to-double v0, v13

    .line 376
    mul-double v0, v0, v15

    .line 377
    .line 378
    add-double v2, v0, v17

    .line 379
    .line 380
    double-to-float v7, v2

    .line 381
    div-int/lit8 v2, v14, 0x2

    .line 382
    .line 383
    int-to-double v2, v2

    .line 384
    sub-double v2, v2, v19

    .line 385
    .line 386
    double-to-float v4, v2

    .line 387
    add-double v0, v0, v19

    .line 388
    .line 389
    double-to-float v5, v0

    .line 390
    div-int/2addr v14, v11

    .line 391
    int-to-float v8, v14

    .line 392
    const/4 v2, 0x1

    .line 393
    move-object/from16 v0, p0

    .line 394
    .line 395
    move-object/from16 v1, p1

    .line 396
    .line 397
    move v3, v7

    .line 398
    move v6, v8

    .line 399
    move v9, v12

    .line 400
    invoke-direct/range {v0 .. v9}, Lcom/beizi/fusion/update/ShakeArcView;->a(Landroid/graphics/Canvas;ZFFFFFFI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .line 402
    .line 403
    :catch_0
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->c:I

    .line 9
    .line 10
    mul-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    add-int/2addr p1, v0

    .line 13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    iget v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->c:I

    .line 18
    .line 19
    mul-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    add-int/2addr p2, v0

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public setArrowDirection(I)Lcom/beizi/fusion/update/ShakeArcView;
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->h:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setCurrentProgress(D)Lcom/beizi/fusion/update/ShakeArcView;
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 2
    .line 3
    mul-double p1, p1, v0

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->g:D

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public setLineRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setLineWidth(I)V
    .locals 1

    .line 1
    :try_start_0
    iput p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->c:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->d:Landroid/graphics/Paint;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    int-to-float p1, p1

    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->e:Landroid/graphics/Paint;

    .line 12
    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/beizi/fusion/update/ShakeArcView;->c:I

    .line 16
    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :catch_0
    :cond_1
    return-void
.end method

.method public setMaxProgress(D)Lcom/beizi/fusion/update/ShakeArcView;
    .locals 2

    .line 1
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 2
    .line 3
    mul-double p1, p1, v0

    .line 4
    .line 5
    iput-wide p1, p0, Lcom/beizi/fusion/update/ShakeArcView;->f:D

    .line 6
    .line 7
    return-object p0
.end method
