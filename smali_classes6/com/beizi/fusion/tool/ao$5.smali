.class Lcom/beizi/fusion/tool/ao$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/tool/ao;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/tool/ao;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/ao;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->A(Lcom/beizi/fusion/tool/ao;)Landroid/widget/FrameLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->x(Lcom/beizi/fusion/tool/ao;)Landroid/widget/ImageView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->A(Lcom/beizi/fusion/tool/ao;)Landroid/widget/FrameLayout;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->a(Lcom/beizi/fusion/tool/ao;I)I

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->A(Lcom/beizi/fusion/tool/ao;)Landroid/widget/FrameLayout;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->b(Lcom/beizi/fusion/tool/ao;I)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->x(Lcom/beizi/fusion/tool/ao;)Landroid/widget/ImageView;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->c(Lcom/beizi/fusion/tool/ao;I)I

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->x(Lcom/beizi/fusion/tool/ao;)Landroid/widget/ImageView;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->d(Lcom/beizi/fusion/tool/ao;I)I

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->B(Lcom/beizi/fusion/tool/ao;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    const/4 v2, 0x2

    .line 78
    div-int/2addr v1, v2

    .line 79
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->e(Lcom/beizi/fusion/tool/ao;I)I

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->C(Lcom/beizi/fusion/tool/ao;)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    div-int/2addr v1, v2

    .line 89
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->f(Lcom/beizi/fusion/tool/ao;I)I

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->y(Lcom/beizi/fusion/tool/ao;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->g(Lcom/beizi/fusion/tool/ao;I)I

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->D(Lcom/beizi/fusion/tool/ao;)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    iget-object v3, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 108
    .line 109
    invoke-static {v3}, Lcom/beizi/fusion/tool/ao;->y(Lcom/beizi/fusion/tool/ao;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    sub-int/2addr v1, v3

    .line 114
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->h(Lcom/beizi/fusion/tool/ao;I)I

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 118
    .line 119
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->z(Lcom/beizi/fusion/tool/ao;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->i(Lcom/beizi/fusion/tool/ao;I)I

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->E(Lcom/beizi/fusion/tool/ao;)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iget-object v3, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 133
    .line 134
    invoke-static {v3}, Lcom/beizi/fusion/tool/ao;->z(Lcom/beizi/fusion/tool/ao;)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    sub-int/2addr v1, v3

    .line 139
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->j(Lcom/beizi/fusion/tool/ao;I)I

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 143
    .line 144
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 145
    .line 146
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ao;->b(Lcom/beizi/fusion/tool/ao;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->F(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const/4 v1, 0x4

    .line 159
    new-array v1, v1, [Landroid/animation/Animator;

    .line 160
    .line 161
    iget-object v3, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 162
    .line 163
    invoke-static {v3}, Lcom/beizi/fusion/tool/ao;->t(Lcom/beizi/fusion/tool/ao;)I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    iget-object v5, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 168
    .line 169
    invoke-static {v5}, Lcom/beizi/fusion/tool/ao;->u(Lcom/beizi/fusion/tool/ao;)I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    iget-object v6, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 174
    .line 175
    invoke-static {v6}, Lcom/beizi/fusion/tool/ao;->t(Lcom/beizi/fusion/tool/ao;)I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    sub-int/2addr v5, v6

    .line 180
    div-int/2addr v5, v2

    .line 181
    add-int/2addr v4, v5

    .line 182
    int-to-float v4, v4

    .line 183
    iget-object v5, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 184
    .line 185
    invoke-static {v5}, Lcom/beizi/fusion/tool/ao;->v(Lcom/beizi/fusion/tool/ao;)I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    int-to-float v5, v5

    .line 190
    iget-object v6, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 191
    .line 192
    invoke-static {v6}, Lcom/beizi/fusion/tool/ao;->t(Lcom/beizi/fusion/tool/ao;)I

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    iget-object v7, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 197
    .line 198
    invoke-static {v7}, Lcom/beizi/fusion/tool/ao;->u(Lcom/beizi/fusion/tool/ao;)I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    iget-object v8, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 203
    .line 204
    invoke-static {v8}, Lcom/beizi/fusion/tool/ao;->t(Lcom/beizi/fusion/tool/ao;)I

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    sub-int/2addr v7, v8

    .line 209
    div-int/2addr v7, v2

    .line 210
    add-int/2addr v6, v7

    .line 211
    int-to-float v6, v6

    .line 212
    iget-object v7, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 213
    .line 214
    invoke-static {v7}, Lcom/beizi/fusion/tool/ao;->w(Lcom/beizi/fusion/tool/ao;)I

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    int-to-float v7, v7

    .line 219
    invoke-static {v3, v4, v5, v6, v7}, Lcom/beizi/fusion/tool/ao;->a(Lcom/beizi/fusion/tool/ao;FFFF)Landroid/animation/ValueAnimator;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    const/4 v4, 0x0

    .line 224
    aput-object v3, v1, v4

    .line 225
    .line 226
    iget-object v3, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 227
    .line 228
    invoke-static {v3}, Lcom/beizi/fusion/tool/ao;->t(Lcom/beizi/fusion/tool/ao;)I

    .line 229
    .line 230
    .line 231
    move-result v4

    .line 232
    int-to-float v4, v4

    .line 233
    iget-object v5, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 234
    .line 235
    invoke-static {v5}, Lcom/beizi/fusion/tool/ao;->v(Lcom/beizi/fusion/tool/ao;)I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    iget-object v6, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 240
    .line 241
    invoke-static {v6}, Lcom/beizi/fusion/tool/ao;->w(Lcom/beizi/fusion/tool/ao;)I

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    iget-object v7, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 246
    .line 247
    invoke-static {v7}, Lcom/beizi/fusion/tool/ao;->v(Lcom/beizi/fusion/tool/ao;)I

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    sub-int/2addr v6, v7

    .line 252
    div-int/2addr v6, v2

    .line 253
    add-int/2addr v5, v6

    .line 254
    int-to-float v5, v5

    .line 255
    iget-object v6, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 256
    .line 257
    invoke-static {v6}, Lcom/beizi/fusion/tool/ao;->u(Lcom/beizi/fusion/tool/ao;)I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    int-to-float v6, v6

    .line 262
    iget-object v7, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 263
    .line 264
    invoke-static {v7}, Lcom/beizi/fusion/tool/ao;->v(Lcom/beizi/fusion/tool/ao;)I

    .line 265
    .line 266
    .line 267
    move-result v7

    .line 268
    iget-object v8, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 269
    .line 270
    invoke-static {v8}, Lcom/beizi/fusion/tool/ao;->w(Lcom/beizi/fusion/tool/ao;)I

    .line 271
    .line 272
    .line 273
    move-result v8

    .line 274
    iget-object v9, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 275
    .line 276
    invoke-static {v9}, Lcom/beizi/fusion/tool/ao;->v(Lcom/beizi/fusion/tool/ao;)I

    .line 277
    .line 278
    .line 279
    move-result v9

    .line 280
    sub-int/2addr v8, v9

    .line 281
    div-int/2addr v8, v2

    .line 282
    add-int/2addr v7, v8

    .line 283
    int-to-float v7, v7

    .line 284
    invoke-static {v3, v4, v5, v6, v7}, Lcom/beizi/fusion/tool/ao;->a(Lcom/beizi/fusion/tool/ao;FFFF)Landroid/animation/ValueAnimator;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    const/4 v4, 0x1

    .line 289
    aput-object v3, v1, v4

    .line 290
    .line 291
    iget-object v3, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 292
    .line 293
    invoke-static {v3}, Lcom/beizi/fusion/tool/ao;->t(Lcom/beizi/fusion/tool/ao;)I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    int-to-float v4, v4

    .line 298
    iget-object v5, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 299
    .line 300
    invoke-static {v5}, Lcom/beizi/fusion/tool/ao;->v(Lcom/beizi/fusion/tool/ao;)I

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    int-to-float v5, v5

    .line 305
    iget-object v6, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 306
    .line 307
    invoke-static {v6}, Lcom/beizi/fusion/tool/ao;->u(Lcom/beizi/fusion/tool/ao;)I

    .line 308
    .line 309
    .line 310
    move-result v6

    .line 311
    int-to-float v6, v6

    .line 312
    iget-object v7, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 313
    .line 314
    invoke-static {v7}, Lcom/beizi/fusion/tool/ao;->w(Lcom/beizi/fusion/tool/ao;)I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    int-to-float v7, v7

    .line 319
    invoke-static {v3, v4, v5, v6, v7}, Lcom/beizi/fusion/tool/ao;->a(Lcom/beizi/fusion/tool/ao;FFFF)Landroid/animation/ValueAnimator;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    aput-object v3, v1, v2

    .line 324
    .line 325
    iget-object v2, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 326
    .line 327
    invoke-static {v2}, Lcom/beizi/fusion/tool/ao;->u(Lcom/beizi/fusion/tool/ao;)I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    int-to-float v3, v3

    .line 332
    iget-object v4, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 333
    .line 334
    invoke-static {v4}, Lcom/beizi/fusion/tool/ao;->v(Lcom/beizi/fusion/tool/ao;)I

    .line 335
    .line 336
    .line 337
    move-result v4

    .line 338
    int-to-float v4, v4

    .line 339
    iget-object v5, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 340
    .line 341
    invoke-static {v5}, Lcom/beizi/fusion/tool/ao;->t(Lcom/beizi/fusion/tool/ao;)I

    .line 342
    .line 343
    .line 344
    move-result v5

    .line 345
    int-to-float v5, v5

    .line 346
    iget-object v6, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 347
    .line 348
    invoke-static {v6}, Lcom/beizi/fusion/tool/ao;->w(Lcom/beizi/fusion/tool/ao;)I

    .line 349
    .line 350
    .line 351
    move-result v6

    .line 352
    int-to-float v6, v6

    .line 353
    invoke-static {v2, v3, v4, v5, v6}, Lcom/beizi/fusion/tool/ao;->a(Lcom/beizi/fusion/tool/ao;FFFF)Landroid/animation/ValueAnimator;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    const/4 v3, 0x3

    .line 358
    aput-object v2, v1, v3

    .line 359
    .line 360
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 361
    .line 362
    .line 363
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 364
    .line 365
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->F(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    const-wide/16 v1, 0x3e8

    .line 370
    .line 371
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 372
    .line 373
    .line 374
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 375
    .line 376
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->F(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 381
    .line 382
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 386
    .line 387
    .line 388
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 389
    .line 390
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->F(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    new-instance v1, Lcom/beizi/fusion/tool/ao$5$1;

    .line 395
    .line 396
    invoke-direct {v1, p0}, Lcom/beizi/fusion/tool/ao$5$1;-><init>(Lcom/beizi/fusion/tool/ao$5;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    .line 401
    .line 402
    iget-object v0, p0, Lcom/beizi/fusion/tool/ao$5;->a:Lcom/beizi/fusion/tool/ao;

    .line 403
    .line 404
    invoke-static {v0}, Lcom/beizi/fusion/tool/ao;->F(Lcom/beizi/fusion/tool/ao;)Landroid/animation/AnimatorSet;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .line 410
    .line 411
    goto :goto_1

    .line 412
    :cond_1
    :goto_0
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 415
    .line 416
    .line 417
    :goto_1
    return-void
.end method
