.class public Lcom/join/android/app/common/view/HighlightView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/view/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field private static final q:Ljava/lang/String; = "HighlightView"

.field public static final r:I = 0x1

.field public static final s:I = 0x2

.field public static final t:I = 0x4

.field public static final u:I = 0x8

.field public static final v:I = 0x10

.field public static final w:I = 0x20


# instance fields
.field a:Landroid/view/View;

.field public b:Z

.field c:Z

.field private d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/RectF;

.field public g:Landroid/graphics/RectF;

.field public h:Landroid/graphics/Matrix;

.field private i:Z

.field private j:F

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private final n:Landroid/graphics/Paint;

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/join/android/app/common/view/HighlightView$ModifyMode;->None:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    .line 12
    .line 13
    new-instance v0, Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->n:Landroid/graphics/Paint;

    .line 19
    .line 20
    new-instance v0, Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->o:Landroid/graphics/Paint;

    .line 26
    .line 27
    new-instance v0, Landroid/graphics/Paint;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    .line 35
    .line 36
    return-void
.end method

.method private a()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 4
    .line 5
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 6
    .line 7
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 8
    .line 9
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 10
    .line 11
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 12
    .line 13
    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->h:Landroid/graphics/Matrix;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 19
    .line 20
    .line 21
    new-instance v1, Landroid/graphics/Rect;

    .line 22
    .line 23
    iget v2, v0, Landroid/graphics/RectF;->left:F

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    iget v3, v0, Landroid/graphics/RectF;->top:F

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iget v4, v0, Landroid/graphics/RectF;->right:F

    .line 36
    .line 37
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48
    .line 49
    .line 50
    return-object v1
.end method

.method private h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f080f21

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/graphics/Path;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/android/app/common/view/HighlightView;->g()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    .line 21
    .line 22
    const/high16 v1, -0x1000000

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 44
    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    int-to-float v3, v3

    .line 64
    iget-object v4, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 65
    .line 66
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 67
    .line 68
    int-to-float v5, v5

    .line 69
    const/high16 v6, 0x40000000    # 2.0f

    .line 70
    .line 71
    div-float/2addr v2, v6

    .line 72
    add-float/2addr v5, v2

    .line 73
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 74
    .line 75
    int-to-float v4, v4

    .line 76
    div-float/2addr v3, v6

    .line 77
    add-float/2addr v4, v3

    .line 78
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 79
    .line 80
    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 81
    .line 82
    .line 83
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    .line 84
    .line 85
    const v3, -0x10fb2a

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    new-instance v2, Landroid/graphics/RectF;

    .line 93
    .line 94
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 95
    .line 96
    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 97
    .line 98
    .line 99
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 100
    .line 101
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    .line 105
    .line 106
    const/4 v3, -0x1

    .line 107
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    .line 109
    .line 110
    :goto_0
    new-instance v2, Landroid/graphics/Region;

    .line 111
    .line 112
    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 119
    .line 120
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 121
    .line 122
    invoke-virtual {v2, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 123
    .line 124
    .line 125
    new-instance v1, Landroid/graphics/RegionIterator;

    .line 126
    .line 127
    invoke-direct {v1, v2}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 128
    .line 129
    .line 130
    new-instance v2, Landroid/graphics/Rect;

    .line 131
    .line 132
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 133
    .line 134
    .line 135
    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_4

    .line 140
    .line 141
    invoke-virtual {p0}, Lcom/join/android/app/common/view/HighlightView;->g()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_3

    .line 146
    .line 147
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->n:Landroid/graphics/Paint;

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_3
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->o:Landroid/graphics/Paint;

    .line 151
    .line 152
    :goto_2
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    .line 160
    .line 161
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    .line 165
    .line 166
    sget-object v1, Lcom/join/android/app/common/view/HighlightView$ModifyMode;->Grow:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    .line 167
    .line 168
    if-ne v0, v1, :cond_5

    .line 169
    .line 170
    iget-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    .line 171
    .line 172
    if-eqz v0, :cond_5

    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 181
    .line 182
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 192
    .line 193
    .line 194
    move-result-wide v2

    .line 195
    iget-object v4, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 196
    .line 197
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 198
    .line 199
    .line 200
    move-result v4

    .line 201
    int-to-double v4, v4

    .line 202
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 203
    .line 204
    div-double/2addr v4, v6

    .line 205
    mul-double v2, v2, v4

    .line 206
    .line 207
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 208
    .line 209
    .line 210
    move-result-wide v2

    .line 211
    long-to-int v3, v2

    .line 212
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 213
    .line 214
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 215
    .line 216
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    div-int/lit8 v2, v2, 0x2

    .line 221
    .line 222
    add-int/2addr v4, v2

    .line 223
    add-int/2addr v4, v3

    .line 224
    div-int/lit8 v0, v0, 0x2

    .line 225
    .line 226
    sub-int/2addr v4, v0

    .line 227
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 228
    .line 229
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    div-int/lit8 v0, v0, 0x2

    .line 236
    .line 237
    add-int/2addr v2, v0

    .line 238
    sub-int/2addr v2, v3

    .line 239
    div-int/lit8 v1, v1, 0x2

    .line 240
    .line 241
    sub-int/2addr v2, v1

    .line 242
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 243
    .line 244
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    add-int/2addr v1, v4

    .line 249
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 250
    .line 251
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    add-int/2addr v3, v2

    .line 256
    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 260
    .line 261
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    .line 263
    .line 264
    :cond_5
    iget-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    .line 265
    .line 266
    if-eqz v0, :cond_6

    .line 267
    .line 268
    goto :goto_3

    .line 269
    :cond_6
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 270
    .line 271
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 272
    .line 273
    add-int/lit8 v1, v1, 0x1

    .line 274
    .line 275
    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 276
    .line 277
    add-int/lit8 v2, v2, 0x1

    .line 278
    .line 279
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 280
    .line 281
    add-int/lit8 v3, v3, 0x4

    .line 282
    .line 283
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 284
    .line 285
    add-int/lit8 v0, v0, 0x3

    .line 286
    .line 287
    iget-object v4, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 288
    .line 289
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    div-int/lit8 v4, v4, 0x2

    .line 294
    .line 295
    iget-object v5, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    div-int/lit8 v5, v5, 0x2

    .line 302
    .line 303
    iget-object v6, p0, Lcom/join/android/app/common/view/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    .line 304
    .line 305
    sub-int v7, v1, v4

    .line 306
    .line 307
    sub-int v8, v3, v5

    .line 308
    .line 309
    add-int/2addr v1, v4

    .line 310
    add-int/2addr v3, v5

    .line 311
    invoke-virtual {v6, v7, v8, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 312
    .line 313
    .line 314
    iget-object v6, p0, Lcom/join/android/app/common/view/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    .line 315
    .line 316
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 317
    .line 318
    .line 319
    iget-object v6, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 320
    .line 321
    sub-int v9, v2, v4

    .line 322
    .line 323
    add-int/2addr v2, v4

    .line 324
    invoke-virtual {v6, v9, v8, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 325
    .line 326
    .line 327
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 328
    .line 329
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 330
    .line 331
    .line 332
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 333
    .line 334
    sub-int v4, v0, v5

    .line 335
    .line 336
    add-int/2addr v0, v5

    .line 337
    invoke-virtual {v3, v7, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 338
    .line 339
    .line 340
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->l:Landroid/graphics/drawable/Drawable;

    .line 341
    .line 342
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    .line 344
    .line 345
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    .line 346
    .line 347
    invoke-virtual {v1, v9, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->m:Landroid/graphics/drawable/Drawable;

    .line 351
    .line 352
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 353
    .line 354
    .line 355
    :goto_3
    return-void
.end method

.method public c()Landroid/graphics/Rect;
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 4
    .line 5
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 6
    .line 7
    float-to-int v2, v2

    .line 8
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 9
    .line 10
    float-to-int v3, v3

    .line 11
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 12
    .line 13
    float-to-int v4, v4

    .line 14
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 15
    .line 16
    float-to-int v1, v1

    .line 17
    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public d(FF)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    .line 6
    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    const/high16 v3, 0x41a00000    # 20.0f

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    sub-float/2addr p1, v1

    .line 20
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    sub-float/2addr p2, v0

    .line 26
    mul-float v0, p1, p1

    .line 27
    .line 28
    mul-float v1, p2, p2

    .line 29
    .line 30
    add-float/2addr v0, v1

    .line 31
    float-to-double v0, v0

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    double-to-int v0, v0

    .line 37
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    const/4 v5, 0x2

    .line 44
    div-int/2addr v1, v5

    .line 45
    sub-int v6, v0, v1

    .line 46
    .line 47
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    int-to-float v6, v6

    .line 52
    cmpg-float v3, v6, v3

    .line 53
    .line 54
    if-gtz v3, :cond_3

    .line 55
    .line 56
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x0

    .line 65
    cmpl-float v0, v0, v1

    .line 66
    .line 67
    if-lez v0, :cond_1

    .line 68
    .line 69
    cmpg-float p1, p2, v2

    .line 70
    .line 71
    if-gez p1, :cond_0

    .line 72
    .line 73
    const/16 v2, 0x8

    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_0
    const/16 v2, 0x10

    .line 78
    .line 79
    goto/16 :goto_2

    .line 80
    .line 81
    :cond_1
    cmpg-float p1, p1, v2

    .line 82
    .line 83
    if-gez p1, :cond_2

    .line 84
    .line 85
    const/4 v2, 0x2

    .line 86
    goto/16 :goto_2

    .line 87
    .line 88
    :cond_2
    const/4 v2, 0x4

    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :cond_3
    if-ge v0, v1, :cond_4

    .line 92
    .line 93
    goto/16 :goto_2

    .line 94
    .line 95
    :cond_4
    const/4 v2, 0x1

    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_5
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 99
    .line 100
    int-to-float v1, v1

    .line 101
    sub-float/2addr v1, v3

    .line 102
    const/4 v5, 0x0

    .line 103
    cmpl-float v1, p2, v1

    .line 104
    .line 105
    if-ltz v1, :cond_6

    .line 106
    .line 107
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 108
    .line 109
    int-to-float v1, v1

    .line 110
    add-float/2addr v1, v3

    .line 111
    cmpg-float v1, p2, v1

    .line 112
    .line 113
    if-gez v1, :cond_6

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    goto :goto_0

    .line 117
    :cond_6
    const/4 v1, 0x0

    .line 118
    :goto_0
    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 119
    .line 120
    int-to-float v7, v6

    .line 121
    sub-float/2addr v7, v3

    .line 122
    cmpl-float v7, p1, v7

    .line 123
    .line 124
    if-ltz v7, :cond_7

    .line 125
    .line 126
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 127
    .line 128
    int-to-float v7, v7

    .line 129
    add-float/2addr v7, v3

    .line 130
    cmpg-float v7, p1, v7

    .line 131
    .line 132
    if-gez v7, :cond_7

    .line 133
    .line 134
    const/4 v5, 0x1

    .line 135
    :cond_7
    int-to-float v6, v6

    .line 136
    sub-float/2addr v6, p1

    .line 137
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    cmpg-float v6, v6, v3

    .line 142
    .line 143
    if-gez v6, :cond_8

    .line 144
    .line 145
    if-eqz v1, :cond_8

    .line 146
    .line 147
    const/4 v6, 0x3

    .line 148
    goto :goto_1

    .line 149
    :cond_8
    const/4 v6, 0x1

    .line 150
    :goto_1
    iget v7, v0, Landroid/graphics/Rect;->right:I

    .line 151
    .line 152
    int-to-float v7, v7

    .line 153
    sub-float/2addr v7, p1

    .line 154
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    cmpg-float v7, v7, v3

    .line 159
    .line 160
    if-gez v7, :cond_9

    .line 161
    .line 162
    if-eqz v1, :cond_9

    .line 163
    .line 164
    or-int/lit8 v6, v6, 0x4

    .line 165
    .line 166
    :cond_9
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 167
    .line 168
    int-to-float v1, v1

    .line 169
    sub-float/2addr v1, p2

    .line 170
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    cmpg-float v1, v1, v3

    .line 175
    .line 176
    if-gez v1, :cond_a

    .line 177
    .line 178
    if-eqz v5, :cond_a

    .line 179
    .line 180
    or-int/lit8 v6, v6, 0x8

    .line 181
    .line 182
    :cond_a
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 183
    .line 184
    int-to-float v1, v1

    .line 185
    sub-float/2addr v1, p2

    .line 186
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    cmpg-float v1, v1, v3

    .line 191
    .line 192
    if-gez v1, :cond_b

    .line 193
    .line 194
    if-eqz v5, :cond_b

    .line 195
    .line 196
    or-int/lit8 v6, v6, 0x10

    .line 197
    .line 198
    :cond_b
    if-ne v6, v4, :cond_c

    .line 199
    .line 200
    float-to-int p1, p1

    .line 201
    float-to-int p2, p2

    .line 202
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_c

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_c
    move v2, v6

    .line 210
    :goto_2
    return v2
.end method

.method e(FF)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    cmpl-float v0, p1, v1

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget p2, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    .line 11
    .line 12
    div-float p2, p1, p2

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    cmpl-float v0, p2, v1

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget p1, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    .line 20
    .line 21
    mul-float p1, p1, p2

    .line 22
    .line 23
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/RectF;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 28
    .line 29
    .line 30
    const/high16 v2, 0x40000000    # 2.0f

    .line 31
    .line 32
    cmpl-float v3, p1, v1

    .line 33
    .line 34
    if-lez v3, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    mul-float v4, p1, v2

    .line 41
    .line 42
    add-float/2addr v3, v4

    .line 43
    iget-object v4, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 44
    .line 45
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    cmpl-float v3, v3, v4

    .line 50
    .line 51
    if-lez v3, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    sub-float/2addr p1, v3

    .line 64
    div-float/2addr p1, v2

    .line 65
    iget-boolean v3, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    .line 66
    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    iget p2, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    .line 70
    .line 71
    div-float p2, p1, p2

    .line 72
    .line 73
    :cond_2
    cmpl-float v3, p2, v1

    .line 74
    .line 75
    if-lez v3, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    mul-float v4, p2, v2

    .line 82
    .line 83
    add-float/2addr v3, v4

    .line 84
    iget-object v4, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 85
    .line 86
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    cmpl-float v3, v3, v4

    .line 91
    .line 92
    if-lez v3, :cond_3

    .line 93
    .line 94
    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 95
    .line 96
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    sub-float/2addr p2, v3

    .line 105
    div-float/2addr p2, v2

    .line 106
    iget-boolean v2, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    .line 107
    .line 108
    if-eqz v2, :cond_3

    .line 109
    .line 110
    iget p1, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    .line 111
    .line 112
    mul-float p1, p1, p2

    .line 113
    .line 114
    :cond_3
    neg-float p1, p1

    .line 115
    neg-float p2, p2

    .line 116
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->inset(FF)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    const/high16 p2, 0x41c80000    # 25.0f

    .line 124
    .line 125
    cmpg-float p1, p1, p2

    .line 126
    .line 127
    if-gez p1, :cond_4

    .line 128
    .line 129
    return-void

    .line 130
    :cond_4
    iget-boolean p1, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    .line 131
    .line 132
    if-eqz p1, :cond_5

    .line 133
    .line 134
    iget p1, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    .line 135
    .line 136
    div-float/2addr p2, p1

    .line 137
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    cmpg-float p1, p1, p2

    .line 142
    .line 143
    if-gez p1, :cond_6

    .line 144
    .line 145
    return-void

    .line 146
    :cond_6
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 147
    .line 148
    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 149
    .line 150
    iget v2, p2, Landroid/graphics/RectF;->left:F

    .line 151
    .line 152
    cmpg-float v3, p1, v2

    .line 153
    .line 154
    if-gez v3, :cond_7

    .line 155
    .line 156
    sub-float/2addr v2, p1

    .line 157
    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_7
    iget p1, v0, Landroid/graphics/RectF;->right:F

    .line 162
    .line 163
    iget p2, p2, Landroid/graphics/RectF;->right:F

    .line 164
    .line 165
    cmpl-float v2, p1, p2

    .line 166
    .line 167
    if-lez v2, :cond_8

    .line 168
    .line 169
    sub-float/2addr p1, p2

    .line 170
    neg-float p1, p1

    .line 171
    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 172
    .line 173
    .line 174
    :cond_8
    :goto_1
    iget p1, v0, Landroid/graphics/RectF;->top:F

    .line 175
    .line 176
    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 177
    .line 178
    iget v2, p2, Landroid/graphics/RectF;->top:F

    .line 179
    .line 180
    cmpg-float v3, p1, v2

    .line 181
    .line 182
    if-gez v3, :cond_9

    .line 183
    .line 184
    sub-float/2addr v2, p1

    .line 185
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_9
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 190
    .line 191
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    .line 192
    .line 193
    cmpl-float v2, p1, p2

    .line 194
    .line 195
    if-lez v2, :cond_a

    .line 196
    .line 197
    sub-float/2addr p1, p2

    .line 198
    neg-float p1, p1

    .line 199
    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 200
    .line 201
    .line 202
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 203
    .line 204
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 205
    .line 206
    .line 207
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 212
    .line 213
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 216
    .line 217
    .line 218
    return-void
.end method

.method public f(IFF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "edge",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/16 v2, 0x20

    .line 10
    .line 11
    if-ne p1, v2, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    div-float/2addr p1, v1

    .line 25
    mul-float p2, p2, p1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-float v0, v0

    .line 38
    div-float/2addr p1, v0

    .line 39
    mul-float p3, p3, p1

    .line 40
    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/join/android/app/common/view/HighlightView;->j(FF)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    and-int/lit8 v2, p1, 0x6

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    const/4 p2, 0x0

    .line 51
    :cond_2
    and-int/lit8 v2, p1, 0x18

    .line 52
    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    const/4 p3, 0x0

    .line 56
    :cond_3
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    int-to-float v3, v3

    .line 67
    div-float/2addr v2, v3

    .line 68
    mul-float p2, p2, v2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    int-to-float v0, v0

    .line 81
    div-float/2addr v2, v0

    .line 82
    mul-float p3, p3, v2

    .line 83
    .line 84
    and-int/lit8 v0, p1, 0x2

    .line 85
    .line 86
    const/4 v2, -0x1

    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    const/4 v0, -0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const/4 v0, 0x1

    .line 92
    :goto_0
    int-to-float v0, v0

    .line 93
    mul-float v0, v0, p2

    .line 94
    .line 95
    and-int/lit8 p1, p1, 0x8

    .line 96
    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    const/4 v1, -0x1

    .line 100
    :cond_5
    int-to-float p1, v1

    .line 101
    mul-float p1, p1, p3

    .line 102
    .line 103
    invoke-virtual {p0, v0, p1}, Lcom/join/android/app/common/view/HighlightView;->e(FF)V

    .line 104
    .line 105
    .line 106
    :goto_1
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/common/view/HighlightView;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 6
    .line 7
    return-void
.end method

.method j(FF)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 9
    .line 10
    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 16
    .line 17
    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 18
    .line 19
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 20
    .line 21
    sub-float/2addr p2, v1

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 28
    .line 29
    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 30
    .line 31
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 32
    .line 33
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 34
    .line 35
    sub-float/2addr v2, v3

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p1, p2, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 44
    .line 45
    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 46
    .line 47
    iget p2, p2, Landroid/graphics/RectF;->right:F

    .line 48
    .line 49
    iget v2, p1, Landroid/graphics/RectF;->right:F

    .line 50
    .line 51
    sub-float/2addr p2, v2

    .line 52
    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iget-object v2, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 57
    .line 58
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 59
    .line 60
    iget-object v3, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 61
    .line 62
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 63
    .line 64
    sub-float/2addr v2, v3

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {p1, p2, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 79
    .line 80
    .line 81
    const/16 p1, -0xa

    .line 82
    .line 83
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public k(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/view/HighlightView;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public l(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/view/HighlightView;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public m(Lcom/join/android/app/common/view/HighlightView$ModifyMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/view/HighlightView;->d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->a:Landroid/view/View;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public n(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "imageRect",
            "cropRect",
            "circle",
            "maintainAspectRatio"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p4, :cond_0

    .line 3
    .line 4
    const/4 p5, 0x1

    .line 5
    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/join/android/app/common/view/HighlightView;->h:Landroid/graphics/Matrix;

    .line 11
    .line 12
    iput-object p3, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 13
    .line 14
    new-instance p1, Landroid/graphics/RectF;

    .line 15
    .line 16
    invoke-direct {p1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->f:Landroid/graphics/RectF;

    .line 20
    .line 21
    iput-boolean p5, p0, Lcom/join/android/app/common/view/HighlightView;->i:Z

    .line 22
    .line 23
    iput-boolean p4, p0, Lcom/join/android/app/common/view/HighlightView;->k:Z

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object p2, p0, Lcom/join/android/app/common/view/HighlightView;->g:Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    div-float/2addr p1, p2

    .line 38
    iput p1, p0, Lcom/join/android/app/common/view/HighlightView;->j:F

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->a()Landroid/graphics/Rect;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->e:Landroid/graphics/Rect;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->n:Landroid/graphics/Paint;

    .line 47
    .line 48
    const/16 p2, 0x7d

    .line 49
    .line 50
    const/16 p3, 0x32

    .line 51
    .line 52
    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->o:Landroid/graphics/Paint;

    .line 56
    .line 57
    invoke-virtual {p1, p2, p3, p3, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    .line 61
    .line 62
    const/high16 p2, 0x40400000    # 3.0f

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    .line 68
    .line 69
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->p:Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Lcom/join/android/app/common/view/HighlightView$ModifyMode;->None:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/join/android/app/common/view/HighlightView;->d:Lcom/join/android/app/common/view/HighlightView$ModifyMode;

    .line 82
    .line 83
    invoke-direct {p0}, Lcom/join/android/app/common/view/HighlightView;->h()V

    .line 84
    .line 85
    .line 86
    return-void
.end method
