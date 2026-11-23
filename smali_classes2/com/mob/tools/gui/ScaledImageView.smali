.class public Lcom/mob/tools/gui/ScaledImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;
    }
.end annotation


# static fields
.field private static final DRAG_1:I = 0x1

.field private static final DRAG_2:I = 0x2

.field private static final NONE:I = 0x0

.field private static final ZOOM:I = 0x3


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private distSquare:F

.field private downPoint:[F

.field private dragScrollMinDistSquare:I

.field private listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

.field private matrix:Landroid/graphics/Matrix;

.field private mode:I

.field private savedMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/ScaledImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    mul-int p1, p1, p1

    .line 10
    .line 11
    iput p1, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    .line 12
    .line 13
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getCropedBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-static {p0, v1, v2}, Lcom/mob/tools/utils/BitmapHelper;->captureView(Landroid/view/View;II)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v1, "ivPhoto.getDrawingCache() returns null"

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 27
    .line 28
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {v1, v2, v3, v4, p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    return-object p1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    if-eq v0, p1, :cond_7

    .line 11
    .line 12
    const/4 v3, 0x3

    .line 13
    if-eq v0, v1, :cond_4

    .line 14
    .line 15
    const/4 v4, 0x5

    .line 16
    if-eq v0, v4, :cond_3

    .line 17
    .line 18
    const/4 v4, 0x6

    .line 19
    if-eq v0, v4, :cond_2

    .line 20
    .line 21
    const/16 v4, 0x105

    .line 22
    .line 23
    if-eq v0, v4, :cond_1

    .line 24
    .line 25
    const/16 v3, 0x106

    .line 26
    .line 27
    if-eq v0, v3, :cond_0

    .line 28
    .line 29
    return v2

    .line 30
    :cond_0
    new-array v0, v1, [F

    .line 31
    .line 32
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    aput v1, v0, v2

    .line 37
    .line 38
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    aput p2, v0, p1

    .line 43
    .line 44
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 45
    .line 46
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 51
    .line 52
    .line 53
    iput p1, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_1
    new-array v0, v1, [F

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    aput v4, v0, v2

    .line 64
    .line 65
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    aput v4, v0, p1

    .line 70
    .line 71
    new-array v1, v1, [F

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    aput v4, v1, v2

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    aput p2, v1, p1

    .line 84
    .line 85
    aget v4, v0, v2

    .line 86
    .line 87
    aget v1, v1, v2

    .line 88
    .line 89
    sub-float/2addr v4, v1

    .line 90
    aget v0, v0, p1

    .line 91
    .line 92
    sub-float/2addr v0, p2

    .line 93
    mul-float v4, v4, v4

    .line 94
    .line 95
    mul-float v0, v0, v0

    .line 96
    .line 97
    add-float/2addr v4, v0

    .line 98
    iput v4, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    .line 99
    .line 100
    iput v3, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_2
    new-array v0, v1, [F

    .line 105
    .line 106
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    aput v3, v0, v2

    .line 111
    .line 112
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    aput p2, v0, p1

    .line 117
    .line 118
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 119
    .line 120
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 125
    .line 126
    .line 127
    iput v1, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_3
    new-array v0, v1, [F

    .line 132
    .line 133
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    aput v4, v0, v2

    .line 138
    .line 139
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    aput v4, v0, p1

    .line 144
    .line 145
    new-array v1, v1, [F

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    aput v4, v1, v2

    .line 152
    .line 153
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    aput p2, v1, p1

    .line 158
    .line 159
    aget v4, v0, v2

    .line 160
    .line 161
    aget v1, v1, v2

    .line 162
    .line 163
    sub-float/2addr v4, v1

    .line 164
    aget v0, v0, p1

    .line 165
    .line 166
    sub-float/2addr v0, p2

    .line 167
    mul-float v4, v4, v4

    .line 168
    .line 169
    mul-float v0, v0, v0

    .line 170
    .line 171
    add-float/2addr v4, v0

    .line 172
    iput v4, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    .line 173
    .line 174
    iput v3, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_4
    iget v0, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    .line 179
    .line 180
    if-ne v0, p1, :cond_5

    .line 181
    .line 182
    new-array v0, v1, [F

    .line 183
    .line 184
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    aput v1, v0, v2

    .line 189
    .line 190
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 191
    .line 192
    .line 193
    move-result p2

    .line 194
    aput p2, v0, p1

    .line 195
    .line 196
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 197
    .line 198
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 199
    .line 200
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 201
    .line 202
    .line 203
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 204
    .line 205
    aget v1, v0, v2

    .line 206
    .line 207
    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 208
    .line 209
    aget v2, v3, v2

    .line 210
    .line 211
    sub-float/2addr v1, v2

    .line 212
    aget v0, v0, p1

    .line 213
    .line 214
    aget v2, v3, p1

    .line 215
    .line 216
    sub-float/2addr v0, v2

    .line 217
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 218
    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_5
    if-ne v0, v1, :cond_6

    .line 223
    .line 224
    new-array v0, v1, [F

    .line 225
    .line 226
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    aput v1, v0, v2

    .line 231
    .line 232
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    aput p2, v0, p1

    .line 237
    .line 238
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 239
    .line 240
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 241
    .line 242
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 243
    .line 244
    .line 245
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 246
    .line 247
    aget v1, v0, v2

    .line 248
    .line 249
    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 250
    .line 251
    aget v2, v3, v2

    .line 252
    .line 253
    sub-float/2addr v1, v2

    .line 254
    aget v0, v0, p1

    .line 255
    .line 256
    aget v2, v3, p1

    .line 257
    .line 258
    sub-float/2addr v0, v2

    .line 259
    invoke-virtual {p2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 260
    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_6
    if-ne v0, v3, :cond_b

    .line 265
    .line 266
    new-array v0, v1, [F

    .line 267
    .line 268
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    aput v3, v0, v2

    .line 273
    .line 274
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    aput v3, v0, p1

    .line 279
    .line 280
    new-array v1, v1, [F

    .line 281
    .line 282
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    aput v3, v1, v2

    .line 287
    .line 288
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 289
    .line 290
    .line 291
    move-result p2

    .line 292
    aput p2, v1, p1

    .line 293
    .line 294
    aget v3, v0, v2

    .line 295
    .line 296
    aget v4, v1, v2

    .line 297
    .line 298
    sub-float/2addr v3, v4

    .line 299
    aget v4, v0, p1

    .line 300
    .line 301
    sub-float/2addr v4, p2

    .line 302
    mul-float v3, v3, v3

    .line 303
    .line 304
    mul-float v4, v4, v4

    .line 305
    .line 306
    add-float/2addr v3, v4

    .line 307
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 308
    .line 309
    iget-object v4, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 310
    .line 311
    invoke-virtual {p2, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 312
    .line 313
    .line 314
    iget p2, p0, Lcom/mob/tools/gui/ScaledImageView;->distSquare:F

    .line 315
    .line 316
    div-float/2addr v3, p2

    .line 317
    float-to-double v3, v3

    .line 318
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 319
    .line 320
    .line 321
    move-result-wide v3

    .line 322
    double-to-float p2, v3

    .line 323
    aget v3, v0, v2

    .line 324
    .line 325
    aget v2, v1, v2

    .line 326
    .line 327
    add-float/2addr v3, v2

    .line 328
    const/high16 v2, 0x40000000    # 2.0f

    .line 329
    .line 330
    div-float/2addr v3, v2

    .line 331
    aget v0, v0, p1

    .line 332
    .line 333
    aget v1, v1, p1

    .line 334
    .line 335
    add-float/2addr v0, v1

    .line 336
    div-float/2addr v0, v2

    .line 337
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 338
    .line 339
    invoke-virtual {v1, p2, p2, v3, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 340
    .line 341
    .line 342
    goto :goto_0

    .line 343
    :cond_7
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    .line 344
    .line 345
    if-eqz v0, :cond_8

    .line 346
    .line 347
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 348
    .line 349
    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 350
    .line 351
    .line 352
    :cond_8
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 357
    .line 358
    aget v1, v1, v2

    .line 359
    .line 360
    sub-float/2addr v0, v1

    .line 361
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 362
    .line 363
    .line 364
    move-result p2

    .line 365
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 366
    .line 367
    aget v1, v1, p1

    .line 368
    .line 369
    sub-float/2addr p2, v1

    .line 370
    iget v1, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    .line 371
    .line 372
    if-ne v1, p1, :cond_9

    .line 373
    .line 374
    mul-float v0, v0, v0

    .line 375
    .line 376
    mul-float p2, p2, p2

    .line 377
    .line 378
    add-float/2addr v0, p2

    .line 379
    iget p2, p0, Lcom/mob/tools/gui/ScaledImageView;->dragScrollMinDistSquare:I

    .line 380
    .line 381
    int-to-float p2, p2

    .line 382
    cmpg-float p2, v0, p2

    .line 383
    .line 384
    if-gtz p2, :cond_9

    .line 385
    .line 386
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 387
    .line 388
    .line 389
    :cond_9
    iput v2, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    .line 390
    .line 391
    goto :goto_0

    .line 392
    :cond_a
    new-instance v0, Landroid/graphics/Matrix;

    .line 393
    .line 394
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 395
    .line 396
    .line 397
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 398
    .line 399
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 400
    .line 401
    .line 402
    move-result-object v3

    .line 403
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 404
    .line 405
    .line 406
    new-instance v0, Landroid/graphics/Matrix;

    .line 407
    .line 408
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 409
    .line 410
    .line 411
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->savedMatrix:Landroid/graphics/Matrix;

    .line 412
    .line 413
    iget-object v3, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 414
    .line 415
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 416
    .line 417
    .line 418
    new-array v0, v1, [F

    .line 419
    .line 420
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    .line 421
    .line 422
    .line 423
    move-result v1

    .line 424
    aput v1, v0, v2

    .line 425
    .line 426
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 427
    .line 428
    .line 429
    move-result p2

    .line 430
    aput p2, v0, p1

    .line 431
    .line 432
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->downPoint:[F

    .line 433
    .line 434
    iput p1, p0, Lcom/mob/tools/gui/ScaledImageView;->mode:I

    .line 435
    .line 436
    :cond_b
    :goto_0
    iget-object p2, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 437
    .line 438
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    .line 440
    .line 441
    goto :goto_1

    .line 442
    :catchall_0
    move-exception p2

    .line 443
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {v0, p2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 448
    .line 449
    .line 450
    :goto_1
    return p1
.end method

.method public rotateLeft()V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 7
    .line 8
    const/16 v1, 0x9

    .line 9
    .line 10
    new-array v1, v1, [F

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    iget-object v7, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    .line 60
    .line 61
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    new-array v2, v0, [I

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const/4 v4, 0x0

    .line 86
    aput v3, v2, v4

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const/4 v5, 0x1

    .line 93
    aput v3, v2, v5

    .line 94
    .line 95
    new-array v3, v0, [F

    .line 96
    .line 97
    aget v6, v1, v4

    .line 98
    .line 99
    iget-object v7, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    int-to-float v7, v7

    .line 106
    mul-float v6, v6, v7

    .line 107
    .line 108
    aput v6, v3, v4

    .line 109
    .line 110
    const/4 v6, 0x4

    .line 111
    aget v6, v1, v6

    .line 112
    .line 113
    iget-object v7, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 114
    .line 115
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    int-to-float v7, v7

    .line 120
    mul-float v6, v6, v7

    .line 121
    .line 122
    aput v6, v3, v5

    .line 123
    .line 124
    aget v7, v2, v4

    .line 125
    .line 126
    int-to-float v7, v7

    .line 127
    aget v3, v3, v4

    .line 128
    .line 129
    sub-float/2addr v7, v3

    .line 130
    const/high16 v3, 0x40000000    # 2.0f

    .line 131
    .line 132
    div-float/2addr v7, v3

    .line 133
    aget v2, v2, v5

    .line 134
    .line 135
    int-to-float v2, v2

    .line 136
    sub-float/2addr v2, v6

    .line 137
    div-float/2addr v2, v3

    .line 138
    aput v7, v1, v0

    .line 139
    .line 140
    const/4 v0, 0x5

    .line 141
    aput v2, v1, v0

    .line 142
    .line 143
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    .line 149
    .line 150
    if-eqz v0, :cond_1

    .line 151
    .line 152
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 153
    .line 154
    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 155
    .line 156
    .line 157
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 169
    .line 170
    .line 171
    :goto_0
    return-void

    .line 172
    nop

    .line 173
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public rotateRight()V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 7
    .line 8
    const/16 v1, 0x9

    .line 9
    .line 10
    new-array v1, v1, [F

    .line 11
    .line 12
    fill-array-data v1, :array_0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    iget-object v7, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    iget-object v2, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Landroid/graphics/Matrix;

    .line 60
    .line 61
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    new-array v2, v0, [I

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const/4 v4, 0x0

    .line 86
    aput v3, v2, v4

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const/4 v5, 0x1

    .line 93
    aput v3, v2, v5

    .line 94
    .line 95
    new-array v3, v0, [F

    .line 96
    .line 97
    aget v6, v1, v4

    .line 98
    .line 99
    iget-object v7, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 100
    .line 101
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    int-to-float v7, v7

    .line 106
    mul-float v6, v6, v7

    .line 107
    .line 108
    aput v6, v3, v4

    .line 109
    .line 110
    const/4 v6, 0x4

    .line 111
    aget v6, v1, v6

    .line 112
    .line 113
    iget-object v7, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 114
    .line 115
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    int-to-float v7, v7

    .line 120
    mul-float v6, v6, v7

    .line 121
    .line 122
    aput v6, v3, v5

    .line 123
    .line 124
    aget v7, v2, v4

    .line 125
    .line 126
    int-to-float v7, v7

    .line 127
    aget v3, v3, v4

    .line 128
    .line 129
    sub-float/2addr v7, v3

    .line 130
    const/high16 v3, 0x40000000    # 2.0f

    .line 131
    .line 132
    div-float/2addr v7, v3

    .line 133
    aget v2, v2, v5

    .line 134
    .line 135
    int-to-float v2, v2

    .line 136
    sub-float/2addr v2, v6

    .line 137
    div-float/2addr v2, v3

    .line 138
    aput v7, v1, v0

    .line 139
    .line 140
    const/4 v0, 0x5

    .line 141
    aput v2, v1, v0

    .line 142
    .line 143
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    .line 149
    .line 150
    if-eqz v0, :cond_1

    .line 151
    .line 152
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 153
    .line 154
    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 155
    .line 156
    .line 157
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 169
    .line 170
    .line 171
    :goto_0
    return-void

    .line 172
    nop

    .line 173
    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    filled-new-array {p1, v0}, [I

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    filled-new-array {v0, v1}, [I

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0, p1}, Lcom/mob/tools/utils/BitmapHelper;->fixRect([I[I)[I

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    aget v3, p1, v2

    .line 40
    .line 41
    aget v4, v1, v2

    .line 42
    .line 43
    sub-int/2addr v3, v4

    .line 44
    const/4 v5, 0x2

    .line 45
    div-int/2addr v3, v5

    .line 46
    const/4 v6, 0x1

    .line 47
    aget p1, p1, v6

    .line 48
    .line 49
    aget v1, v1, v6

    .line 50
    .line 51
    sub-int/2addr p1, v1

    .line 52
    div-int/2addr p1, v5

    .line 53
    filled-new-array {v3, p1}, [I

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-array v3, v5, [F

    .line 58
    .line 59
    int-to-float v4, v4

    .line 60
    aget v5, v0, v2

    .line 61
    .line 62
    int-to-float v5, v5

    .line 63
    div-float/2addr v4, v5

    .line 64
    aput v4, v3, v2

    .line 65
    .line 66
    int-to-float v1, v1

    .line 67
    aget v0, v0, v6

    .line 68
    .line 69
    int-to-float v0, v0

    .line 70
    div-float/2addr v1, v0

    .line 71
    aput v1, v3, v6

    .line 72
    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    .line 74
    .line 75
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 88
    .line 89
    aget v1, v3, v2

    .line 90
    .line 91
    aget v3, v3, v6

    .line 92
    .line 93
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 97
    .line 98
    aget v1, p1, v2

    .line 99
    .line 100
    int-to-float v1, v1

    .line 101
    aget p1, p1, v6

    .line 102
    .line 103
    int-to-float p1, p1

    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    .line 108
    .line 109
    if-eqz p1, :cond_0

    .line 110
    .line 111
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 112
    .line 113
    invoke-interface {p1, v0}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 114
    .line 115
    .line 116
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method public setOnMatrixChangedListener(Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public zoomIn()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 16
    .line 17
    const v1, 0x3f89374c    # 1.072f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public zoomOut()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 16
    .line 17
    const v1, 0x3f6ed917    # 0.933f

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->listener:Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/mob/tools/gui/ScaledImageView$OnMatrixChangedListener;->onMactrixChage(Landroid/graphics/Matrix;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/gui/ScaledImageView;->matrix:Landroid/graphics/Matrix;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
