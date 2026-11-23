.class public Lu6/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:F

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/Path;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(IIF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "baseColorArgb",
            "borderWidthPx",
            "cornerRadiusPx"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lu6/a;->f:Landroid/graphics/Paint;

    .line 11
    .line 12
    new-instance v0, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lu6/a;->g:Landroid/graphics/Paint;

    .line 18
    .line 19
    new-instance v0, Landroid/graphics/Path;

    .line 20
    .line 21
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lu6/a;->h:Landroid/graphics/Path;

    .line 25
    .line 26
    new-instance v0, Landroid/graphics/Path;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lu6/a;->i:Landroid/graphics/Path;

    .line 32
    .line 33
    new-instance v0, Landroid/graphics/RectF;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lu6/a;->j:Landroid/graphics/RectF;

    .line 39
    .line 40
    new-instance v0, Landroid/graphics/RectF;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lu6/a;->k:Landroid/graphics/RectF;

    .line 46
    .line 47
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, p0, Lu6/a;->a:I

    .line 52
    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, p0, Lu6/a;->b:I

    .line 58
    .line 59
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iput p1, p0, Lu6/a;->c:I

    .line 64
    .line 65
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lu6/a;->d:I

    .line 70
    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lu6/a;->e:F

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lu6/a;->f:Landroid/graphics/Paint;

    .line 13
    .line 14
    new-instance v10, Landroid/graphics/LinearGradient;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    int-to-float v4, v2

    .line 20
    const/4 v5, 0x0

    .line 21
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    int-to-float v6, v2

    .line 24
    iget v2, p0, Lu6/a;->a:I

    .line 25
    .line 26
    iget v7, p0, Lu6/a;->b:I

    .line 27
    .line 28
    iget v8, p0, Lu6/a;->c:I

    .line 29
    .line 30
    const/16 v9, 0xff

    .line 31
    .line 32
    invoke-static {v9, v2, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    iget v2, p0, Lu6/a;->a:I

    .line 37
    .line 38
    iget v8, p0, Lu6/a;->b:I

    .line 39
    .line 40
    iget v9, p0, Lu6/a;->c:I

    .line 41
    .line 42
    const/4 v11, 0x0

    .line 43
    invoke-static {v11, v2, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 48
    .line 49
    move-object v2, v10

    .line 50
    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lu6/a;->j:Landroid/graphics/RectF;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lu6/a;->h:Landroid/graphics/Path;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 64
    .line 65
    .line 66
    iget v1, p0, Lu6/a;->e:F

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    cmpg-float v3, v1, v2

    .line 70
    .line 71
    if-gtz v3, :cond_1

    .line 72
    .line 73
    iget-object v1, p0, Lu6/a;->h:Landroid/graphics/Path;

    .line 74
    .line 75
    iget-object v3, p0, Lu6/a;->j:Landroid/graphics/RectF;

    .line 76
    .line 77
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 78
    .line 79
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    iget-object v3, p0, Lu6/a;->h:Landroid/graphics/Path;

    .line 84
    .line 85
    iget-object v4, p0, Lu6/a;->j:Landroid/graphics/RectF;

    .line 86
    .line 87
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 88
    .line 89
    invoke-virtual {v3, v4, v1, v1, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object v1, p0, Lu6/a;->h:Landroid/graphics/Path;

    .line 93
    .line 94
    iget-object v3, p0, Lu6/a;->f:Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lu6/a;->f:Landroid/graphics/Paint;

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lu6/a;->k:Landroid/graphics/RectF;

    .line 106
    .line 107
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 108
    .line 109
    iget v5, p0, Lu6/a;->d:I

    .line 110
    .line 111
    add-int/2addr v4, v5

    .line 112
    int-to-float v4, v4

    .line 113
    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 114
    .line 115
    add-int/2addr v6, v5

    .line 116
    int-to-float v6, v6

    .line 117
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 118
    .line 119
    sub-int/2addr v7, v5

    .line 120
    int-to-float v7, v7

    .line 121
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 122
    .line 123
    sub-int/2addr v8, v5

    .line 124
    int-to-float v5, v8

    .line 125
    invoke-virtual {v1, v4, v6, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lu6/a;->k:Landroid/graphics/RectF;

    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    cmpg-float v1, v1, v2

    .line 135
    .line 136
    if-lez v1, :cond_5

    .line 137
    .line 138
    iget-object v1, p0, Lu6/a;->k:Landroid/graphics/RectF;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    cmpg-float v1, v1, v2

    .line 145
    .line 146
    if-gtz v1, :cond_2

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_2
    iget v1, p0, Lu6/a;->e:F

    .line 150
    .line 151
    iget v4, p0, Lu6/a;->d:I

    .line 152
    .line 153
    int-to-float v4, v4

    .line 154
    sub-float/2addr v1, v4

    .line 155
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    iget-object v4, p0, Lu6/a;->i:Landroid/graphics/Path;

    .line 160
    .line 161
    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 162
    .line 163
    .line 164
    iget v4, p0, Lu6/a;->e:F

    .line 165
    .line 166
    cmpg-float v5, v4, v2

    .line 167
    .line 168
    if-gtz v5, :cond_3

    .line 169
    .line 170
    iget-object v1, p0, Lu6/a;->i:Landroid/graphics/Path;

    .line 171
    .line 172
    iget-object v2, p0, Lu6/a;->j:Landroid/graphics/RectF;

    .line 173
    .line 174
    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 175
    .line 176
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, p0, Lu6/a;->i:Landroid/graphics/Path;

    .line 180
    .line 181
    iget-object v2, p0, Lu6/a;->k:Landroid/graphics/RectF;

    .line 182
    .line 183
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 184
    .line 185
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_3
    iget-object v5, p0, Lu6/a;->i:Landroid/graphics/Path;

    .line 190
    .line 191
    iget-object v6, p0, Lu6/a;->j:Landroid/graphics/RectF;

    .line 192
    .line 193
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 194
    .line 195
    invoke-virtual {v5, v6, v4, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 196
    .line 197
    .line 198
    cmpl-float v2, v1, v2

    .line 199
    .line 200
    if-lez v2, :cond_4

    .line 201
    .line 202
    iget-object v2, p0, Lu6/a;->i:Landroid/graphics/Path;

    .line 203
    .line 204
    iget-object v4, p0, Lu6/a;->k:Landroid/graphics/RectF;

    .line 205
    .line 206
    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 207
    .line 208
    invoke-virtual {v2, v4, v1, v1, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_4
    iget-object v1, p0, Lu6/a;->i:Landroid/graphics/Path;

    .line 213
    .line 214
    iget-object v2, p0, Lu6/a;->k:Landroid/graphics/RectF;

    .line 215
    .line 216
    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 217
    .line 218
    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 219
    .line 220
    .line 221
    :goto_1
    iget-object v1, p0, Lu6/a;->i:Landroid/graphics/Path;

    .line 222
    .line 223
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 226
    .line 227
    .line 228
    iget-object v1, p0, Lu6/a;->g:Landroid/graphics/Paint;

    .line 229
    .line 230
    new-instance v2, Landroid/graphics/LinearGradient;

    .line 231
    .line 232
    const/4 v5, 0x0

    .line 233
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 234
    .line 235
    int-to-float v6, v4

    .line 236
    const/4 v7, 0x0

    .line 237
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 238
    .line 239
    int-to-float v8, v0

    .line 240
    const/4 v9, -0x1

    .line 241
    const v10, 0xffffff

    .line 242
    .line 243
    .line 244
    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 245
    .line 246
    move-object v4, v2

    .line 247
    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 251
    .line 252
    .line 253
    iget-object v0, p0, Lu6/a;->i:Landroid/graphics/Path;

    .line 254
    .line 255
    iget-object v1, p0, Lu6/a;->g:Landroid/graphics/Paint;

    .line 256
    .line 257
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lu6/a;->g:Landroid/graphics/Paint;

    .line 261
    .line 262
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 263
    .line 264
    .line 265
    :cond_5
    :goto_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    .line 1
    return-void
.end method
