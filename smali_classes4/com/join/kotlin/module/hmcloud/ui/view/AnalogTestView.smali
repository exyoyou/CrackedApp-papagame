.class public Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private axisX:F

.field private axisY:F

.field backgroundColor:I

.field private drawEdge:Z

.field private drawThumb:Z

.field foreground:I

.field private limitEdge:Z

.field strokeColor:I

.field thumbColor:I


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

    .line 10
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->drawThumb:Z

    .line 12
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->drawEdge:Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->limitEdge:Z

    const p1, 0x26d8d8d8

    .line 14
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->backgroundColor:I

    const p1, 0x5ffffff

    .line 15
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->strokeColor:I

    const p1, -0x987501

    .line 16
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->foreground:I

    .line 17
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->thumbColor:I

    .line 18
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->drawThumb:Z

    .line 3
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->drawEdge:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->limitEdge:Z

    const p1, 0x26d8d8d8

    .line 5
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->backgroundColor:I

    const p1, 0x5ffffff

    .line 6
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->strokeColor:I

    const p1, -0x987501

    .line 7
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->foreground:I

    .line 8
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->thumbColor:I

    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->init()V

    return-void
.end method


# virtual methods
.method public draw(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "axisX",
            "axisY"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->axisX:F

    .line 2
    .line 3
    iput p2, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->axisY:F

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public drawThumb(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "draw"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->drawThumb:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method init()V
    .locals 1

    .line 1
    const-string v0, "#26D8D8D8"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->backgroundColor:I

    .line 8
    .line 9
    const-string v0, "#ff678AFF"

    .line 10
    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->foreground:I

    .line 16
    .line 17
    const-string v0, "#80678AFF"

    .line 18
    .line 19
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->thumbColor:I

    .line 24
    .line 25
    const-string v0, "#05FFFFFF"

    .line 26
    .line 27
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput v0, p0, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->strokeColor:I

    .line 32
    .line 33
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    div-int/lit8 v3, v0, 0x2

    .line 14
    .line 15
    div-int/lit8 v4, v2, 0x2

    .line 16
    .line 17
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 18
    .line 19
    .line 20
    move-result v9

    .line 21
    int-to-float v10, v3

    .line 22
    :try_start_0
    iget v3, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->axisX:F

    .line 23
    .line 24
    int-to-float v11, v9

    .line 25
    mul-float v5, v3, v11

    .line 26
    .line 27
    add-float v12, v10, v5

    .line 28
    .line 29
    int-to-float v13, v4

    .line 30
    iget v4, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->axisY:F

    .line 31
    .line 32
    mul-float v5, v4, v11

    .line 33
    .line 34
    add-float v14, v13, v5

    .line 35
    .line 36
    const v5, 0x40b33333    # 5.6f

    .line 37
    .line 38
    .line 39
    mul-float v5, v5, v11

    .line 40
    .line 41
    const/high16 v6, 0x42c80000    # 100.0f

    .line 42
    .line 43
    div-float v15, v5, v6

    .line 44
    .line 45
    mul-float v3, v3, v3

    .line 46
    .line 47
    mul-float v4, v4, v4

    .line 48
    .line 49
    add-float/2addr v3, v4

    .line 50
    float-to-double v3, v3

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 56
    .line 57
    const/4 v7, 0x1

    .line 58
    cmpl-double v17, v3, v5

    .line 59
    .line 60
    if-lez v17, :cond_1

    .line 61
    .line 62
    iget-boolean v3, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->drawEdge:Z

    .line 63
    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    new-instance v6, Landroid/graphics/Paint;

    .line 67
    .line 68
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    .line 73
    .line 74
    const/high16 v3, -0x10000

    .line 75
    .line 76
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    .line 78
    .line 79
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 80
    .line 81
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    .line 83
    .line 84
    const/high16 v5, 0x40000000    # 2.0f

    .line 85
    .line 86
    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 87
    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v4, 0x0

    .line 91
    int-to-float v0, v0

    .line 92
    int-to-float v2, v2

    .line 93
    move/from16 v16, v2

    .line 94
    .line 95
    move-object/from16 v2, p1

    .line 96
    .line 97
    const/high16 v17, 0x40000000    # 2.0f

    .line 98
    .line 99
    move v5, v0

    .line 100
    move-object v0, v6

    .line 101
    move/from16 v6, v16

    .line 102
    .line 103
    move/from16 v16, v12

    .line 104
    .line 105
    const/4 v12, 0x1

    .line 106
    move-object v7, v0

    .line 107
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    move/from16 v16, v12

    .line 112
    .line 113
    const/4 v12, 0x1

    .line 114
    :goto_0
    iget-boolean v0, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->limitEdge:Z

    .line 115
    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    iget v0, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->axisY:F

    .line 119
    .line 120
    float-to-double v2, v0

    .line 121
    iget v0, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->axisX:F

    .line 122
    .line 123
    float-to-double v4, v0

    .line 124
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    .line 125
    .line 126
    .line 127
    move-result-wide v2

    .line 128
    sub-float v0, v11, v15

    .line 129
    .line 130
    float-to-double v4, v0

    .line 131
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 132
    .line 133
    .line 134
    move-result-wide v6

    .line 135
    mul-double v6, v6, v4

    .line 136
    .line 137
    double-to-float v0, v6

    .line 138
    add-float/2addr v0, v10

    .line 139
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    mul-double v4, v4, v2

    .line 144
    .line 145
    double-to-float v2, v4

    .line 146
    add-float v14, v13, v2

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_1
    move/from16 v16, v12

    .line 150
    .line 151
    const/4 v12, 0x1

    .line 152
    :cond_2
    move/from16 v0, v16

    .line 153
    .line 154
    :goto_1
    new-instance v2, Landroid/graphics/Paint;

    .line 155
    .line 156
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    .line 161
    .line 162
    iget v3, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->backgroundColor:I

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    .line 166
    .line 167
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 170
    .line 171
    .line 172
    const/high16 v7, 0x40400000    # 3.0f

    .line 173
    .line 174
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v10, v13, v11, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 178
    .line 179
    .line 180
    new-instance v6, Landroid/graphics/Paint;

    .line 181
    .line 182
    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    .line 187
    .line 188
    iget v2, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->strokeColor:I

    .line 189
    .line 190
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    .line 192
    .line 193
    const/high16 v2, 0x40000000    # 2.0f

    .line 194
    .line 195
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 196
    .line 197
    .line 198
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 199
    .line 200
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8, v10, v13, v11, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 204
    .line 205
    .line 206
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 207
    .line 208
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    .line 210
    .line 211
    const/4 v3, 0x0

    .line 212
    mul-int/lit8 v2, v9, 0x2

    .line 213
    .line 214
    int-to-float v11, v2

    .line 215
    move-object/from16 v2, p1

    .line 216
    .line 217
    move v4, v13

    .line 218
    move v5, v11

    .line 219
    move-object/from16 v16, v6

    .line 220
    .line 221
    move v6, v13

    .line 222
    move-object/from16 v7, v16

    .line 223
    .line 224
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 225
    .line 226
    .line 227
    const/4 v4, 0x0

    .line 228
    move-object/from16 v2, p1

    .line 229
    .line 230
    move v3, v10

    .line 231
    move v5, v10

    .line 232
    move v6, v11

    .line 233
    move-object/from16 v7, v16

    .line 234
    .line 235
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 236
    .line 237
    .line 238
    iget-boolean v2, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->drawThumb:Z

    .line 239
    .line 240
    if-eqz v2, :cond_3

    .line 241
    .line 242
    new-instance v2, Landroid/graphics/Paint;

    .line 243
    .line 244
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 248
    .line 249
    .line 250
    iget v3, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->thumbColor:I

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    .line 254
    .line 255
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 256
    .line 257
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    .line 259
    .line 260
    const/high16 v11, 0x40400000    # 3.0f

    .line 261
    .line 262
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 263
    .line 264
    .line 265
    div-int/lit8 v9, v9, 0x2

    .line 266
    .line 267
    int-to-float v3, v9

    .line 268
    invoke-virtual {v8, v10, v13, v3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_3
    const/high16 v11, 0x40400000    # 3.0f

    .line 273
    .line 274
    :goto_2
    new-instance v7, Landroid/graphics/Paint;

    .line 275
    .line 276
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 280
    .line 281
    .line 282
    iget v2, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->foreground:I

    .line 283
    .line 284
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    .line 286
    .line 287
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 288
    .line 289
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 290
    .line 291
    .line 292
    const/high16 v2, 0x40000000    # 2.0f

    .line 293
    .line 294
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 295
    .line 296
    .line 297
    move-object/from16 v2, p1

    .line 298
    .line 299
    move v3, v10

    .line 300
    move v4, v13

    .line 301
    move v5, v0

    .line 302
    move v6, v14

    .line 303
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 304
    .line 305
    .line 306
    new-instance v2, Landroid/graphics/Paint;

    .line 307
    .line 308
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 312
    .line 313
    .line 314
    iget v3, v1, Lcom/join/kotlin/module/hmcloud/ui/view/AnalogTestView;->foreground:I

    .line 315
    .line 316
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 317
    .line 318
    .line 319
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 320
    .line 321
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v8, v0, v14, v15, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .line 329
    .line 330
    goto :goto_3

    .line 331
    :catch_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 333
    .line 334
    .line 335
    :goto_3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 336
    .line 337
    .line 338
    return-void
.end method
