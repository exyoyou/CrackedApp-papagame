.class public final Lcom/zxing/android/view/ViewfinderView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final n:J = 0x1eL

.field private static final o:I = 0xff

.field private static final p:I = 0x5

.field private static final q:I = 0xa

.field private static final r:I = 0x6

.field private static final s:I = 0x5

.field private static final t:I = 0x5

.field private static u:F = 0.0f

.field private static final v:I = 0x10

.field private static final w:I = 0x1e


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

.field private l:Lcom/zxing/android/camera/c;

.field m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/zxing/android/view/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
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

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    const/high16 p2, 0x60000000

    .line 4
    iput p2, p0, Lcom/zxing/android/view/ViewfinderView;->g:I

    const/high16 p2, -0x50000000

    .line 5
    iput p2, p0, Lcom/zxing/android/view/ViewfinderView;->h:I

    const p2, -0x3f000100    # -7.999878f

    .line 6
    iput p2, p0, Lcom/zxing/android/view/ViewfinderView;->i:I

    .line 7
    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/zxing/android/view/ViewfinderView;->j:Ljava/util/Collection;

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/zxing/android/view/ViewfinderView;->k:Ljava/util/Collection;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/zxing/android/view/ViewfinderView;->u:F

    const/high16 p2, 0x41a00000    # 20.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 10
    iput p1, p0, Lcom/zxing/android/view/ViewfinderView;->b:I

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
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->j:Ljava/util/Collection;

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
    iput-object p1, p0, Lcom/zxing/android/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/zxing/android/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
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
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->l:Lcom/zxing/android/camera/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/zxing/android/camera/c;->c()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v7

    .line 7
    if-nez v7, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/zxing/android/view/ViewfinderView;->m:Z

    .line 11
    .line 12
    const/4 v8, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iput-boolean v8, p0, Lcom/zxing/android/view/ViewfinderView;->m:Z

    .line 16
    .line 17
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    iput v0, p0, Lcom/zxing/android/view/ViewfinderView;->d:I

    .line 20
    .line 21
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 22
    .line 23
    iput v0, p0, Lcom/zxing/android/view/ViewfinderView;->e:I

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    iget-object v1, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/zxing/android/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget v2, p0, Lcom/zxing/android/view/ViewfinderView;->h:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget v2, p0, Lcom/zxing/android/view/ViewfinderView;->g:I

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x0

    .line 49
    int-to-float v10, v0

    .line 50
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    int-to-float v4, v0

    .line 53
    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 54
    .line 55
    move-object v0, p1

    .line 56
    move v3, v10

    .line 57
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 61
    .line 62
    int-to-float v2, v0

    .line 63
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 64
    .line 65
    int-to-float v3, v0

    .line 66
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 67
    .line 68
    add-int/2addr v0, v8

    .line 69
    int-to-float v4, v0

    .line 70
    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 71
    .line 72
    move-object v0, p1

    .line 73
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    .line 75
    .line 76
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 77
    .line 78
    add-int/2addr v0, v8

    .line 79
    int-to-float v1, v0

    .line 80
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 81
    .line 82
    int-to-float v2, v0

    .line 83
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 84
    .line 85
    add-int/2addr v0, v8

    .line 86
    int-to-float v4, v0

    .line 87
    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 88
    .line 89
    move-object v0, p1

    .line 90
    move v3, v10

    .line 91
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 96
    .line 97
    add-int/2addr v0, v8

    .line 98
    int-to-float v2, v0

    .line 99
    int-to-float v4, v9

    .line 100
    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 101
    .line 102
    move-object v0, p1

    .line 103
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 111
    .line 112
    const/16 v1, 0xff

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 118
    .line 119
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 120
    .line 121
    int-to-float v1, v1

    .line 122
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 123
    .line 124
    int-to-float v2, v2

    .line 125
    iget-object v3, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 126
    .line 127
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_1

    .line 131
    .line 132
    :cond_3
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 133
    .line 134
    const/4 v1, -0x1

    .line 135
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    .line 137
    .line 138
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 139
    .line 140
    int-to-float v1, v0

    .line 141
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 142
    .line 143
    int-to-float v2, v0

    .line 144
    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 145
    .line 146
    add-int/2addr v3, v8

    .line 147
    int-to-float v3, v3

    .line 148
    add-int/lit8 v0, v0, 0x2

    .line 149
    .line 150
    int-to-float v4, v0

    .line 151
    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 152
    .line 153
    move-object v0, p1

    .line 154
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 155
    .line 156
    .line 157
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 158
    .line 159
    int-to-float v1, v0

    .line 160
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 161
    .line 162
    add-int/lit8 v2, v2, 0x2

    .line 163
    .line 164
    int-to-float v2, v2

    .line 165
    add-int/lit8 v0, v0, 0x2

    .line 166
    .line 167
    int-to-float v3, v0

    .line 168
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 169
    .line 170
    sub-int/2addr v0, v8

    .line 171
    int-to-float v4, v0

    .line 172
    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 173
    .line 174
    move-object v0, p1

    .line 175
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 176
    .line 177
    .line 178
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 179
    .line 180
    add-int/lit8 v1, v0, -0x1

    .line 181
    .line 182
    int-to-float v1, v1

    .line 183
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 184
    .line 185
    int-to-float v2, v2

    .line 186
    add-int/2addr v0, v8

    .line 187
    int-to-float v3, v0

    .line 188
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 189
    .line 190
    sub-int/2addr v0, v8

    .line 191
    int-to-float v4, v0

    .line 192
    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 193
    .line 194
    move-object v0, p1

    .line 195
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 196
    .line 197
    .line 198
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 199
    .line 200
    int-to-float v1, v0

    .line 201
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 202
    .line 203
    add-int/lit8 v2, v0, -0x1

    .line 204
    .line 205
    int-to-float v2, v2

    .line 206
    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 207
    .line 208
    add-int/2addr v3, v8

    .line 209
    int-to-float v3, v3

    .line 210
    add-int/2addr v0, v8

    .line 211
    int-to-float v4, v0

    .line 212
    iget-object v5, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 213
    .line 214
    move-object v0, p1

    .line 215
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 219
    .line 220
    const v1, -0xf13c01

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 227
    .line 228
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    .line 230
    .line 231
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 232
    .line 233
    add-int/lit8 v1, v0, -0xa

    .line 234
    .line 235
    add-int/lit8 v1, v1, 0x2

    .line 236
    .line 237
    int-to-float v1, v1

    .line 238
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 239
    .line 240
    add-int/lit8 v3, v2, -0xa

    .line 241
    .line 242
    add-int/lit8 v3, v3, 0x2

    .line 243
    .line 244
    int-to-float v3, v3

    .line 245
    iget v4, p0, Lcom/zxing/android/view/ViewfinderView;->b:I

    .line 246
    .line 247
    add-int/2addr v0, v4

    .line 248
    add-int/lit8 v0, v0, -0xa

    .line 249
    .line 250
    add-int/lit8 v0, v0, 0x2

    .line 251
    .line 252
    int-to-float v4, v0

    .line 253
    add-int/lit8 v2, v2, 0x2

    .line 254
    .line 255
    int-to-float v5, v2

    .line 256
    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 257
    .line 258
    move-object v0, p1

    .line 259
    move v2, v3

    .line 260
    move v3, v4

    .line 261
    move v4, v5

    .line 262
    move-object v5, v8

    .line 263
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 264
    .line 265
    .line 266
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 267
    .line 268
    add-int/lit8 v1, v0, -0xa

    .line 269
    .line 270
    add-int/lit8 v1, v1, 0x2

    .line 271
    .line 272
    int-to-float v1, v1

    .line 273
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 274
    .line 275
    add-int/lit8 v3, v2, -0xa

    .line 276
    .line 277
    add-int/lit8 v3, v3, 0x2

    .line 278
    .line 279
    int-to-float v3, v3

    .line 280
    add-int/lit8 v0, v0, 0x2

    .line 281
    .line 282
    int-to-float v4, v0

    .line 283
    iget v0, p0, Lcom/zxing/android/view/ViewfinderView;->b:I

    .line 284
    .line 285
    add-int/2addr v2, v0

    .line 286
    add-int/lit8 v2, v2, -0xa

    .line 287
    .line 288
    add-int/lit8 v2, v2, 0x2

    .line 289
    .line 290
    int-to-float v5, v2

    .line 291
    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 292
    .line 293
    move-object v0, p1

    .line 294
    move v2, v3

    .line 295
    move v3, v4

    .line 296
    move v4, v5

    .line 297
    move-object v5, v8

    .line 298
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 299
    .line 300
    .line 301
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 302
    .line 303
    iget v1, p0, Lcom/zxing/android/view/ViewfinderView;->b:I

    .line 304
    .line 305
    sub-int v1, v0, v1

    .line 306
    .line 307
    add-int/lit8 v1, v1, 0xa

    .line 308
    .line 309
    add-int/lit8 v1, v1, -0x2

    .line 310
    .line 311
    int-to-float v1, v1

    .line 312
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 313
    .line 314
    add-int/lit8 v3, v2, -0xa

    .line 315
    .line 316
    add-int/lit8 v3, v3, 0x2

    .line 317
    .line 318
    int-to-float v3, v3

    .line 319
    add-int/lit8 v0, v0, 0xa

    .line 320
    .line 321
    add-int/lit8 v0, v0, -0x2

    .line 322
    .line 323
    int-to-float v4, v0

    .line 324
    add-int/lit8 v2, v2, 0x2

    .line 325
    .line 326
    int-to-float v5, v2

    .line 327
    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 328
    .line 329
    move-object v0, p1

    .line 330
    move v2, v3

    .line 331
    move v3, v4

    .line 332
    move v4, v5

    .line 333
    move-object v5, v8

    .line 334
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 335
    .line 336
    .line 337
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 338
    .line 339
    add-int/lit8 v1, v0, -0x2

    .line 340
    .line 341
    int-to-float v1, v1

    .line 342
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 343
    .line 344
    add-int/lit8 v3, v2, -0xa

    .line 345
    .line 346
    add-int/lit8 v3, v3, 0x2

    .line 347
    .line 348
    int-to-float v3, v3

    .line 349
    add-int/lit8 v0, v0, 0xa

    .line 350
    .line 351
    add-int/lit8 v0, v0, -0x2

    .line 352
    .line 353
    int-to-float v4, v0

    .line 354
    iget v0, p0, Lcom/zxing/android/view/ViewfinderView;->b:I

    .line 355
    .line 356
    add-int/2addr v2, v0

    .line 357
    add-int/lit8 v2, v2, -0xa

    .line 358
    .line 359
    add-int/lit8 v2, v2, 0x2

    .line 360
    .line 361
    int-to-float v5, v2

    .line 362
    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 363
    .line 364
    move-object v0, p1

    .line 365
    move v2, v3

    .line 366
    move v3, v4

    .line 367
    move v4, v5

    .line 368
    move-object v5, v8

    .line 369
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 370
    .line 371
    .line 372
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 373
    .line 374
    add-int/lit8 v1, v0, -0xa

    .line 375
    .line 376
    add-int/lit8 v1, v1, 0x2

    .line 377
    .line 378
    int-to-float v1, v1

    .line 379
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 380
    .line 381
    add-int/lit8 v3, v2, -0x2

    .line 382
    .line 383
    int-to-float v3, v3

    .line 384
    iget v4, p0, Lcom/zxing/android/view/ViewfinderView;->b:I

    .line 385
    .line 386
    add-int/2addr v0, v4

    .line 387
    add-int/lit8 v0, v0, -0xa

    .line 388
    .line 389
    add-int/lit8 v0, v0, 0x2

    .line 390
    .line 391
    int-to-float v4, v0

    .line 392
    add-int/lit8 v2, v2, 0xa

    .line 393
    .line 394
    add-int/lit8 v2, v2, -0x2

    .line 395
    .line 396
    int-to-float v5, v2

    .line 397
    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 398
    .line 399
    move-object v0, p1

    .line 400
    move v2, v3

    .line 401
    move v3, v4

    .line 402
    move v4, v5

    .line 403
    move-object v5, v8

    .line 404
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 405
    .line 406
    .line 407
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 408
    .line 409
    add-int/lit8 v1, v0, -0xa

    .line 410
    .line 411
    add-int/lit8 v1, v1, 0x2

    .line 412
    .line 413
    int-to-float v1, v1

    .line 414
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 415
    .line 416
    iget v3, p0, Lcom/zxing/android/view/ViewfinderView;->b:I

    .line 417
    .line 418
    sub-int v3, v2, v3

    .line 419
    .line 420
    add-int/lit8 v3, v3, 0xa

    .line 421
    .line 422
    add-int/lit8 v3, v3, -0x2

    .line 423
    .line 424
    int-to-float v3, v3

    .line 425
    add-int/lit8 v0, v0, 0x2

    .line 426
    .line 427
    int-to-float v4, v0

    .line 428
    add-int/lit8 v2, v2, 0xa

    .line 429
    .line 430
    add-int/lit8 v2, v2, -0x2

    .line 431
    .line 432
    int-to-float v5, v2

    .line 433
    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 434
    .line 435
    move-object v0, p1

    .line 436
    move v2, v3

    .line 437
    move v3, v4

    .line 438
    move v4, v5

    .line 439
    move-object v5, v8

    .line 440
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 441
    .line 442
    .line 443
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 444
    .line 445
    iget v1, p0, Lcom/zxing/android/view/ViewfinderView;->b:I

    .line 446
    .line 447
    sub-int v1, v0, v1

    .line 448
    .line 449
    add-int/lit8 v1, v1, 0xa

    .line 450
    .line 451
    add-int/lit8 v1, v1, -0x2

    .line 452
    .line 453
    int-to-float v1, v1

    .line 454
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 455
    .line 456
    add-int/lit8 v3, v2, -0x2

    .line 457
    .line 458
    int-to-float v3, v3

    .line 459
    add-int/lit8 v0, v0, 0xa

    .line 460
    .line 461
    add-int/lit8 v0, v0, -0x2

    .line 462
    .line 463
    int-to-float v4, v0

    .line 464
    add-int/lit8 v2, v2, 0xa

    .line 465
    .line 466
    add-int/lit8 v2, v2, -0x2

    .line 467
    .line 468
    int-to-float v5, v2

    .line 469
    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 470
    .line 471
    move-object v0, p1

    .line 472
    move v2, v3

    .line 473
    move v3, v4

    .line 474
    move v4, v5

    .line 475
    move-object v5, v8

    .line 476
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 477
    .line 478
    .line 479
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 480
    .line 481
    add-int/lit8 v1, v0, -0x2

    .line 482
    .line 483
    int-to-float v1, v1

    .line 484
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 485
    .line 486
    iget v3, p0, Lcom/zxing/android/view/ViewfinderView;->b:I

    .line 487
    .line 488
    sub-int v3, v2, v3

    .line 489
    .line 490
    add-int/lit8 v3, v3, 0xa

    .line 491
    .line 492
    add-int/lit8 v3, v3, -0x2

    .line 493
    .line 494
    int-to-float v3, v3

    .line 495
    add-int/lit8 v0, v0, 0xa

    .line 496
    .line 497
    add-int/lit8 v0, v0, -0x2

    .line 498
    .line 499
    int-to-float v4, v0

    .line 500
    add-int/lit8 v2, v2, 0xa

    .line 501
    .line 502
    add-int/lit8 v2, v2, -0x2

    .line 503
    .line 504
    int-to-float v5, v2

    .line 505
    iget-object v8, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 506
    .line 507
    move-object v0, p1

    .line 508
    move v2, v3

    .line 509
    move v3, v4

    .line 510
    move v4, v5

    .line 511
    move-object v5, v8

    .line 512
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 513
    .line 514
    .line 515
    iget v0, p0, Lcom/zxing/android/view/ViewfinderView;->d:I

    .line 516
    .line 517
    add-int/lit8 v0, v0, 0x5

    .line 518
    .line 519
    iput v0, p0, Lcom/zxing/android/view/ViewfinderView;->d:I

    .line 520
    .line 521
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 522
    .line 523
    if-lt v0, v1, :cond_4

    .line 524
    .line 525
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 526
    .line 527
    iput v0, p0, Lcom/zxing/android/view/ViewfinderView;->d:I

    .line 528
    .line 529
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    .line 530
    .line 531
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 532
    .line 533
    .line 534
    iget v1, v7, Landroid/graphics/Rect;->left:I

    .line 535
    .line 536
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 537
    .line 538
    iget v1, v7, Landroid/graphics/Rect;->right:I

    .line 539
    .line 540
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 541
    .line 542
    iget v1, p0, Lcom/zxing/android/view/ViewfinderView;->d:I

    .line 543
    .line 544
    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 545
    .line 546
    add-int/lit8 v1, v1, 0x12

    .line 547
    .line 548
    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 549
    .line 550
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    const v2, 0x7f080f73

    .line 555
    .line 556
    .line 557
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 562
    .line 563
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    const/4 v2, 0x0

    .line 568
    iget-object v3, p0, Lcom/zxing/android/view/ViewfinderView;->c:Landroid/graphics/Paint;

    .line 569
    .line 570
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 571
    .line 572
    .line 573
    const-wide/16 v1, 0x1e

    .line 574
    .line 575
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 576
    .line 577
    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 578
    .line 579
    iget v5, v7, Landroid/graphics/Rect;->right:I

    .line 580
    .line 581
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    .line 582
    .line 583
    move-object v0, p0

    .line 584
    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 585
    .line 586
    .line 587
    :goto_1
    return-void
.end method

.method public setCameraManager(Lcom/zxing/android/camera/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraManager"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/zxing/android/view/ViewfinderView;->l:Lcom/zxing/android/camera/c;

    .line 2
    .line 3
    return-void
.end method
