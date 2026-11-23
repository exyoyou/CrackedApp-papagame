.class public Lcom/kwad/components/core/page/widget/TextProgressBar;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# instance fields
.field private afW:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private afX:Landroid/graphics/LinearGradient;

.field private afY:Landroid/graphics/Matrix;

.field private afZ:Z

.field private aga:Z

.field private agb:Z

.field private agc:I

.field private agd:I

.field private age:Landroid/graphics/drawable/Drawable;

.field private agf:I

.field private agg:Landroid/graphics/Rect;

.field private agh:[I

.field private agi:I

.field private agj:I

.field private agk:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/kwad/components/core/page/widget/TextProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/kwad/sdk/wrapper/m;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->aga:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agb:Z

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 6
    invoke-direct {p0}, Lcom/kwad/components/core/page/widget/TextProgressBar;->uV()V

    return-void
.end method

.method private setProgressText(I)V
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    .line 4
    mul-float p1, p1, v0

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    div-float/2addr p1, v0

    .line 12
    const/high16 v0, 0x42c80000    # 100.0f

    .line 13
    .line 14
    mul-float p1, p1, v0

    .line 15
    .line 16
    float-to-int p1, p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p1, "%"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method private uV()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const/high16 v3, 0x41400000    # 12.0f

    .line 25
    .line 26
    invoke-static {v2, v3}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/high16 v2, 0x40000000    # 2.0f

    .line 39
    .line 40
    invoke-static {v0, v2}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agf:I

    .line 45
    .line 46
    new-instance v0, Landroid/graphics/RectF;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 52
    .line 53
    iput v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agi:I

    .line 54
    .line 55
    const v0, -0x1c99a

    .line 56
    .line 57
    .line 58
    iput v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agj:I

    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afZ:Z

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/kwad/components/core/page/widget/TextProgressBar;->setProgress(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v2, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->aga:Z

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 12
    .line 13
    .line 14
    const/high16 v2, 0x42b40000    # 90.0f

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    neg-int v2, v2

    .line 24
    int-to-float v2, v2

    .line 25
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 26
    .line 27
    .line 28
    invoke-super/range {p0 .. p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v2, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    iget-object v2, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 47
    .line 48
    iget-object v4, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    iget-object v6, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 55
    .line 56
    const/4 v7, 0x0

    .line 57
    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    div-int/lit8 v2, v2, 0x2

    .line 65
    .line 66
    iget-object v4, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    sub-int/2addr v2, v4

    .line 73
    iget-object v4, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->age:Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    iget-object v5, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->age:Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    iget-object v7, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 92
    .line 93
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    sub-int/2addr v6, v7

    .line 98
    sub-int/2addr v6, v4

    .line 99
    iget v7, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agf:I

    .line 100
    .line 101
    sub-int/2addr v6, v7

    .line 102
    div-int/lit8 v6, v6, 0x2

    .line 103
    .line 104
    iget-object v7, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->age:Landroid/graphics/drawable/Drawable;

    .line 105
    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    sub-int/2addr v8, v5

    .line 111
    div-int/lit8 v8, v8, 0x2

    .line 112
    .line 113
    add-int/2addr v4, v6

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    add-int/2addr v9, v5

    .line 119
    div-int/lit8 v9, v9, 0x2

    .line 120
    .line 121
    invoke-virtual {v7, v6, v8, v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    .line 123
    .line 124
    iget-object v5, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->age:Landroid/graphics/drawable/Drawable;

    .line 125
    .line 126
    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    .line 128
    .line 129
    iget v5, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agf:I

    .line 130
    .line 131
    add-int/2addr v4, v5

    .line 132
    goto :goto_1

    .line 133
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    div-int/lit8 v4, v4, 0x2

    .line 138
    .line 139
    iget-object v5, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 140
    .line 141
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    sub-int/2addr v4, v5

    .line 146
    :goto_1
    iget-object v5, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agh:[I

    .line 147
    .line 148
    if-eqz v5, :cond_5

    .line 149
    .line 150
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    int-to-float v5, v5

    .line 155
    const/high16 v6, 0x3f800000    # 1.0f

    .line 156
    .line 157
    mul-float v5, v5, v6

    .line 158
    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    int-to-float v7, v7

    .line 164
    div-float/2addr v5, v7

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 166
    .line 167
    .line 168
    move-result v7

    .line 169
    int-to-float v7, v7

    .line 170
    mul-float v5, v5, v7

    .line 171
    .line 172
    int-to-float v15, v4

    .line 173
    cmpl-float v7, v5, v15

    .line 174
    .line 175
    if-ltz v7, :cond_4

    .line 176
    .line 177
    iget-object v7, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afX:Landroid/graphics/LinearGradient;

    .line 178
    .line 179
    if-nez v7, :cond_3

    .line 180
    .line 181
    new-instance v14, Landroid/graphics/LinearGradient;

    .line 182
    .line 183
    const/4 v9, 0x0

    .line 184
    iget-object v7, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 185
    .line 186
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    add-int/2addr v4, v7

    .line 191
    int-to-float v10, v4

    .line 192
    const/4 v11, 0x0

    .line 193
    iget-object v12, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agh:[I

    .line 194
    .line 195
    const/4 v13, 0x0

    .line 196
    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 197
    .line 198
    move-object v7, v14

    .line 199
    move v8, v15

    .line 200
    move-object v3, v14

    .line 201
    move-object v14, v4

    .line 202
    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 203
    .line 204
    .line 205
    iput-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afX:Landroid/graphics/LinearGradient;

    .line 206
    .line 207
    new-instance v3, Landroid/graphics/Matrix;

    .line 208
    .line 209
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 210
    .line 211
    .line 212
    iput-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afY:Landroid/graphics/Matrix;

    .line 213
    .line 214
    iget-object v4, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afX:Landroid/graphics/LinearGradient;

    .line 215
    .line 216
    invoke-virtual {v4, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 217
    .line 218
    .line 219
    :cond_3
    iget-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 220
    .line 221
    iget-object v4, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afX:Landroid/graphics/LinearGradient;

    .line 222
    .line 223
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 224
    .line 225
    .line 226
    sub-float/2addr v5, v15

    .line 227
    mul-float v5, v5, v6

    .line 228
    .line 229
    iget-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agg:Landroid/graphics/Rect;

    .line 230
    .line 231
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    int-to-float v3, v3

    .line 236
    div-float/2addr v5, v3

    .line 237
    iget-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afY:Landroid/graphics/Matrix;

    .line 238
    .line 239
    const/4 v4, 0x0

    .line 240
    invoke-virtual {v3, v5, v6, v15, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 241
    .line 242
    .line 243
    iget-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afX:Landroid/graphics/LinearGradient;

    .line 244
    .line 245
    iget-object v4, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afY:Landroid/graphics/Matrix;

    .line 246
    .line 247
    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 248
    .line 249
    .line 250
    goto :goto_2

    .line 251
    :cond_4
    iget-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 252
    .line 253
    const/4 v4, 0x0

    .line 254
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 255
    .line 256
    .line 257
    :goto_2
    iget-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 258
    .line 259
    int-to-float v2, v2

    .line 260
    iget-object v4, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 261
    .line 262
    invoke-virtual {v0, v3, v15, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .line 264
    .line 265
    monitor-exit p0

    .line 266
    return-void

    .line 267
    :cond_5
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-nez v3, :cond_8

    .line 272
    .line 273
    iget-boolean v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agk:Z

    .line 274
    .line 275
    if-eqz v3, :cond_6

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_6
    iget-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 279
    .line 280
    iget v5, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agi:I

    .line 281
    .line 282
    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    .line 284
    .line 285
    iget-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 286
    .line 287
    if-eqz v3, :cond_7

    .line 288
    .line 289
    int-to-float v4, v4

    .line 290
    int-to-float v2, v2

    .line 291
    iget-object v5, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 292
    .line 293
    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    .line 295
    .line 296
    :cond_7
    monitor-exit p0

    .line 297
    return-void

    .line 298
    :cond_8
    :goto_3
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 299
    .line 300
    .line 301
    move-result v3

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 303
    .line 304
    .line 305
    move-result v5

    .line 306
    mul-int v3, v3, v5

    .line 307
    .line 308
    int-to-float v3, v3

    .line 309
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ProgressBar;->getMax()I

    .line 310
    .line 311
    .line 312
    move-result v5

    .line 313
    int-to-float v5, v5

    .line 314
    div-float/2addr v3, v5

    .line 315
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    iget-object v6, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 320
    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    int-to-float v7, v7

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    int-to-float v8, v8

    .line 331
    const/4 v9, 0x0

    .line 332
    invoke-virtual {v6, v3, v9, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 333
    .line 334
    .line 335
    iget-object v6, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 336
    .line 337
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 338
    .line 339
    .line 340
    iget-object v6, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 341
    .line 342
    iget v7, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agj:I

    .line 343
    .line 344
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    .line 346
    .line 347
    iget-object v6, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 348
    .line 349
    if-eqz v6, :cond_9

    .line 350
    .line 351
    int-to-float v7, v4

    .line 352
    int-to-float v8, v2

    .line 353
    iget-object v9, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 354
    .line 355
    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 356
    .line 357
    .line 358
    :cond_9
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 362
    .line 363
    .line 364
    move-result v5

    .line 365
    iget-object v6, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 366
    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 368
    .line 369
    .line 370
    move-result v7

    .line 371
    int-to-float v7, v7

    .line 372
    const/4 v8, 0x0

    .line 373
    invoke-virtual {v6, v8, v8, v3, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 374
    .line 375
    .line 376
    iget-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mRectF:Landroid/graphics/RectF;

    .line 377
    .line 378
    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 379
    .line 380
    .line 381
    iget-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 382
    .line 383
    iget v6, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->agi:I

    .line 384
    .line 385
    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    .line 387
    .line 388
    iget-object v3, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 389
    .line 390
    if-eqz v3, :cond_a

    .line 391
    .line 392
    int-to-float v4, v4

    .line 393
    int-to-float v2, v2

    .line 394
    iget-object v6, v1, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 395
    .line 396
    invoke-virtual {v0, v3, v4, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 397
    .line 398
    .line 399
    :cond_a
    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    .line 401
    .line 402
    monitor-exit p0

    .line 403
    return-void

    .line 404
    :catchall_0
    move-exception v0

    .line 405
    monitor-exit p0

    .line 406
    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->afW:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 34
    .line 35
    const/high16 v3, 0x40000000    # 2.0f

    .line 36
    .line 37
    const/4 v4, -0x2

    .line 38
    if-ne v2, v4, :cond_0

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agc:I

    .line 45
    .line 46
    add-int/2addr p1, v2

    .line 47
    iget v2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agd:I

    .line 48
    .line 49
    add-int/2addr p1, v2

    .line 50
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    .line 52
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    :cond_0
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    .line 58
    if-ne v2, v4, :cond_1

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    .line 66
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    :cond_1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->aga:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-super {p0, p2, p1}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :cond_2
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .line 92
    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p1

    .line 96
    monitor-exit p0

    .line 97
    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->aga:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->age:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public setDrawablePadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agf:I

    .line 2
    .line 3
    return-void
.end method

.method public setHasProgress(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agb:Z

    .line 2
    .line 3
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agc:I

    .line 2
    .line 3
    iput p3, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agd:I

    .line 4
    .line 5
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agb:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agk:Z

    .line 2
    iput p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agi:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public final setTextColor(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agk:Z

    .line 5
    iput p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agi:I

    .line 6
    iput p2, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->agj:I

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTextDimen(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTextDimenSp(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 2
    .line 3
    int-to-float p1, p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v2, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setVertical(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kwad/components/core/page/widget/TextProgressBar;->aga:Z

    .line 2
    .line 3
    return-void
.end method
