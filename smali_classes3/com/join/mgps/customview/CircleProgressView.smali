.class public Lcom/join/mgps/customview/CircleProgressView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/String; = "progress"


# instance fields
.field private b:F

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I

.field private g:[I

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
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
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x28

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x28

    .line 5
    iput v0, p0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    const/4 v1, 0x5

    .line 6
    iput v1, p0, Lcom/join/mgps/customview/CircleProgressView;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 7
    :try_start_0
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 8
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->CircleProgressView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    .line 11
    iput p2, p0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    .line 12
    iput v0, p0, Lcom/join/mgps/customview/CircleProgressView;->f:I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    :goto_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 16
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    const/high16 p1, 0x42480000    # 50.0f

    .line 17
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->b:F

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/CircleProgressView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/CircleProgressView;->b:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/CircleProgressView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->b:F

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public c(F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->b:F

    .line 2
    .line 3
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    new-array v1, v1, [F

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    aput v2, v1, v3

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    aput p1, v1, v2

    .line 17
    .line 18
    const-string p1, "progress"

    .line 19
    .line 20
    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-wide/16 v4, 0x3e8

    .line 25
    .line 26
    invoke-virtual {p1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 27
    .line 28
    .line 29
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 35
    .line 36
    .line 37
    new-array v1, v2, [Landroid/animation/Animator;

    .line 38
    .line 39
    aput-object p1, v1, v3

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 6
    .line 7
    const/4 v8, 0x0

    .line 8
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 12
    .line 13
    .line 14
    move-result v9

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 16
    .line 17
    .line 18
    move-result v10

    .line 19
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 26
    .line 27
    const/high16 v11, 0x3f800000    # 1.0f

    .line 28
    .line 29
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 33
    .line 34
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 40
    .line 41
    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 47
    .line 48
    const-string v12, "#000000"

    .line 49
    .line 50
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Landroid/util/DisplayMetrics;

    .line 58
    .line 59
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 67
    .line 68
    .line 69
    move-result-object v13

    .line 70
    iget v1, v13, Landroid/util/DisplayMetrics;->density:F

    .line 71
    .line 72
    float-to-double v2, v1

    .line 73
    const-wide/high16 v4, 0x400c000000000000L    # 3.5

    .line 74
    .line 75
    mul-double v2, v2, v4

    .line 76
    .line 77
    double-to-float v14, v2

    .line 78
    const-wide/high16 v2, 0x4004000000000000L    # 2.5

    .line 79
    .line 80
    float-to-double v4, v1

    .line 81
    mul-double v4, v4, v2

    .line 82
    .line 83
    double-to-float v6, v4

    .line 84
    const-string v1, "#FFFFFF"

    .line 85
    .line 86
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    const-string v2, "#efefef"

    .line 91
    .line 92
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    filled-new-array {v1, v2}, [I

    .line 97
    .line 98
    .line 99
    move-result-object v20

    .line 100
    new-instance v1, Landroid/graphics/LinearGradient;

    .line 101
    .line 102
    int-to-float v5, v9

    .line 103
    sub-float v4, v5, v6

    .line 104
    .line 105
    int-to-float v3, v10

    .line 106
    sub-float v2, v3, v6

    .line 107
    .line 108
    const/16 v21, 0x0

    .line 109
    .line 110
    sget-object v22, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 111
    .line 112
    move-object v15, v1

    .line 113
    move/from16 v16, v6

    .line 114
    .line 115
    move/from16 v17, v6

    .line 116
    .line 117
    move/from16 v18, v4

    .line 118
    .line 119
    move/from16 v19, v2

    .line 120
    .line 121
    invoke-direct/range {v15 .. v22}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 122
    .line 123
    .line 124
    iget-object v15, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 125
    .line 126
    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    .line 128
    .line 129
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 130
    .line 131
    invoke-virtual {v1, v6, v6, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 132
    .line 133
    .line 134
    iget-object v15, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 135
    .line 136
    const/16 v16, 0x0

    .line 137
    .line 138
    const/high16 v17, 0x43b40000    # 360.0f

    .line 139
    .line 140
    const/16 v18, 0x0

    .line 141
    .line 142
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 143
    .line 144
    move-object/from16 v19, v1

    .line 145
    .line 146
    move-object/from16 v1, p1

    .line 147
    .line 148
    move v11, v2

    .line 149
    move-object v2, v15

    .line 150
    move v15, v3

    .line 151
    move/from16 v3, v16

    .line 152
    .line 153
    move/from16 v23, v4

    .line 154
    .line 155
    move/from16 v4, v17

    .line 156
    .line 157
    move/from16 v16, v5

    .line 158
    .line 159
    move/from16 v5, v18

    .line 160
    .line 161
    move/from16 v24, v6

    .line 162
    .line 163
    move-object/from16 v6, v19

    .line 164
    .line 165
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 169
    .line 170
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 174
    .line 175
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 181
    .line 182
    const-string v2, "#cccccc"

    .line 183
    .line 184
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    .line 190
    .line 191
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 192
    .line 193
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    .line 194
    .line 195
    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    .line 196
    .line 197
    move/from16 v6, v24

    .line 198
    .line 199
    invoke-direct {v2, v6, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 203
    .line 204
    .line 205
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 206
    .line 207
    move/from16 v5, v23

    .line 208
    .line 209
    invoke-virtual {v1, v6, v6, v5, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 210
    .line 211
    .line 212
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 213
    .line 214
    const/4 v3, 0x0

    .line 215
    const/high16 v4, 0x43b40000    # 360.0f

    .line 216
    .line 217
    const/4 v5, 0x0

    .line 218
    iget-object v11, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 219
    .line 220
    move-object/from16 v1, p1

    .line 221
    .line 222
    move/from16 v17, v6

    .line 223
    .line 224
    move-object v6, v11

    .line 225
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 229
    .line 230
    const-string v2, "#DDDDDD"

    .line 231
    .line 232
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    .line 238
    .line 239
    add-float v11, v17, v14

    .line 240
    .line 241
    iget v1, v0, Lcom/join/mgps/customview/CircleProgressView;->f:I

    .line 242
    .line 243
    div-int/lit8 v1, v1, 0x2

    .line 244
    .line 245
    int-to-float v1, v1

    .line 246
    add-float v6, v11, v1

    .line 247
    .line 248
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 249
    .line 250
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 251
    .line 252
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 256
    .line 257
    iget v2, v0, Lcom/join/mgps/customview/CircleProgressView;->f:I

    .line 258
    .line 259
    int-to-float v2, v2

    .line 260
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 261
    .line 262
    .line 263
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 264
    .line 265
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 266
    .line 267
    .line 268
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 269
    .line 270
    sub-float v5, v16, v6

    .line 271
    .line 272
    sub-float v4, v15, v6

    .line 273
    .line 274
    invoke-virtual {v1, v6, v6, v5, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 275
    .line 276
    .line 277
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 278
    .line 279
    const/high16 v17, 0x43b40000    # 360.0f

    .line 280
    .line 281
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 282
    .line 283
    move-object/from16 v19, v1

    .line 284
    .line 285
    move-object/from16 v1, p1

    .line 286
    .line 287
    move/from16 v25, v4

    .line 288
    .line 289
    move/from16 v4, v17

    .line 290
    .line 291
    move/from16 v26, v5

    .line 292
    .line 293
    move/from16 v5, v18

    .line 294
    .line 295
    move/from16 v27, v6

    .line 296
    .line 297
    move-object/from16 v6, v19

    .line 298
    .line 299
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 300
    .line 301
    .line 302
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 303
    .line 304
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    .line 310
    .line 311
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 312
    .line 313
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 314
    .line 315
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 319
    .line 320
    const/high16 v2, 0x3f800000    # 1.0f

    .line 321
    .line 322
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 323
    .line 324
    .line 325
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 326
    .line 327
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    .line 328
    .line 329
    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    .line 330
    .line 331
    const/high16 v12, 0x40a00000    # 5.0f

    .line 332
    .line 333
    invoke-direct {v2, v12, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 337
    .line 338
    .line 339
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 340
    .line 341
    sub-float v5, v16, v11

    .line 342
    .line 343
    sub-float v3, v15, v11

    .line 344
    .line 345
    invoke-virtual {v1, v11, v11, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 346
    .line 347
    .line 348
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 349
    .line 350
    const/4 v3, 0x0

    .line 351
    const/high16 v4, 0x43b40000    # 360.0f

    .line 352
    .line 353
    const/4 v5, 0x0

    .line 354
    iget-object v6, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 355
    .line 356
    move-object/from16 v1, p1

    .line 357
    .line 358
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 359
    .line 360
    .line 361
    add-float/2addr v14, v12

    .line 362
    iget v1, v0, Lcom/join/mgps/customview/CircleProgressView;->f:I

    .line 363
    .line 364
    int-to-float v1, v1

    .line 365
    add-float/2addr v14, v1

    .line 366
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 367
    .line 368
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    .line 369
    .line 370
    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    .line 371
    .line 372
    invoke-direct {v2, v12, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 376
    .line 377
    .line 378
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 379
    .line 380
    sub-float v5, v16, v14

    .line 381
    .line 382
    sub-float v3, v15, v14

    .line 383
    .line 384
    invoke-virtual {v1, v14, v14, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 385
    .line 386
    .line 387
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 388
    .line 389
    const/4 v3, 0x0

    .line 390
    const/4 v5, 0x0

    .line 391
    iget-object v6, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 392
    .line 393
    move-object/from16 v1, p1

    .line 394
    .line 395
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 396
    .line 397
    .line 398
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 399
    .line 400
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 401
    .line 402
    .line 403
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 404
    .line 405
    const-string v11, "#f47500"

    .line 406
    .line 407
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    .line 413
    .line 414
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    const v2, 0x7f0813c0

    .line 419
    .line 420
    .line 421
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    div-int/lit8 v9, v9, 0x2

    .line 426
    .line 427
    int-to-float v12, v9

    .line 428
    const/high16 v2, 0x420c0000    # 35.0f

    .line 429
    .line 430
    iget v3, v13, Landroid/util/DisplayMetrics;->density:F

    .line 431
    .line 432
    mul-float v3, v3, v2

    .line 433
    .line 434
    const/high16 v2, 0x40000000    # 2.0f

    .line 435
    .line 436
    div-float/2addr v3, v2

    .line 437
    div-float/2addr v3, v2

    .line 438
    sub-float v2, v12, v3

    .line 439
    .line 440
    mul-int/lit8 v3, v10, 0x46

    .line 441
    .line 442
    div-int/lit8 v3, v3, 0x6e

    .line 443
    .line 444
    int-to-float v3, v3

    .line 445
    iget-object v4, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 446
    .line 447
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 448
    .line 449
    .line 450
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 451
    .line 452
    iget v2, v0, Lcom/join/mgps/customview/CircleProgressView;->f:I

    .line 453
    .line 454
    int-to-float v2, v2

    .line 455
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 456
    .line 457
    .line 458
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 459
    .line 460
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 461
    .line 462
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 463
    .line 464
    .line 465
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 466
    .line 467
    move/from16 v3, v25

    .line 468
    .line 469
    move/from16 v5, v26

    .line 470
    .line 471
    move/from16 v2, v27

    .line 472
    .line 473
    invoke-virtual {v1, v2, v2, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 474
    .line 475
    .line 476
    iget-object v1, v0, Lcom/join/mgps/customview/CircleProgressView;->g:[I

    .line 477
    .line 478
    array-length v2, v1

    .line 479
    new-array v3, v2, [I

    .line 480
    .line 481
    const/4 v13, 0x0

    .line 482
    invoke-static {v1, v13, v3, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    .line 484
    .line 485
    new-instance v1, Landroid/graphics/SweepGradient;

    .line 486
    .line 487
    invoke-direct {v1, v12, v12, v3, v8}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 488
    .line 489
    .line 490
    iget v2, v0, Lcom/join/mgps/customview/CircleProgressView;->b:F

    .line 491
    .line 492
    iget v3, v0, Lcom/join/mgps/customview/CircleProgressView;->h:F

    .line 493
    .line 494
    div-float/2addr v2, v3

    .line 495
    const/high16 v3, 0x3f800000    # 1.0f

    .line 496
    .line 497
    sub-float v2, v3, v2

    .line 498
    .line 499
    const/high16 v3, 0x42b40000    # 90.0f

    .line 500
    .line 501
    mul-float v2, v2, v3

    .line 502
    .line 503
    float-to-int v8, v2

    .line 504
    rsub-int/lit8 v2, v8, -0x5a

    .line 505
    .line 506
    int-to-float v2, v2

    .line 507
    div-int/lit8 v3, v10, 0x2

    .line 508
    .line 509
    int-to-float v14, v3

    .line 510
    invoke-virtual {v7, v2, v14, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 511
    .line 512
    .line 513
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 514
    .line 515
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 516
    .line 517
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 518
    .line 519
    .line 520
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 521
    .line 522
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 523
    .line 524
    .line 525
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->c:Landroid/graphics/RectF;

    .line 526
    .line 527
    const/4 v3, 0x0

    .line 528
    iget v4, v0, Lcom/join/mgps/customview/CircleProgressView;->b:F

    .line 529
    .line 530
    const/4 v5, 0x0

    .line 531
    iget-object v6, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 532
    .line 533
    move-object/from16 v1, p1

    .line 534
    .line 535
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 536
    .line 537
    .line 538
    add-int/lit8 v8, v8, 0x5a

    .line 539
    .line 540
    int-to-float v1, v8

    .line 541
    invoke-virtual {v7, v1, v14, v14}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 542
    .line 543
    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    iget v2, v0, Lcom/join/mgps/customview/CircleProgressView;->b:F

    .line 550
    .line 551
    const/high16 v3, 0x42c80000    # 100.0f

    .line 552
    .line 553
    mul-float v2, v2, v3

    .line 554
    .line 555
    const/high16 v3, 0x43b40000    # 360.0f

    .line 556
    .line 557
    div-float/2addr v2, v3

    .line 558
    float-to-double v2, v2

    .line 559
    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    .line 560
    .line 561
    .line 562
    move-result-wide v2

    .line 563
    double-to-int v2, v2

    .line 564
    int-to-float v2, v2

    .line 565
    const/high16 v3, 0x41200000    # 10.0f

    .line 566
    .line 567
    div-float/2addr v2, v3

    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    const-string v2, ""

    .line 572
    .line 573
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    mul-int/lit8 v2, v10, 0x1f

    .line 581
    .line 582
    mul-int/lit8 v2, v2, 0xc

    .line 583
    .line 584
    div-int/lit8 v2, v2, 0x6e

    .line 585
    .line 586
    div-int/lit8 v2, v2, 0xa

    .line 587
    .line 588
    int-to-float v2, v2

    .line 589
    iget-object v3, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 590
    .line 591
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 592
    .line 593
    .line 594
    new-instance v2, Landroid/graphics/SweepGradient;

    .line 595
    .line 596
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 601
    .line 602
    .line 603
    move-result v4

    .line 604
    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 605
    .line 606
    .line 607
    iget-object v3, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 608
    .line 609
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 610
    .line 611
    .line 612
    iget-object v2, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 613
    .line 614
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 615
    .line 616
    .line 617
    move-result v3

    .line 618
    invoke-virtual {v2, v1, v13, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    float-to-int v2, v2

    .line 623
    iget-object v3, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 624
    .line 625
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 626
    .line 627
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 628
    .line 629
    .line 630
    iget-object v3, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 631
    .line 632
    sget-object v4, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 633
    .line 634
    const/4 v5, 0x3

    .line 635
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 636
    .line 637
    .line 638
    move-result-object v4

    .line 639
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 640
    .line 641
    .line 642
    div-int/lit8 v2, v2, 0x2

    .line 643
    .line 644
    sub-int/2addr v9, v2

    .line 645
    int-to-float v2, v9

    .line 646
    mul-int/lit8 v10, v10, 0x3c

    .line 647
    .line 648
    div-int/lit8 v10, v10, 0x6e

    .line 649
    .line 650
    int-to-float v3, v10

    .line 651
    iget-object v4, v0, Lcom/join/mgps/customview/CircleProgressView;->d:Landroid/graphics/Paint;

    .line 652
    .line 653
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 654
    .line 655
    .line 656
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    .line 2
    .line 3
    const/16 p2, 0x28

    .line 4
    .line 5
    if-gt p1, p2, :cond_0

    .line 6
    .line 7
    iput p2, p0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    .line 8
    .line 9
    :cond_0
    iget p1, p0, Lcom/join/mgps/customview/CircleProgressView;->e:I

    .line 10
    .line 11
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setColors([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colors"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CircleProgressView;->g:[I

    .line 2
    .line 3
    return-void
.end method

.method public setFirstProgressfloat(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressValue"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x43b40000    # 360.0f

    .line 2
    .line 3
    mul-float v0, v0, p1

    .line 4
    .line 5
    const/high16 v1, 0x42c80000    # 100.0f

    .line 6
    .line 7
    div-float/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/join/mgps/customview/CircleProgressView;->h:F

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CircleProgressView;->c(F)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progressValue"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x43b40000    # 360.0f

    .line 2
    .line 3
    mul-float p1, p1, v0

    .line 4
    .line 5
    const/high16 v0, 0x42c80000    # 100.0f

    .line 6
    .line 7
    div-float/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/join/mgps/customview/CircleProgressView;->b:F

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setValue(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    aput v2, v0, v1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    aput p1, v0, v1

    .line 10
    .line 11
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-wide/16 v0, 0x5dc

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/customview/CircleProgressView$a;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/CircleProgressView$a;-><init>(Lcom/join/mgps/customview/CircleProgressView;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/join/mgps/customview/CircleProgressView$b;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/join/mgps/customview/CircleProgressView$b;-><init>(Lcom/join/mgps/customview/CircleProgressView;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
