.class Lcom/nineoldandroids/animation/i;
.super Lcom/nineoldandroids/animation/k;
.source "SourceFile"


# instance fields
.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public varargs constructor <init>([Lcom/nineoldandroids/animation/j$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/k;-><init>([Lcom/nineoldandroids/animation/j;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/i;->j:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/nineoldandroids/animation/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/i;->h()Lcom/nineoldandroids/animation/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b(F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/i;->i(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/i;->h()Lcom/nineoldandroids/animation/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h()Lcom/nineoldandroids/animation/i;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-array v2, v1, [Lcom/nineoldandroids/animation/j$b;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lcom/nineoldandroids/animation/j;

    .line 17
    .line 18
    invoke-virtual {v4}, Lcom/nineoldandroids/animation/j;->a()Lcom/nineoldandroids/animation/j;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/nineoldandroids/animation/j$b;

    .line 23
    .line 24
    aput-object v4, v2, v3

    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lcom/nineoldandroids/animation/i;

    .line 30
    .line 31
    invoke-direct {v0, v2}, Lcom/nineoldandroids/animation/i;-><init>([Lcom/nineoldandroids/animation/j$b;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public i(F)I
    .locals 5

    .line 1
    iget v0, p0, Lcom/nineoldandroids/animation/k;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x2

    .line 6
    if-ne v0, v3, :cond_3

    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/i;->j:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/i;->j:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/nineoldandroids/animation/j$b;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j$b;->q()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/nineoldandroids/animation/i;->g:I

    .line 27
    .line 28
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/nineoldandroids/animation/j$b;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j$b;->q()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/nineoldandroids/animation/i;->h:I

    .line 41
    .line 42
    iget v1, p0, Lcom/nineoldandroids/animation/i;->g:I

    .line 43
    .line 44
    sub-int/2addr v0, v1

    .line 45
    iput v0, p0, Lcom/nineoldandroids/animation/i;->i:I

    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->d:Landroid/view/animation/Interpolator;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget v0, p0, Lcom/nineoldandroids/animation/i;->g:I

    .line 60
    .line 61
    iget v1, p0, Lcom/nineoldandroids/animation/i;->i:I

    .line 62
    .line 63
    int-to-float v1, v1

    .line 64
    mul-float p1, p1, v1

    .line 65
    .line 66
    float-to-int p1, p1

    .line 67
    add-int/2addr v0, p1

    .line 68
    return v0

    .line 69
    :cond_2
    iget v1, p0, Lcom/nineoldandroids/animation/i;->g:I

    .line 70
    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget v2, p0, Lcom/nineoldandroids/animation/i;->h:I

    .line 76
    .line 77
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-interface {v0, p1, v1, v2}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    return p1

    .line 92
    :cond_3
    const/4 v4, 0x0

    .line 93
    cmpg-float v4, p1, v4

    .line 94
    .line 95
    if-gtz v4, :cond_6

    .line 96
    .line 97
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Lcom/nineoldandroids/animation/j$b;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lcom/nineoldandroids/animation/j$b;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j$b;->q()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j$b;->q()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->b()F

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->d()Landroid/view/animation/Interpolator;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-eqz v1, :cond_4

    .line 134
    .line 135
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    :cond_4
    sub-float/2addr p1, v0

    .line 140
    sub-float/2addr v4, v0

    .line 141
    div-float/2addr p1, v4

    .line 142
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 143
    .line 144
    if-nez v0, :cond_5

    .line 145
    .line 146
    sub-int/2addr v3, v2

    .line 147
    int-to-float v0, v3

    .line 148
    mul-float p1, p1, v0

    .line 149
    .line 150
    float-to-int p1, p1

    .line 151
    add-int/2addr v2, p1

    .line 152
    goto :goto_0

    .line 153
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-interface {v0, p1, v1, v2}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Ljava/lang/Number;

    .line 166
    .line 167
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    :goto_0
    return v2

    .line 172
    :cond_6
    const/high16 v4, 0x3f800000    # 1.0f

    .line 173
    .line 174
    cmpl-float v4, p1, v4

    .line 175
    .line 176
    if-ltz v4, :cond_9

    .line 177
    .line 178
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 179
    .line 180
    sub-int/2addr v0, v3

    .line 181
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Lcom/nineoldandroids/animation/j$b;

    .line 186
    .line 187
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 188
    .line 189
    iget v3, p0, Lcom/nineoldandroids/animation/k;->a:I

    .line 190
    .line 191
    sub-int/2addr v3, v2

    .line 192
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Lcom/nineoldandroids/animation/j$b;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j$b;->q()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j$b;->q()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->b()F

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->d()Landroid/view/animation/Interpolator;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-eqz v1, :cond_7

    .line 219
    .line 220
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    :cond_7
    sub-float/2addr p1, v0

    .line 225
    sub-float/2addr v4, v0

    .line 226
    div-float/2addr p1, v4

    .line 227
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 228
    .line 229
    if-nez v0, :cond_8

    .line 230
    .line 231
    sub-int/2addr v3, v2

    .line 232
    int-to-float v0, v3

    .line 233
    mul-float p1, p1, v0

    .line 234
    .line 235
    float-to-int p1, p1

    .line 236
    add-int/2addr v2, p1

    .line 237
    goto :goto_1

    .line 238
    :cond_8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    invoke-interface {v0, p1, v1, v2}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    check-cast p1, Ljava/lang/Number;

    .line 251
    .line 252
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    :goto_1
    return v2

    .line 257
    :cond_9
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Lcom/nineoldandroids/animation/j$b;

    .line 264
    .line 265
    const/4 v1, 0x1

    .line 266
    :goto_2
    iget v3, p0, Lcom/nineoldandroids/animation/k;->a:I

    .line 267
    .line 268
    if-ge v1, v3, :cond_d

    .line 269
    .line 270
    iget-object v3, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    check-cast v3, Lcom/nineoldandroids/animation/j$b;

    .line 277
    .line 278
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/j;->b()F

    .line 279
    .line 280
    .line 281
    move-result v4

    .line 282
    cmpg-float v4, p1, v4

    .line 283
    .line 284
    if-gez v4, :cond_c

    .line 285
    .line 286
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/j;->d()Landroid/view/animation/Interpolator;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    if-eqz v1, :cond_a

    .line 291
    .line 292
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    :cond_a
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    sub-float/2addr p1, v1

    .line 301
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/j;->b()F

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    sub-float/2addr v1, v2

    .line 310
    div-float/2addr p1, v1

    .line 311
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j$b;->q()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/j$b;->q()I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    iget-object v2, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 320
    .line 321
    if-nez v2, :cond_b

    .line 322
    .line 323
    sub-int/2addr v1, v0

    .line 324
    int-to-float v1, v1

    .line 325
    mul-float p1, p1, v1

    .line 326
    .line 327
    float-to-int p1, p1

    .line 328
    add-int/2addr v0, p1

    .line 329
    goto :goto_3

    .line 330
    :cond_b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-interface {v2, p1, v0, v1}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    check-cast p1, Ljava/lang/Number;

    .line 343
    .line 344
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    :goto_3
    return v0

    .line 349
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 350
    .line 351
    move-object v0, v3

    .line 352
    goto :goto_2

    .line 353
    :cond_d
    iget-object p1, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 354
    .line 355
    sub-int/2addr v3, v2

    .line 356
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    check-cast p1, Lcom/nineoldandroids/animation/j;

    .line 361
    .line 362
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    check-cast p1, Ljava/lang/Number;

    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 369
    .line 370
    .line 371
    move-result p1

    .line 372
    return p1
.end method
