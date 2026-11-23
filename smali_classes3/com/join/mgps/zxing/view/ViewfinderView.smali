.class public final Lcom/join/mgps/zxing/view/ViewfinderView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "log"

.field private static final n:J = 0xaL

.field private static final o:I = 0xff

.field private static final p:I = 0x3

.field private static final q:I = 0x3

.field private static final r:I = 0x5

.field private static final s:I = 0x5

.field private static t:F = 0.0f

.field private static final u:I = 0x10

.field private static final v:I = 0x1e


# instance fields
.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:I

.field private f:Landroid/graphics/Bitmap;

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field l:Z


# direct methods
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

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 13
    .line 14
    sput p1, Lcom/join/mgps/zxing/view/ViewfinderView;->t:F

    .line 15
    .line 16
    const/high16 p2, 0x41a00000    # 20.0f

    .line 17
    .line 18
    mul-float p1, p1, p2

    .line 19
    .line 20
    float-to-int p1, p1

    .line 21
    iput p1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:I

    .line 22
    .line 23
    new-instance p1, Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const p2, 0x7f0604f6

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    iput p2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->g:I

    .line 42
    .line 43
    const p2, 0x7f0604ae

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iput p2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->h:I

    .line 51
    .line 52
    const p2, 0x7f06049b

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->i:I

    .line 60
    .line 61
    new-instance p1, Ljava/util/HashSet;

    .line 62
    .line 63
    const/4 p2, 0x5

    .line 64
    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->j:Ljava/util/Collection;

    .line 68
    .line 69
    return-void
.end method


# virtual methods
.method public a(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "point"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->j:Ljava/util/Collection;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "barcode"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/zxing/camera/c;->c()Lcom/join/mgps/zxing/camera/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/c;->d()Landroid/graphics/Rect;

    .line 6
    .line 7
    .line 8
    move-result-object v7

    .line 9
    if-nez v7, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->l:Z

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iput-boolean v8, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->l:Z

    .line 18
    .line 19
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->d:I

    .line 22
    .line 23
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 24
    .line 25
    iput v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->e:I

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v9

    .line 35
    iget-object v1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->h:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->g:I

    .line 45
    .line 46
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v2, 0x0

    .line 51
    int-to-float v10, v0

    .line 52
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    int-to-float v4, v0

    .line 55
    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 56
    .line 57
    move-object v0, p1

    .line 58
    move v3, v10

    .line 59
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 63
    .line 64
    int-to-float v2, v0

    .line 65
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 66
    .line 67
    int-to-float v3, v0

    .line 68
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 69
    .line 70
    add-int/2addr v0, v8

    .line 71
    int-to-float v4, v0

    .line 72
    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 73
    .line 74
    move-object v0, p1

    .line 75
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    .line 77
    .line 78
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    add-int/2addr v0, v8

    .line 81
    int-to-float v1, v0

    .line 82
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 83
    .line 84
    int-to-float v2, v0

    .line 85
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    add-int/2addr v0, v8

    .line 88
    int-to-float v4, v0

    .line 89
    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 90
    .line 91
    move-object v0, p1

    .line 92
    move v3, v10

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 98
    .line 99
    add-int/2addr v0, v8

    .line 100
    int-to-float v2, v0

    .line 101
    int-to-float v4, v9

    .line 102
    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 103
    .line 104
    move-object v0, p1

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 109
    .line 110
    const/16 v9, 0xff

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 115
    .line 116
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 120
    .line 121
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 122
    .line 123
    int-to-float v1, v1

    .line 124
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 125
    .line 126
    int-to-float v2, v2

    .line 127
    iget-object v3, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 128
    .line 129
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_4

    .line 133
    .line 134
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 135
    .line 136
    const v1, -0xff0100

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    .line 141
    .line 142
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 143
    .line 144
    int-to-float v1, v0

    .line 145
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 146
    .line 147
    int-to-float v3, v2

    .line 148
    iget v4, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:I

    .line 149
    .line 150
    add-int/2addr v0, v4

    .line 151
    int-to-float v4, v0

    .line 152
    add-int/lit8 v2, v2, 0x3

    .line 153
    .line 154
    int-to-float v5, v2

    .line 155
    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 156
    .line 157
    move-object v0, p1

    .line 158
    move v2, v3

    .line 159
    move v3, v4

    .line 160
    move v4, v5

    .line 161
    move-object v5, v10

    .line 162
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 163
    .line 164
    .line 165
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 166
    .line 167
    int-to-float v1, v0

    .line 168
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 169
    .line 170
    int-to-float v3, v2

    .line 171
    add-int/lit8 v0, v0, 0x3

    .line 172
    .line 173
    int-to-float v4, v0

    .line 174
    iget v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:I

    .line 175
    .line 176
    add-int/2addr v2, v0

    .line 177
    int-to-float v5, v2

    .line 178
    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 179
    .line 180
    move-object v0, p1

    .line 181
    move v2, v3

    .line 182
    move v3, v4

    .line 183
    move v4, v5

    .line 184
    move-object v5, v10

    .line 185
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 186
    .line 187
    .line 188
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 189
    .line 190
    iget v1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:I

    .line 191
    .line 192
    sub-int v1, v0, v1

    .line 193
    .line 194
    int-to-float v1, v1

    .line 195
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 196
    .line 197
    int-to-float v3, v2

    .line 198
    int-to-float v4, v0

    .line 199
    add-int/lit8 v2, v2, 0x3

    .line 200
    .line 201
    int-to-float v5, v2

    .line 202
    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 203
    .line 204
    move-object v0, p1

    .line 205
    move v2, v3

    .line 206
    move v3, v4

    .line 207
    move v4, v5

    .line 208
    move-object v5, v10

    .line 209
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 210
    .line 211
    .line 212
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 213
    .line 214
    add-int/lit8 v1, v0, -0x3

    .line 215
    .line 216
    int-to-float v1, v1

    .line 217
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 218
    .line 219
    int-to-float v3, v2

    .line 220
    int-to-float v4, v0

    .line 221
    iget v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:I

    .line 222
    .line 223
    add-int/2addr v2, v0

    .line 224
    int-to-float v5, v2

    .line 225
    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 226
    .line 227
    move-object v0, p1

    .line 228
    move v2, v3

    .line 229
    move v3, v4

    .line 230
    move v4, v5

    .line 231
    move-object v5, v10

    .line 232
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 233
    .line 234
    .line 235
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 236
    .line 237
    int-to-float v1, v0

    .line 238
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 239
    .line 240
    add-int/lit8 v3, v2, -0x3

    .line 241
    .line 242
    int-to-float v3, v3

    .line 243
    iget v4, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:I

    .line 244
    .line 245
    add-int/2addr v0, v4

    .line 246
    int-to-float v4, v0

    .line 247
    int-to-float v5, v2

    .line 248
    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 249
    .line 250
    move-object v0, p1

    .line 251
    move v2, v3

    .line 252
    move v3, v4

    .line 253
    move v4, v5

    .line 254
    move-object v5, v10

    .line 255
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 256
    .line 257
    .line 258
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 259
    .line 260
    int-to-float v1, v0

    .line 261
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 262
    .line 263
    iget v3, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:I

    .line 264
    .line 265
    sub-int v3, v2, v3

    .line 266
    .line 267
    int-to-float v3, v3

    .line 268
    add-int/lit8 v0, v0, 0x3

    .line 269
    .line 270
    int-to-float v4, v0

    .line 271
    int-to-float v5, v2

    .line 272
    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 273
    .line 274
    move-object v0, p1

    .line 275
    move v2, v3

    .line 276
    move v3, v4

    .line 277
    move v4, v5

    .line 278
    move-object v5, v10

    .line 279
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 280
    .line 281
    .line 282
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 283
    .line 284
    iget v1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:I

    .line 285
    .line 286
    sub-int v1, v0, v1

    .line 287
    .line 288
    int-to-float v1, v1

    .line 289
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 290
    .line 291
    add-int/lit8 v3, v2, -0x3

    .line 292
    .line 293
    int-to-float v3, v3

    .line 294
    int-to-float v4, v0

    .line 295
    int-to-float v5, v2

    .line 296
    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 297
    .line 298
    move-object v0, p1

    .line 299
    move v2, v3

    .line 300
    move v3, v4

    .line 301
    move v4, v5

    .line 302
    move-object v5, v10

    .line 303
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 304
    .line 305
    .line 306
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 307
    .line 308
    add-int/lit8 v1, v0, -0x3

    .line 309
    .line 310
    int-to-float v1, v1

    .line 311
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 312
    .line 313
    iget v3, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->b:I

    .line 314
    .line 315
    sub-int v3, v2, v3

    .line 316
    .line 317
    int-to-float v3, v3

    .line 318
    int-to-float v4, v0

    .line 319
    int-to-float v5, v2

    .line 320
    iget-object v10, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 321
    .line 322
    move-object v0, p1

    .line 323
    move v2, v3

    .line 324
    move v3, v4

    .line 325
    move v4, v5

    .line 326
    move-object v5, v10

    .line 327
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 328
    .line 329
    .line 330
    iget v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->d:I

    .line 331
    .line 332
    const/4 v10, 0x5

    .line 333
    add-int/2addr v0, v10

    .line 334
    iput v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->d:I

    .line 335
    .line 336
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 337
    .line 338
    if-lt v0, v1, :cond_4

    .line 339
    .line 340
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 341
    .line 342
    iput v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->d:I

    .line 343
    .line 344
    :cond_4
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 345
    .line 346
    add-int/2addr v0, v10

    .line 347
    int-to-float v1, v0

    .line 348
    iget v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->d:I

    .line 349
    .line 350
    add-int/lit8 v2, v0, -0x1

    .line 351
    .line 352
    int-to-float v2, v2

    .line 353
    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 354
    .line 355
    sub-int/2addr v3, v10

    .line 356
    int-to-float v3, v3

    .line 357
    add-int/2addr v0, v8

    .line 358
    int-to-float v4, v0

    .line 359
    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 360
    .line 361
    move-object v0, p1

    .line 362
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 363
    .line 364
    .line 365
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 366
    .line 367
    const/4 v1, -0x1

    .line 368
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    .line 370
    .line 371
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 372
    .line 373
    const/high16 v1, 0x41800000    # 16.0f

    .line 374
    .line 375
    sget v2, Lcom/join/mgps/zxing/view/ViewfinderView;->t:F

    .line 376
    .line 377
    mul-float v2, v2, v1

    .line 378
    .line 379
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 380
    .line 381
    .line 382
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 383
    .line 384
    const-string v1, "System"

    .line 385
    .line 386
    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 391
    .line 392
    .line 393
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->j:Ljava/util/Collection;

    .line 394
    .line 395
    iget-object v1, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->k:Ljava/util/Collection;

    .line 396
    .line 397
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_5

    .line 402
    .line 403
    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->k:Ljava/util/Collection;

    .line 405
    .line 406
    goto :goto_2

    .line 407
    :cond_5
    new-instance v2, Ljava/util/HashSet;

    .line 408
    .line 409
    invoke-direct {v2, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 410
    .line 411
    .line 412
    iput-object v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->j:Ljava/util/Collection;

    .line 413
    .line 414
    iput-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->k:Ljava/util/Collection;

    .line 415
    .line 416
    iget-object v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 417
    .line 418
    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 419
    .line 420
    .line 421
    iget-object v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 422
    .line 423
    iget v3, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->i:I

    .line 424
    .line 425
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    .line 427
    .line 428
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    if-eqz v2, :cond_6

    .line 437
    .line 438
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    check-cast v2, Lcom/google/zxing/ResultPoint;

    .line 443
    .line 444
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 445
    .line 446
    int-to-float v3, v3

    .line 447
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    add-float/2addr v3, v4

    .line 452
    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 453
    .line 454
    int-to-float v4, v4

    .line 455
    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    add-float/2addr v4, v2

    .line 460
    const/high16 v2, 0x40c00000    # 6.0f

    .line 461
    .line 462
    iget-object v5, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 463
    .line 464
    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 465
    .line 466
    .line 467
    goto :goto_1

    .line 468
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 469
    .line 470
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 471
    .line 472
    const/16 v2, 0x7f

    .line 473
    .line 474
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 475
    .line 476
    .line 477
    iget-object v0, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 478
    .line 479
    iget v2, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->i:I

    .line 480
    .line 481
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    .line 483
    .line 484
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-eqz v1, :cond_7

    .line 493
    .line 494
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 499
    .line 500
    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 501
    .line 502
    int-to-float v2, v2

    .line 503
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 504
    .line 505
    .line 506
    move-result v3

    .line 507
    add-float/2addr v2, v3

    .line 508
    iget v3, v7, Landroid/graphics/Rect;->top:I

    .line 509
    .line 510
    int-to-float v3, v3

    .line 511
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 512
    .line 513
    .line 514
    move-result v1

    .line 515
    add-float/2addr v3, v1

    .line 516
    const/high16 v1, 0x40400000    # 3.0f

    .line 517
    .line 518
    iget-object v4, p0, Lcom/join/mgps/zxing/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 519
    .line 520
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 521
    .line 522
    .line 523
    goto :goto_3

    .line 524
    :cond_7
    const-wide/16 v1, 0xa

    .line 525
    .line 526
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 527
    .line 528
    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 529
    .line 530
    iget v5, v7, Landroid/graphics/Rect;->right:I

    .line 531
    .line 532
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    .line 533
    .line 534
    move-object v0, p0

    .line 535
    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 536
    .line 537
    .line 538
    :goto_4
    return-void
.end method
