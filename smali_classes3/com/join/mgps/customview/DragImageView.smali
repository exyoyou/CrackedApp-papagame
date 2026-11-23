.class public Lcom/join/mgps/customview/DragImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/join/mgps/customview/DragImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/join/mgps/customview/DragImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/join/mgps/customview/DragImageView;->g:I

    const/high16 p2, 0x41200000    # 10.0f

    .line 5
    invoke-static {p1, p2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/join/mgps/customview/DragImageView;->g:I

    return-void
.end method

.method private a()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/customview/DragImageView;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->g:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v1, v2

    .line 27
    iget v2, p0, Lcom/join/mgps/customview/DragImageView;->g:I

    .line 28
    .line 29
    sub-int/2addr v1, v2

    .line 30
    int-to-float v1, v1

    .line 31
    cmpl-float v0, v0, v1

    .line 32
    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    :cond_0
    const/4 v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    float-to-int v1, v1

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    and-int/lit16 v2, v2, 0xff

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v2, :cond_a

    .line 20
    .line 21
    const/4 v5, 0x2

    .line 22
    if-eq v2, v4, :cond_8

    .line 23
    .line 24
    if-eq v2, v5, :cond_0

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "ACTION_MOVE:"

    .line 34
    .line 35
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v5, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 39
    .line 40
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v2, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    .line 44
    .line 45
    if-lez v2, :cond_7

    .line 46
    .line 47
    iget v2, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 48
    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    goto/16 :goto_2

    .line 52
    .line 53
    :cond_1
    iput-boolean v4, p0, Lcom/join/mgps/customview/DragImageView;->f:Z

    .line 54
    .line 55
    iget v2, p0, Lcom/join/mgps/customview/DragImageView;->d:I

    .line 56
    .line 57
    sub-int v2, v0, v2

    .line 58
    .line 59
    iget v5, p0, Lcom/join/mgps/customview/DragImageView;->e:I

    .line 60
    .line 61
    sub-int v5, v1, v5

    .line 62
    .line 63
    mul-int v6, v2, v2

    .line 64
    .line 65
    mul-int v7, v5, v5

    .line 66
    .line 67
    add-int/2addr v6, v7

    .line 68
    int-to-double v6, v6

    .line 69
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    double-to-int v6, v6

    .line 74
    const/16 v7, 0xa

    .line 75
    .line 76
    if-gt v6, v7, :cond_2

    .line 77
    .line 78
    iput-boolean v3, p0, Lcom/join/mgps/customview/DragImageView;->f:Z

    .line 79
    .line 80
    goto/16 :goto_3

    .line 81
    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    int-to-float v2, v2

    .line 87
    add-float/2addr v6, v2

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    int-to-float v5, v5

    .line 93
    add-float/2addr v2, v5

    .line 94
    const/4 v5, 0x0

    .line 95
    cmpg-float v7, v6, v5

    .line 96
    .line 97
    if-gez v7, :cond_3

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    iget v7, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    sub-int/2addr v7, v8

    .line 108
    int-to-float v7, v7

    .line 109
    cmpl-float v7, v6, v7

    .line 110
    .line 111
    if-lez v7, :cond_4

    .line 112
    .line 113
    iget v6, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v7

    .line 119
    sub-int/2addr v6, v7

    .line 120
    int-to-float v6, v6

    .line 121
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    cmpg-float v7, v7, v5

    .line 126
    .line 127
    if-gez v7, :cond_5

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    goto :goto_1

    .line 131
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    int-to-float v7, v7

    .line 140
    add-float/2addr v5, v7

    .line 141
    iget v7, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    .line 142
    .line 143
    int-to-float v8, v7

    .line 144
    cmpl-float v5, v5, v8

    .line 145
    .line 146
    if-lez v5, :cond_6

    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    sub-int/2addr v7, v2

    .line 153
    int-to-float v2, v7

    .line 154
    :cond_6
    :goto_1
    invoke-virtual {p0, v6}, Landroid/view/View;->setX(F)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v2}, Landroid/view/View;->setY(F)V

    .line 158
    .line 159
    .line 160
    iput v0, p0, Lcom/join/mgps/customview/DragImageView;->d:I

    .line 161
    .line 162
    iput v1, p0, Lcom/join/mgps/customview/DragImageView;->e:I

    .line 163
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v1, "isDrag="

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    iget-boolean v1, p0, Lcom/join/mgps/customview/DragImageView;->f:Z

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v1, "getX="

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, ";getY="

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v1, ";parentWidth="

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 209
    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    goto/16 :goto_3

    .line 214
    .line 215
    :cond_7
    :goto_2
    iput-boolean v3, p0, Lcom/join/mgps/customview/DragImageView;->f:Z

    .line 216
    .line 217
    goto/16 :goto_3

    .line 218
    .line 219
    :cond_8
    invoke-direct {p0}, Lcom/join/mgps/customview/DragImageView;->a()Z

    .line 220
    .line 221
    .line 222
    move-result v1

    .line 223
    if-nez v1, :cond_c

    .line 224
    .line 225
    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 226
    .line 227
    div-int/2addr v1, v5

    .line 228
    const-wide/16 v6, 0x1f4

    .line 229
    .line 230
    if-lt v0, v1, :cond_9

    .line 231
    .line 232
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 237
    .line 238
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 250
    .line 251
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    sub-int/2addr v1, v2

    .line 256
    int-to-float v1, v1

    .line 257
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    sub-float/2addr v1, v2

    .line 262
    iget v2, p0, Lcom/join/mgps/customview/DragImageView;->g:I

    .line 263
    .line 264
    int-to-float v2, v2

    .line 265
    sub-float/2addr v1, v2

    .line 266
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_9
    new-array v0, v5, [F

    .line 275
    .line 276
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    aput v1, v0, v3

    .line 281
    .line 282
    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->g:I

    .line 283
    .line 284
    int-to-float v1, v1

    .line 285
    aput v1, v0, v4

    .line 286
    .line 287
    const-string v1, "x"

    .line 288
    .line 289
    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 294
    .line 295
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 305
    .line 306
    .line 307
    goto :goto_3

    .line 308
    :cond_a
    iput-boolean v3, p0, Lcom/join/mgps/customview/DragImageView;->f:Z

    .line 309
    .line 310
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 315
    .line 316
    .line 317
    iput v0, p0, Lcom/join/mgps/customview/DragImageView;->d:I

    .line 318
    .line 319
    iput v1, p0, Lcom/join/mgps/customview/DragImageView;->e:I

    .line 320
    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    if-eqz v0, :cond_b

    .line 326
    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, Landroid/view/ViewGroup;

    .line 332
    .line 333
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    iput v1, p0, Lcom/join/mgps/customview/DragImageView;->b:I

    .line 338
    .line 339
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    iput v0, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 344
    .line 345
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    const-string v1, "ACTION_DOWN:"

    .line 351
    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    iget v1, p0, Lcom/join/mgps/customview/DragImageView;->c:I

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    :cond_c
    :goto_3
    invoke-direct {p0}, Lcom/join/mgps/customview/DragImageView;->a()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_d

    .line 365
    .line 366
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    if-eqz p1, :cond_e

    .line 371
    .line 372
    :cond_d
    const/4 v3, 0x1

    .line 373
    :cond_e
    return v3
.end method
