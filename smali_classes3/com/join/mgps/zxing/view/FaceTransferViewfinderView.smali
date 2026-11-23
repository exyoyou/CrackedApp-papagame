.class public Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final m:Ljava/lang/String; = "log"

.field private static final n:J = 0xaL

.field private static final o:I = 0xff

.field private static final p:I = 0xa

.field private static final q:I = 0x6

.field private static final r:I = 0x5

.field private static final s:I = 0x5

.field private static t:F = 0.0f

.field private static final u:I = 0xf

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
    sput p1, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->t:F

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
    iput p1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:I

    .line 22
    .line 23
    new-instance p1, Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

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
    iput p2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->g:I

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
    iput p2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->h:I

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
    iput p1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->i:I

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
    iput-object p1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->j:Ljava/util/Collection;

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
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->j:Ljava/util/Collection;

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
    iput-object p1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->f:Landroid/graphics/Bitmap;

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
    iput-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
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
    invoke-virtual {v0}, Lcom/join/mgps/zxing/camera/c;->e()Landroid/graphics/Rect;

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
    iget-boolean v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->l:Z

    .line 13
    .line 14
    const/4 v8, 0x1

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iput-boolean v8, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->l:Z

    .line 18
    .line 19
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 20
    .line 21
    iput v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->d:I

    .line 22
    .line 23
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 24
    .line 25
    iput v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->e:I

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
    iget-object v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    iget v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->h:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->g:I

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
    iget-object v5, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

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
    iget-object v5, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

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
    iget-object v5, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

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
    iget-object v5, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 103
    .line 104
    move-object v0, p1

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->f:Landroid/graphics/Bitmap;

    .line 109
    .line 110
    const/16 v9, 0xff

    .line 111
    .line 112
    if-eqz v0, :cond_3

    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 115
    .line 116
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->f:Landroid/graphics/Bitmap;

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
    iget-object v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

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
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 135
    .line 136
    const-string v1, "#03e3fe"

    .line 137
    .line 138
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    .line 144
    .line 145
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 146
    .line 147
    int-to-float v1, v0

    .line 148
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 149
    .line 150
    int-to-float v3, v2

    .line 151
    iget v4, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:I

    .line 152
    .line 153
    add-int/2addr v0, v4

    .line 154
    int-to-float v4, v0

    .line 155
    add-int/lit8 v2, v2, 0xa

    .line 156
    .line 157
    int-to-float v5, v2

    .line 158
    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 159
    .line 160
    move-object v0, p1

    .line 161
    move v2, v3

    .line 162
    move v3, v4

    .line 163
    move v4, v5

    .line 164
    move-object v5, v11

    .line 165
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 166
    .line 167
    .line 168
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 169
    .line 170
    int-to-float v1, v0

    .line 171
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 172
    .line 173
    int-to-float v3, v2

    .line 174
    add-int/lit8 v0, v0, 0xa

    .line 175
    .line 176
    int-to-float v4, v0

    .line 177
    iget v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:I

    .line 178
    .line 179
    add-int/2addr v2, v0

    .line 180
    int-to-float v5, v2

    .line 181
    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 182
    .line 183
    move-object v0, p1

    .line 184
    move v2, v3

    .line 185
    move v3, v4

    .line 186
    move v4, v5

    .line 187
    move-object v5, v11

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 189
    .line 190
    .line 191
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 192
    .line 193
    iget v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:I

    .line 194
    .line 195
    sub-int v1, v0, v1

    .line 196
    .line 197
    int-to-float v1, v1

    .line 198
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 199
    .line 200
    int-to-float v3, v2

    .line 201
    int-to-float v4, v0

    .line 202
    add-int/lit8 v2, v2, 0xa

    .line 203
    .line 204
    int-to-float v5, v2

    .line 205
    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 206
    .line 207
    move-object v0, p1

    .line 208
    move v2, v3

    .line 209
    move v3, v4

    .line 210
    move v4, v5

    .line 211
    move-object v5, v11

    .line 212
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 213
    .line 214
    .line 215
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 216
    .line 217
    add-int/lit8 v1, v0, -0xa

    .line 218
    .line 219
    int-to-float v1, v1

    .line 220
    iget v2, v7, Landroid/graphics/Rect;->top:I

    .line 221
    .line 222
    int-to-float v3, v2

    .line 223
    int-to-float v4, v0

    .line 224
    iget v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:I

    .line 225
    .line 226
    add-int/2addr v2, v0

    .line 227
    int-to-float v5, v2

    .line 228
    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 229
    .line 230
    move-object v0, p1

    .line 231
    move v2, v3

    .line 232
    move v3, v4

    .line 233
    move v4, v5

    .line 234
    move-object v5, v11

    .line 235
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 236
    .line 237
    .line 238
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 239
    .line 240
    int-to-float v1, v0

    .line 241
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 242
    .line 243
    add-int/lit8 v3, v2, -0xa

    .line 244
    .line 245
    int-to-float v3, v3

    .line 246
    iget v4, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:I

    .line 247
    .line 248
    add-int/2addr v0, v4

    .line 249
    int-to-float v4, v0

    .line 250
    int-to-float v5, v2

    .line 251
    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 252
    .line 253
    move-object v0, p1

    .line 254
    move v2, v3

    .line 255
    move v3, v4

    .line 256
    move v4, v5

    .line 257
    move-object v5, v11

    .line 258
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 259
    .line 260
    .line 261
    iget v0, v7, Landroid/graphics/Rect;->left:I

    .line 262
    .line 263
    int-to-float v1, v0

    .line 264
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 265
    .line 266
    iget v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:I

    .line 267
    .line 268
    sub-int v3, v2, v3

    .line 269
    .line 270
    int-to-float v3, v3

    .line 271
    add-int/lit8 v0, v0, 0xa

    .line 272
    .line 273
    int-to-float v4, v0

    .line 274
    int-to-float v5, v2

    .line 275
    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 276
    .line 277
    move-object v0, p1

    .line 278
    move v2, v3

    .line 279
    move v3, v4

    .line 280
    move v4, v5

    .line 281
    move-object v5, v11

    .line 282
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 283
    .line 284
    .line 285
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 286
    .line 287
    iget v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:I

    .line 288
    .line 289
    sub-int v1, v0, v1

    .line 290
    .line 291
    int-to-float v1, v1

    .line 292
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 293
    .line 294
    add-int/lit8 v3, v2, -0xa

    .line 295
    .line 296
    int-to-float v3, v3

    .line 297
    int-to-float v4, v0

    .line 298
    int-to-float v5, v2

    .line 299
    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 300
    .line 301
    move-object v0, p1

    .line 302
    move v2, v3

    .line 303
    move v3, v4

    .line 304
    move v4, v5

    .line 305
    move-object v5, v11

    .line 306
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 307
    .line 308
    .line 309
    iget v0, v7, Landroid/graphics/Rect;->right:I

    .line 310
    .line 311
    add-int/lit8 v1, v0, -0xa

    .line 312
    .line 313
    int-to-float v1, v1

    .line 314
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 315
    .line 316
    iget v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->b:I

    .line 317
    .line 318
    sub-int v3, v2, v3

    .line 319
    .line 320
    int-to-float v3, v3

    .line 321
    int-to-float v4, v0

    .line 322
    int-to-float v5, v2

    .line 323
    iget-object v11, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 324
    .line 325
    move-object v0, p1

    .line 326
    move v2, v3

    .line 327
    move v3, v4

    .line 328
    move v4, v5

    .line 329
    move-object v5, v11

    .line 330
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 331
    .line 332
    .line 333
    iget v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->d:I

    .line 334
    .line 335
    const/4 v1, 0x5

    .line 336
    add-int/2addr v0, v1

    .line 337
    iput v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->d:I

    .line 338
    .line 339
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 340
    .line 341
    if-lt v0, v2, :cond_4

    .line 342
    .line 343
    iget v0, v7, Landroid/graphics/Rect;->top:I

    .line 344
    .line 345
    iput v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->d:I

    .line 346
    .line 347
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    .line 348
    .line 349
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 350
    .line 351
    .line 352
    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 353
    .line 354
    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 355
    .line 356
    iget v2, v7, Landroid/graphics/Rect;->right:I

    .line 357
    .line 358
    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 359
    .line 360
    iget v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->d:I

    .line 361
    .line 362
    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 363
    .line 364
    add-int/lit8 v2, v2, 0x12

    .line 365
    .line 366
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 367
    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    const v3, 0x7f080f74

    .line 373
    .line 374
    .line 375
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 380
    .line 381
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    iget-object v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 386
    .line 387
    const/4 v4, 0x0

    .line 388
    invoke-virtual {p1, v2, v4, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 389
    .line 390
    .line 391
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 392
    .line 393
    const/high16 v2, -0x1000000

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    .line 397
    .line 398
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 399
    .line 400
    const/high16 v2, 0x41700000    # 15.0f

    .line 401
    .line 402
    sget v3, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->t:F

    .line 403
    .line 404
    mul-float v3, v3, v2

    .line 405
    .line 406
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 407
    .line 408
    .line 409
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 410
    .line 411
    const/16 v2, 0x40

    .line 412
    .line 413
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 414
    .line 415
    .line 416
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 417
    .line 418
    const-string v2, "System"

    .line 419
    .line 420
    invoke-static {v2, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 421
    .line 422
    .line 423
    move-result-object v2

    .line 424
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 425
    .line 426
    .line 427
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    const v2, 0x7f1203c9

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    iget-object v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 439
    .line 440
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 441
    .line 442
    .line 443
    move-result v2

    .line 444
    sub-float/2addr v10, v2

    .line 445
    const/high16 v2, 0x40000000    # 2.0f

    .line 446
    .line 447
    div-float/2addr v10, v2

    .line 448
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    .line 449
    .line 450
    int-to-float v2, v2

    .line 451
    const/high16 v3, 0x41f00000    # 30.0f

    .line 452
    .line 453
    sget v5, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->t:F

    .line 454
    .line 455
    mul-float v5, v5, v3

    .line 456
    .line 457
    add-float/2addr v2, v5

    .line 458
    iget-object v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 459
    .line 460
    invoke-virtual {p1, v0, v10, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 461
    .line 462
    .line 463
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->j:Ljava/util/Collection;

    .line 464
    .line 465
    iget-object v2, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->k:Ljava/util/Collection;

    .line 466
    .line 467
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_5

    .line 472
    .line 473
    iput-object v4, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->k:Ljava/util/Collection;

    .line 474
    .line 475
    goto :goto_2

    .line 476
    :cond_5
    new-instance v3, Ljava/util/HashSet;

    .line 477
    .line 478
    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 479
    .line 480
    .line 481
    iput-object v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->j:Ljava/util/Collection;

    .line 482
    .line 483
    iput-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->k:Ljava/util/Collection;

    .line 484
    .line 485
    iget-object v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 486
    .line 487
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 488
    .line 489
    .line 490
    iget-object v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 491
    .line 492
    iget v3, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->i:I

    .line 493
    .line 494
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 495
    .line 496
    .line 497
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    if-eqz v1, :cond_6

    .line 506
    .line 507
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 512
    .line 513
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 514
    .line 515
    int-to-float v3, v3

    .line 516
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 517
    .line 518
    .line 519
    move-result v4

    .line 520
    add-float/2addr v3, v4

    .line 521
    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 522
    .line 523
    int-to-float v4, v4

    .line 524
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 525
    .line 526
    .line 527
    move-result v1

    .line 528
    add-float/2addr v4, v1

    .line 529
    const/high16 v1, 0x40c00000    # 6.0f

    .line 530
    .line 531
    iget-object v5, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 532
    .line 533
    invoke-virtual {p1, v3, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 534
    .line 535
    .line 536
    goto :goto_1

    .line 537
    :cond_6
    :goto_2
    if-eqz v2, :cond_7

    .line 538
    .line 539
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 540
    .line 541
    const/16 v1, 0x7f

    .line 542
    .line 543
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 544
    .line 545
    .line 546
    iget-object v0, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 547
    .line 548
    iget v1, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->i:I

    .line 549
    .line 550
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    .line 552
    .line 553
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 558
    .line 559
    .line 560
    move-result v1

    .line 561
    if-eqz v1, :cond_7

    .line 562
    .line 563
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    check-cast v1, Lcom/google/zxing/ResultPoint;

    .line 568
    .line 569
    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 570
    .line 571
    int-to-float v2, v2

    .line 572
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    .line 573
    .line 574
    .line 575
    move-result v3

    .line 576
    add-float/2addr v2, v3

    .line 577
    iget v3, v7, Landroid/graphics/Rect;->top:I

    .line 578
    .line 579
    int-to-float v3, v3

    .line 580
    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    add-float/2addr v3, v1

    .line 585
    const/high16 v1, 0x40400000    # 3.0f

    .line 586
    .line 587
    iget-object v4, p0, Lcom/join/mgps/zxing/view/FaceTransferViewfinderView;->c:Landroid/graphics/Paint;

    .line 588
    .line 589
    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 590
    .line 591
    .line 592
    goto :goto_3

    .line 593
    :cond_7
    const-wide/16 v1, 0xa

    .line 594
    .line 595
    iget v3, v7, Landroid/graphics/Rect;->left:I

    .line 596
    .line 597
    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 598
    .line 599
    iget v5, v7, Landroid/graphics/Rect;->right:I

    .line 600
    .line 601
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    .line 602
    .line 603
    move-object v0, p0

    .line 604
    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 605
    .line 606
    .line 607
    :goto_4
    return-void
.end method
