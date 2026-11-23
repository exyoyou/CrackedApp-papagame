.class Lcom/nineoldandroids/animation/g;
.super Lcom/nineoldandroids/animation/k;
.source "SourceFile"


# instance fields
.field private g:F

.field private h:F

.field private i:F

.field private j:Z


# direct methods
.method public varargs constructor <init>([Lcom/nineoldandroids/animation/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/k;-><init>([Lcom/nineoldandroids/animation/j;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/g;->j:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/nineoldandroids/animation/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/g;->h()Lcom/nineoldandroids/animation/g;

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
    invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/g;->i(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/g;->h()Lcom/nineoldandroids/animation/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h()Lcom/nineoldandroids/animation/g;
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
    new-array v2, v1, [Lcom/nineoldandroids/animation/j$a;

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
    check-cast v4, Lcom/nineoldandroids/animation/j$a;

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
    new-instance v0, Lcom/nineoldandroids/animation/g;

    .line 30
    .line 31
    invoke-direct {v0, v2}, Lcom/nineoldandroids/animation/g;-><init>([Lcom/nineoldandroids/animation/j$a;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public i(F)F
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
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/g;->j:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/g;->j:Z

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
    check-cast v0, Lcom/nineoldandroids/animation/j$a;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j$a;->q()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, p0, Lcom/nineoldandroids/animation/g;->g:F

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
    check-cast v0, Lcom/nineoldandroids/animation/j$a;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j$a;->q()F

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput v0, p0, Lcom/nineoldandroids/animation/g;->h:F

    .line 41
    .line 42
    iget v1, p0, Lcom/nineoldandroids/animation/g;->g:F

    .line 43
    .line 44
    sub-float/2addr v0, v1

    .line 45
    iput v0, p0, Lcom/nineoldandroids/animation/g;->i:F

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
    iget v0, p0, Lcom/nineoldandroids/animation/g;->g:F

    .line 60
    .line 61
    iget v1, p0, Lcom/nineoldandroids/animation/g;->i:F

    .line 62
    .line 63
    mul-float p1, p1, v1

    .line 64
    .line 65
    add-float/2addr v0, p1

    .line 66
    return v0

    .line 67
    :cond_2
    iget v1, p0, Lcom/nineoldandroids/animation/g;->g:F

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget v2, p0, Lcom/nineoldandroids/animation/g;->h:F

    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-interface {v0, p1, v1, v2}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    return p1

    .line 90
    :cond_3
    const/4 v4, 0x0

    .line 91
    cmpg-float v4, p1, v4

    .line 92
    .line 93
    if-gtz v4, :cond_6

    .line 94
    .line 95
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Lcom/nineoldandroids/animation/j$a;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Lcom/nineoldandroids/animation/j$a;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j$a;->q()F

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j$a;->q()F

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->b()F

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->d()Landroid/view/animation/Interpolator;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    :cond_4
    sub-float/2addr p1, v0

    .line 138
    sub-float/2addr v4, v0

    .line 139
    div-float/2addr p1, v4

    .line 140
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 141
    .line 142
    if-nez v0, :cond_5

    .line 143
    .line 144
    sub-float/2addr v3, v2

    .line 145
    mul-float p1, p1, v3

    .line 146
    .line 147
    add-float/2addr v2, p1

    .line 148
    goto :goto_0

    .line 149
    :cond_5
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-interface {v0, p1, v1, v2}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ljava/lang/Number;

    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_0
    return v2

    .line 168
    :cond_6
    const/high16 v4, 0x3f800000    # 1.0f

    .line 169
    .line 170
    cmpl-float v4, p1, v4

    .line 171
    .line 172
    if-ltz v4, :cond_9

    .line 173
    .line 174
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 175
    .line 176
    sub-int/2addr v0, v3

    .line 177
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    check-cast v0, Lcom/nineoldandroids/animation/j$a;

    .line 182
    .line 183
    iget-object v1, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 184
    .line 185
    iget v3, p0, Lcom/nineoldandroids/animation/k;->a:I

    .line 186
    .line 187
    sub-int/2addr v3, v2

    .line 188
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    check-cast v1, Lcom/nineoldandroids/animation/j$a;

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j$a;->q()F

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j$a;->q()F

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->b()F

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/j;->d()Landroid/view/animation/Interpolator;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    if-eqz v1, :cond_7

    .line 215
    .line 216
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    :cond_7
    sub-float/2addr p1, v0

    .line 221
    sub-float/2addr v4, v0

    .line 222
    div-float/2addr p1, v4

    .line 223
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 224
    .line 225
    if-nez v0, :cond_8

    .line 226
    .line 227
    sub-float/2addr v3, v2

    .line 228
    mul-float p1, p1, v3

    .line 229
    .line 230
    add-float/2addr v2, p1

    .line 231
    goto :goto_1

    .line 232
    :cond_8
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-interface {v0, p1, v1, v2}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Ljava/lang/Number;

    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    :goto_1
    return v2

    .line 251
    :cond_9
    iget-object v0, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, Lcom/nineoldandroids/animation/j$a;

    .line 258
    .line 259
    const/4 v1, 0x1

    .line 260
    :goto_2
    iget v3, p0, Lcom/nineoldandroids/animation/k;->a:I

    .line 261
    .line 262
    if-ge v1, v3, :cond_d

    .line 263
    .line 264
    iget-object v3, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 265
    .line 266
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    check-cast v3, Lcom/nineoldandroids/animation/j$a;

    .line 271
    .line 272
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/j;->b()F

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    cmpg-float v4, p1, v4

    .line 277
    .line 278
    if-gez v4, :cond_c

    .line 279
    .line 280
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/j;->d()Landroid/view/animation/Interpolator;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    if-eqz v1, :cond_a

    .line 285
    .line 286
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 287
    .line 288
    .line 289
    move-result p1

    .line 290
    :cond_a
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    sub-float/2addr p1, v1

    .line 295
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/j;->b()F

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    sub-float/2addr v1, v2

    .line 304
    div-float/2addr p1, v1

    .line 305
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/j$a;->q()F

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/j$a;->q()F

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    iget-object v2, p0, Lcom/nineoldandroids/animation/k;->f:Lcom/nineoldandroids/animation/p;

    .line 314
    .line 315
    if-nez v2, :cond_b

    .line 316
    .line 317
    sub-float/2addr v1, v0

    .line 318
    mul-float p1, p1, v1

    .line 319
    .line 320
    add-float/2addr v0, p1

    .line 321
    goto :goto_3

    .line 322
    :cond_b
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    invoke-interface {v2, p1, v0, v1}, Lcom/nineoldandroids/animation/p;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    check-cast p1, Ljava/lang/Number;

    .line 335
    .line 336
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    :goto_3
    return v0

    .line 341
    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 342
    .line 343
    move-object v0, v3

    .line 344
    goto :goto_2

    .line 345
    :cond_d
    iget-object p1, p0, Lcom/nineoldandroids/animation/k;->e:Ljava/util/ArrayList;

    .line 346
    .line 347
    sub-int/2addr v3, v2

    .line 348
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    check-cast p1, Lcom/nineoldandroids/animation/j;

    .line 353
    .line 354
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/j;->e()Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    check-cast p1, Ljava/lang/Number;

    .line 359
    .line 360
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 361
    .line 362
    .line 363
    move-result p1

    .line 364
    return p1
.end method
