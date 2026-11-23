.class public Lcom/byazt/atv/n$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/zm$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0x1fa
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/atv/n;->ve(Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Lcom/byazt/sz/rh$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:F

.field public c:F

.field public final synthetic da:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic i:Lcom/byazt/sz/rh$tt;

.field public n:F

.field public final synthetic sl:[F

.field public sp:J

.field public final synthetic t:Lcom/byazt/atv/n;

.field public tt:F

.field public uj:F

.field public ve:F

.field public final synthetic x:Lcom/byazt/sz/m;


# direct methods
.method public constructor <init>(Lcom/byazt/atv/n;Lcom/byazt/sz/m;Lcom/byazt/sz/rh$tt;Ljava/util/concurrent/atomic/AtomicBoolean;[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/atv/n$4;->t:Lcom/byazt/atv/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/atv/n$4;->x:Lcom/byazt/sz/m;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/atv/n$4;->i:Lcom/byazt/sz/rh$tt;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/atv/n$4;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/atv/n$4;->sl:[F

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/byazt/atv/n$4;->c:F

    .line 16
    .line 17
    iput p1, p0, Lcom/byazt/atv/n$4;->tt:F

    .line 18
    .line 19
    iput p1, p0, Lcom/byazt/atv/n$4;->ve:F

    .line 20
    .line 21
    iput p1, p0, Lcom/byazt/atv/n$4;->uj:F

    .line 22
    .line 23
    iput p1, p0, Lcom/byazt/atv/n$4;->n:F

    .line 24
    .line 25
    iput p1, p0, Lcom/byazt/atv/n$4;->a:F

    .line 26
    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, Lcom/byazt/atv/n$4;->sp:J

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public c(FFF)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v4

    .line 13
    iget-wide v6, v0, Lcom/byazt/atv/n$4;->sp:J

    .line 14
    .line 15
    sub-long v6, v4, v6

    .line 16
    .line 17
    const-wide/16 v8, 0x64

    .line 18
    .line 19
    cmp-long v10, v6, v8

    .line 20
    .line 21
    if-gez v10, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iput-wide v4, v0, Lcom/byazt/atv/n$4;->sp:J

    .line 25
    .line 26
    iget-object v4, v0, Lcom/byazt/atv/n$4;->x:Lcom/byazt/sz/m;

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v4}, Lcom/byazt/sz/m;->ve()Lorg/json/JSONObject;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    const-string v5, "rotateZ"

    .line 39
    .line 40
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 41
    .line 42
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    cmpl-double v10, v4, v6

    .line 47
    .line 48
    if-nez v10, :cond_3

    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    iget-object v6, v0, Lcom/byazt/atv/n$4;->i:Lcom/byazt/sz/rh$tt;

    .line 52
    .line 53
    instance-of v7, v6, Lcom/byazt/xj/ve;

    .line 54
    .line 55
    if-nez v7, :cond_4

    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    check-cast v6, Lcom/byazt/xj/ve;

    .line 59
    .line 60
    invoke-virtual {v6}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    if-nez v6, :cond_5

    .line 65
    .line 66
    return-void

    .line 67
    :cond_5
    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-nez v7, :cond_6

    .line 72
    .line 73
    return-void

    .line 74
    :cond_6
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    .line 83
    .line 84
    .line 85
    move-result v11

    .line 86
    iget-object v12, v0, Lcom/byazt/atv/n$4;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    const/4 v13, 0x0

    .line 89
    const/4 v14, 0x0

    .line 90
    if-eqz v12, :cond_8

    .line 91
    .line 92
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    if-eqz v12, :cond_8

    .line 97
    .line 98
    cmpl-float v4, v1, v13

    .line 99
    .line 100
    if-eqz v4, :cond_7

    .line 101
    .line 102
    cmpl-float v4, v2, v13

    .line 103
    .line 104
    if-eqz v4, :cond_7

    .line 105
    .line 106
    cmpl-float v4, v3, v13

    .line 107
    .line 108
    if-eqz v4, :cond_7

    .line 109
    .line 110
    iget-object v4, v0, Lcom/byazt/atv/n$4;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    .line 112
    invoke-virtual {v4, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    .line 114
    .line 115
    :cond_7
    iput v7, v0, Lcom/byazt/atv/n$4;->c:F

    .line 116
    .line 117
    iput v10, v0, Lcom/byazt/atv/n$4;->tt:F

    .line 118
    .line 119
    iput v11, v0, Lcom/byazt/atv/n$4;->ve:F

    .line 120
    .line 121
    iput v1, v0, Lcom/byazt/atv/n$4;->uj:F

    .line 122
    .line 123
    iput v2, v0, Lcom/byazt/atv/n$4;->n:F

    .line 124
    .line 125
    iput v3, v0, Lcom/byazt/atv/n$4;->a:F

    .line 126
    .line 127
    return-void

    .line 128
    :cond_8
    iget v12, v0, Lcom/byazt/atv/n$4;->c:F

    .line 129
    .line 130
    sub-float v12, v7, v12

    .line 131
    .line 132
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    iget v15, v0, Lcom/byazt/atv/n$4;->tt:F

    .line 137
    .line 138
    sub-float v15, v10, v15

    .line 139
    .line 140
    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    .line 141
    .line 142
    .line 143
    move-result v15

    .line 144
    iget v13, v0, Lcom/byazt/atv/n$4;->ve:F

    .line 145
    .line 146
    sub-float v13, v11, v13

    .line 147
    .line 148
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    .line 149
    .line 150
    .line 151
    move-result v13

    .line 152
    invoke-static {v15, v13}, Ljava/lang/Math;->max(FF)F

    .line 153
    .line 154
    .line 155
    move-result v13

    .line 156
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    .line 157
    .line 158
    .line 159
    move-result v12

    .line 160
    iget-object v13, v0, Lcom/byazt/atv/n$4;->t:Lcom/byazt/atv/n;

    .line 161
    .line 162
    iget-object v13, v13, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 163
    .line 164
    invoke-virtual {v13}, Lcom/byazt/ete/ic;->br()I

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    if-gtz v13, :cond_9

    .line 169
    .line 170
    const/16 v13, 0x32

    .line 171
    .line 172
    :cond_9
    iget v15, v0, Lcom/byazt/atv/n$4;->c:F

    .line 173
    .line 174
    sub-float/2addr v7, v15

    .line 175
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    const/4 v15, 0x1

    .line 180
    cmpl-float v7, v7, v12

    .line 181
    .line 182
    if-nez v7, :cond_b

    .line 183
    .line 184
    iget v7, v0, Lcom/byazt/atv/n$4;->uj:F

    .line 185
    .line 186
    cmpl-float v1, v1, v7

    .line 187
    .line 188
    if-ltz v1, :cond_a

    .line 189
    .line 190
    move v1, v12

    .line 191
    goto :goto_0

    .line 192
    :cond_a
    neg-float v1, v12

    .line 193
    :goto_0
    move/from16 v16, v1

    .line 194
    .line 195
    const/4 v1, 0x1

    .line 196
    goto :goto_1

    .line 197
    :cond_b
    const/4 v1, 0x0

    .line 198
    const/16 v16, 0x0

    .line 199
    .line 200
    :goto_1
    iget v7, v0, Lcom/byazt/atv/n$4;->tt:F

    .line 201
    .line 202
    sub-float/2addr v10, v7

    .line 203
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    cmpl-float v7, v7, v12

    .line 208
    .line 209
    if-nez v7, :cond_d

    .line 210
    .line 211
    iget v1, v0, Lcom/byazt/atv/n$4;->n:F

    .line 212
    .line 213
    cmpl-float v1, v2, v1

    .line 214
    .line 215
    if-ltz v1, :cond_c

    .line 216
    .line 217
    move/from16 v16, v12

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_c
    neg-float v1, v12

    .line 221
    move/from16 v16, v1

    .line 222
    .line 223
    :goto_2
    const/4 v1, 0x1

    .line 224
    :cond_d
    iget v2, v0, Lcom/byazt/atv/n$4;->ve:F

    .line 225
    .line 226
    sub-float/2addr v11, v2

    .line 227
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    cmpl-float v2, v2, v12

    .line 232
    .line 233
    if-nez v2, :cond_f

    .line 234
    .line 235
    iget v2, v0, Lcom/byazt/atv/n$4;->a:F

    .line 236
    .line 237
    cmpl-float v2, v3, v2

    .line 238
    .line 239
    if-ltz v2, :cond_e

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_e
    neg-float v12, v12

    .line 243
    goto :goto_3

    .line 244
    :cond_f
    move/from16 v12, v16

    .line 245
    .line 246
    :goto_3
    iget-object v2, v0, Lcom/byazt/atv/n$4;->t:Lcom/byazt/atv/n;

    .line 247
    .line 248
    iget-object v2, v2, Lcom/byazt/atv/n;->a:Lcom/byazt/ete/ic;

    .line 249
    .line 250
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->pe()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_10

    .line 255
    .line 256
    const/high16 v1, 0x43340000    # 180.0f

    .line 257
    .line 258
    mul-float v12, v12, v1

    .line 259
    .line 260
    float-to-double v1, v12

    .line 261
    div-double/2addr v1, v4

    .line 262
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 263
    .line 264
    .line 265
    move-result-wide v1

    .line 266
    double-to-float v1, v1

    .line 267
    goto :goto_4

    .line 268
    :cond_10
    float-to-double v2, v12

    .line 269
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    .line 270
    .line 271
    .line 272
    move-result-wide v2

    .line 273
    div-double v4, v2, v4

    .line 274
    .line 275
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 276
    .line 277
    .line 278
    move-result-wide v4

    .line 279
    double-to-float v4, v4

    .line 280
    if-eqz v1, :cond_11

    .line 281
    .line 282
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    .line 283
    .line 284
    .line 285
    move-result-wide v2

    .line 286
    add-int/lit8 v13, v13, -0x8

    .line 287
    .line 288
    int-to-double v10, v13

    .line 289
    cmpg-double v5, v2, v10

    .line 290
    .line 291
    if-gez v5, :cond_11

    .line 292
    .line 293
    return-void

    .line 294
    :cond_11
    if-eqz v1, :cond_12

    .line 295
    .line 296
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    neg-float v1, v1

    .line 301
    goto :goto_4

    .line 302
    :cond_12
    move v1, v4

    .line 303
    :goto_4
    iget-object v2, v0, Lcom/byazt/atv/n$4;->sl:[F

    .line 304
    .line 305
    aget v2, v2, v14

    .line 306
    .line 307
    sub-float v2, v1, v2

    .line 308
    .line 309
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    float-to-double v2, v2

    .line 314
    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    cmpg-double v7, v2, v4

    .line 320
    .line 321
    if-gez v7, :cond_13

    .line 322
    .line 323
    return-void

    .line 324
    :cond_13
    const/4 v2, 0x2

    .line 325
    new-array v2, v2, [F

    .line 326
    .line 327
    iget-object v3, v0, Lcom/byazt/atv/n$4;->sl:[F

    .line 328
    .line 329
    aget v3, v3, v14

    .line 330
    .line 331
    aput v3, v2, v14

    .line 332
    .line 333
    aput v1, v2, v15

    .line 334
    .line 335
    const-string v3, "rotation"

    .line 336
    .line 337
    invoke-static {v6, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    .line 342
    .line 343
    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 353
    .line 354
    .line 355
    iget-object v2, v0, Lcom/byazt/atv/n$4;->sl:[F

    .line 356
    .line 357
    aput v1, v2, v14

    .line 358
    .line 359
    return-void
.end method
