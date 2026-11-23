.class public Lcom/byazt/gm/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x5a0,
        0x14
    }
.end annotation


# instance fields
.field public a:F

.field public final c:Landroid/graphics/Paint;

.field public n:F

.field public final tt:Landroid/graphics/Path;

.field public final uj:Landroid/graphics/Path;

.field public final ve:Landroid/graphics/Path;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/gm/c;->n:F

    .line 7
    .line 8
    iput v0, p0, Lcom/byazt/gm/c;->a:F

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/Paint;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/gm/c;->c:Landroid/graphics/Paint;

    .line 17
    .line 18
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, -0x1

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Path;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/byazt/gm/c;->tt:Landroid/graphics/Path;

    .line 33
    .line 34
    new-instance v8, Landroid/graphics/Path;

    .line 35
    .line 36
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v8, p0, Lcom/byazt/gm/c;->ve:Landroid/graphics/Path;

    .line 40
    .line 41
    new-instance v9, Landroid/graphics/Path;

    .line 42
    .line 43
    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v9, p0, Lcom/byazt/gm/c;->uj:Landroid/graphics/Path;

    .line 47
    .line 48
    new-instance v1, Landroid/graphics/RectF;

    .line 49
    .line 50
    const v2, 0x414aad43

    .line 51
    .line 52
    .line 53
    const v3, 0x41555532

    .line 54
    .line 55
    .line 56
    const v4, 0x40556042    # 3.334f

    .line 57
    .line 58
    .line 59
    const/high16 v5, 0x41400000    # 12.0f

    .line 60
    .line 61
    invoke-direct {v1, v4, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 62
    .line 63
    .line 64
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 65
    .line 66
    const v10, 0x3f2aacda    # 0.6667f

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1, v10, v10, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 70
    .line 71
    .line 72
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 73
    .line 74
    invoke-virtual {v8, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 75
    .line 76
    .line 77
    const v0, 0x40622d0e    # 3.534f

    .line 78
    .line 79
    .line 80
    const v11, 0x40c6617c    # 6.1994f

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v0, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 84
    .line 85
    .line 86
    const v2, 0x40511b71

    .line 87
    .line 88
    .line 89
    const v3, 0x40cee2eb    # 6.4652f

    .line 90
    .line 91
    .line 92
    const v4, 0x40511b71

    .line 93
    .line 94
    .line 95
    const v5, 0x40dcadac

    .line 96
    .line 97
    .line 98
    const v6, 0x40622d0e    # 3.534f

    .line 99
    .line 100
    .line 101
    const v7, 0x40e52fec

    .line 102
    .line 103
    .line 104
    move-object v1, v8

    .line 105
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 106
    .line 107
    .line 108
    const v0, 0x40efa858

    .line 109
    .line 110
    .line 111
    const v1, 0x4131ac71    # 11.1046f

    .line 112
    .line 113
    .line 114
    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    .line 116
    .line 117
    const v2, 0x40eff141    # 7.4982f

    .line 118
    .line 119
    .line 120
    const v3, 0x4131d5d0

    .line 121
    .line 122
    .line 123
    const v4, 0x40f03d71

    .line 124
    .line 125
    .line 126
    const v5, 0x4131fdf4

    .line 127
    .line 128
    .line 129
    const v6, 0x40f08c15

    .line 130
    .line 131
    .line 132
    const v7, 0x41322546    # 11.1341f

    .line 133
    .line 134
    .line 135
    move-object v1, v8

    .line 136
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 137
    .line 138
    .line 139
    const v2, 0x40f914e4

    .line 140
    .line 141
    .line 142
    const v3, 0x413665fe    # 11.3999f

    .line 143
    .line 144
    .line 145
    const v4, 0x4103758e

    .line 146
    .line 147
    .line 148
    const v5, 0x413665fe    # 11.3999f

    .line 149
    .line 150
    .line 151
    const v6, 0x4107b9f5

    .line 152
    .line 153
    .line 154
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 155
    .line 156
    .line 157
    const v0, 0x41477b4a

    .line 158
    .line 159
    .line 160
    const v1, 0x40e530be    # 7.1622f

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 164
    .line 165
    .line 166
    const v2, 0x414bbfb1

    .line 167
    .line 168
    .line 169
    const v3, 0x40dcaf4f    # 6.8964f

    .line 170
    .line 171
    .line 172
    const v4, 0x414bbfb1

    .line 173
    .line 174
    .line 175
    const v5, 0x40cee48f

    .line 176
    .line 177
    .line 178
    const v6, 0x41477b4a

    .line 179
    .line 180
    .line 181
    const v7, 0x40c6624e    # 6.1995f

    .line 182
    .line 183
    .line 184
    move-object v1, v8

    .line 185
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 186
    .line 187
    .line 188
    const v2, 0x414336e3    # 12.2009f

    .line 189
    .line 190
    .line 191
    const v3, 0x40bde0df    # 5.9337f

    .line 192
    .line 193
    .line 194
    const v4, 0x413c4bc7

    .line 195
    .line 196
    .line 197
    const v5, 0x40bde0df    # 5.9337f

    .line 198
    .line 199
    .line 200
    const v6, 0x4138075f

    .line 201
    .line 202
    .line 203
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 204
    .line 205
    .line 206
    const v0, 0x410003b0    # 8.0009f

    .line 207
    .line 208
    .line 209
    const v1, 0x411b06f7

    .line 210
    .line 211
    .line 212
    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 213
    .line 214
    .line 215
    const v0, 0x408ffe5d

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8, v0, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    .line 220
    .line 221
    const v2, 0x4087758e    # 4.2331f

    .line 222
    .line 223
    .line 224
    const v3, 0x40bddf3b

    .line 225
    .line 226
    .line 227
    const v4, 0x40733eab    # 3.8007f

    .line 228
    .line 229
    .line 230
    const v5, 0x40bddf3b

    .line 231
    .line 232
    .line 233
    const v6, 0x40622d0e    # 3.534f

    .line 234
    .line 235
    .line 236
    const v7, 0x40c6617c    # 6.1994f

    .line 237
    .line 238
    .line 239
    move-object v1, v8

    .line 240
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 244
    .line 245
    .line 246
    new-instance v0, Landroid/graphics/RectF;

    .line 247
    .line 248
    const v1, 0x410aad43

    .line 249
    .line 250
    .line 251
    const v2, 0x412aaace

    .line 252
    .line 253
    .line 254
    const v3, 0x40eab021    # 7.334f

    .line 255
    .line 256
    .line 257
    const/high16 v4, 0x40000000    # 2.0f

    .line 258
    .line 259
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 260
    .line 261
    .line 262
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 263
    .line 264
    invoke-virtual {v9, v0, v10, v10, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 265
    .line 266
    .line 267
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/byazt/gm/c;->n:F

    .line 6
    .line 7
    iget v2, p0, Lcom/byazt/gm/c;->a:F

    .line 8
    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/gm/c;->tt:Landroid/graphics/Path;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/byazt/gm/c;->c:Landroid/graphics/Paint;

    .line 15
    .line 16
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/gm/c;->ve:Landroid/graphics/Path;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/gm/c;->c:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/gm/c;->uj:Landroid/graphics/Path;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/byazt/gm/c;->c:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    const/high16 v1, 0x41800000    # 16.0f

    .line 12
    .line 13
    div-float/2addr v0, v1

    .line 14
    iput v0, p0, Lcom/byazt/gm/c;->n:F

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    int-to-float p1, p1

    .line 21
    div-float/2addr p1, v1

    .line 22
    iput p1, p0, Lcom/byazt/gm/c;->a:F

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gm/c;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gm/c;->c:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
