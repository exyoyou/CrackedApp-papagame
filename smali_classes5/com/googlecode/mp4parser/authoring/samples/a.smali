.class public Lcom/googlecode/mp4parser/authoring/samples/a;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/googlecode/mp4parser/authoring/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final k:J = 0x10000000L


# instance fields
.field b:Lcom/coremedia/iso/boxes/j;

.field c:Lcom/coremedia/iso/boxes/f1;

.field d:[[Ljava/nio/ByteBuffer;

.field e:[I

.field f:[J

.field g:[J

.field h:[[J

.field i:Lcom/coremedia/iso/boxes/t0;

.field j:I


# direct methods
.method public constructor <init>(JLcom/coremedia/iso/boxes/j;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->c:Lcom/coremedia/iso/boxes/f1;

    .line 12
    .line 13
    iput-object v4, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->d:[[Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    iput v4, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->j:I

    .line 17
    .line 18
    iput-object v3, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->b:Lcom/coremedia/iso/boxes/j;

    .line 19
    .line 20
    const-class v5, Lcom/coremedia/iso/boxes/h0;

    .line 21
    .line 22
    invoke-interface {v3, v5}, Lcom/coremedia/iso/boxes/j;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/coremedia/iso/boxes/h0;

    .line 31
    .line 32
    const-class v5, Lcom/coremedia/iso/boxes/f1;

    .line 33
    .line 34
    invoke-virtual {v3, v5}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-nez v5, :cond_a

    .line 47
    .line 48
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->c:Lcom/coremedia/iso/boxes/f1;

    .line 49
    .line 50
    if-eqz v3, :cond_9

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/f1;->y()Lcom/coremedia/iso/boxes/u0;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/u0;->v()Lcom/coremedia/iso/boxes/f;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/f;->v()[J

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->f:[J

    .line 65
    .line 66
    array-length v2, v1

    .line 67
    new-array v2, v2, [J

    .line 68
    .line 69
    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->g:[J

    .line 70
    .line 71
    array-length v2, v1

    .line 72
    new-array v2, v2, [[Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    iput-object v2, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->d:[[Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    array-length v1, v1

    .line 77
    new-array v1, v1, [[J

    .line 78
    .line 79
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->h:[[J

    .line 80
    .line 81
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->c:Lcom/coremedia/iso/boxes/f1;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/f1;->y()Lcom/coremedia/iso/boxes/u0;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/u0;->I()Lcom/coremedia/iso/boxes/t0;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->i:Lcom/coremedia/iso/boxes/t0;

    .line 92
    .line 93
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->c:Lcom/coremedia/iso/boxes/f1;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/f1;->y()Lcom/coremedia/iso/boxes/u0;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/u0;->J()Lcom/coremedia/iso/boxes/v0;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/v0;->w()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    new-array v2, v2, [Lcom/coremedia/iso/boxes/v0$a;

    .line 112
    .line 113
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    move-object v3, v1

    .line 118
    check-cast v3, [Lcom/coremedia/iso/boxes/v0$a;

    .line 119
    .line 120
    aget-object v1, v3, v4

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/v0$a;->a()J

    .line 123
    .line 124
    .line 125
    move-result-wide v5

    .line 126
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/v0$a;->c()J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/mp4parser/authoring/samples/a;->size()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    const/4 v8, 0x1

    .line 139
    const/4 v2, 0x0

    .line 140
    const/4 v9, 0x1

    .line 141
    const/4 v10, 0x0

    .line 142
    const/4 v11, 0x1

    .line 143
    :cond_1
    add-int/2addr v2, v8

    .line 144
    int-to-long v12, v2

    .line 145
    const/16 v16, -0x1

    .line 146
    .line 147
    cmp-long v17, v12, v5

    .line 148
    .line 149
    if-nez v17, :cond_3

    .line 150
    .line 151
    array-length v5, v3

    .line 152
    if-le v5, v9, :cond_2

    .line 153
    .line 154
    add-int/lit8 v5, v9, 0x1

    .line 155
    .line 156
    aget-object v6, v3, v9

    .line 157
    .line 158
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/v0$a;->c()J

    .line 159
    .line 160
    .line 161
    move-result-wide v9

    .line 162
    invoke-static {v9, v10}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/v0$a;->a()J

    .line 167
    .line 168
    .line 169
    move-result-wide v12

    .line 170
    move v10, v1

    .line 171
    move v1, v9

    .line 172
    move v9, v5

    .line 173
    move-wide v5, v12

    .line 174
    goto :goto_1

    .line 175
    :cond_2
    move v10, v1

    .line 176
    const/4 v1, -0x1

    .line 177
    const-wide v5, 0x7fffffffffffffffL

    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    :cond_3
    :goto_1
    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->h:[[J

    .line 183
    .line 184
    add-int/lit8 v13, v2, -0x1

    .line 185
    .line 186
    new-array v14, v10, [J

    .line 187
    .line 188
    aput-object v14, v12, v13

    .line 189
    .line 190
    add-int/2addr v11, v10

    .line 191
    if-le v11, v7, :cond_1

    .line 192
    .line 193
    add-int/2addr v2, v8

    .line 194
    new-array v1, v2, [I

    .line 195
    .line 196
    iput-object v1, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->e:[I

    .line 197
    .line 198
    aget-object v1, v3, v4

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/v0$a;->a()J

    .line 201
    .line 202
    .line 203
    move-result-wide v5

    .line 204
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/v0$a;->c()J

    .line 205
    .line 206
    .line 207
    move-result-wide v1

    .line 208
    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    const/4 v2, 0x0

    .line 213
    const/4 v9, 0x1

    .line 214
    const/4 v10, 0x1

    .line 215
    const/4 v11, 0x0

    .line 216
    :goto_2
    iget-object v12, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->e:[I

    .line 217
    .line 218
    add-int/lit8 v13, v2, 0x1

    .line 219
    .line 220
    aput v9, v12, v2

    .line 221
    .line 222
    int-to-long v14, v13

    .line 223
    cmp-long v2, v14, v5

    .line 224
    .line 225
    if-nez v2, :cond_5

    .line 226
    .line 227
    array-length v2, v3

    .line 228
    if-le v2, v10, :cond_4

    .line 229
    .line 230
    add-int/lit8 v2, v10, 0x1

    .line 231
    .line 232
    aget-object v5, v3, v10

    .line 233
    .line 234
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/v0$a;->c()J

    .line 235
    .line 236
    .line 237
    move-result-wide v10

    .line 238
    invoke-static {v10, v11}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/v0$a;->a()J

    .line 243
    .line 244
    .line 245
    move-result-wide v10

    .line 246
    move-wide/from16 v18, v10

    .line 247
    .line 248
    move v11, v1

    .line 249
    move v10, v2

    .line 250
    move v1, v6

    .line 251
    move-wide/from16 v5, v18

    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_4
    move v11, v1

    .line 255
    const/4 v1, -0x1

    .line 256
    const-wide v5, 0x7fffffffffffffffL

    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    :cond_5
    :goto_3
    add-int/2addr v9, v11

    .line 262
    if-le v9, v7, :cond_8

    .line 263
    .line 264
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->e:[I

    .line 265
    .line 266
    const v2, 0x7fffffff

    .line 267
    .line 268
    .line 269
    aput v2, v1, v13

    .line 270
    .line 271
    const-wide/16 v1, 0x0

    .line 272
    .line 273
    move-wide v5, v1

    .line 274
    const/4 v12, 0x1

    .line 275
    :goto_4
    int-to-long v7, v12

    .line 276
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->i:Lcom/coremedia/iso/boxes/t0;

    .line 277
    .line 278
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/t0;->v()J

    .line 279
    .line 280
    .line 281
    move-result-wide v9

    .line 282
    cmp-long v3, v7, v9

    .line 283
    .line 284
    if-lez v3, :cond_6

    .line 285
    .line 286
    return-void

    .line 287
    :cond_6
    :goto_5
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->e:[I

    .line 288
    .line 289
    aget v3, v3, v4

    .line 290
    .line 291
    if-eq v12, v3, :cond_7

    .line 292
    .line 293
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->g:[J

    .line 294
    .line 295
    add-int/lit8 v7, v4, -0x1

    .line 296
    .line 297
    aget-wide v8, v3, v7

    .line 298
    .line 299
    iget-object v10, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->i:Lcom/coremedia/iso/boxes/t0;

    .line 300
    .line 301
    add-int/lit8 v11, v12, -0x1

    .line 302
    .line 303
    invoke-virtual {v10, v11}, Lcom/coremedia/iso/boxes/t0;->x(I)J

    .line 304
    .line 305
    .line 306
    move-result-wide v13

    .line 307
    add-long/2addr v8, v13

    .line 308
    aput-wide v8, v3, v7

    .line 309
    .line 310
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->h:[[J

    .line 311
    .line 312
    aget-object v3, v3, v7

    .line 313
    .line 314
    iget-object v8, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->e:[I

    .line 315
    .line 316
    aget v7, v8, v7

    .line 317
    .line 318
    sub-int v7, v12, v7

    .line 319
    .line 320
    aput-wide v5, v3, v7

    .line 321
    .line 322
    iget-object v3, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->i:Lcom/coremedia/iso/boxes/t0;

    .line 323
    .line 324
    invoke-virtual {v3, v11}, Lcom/coremedia/iso/boxes/t0;->x(I)J

    .line 325
    .line 326
    .line 327
    move-result-wide v7

    .line 328
    add-long/2addr v5, v7

    .line 329
    add-int/lit8 v12, v12, 0x1

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 333
    .line 334
    move-wide v5, v1

    .line 335
    goto :goto_5

    .line 336
    :cond_8
    move v2, v13

    .line 337
    goto :goto_2

    .line 338
    :cond_9
    new-instance v3, Ljava/lang/RuntimeException;

    .line 339
    .line 340
    new-instance v4, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    const-string v5, "This MP4 does not contain track "

    .line 343
    .line 344
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    throw v3

    .line 358
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v5

    .line 362
    check-cast v5, Lcom/coremedia/iso/boxes/f1;

    .line 363
    .line 364
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/f1;->z()Lcom/coremedia/iso/boxes/g1;

    .line 365
    .line 366
    .line 367
    move-result-object v6

    .line 368
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/g1;->C()J

    .line 369
    .line 370
    .line 371
    move-result-wide v6

    .line 372
    cmp-long v8, v6, v1

    .line 373
    .line 374
    if-nez v8, :cond_0

    .line 375
    .line 376
    iput-object v5, v0, Lcom/googlecode/mp4parser/authoring/samples/a;->c:Lcom/coremedia/iso/boxes/f1;

    .line 377
    .line 378
    goto/16 :goto_0
.end method


# virtual methods
.method public a(I)Lcom/googlecode/mp4parser/authoring/f;
    .locals 21

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    int-to-long v1, v0

    .line 6
    iget-object v3, v8, Lcom/googlecode/mp4parser/authoring/samples/a;->i:Lcom/coremedia/iso/boxes/t0;

    .line 7
    .line 8
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/t0;->v()J

    .line 9
    .line 10
    .line 11
    move-result-wide v3

    .line 12
    cmp-long v5, v1, v3

    .line 13
    .line 14
    if-gez v5, :cond_5

    .line 15
    .line 16
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/samples/a;->b(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v2, v8, Lcom/googlecode/mp4parser/authoring/samples/a;->e:[I

    .line 21
    .line 22
    aget v2, v2, v1

    .line 23
    .line 24
    add-int/lit8 v2, v2, -0x1

    .line 25
    .line 26
    iget-object v3, v8, Lcom/googlecode/mp4parser/authoring/samples/a;->f:[J

    .line 27
    .line 28
    int-to-long v4, v1

    .line 29
    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    aget-wide v6, v3, v1

    .line 34
    .line 35
    sub-int v1, v0, v2

    .line 36
    .line 37
    iget-object v3, v8, Lcom/googlecode/mp4parser/authoring/samples/a;->h:[[J

    .line 38
    .line 39
    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    aget-object v3, v3, v9

    .line 44
    .line 45
    aget-wide v9, v3, v1

    .line 46
    .line 47
    iget-object v1, v8, Lcom/googlecode/mp4parser/authoring/samples/a;->d:[[Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    aget-object v1, v1, v11

    .line 54
    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    const-wide/16 v12, 0x0

    .line 63
    .line 64
    const/4 v14, 0x0

    .line 65
    :goto_0
    :try_start_0
    array-length v15, v3

    .line 66
    if-lt v14, v15, :cond_0

    .line 67
    .line 68
    iget-object v14, v8, Lcom/googlecode/mp4parser/authoring/samples/a;->b:Lcom/coremedia/iso/boxes/j;

    .line 69
    .line 70
    add-long/2addr v6, v12

    .line 71
    neg-long v12, v12

    .line 72
    array-length v15, v3

    .line 73
    add-int/lit8 v15, v15, -0x1

    .line 74
    .line 75
    aget-wide v15, v3, v15

    .line 76
    .line 77
    add-long/2addr v12, v15

    .line 78
    iget-object v15, v8, Lcom/googlecode/mp4parser/authoring/samples/a;->i:Lcom/coremedia/iso/boxes/t0;

    .line 79
    .line 80
    array-length v3, v3

    .line 81
    add-int/2addr v2, v3

    .line 82
    add-int/lit8 v2, v2, -0x1

    .line 83
    .line 84
    invoke-virtual {v15, v2}, Lcom/coremedia/iso/boxes/t0;->x(I)J

    .line 85
    .line 86
    .line 87
    move-result-wide v2

    .line 88
    add-long/2addr v12, v2

    .line 89
    invoke-interface {v14, v6, v7, v12, v13}, Lcom/coremedia/iso/boxes/j;->g(JJ)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    new-array v2, v2, [Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, [Ljava/nio/ByteBuffer;

    .line 107
    .line 108
    iget-object v2, v8, Lcom/googlecode/mp4parser/authoring/samples/a;->d:[[Ljava/nio/ByteBuffer;

    .line 109
    .line 110
    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    aput-object v1, v2, v3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_0
    aget-wide v15, v3, v14

    .line 118
    .line 119
    iget-object v11, v8, Lcom/googlecode/mp4parser/authoring/samples/a;->i:Lcom/coremedia/iso/boxes/t0;

    .line 120
    .line 121
    move-wide/from16 v17, v4

    .line 122
    .line 123
    add-int v4, v14, v2

    .line 124
    .line 125
    invoke-virtual {v11, v4}, Lcom/coremedia/iso/boxes/t0;->x(I)J

    .line 126
    .line 127
    .line 128
    move-result-wide v4

    .line 129
    add-long/2addr v15, v4

    .line 130
    sub-long/2addr v15, v12

    .line 131
    const-wide/32 v4, 0x10000000

    .line 132
    .line 133
    .line 134
    cmp-long v11, v15, v4

    .line 135
    .line 136
    if-lez v11, :cond_1

    .line 137
    .line 138
    iget-object v4, v8, Lcom/googlecode/mp4parser/authoring/samples/a;->b:Lcom/coremedia/iso/boxes/j;

    .line 139
    .line 140
    move-wide v15, v9

    .line 141
    add-long v9, v6, v12

    .line 142
    .line 143
    aget-wide v19, v3, v14

    .line 144
    .line 145
    sub-long v11, v19, v12

    .line 146
    .line 147
    invoke-interface {v4, v9, v10, v11, v12}, Lcom/coremedia/iso/boxes/j;->g(JJ)Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    aget-wide v4, v3, v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    move-wide v12, v4

    .line 157
    goto :goto_1

    .line 158
    :cond_1
    move-wide v15, v9

    .line 159
    :goto_1
    add-int/lit8 v14, v14, 0x1

    .line 160
    .line 161
    move-wide v9, v15

    .line 162
    move-wide/from16 v4, v17

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 167
    .line 168
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v1

    .line 176
    :cond_2
    :goto_2
    move-wide v15, v9

    .line 177
    array-length v2, v1

    .line 178
    move-wide v6, v15

    .line 179
    const/4 v11, 0x0

    .line 180
    :goto_3
    if-lt v11, v2, :cond_3

    .line 181
    .line 182
    const/4 v1, 0x0

    .line 183
    move-object v5, v1

    .line 184
    goto :goto_4

    .line 185
    :cond_3
    aget-object v3, v1, v11

    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    int-to-long v4, v4

    .line 192
    cmp-long v9, v6, v4

    .line 193
    .line 194
    if-gez v9, :cond_4

    .line 195
    .line 196
    move-object v5, v3

    .line 197
    :goto_4
    iget-object v1, v8, Lcom/googlecode/mp4parser/authoring/samples/a;->i:Lcom/coremedia/iso/boxes/t0;

    .line 198
    .line 199
    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/t0;->x(I)J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    new-instance v0, Lcom/googlecode/mp4parser/authoring/samples/a$a;

    .line 204
    .line 205
    move-object v1, v0

    .line 206
    move-object/from16 v2, p0

    .line 207
    .line 208
    invoke-direct/range {v1 .. v7}, Lcom/googlecode/mp4parser/authoring/samples/a$a;-><init>(Lcom/googlecode/mp4parser/authoring/samples/a;JLjava/nio/ByteBuffer;J)V

    .line 209
    .line 210
    .line 211
    return-object v0

    .line 212
    :cond_4
    invoke-virtual {v3}, Ljava/nio/Buffer;->limit()I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    int-to-long v3, v3

    .line 217
    sub-long/2addr v6, v3

    .line 218
    add-int/lit8 v11, v11, 0x1

    .line 219
    .line 220
    goto :goto_3

    .line 221
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 222
    .line 223
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 224
    .line 225
    .line 226
    throw v0
.end method

.method declared-synchronized b(I)I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    add-int/lit8 p1, p1, 0x1

    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/a;->e:[I

    .line 5
    .line 6
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/a;->j:I

    .line 7
    .line 8
    aget v2, v0, v1

    .line 9
    .line 10
    if-lt p1, v2, :cond_0

    .line 11
    .line 12
    add-int/lit8 v3, v1, 0x1

    .line 13
    .line 14
    aget v0, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-ge p1, v0, :cond_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return v1

    .line 20
    :cond_0
    if-ge p1, v2, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :try_start_1
    iput v0, p0, Lcom/googlecode/mp4parser/authoring/samples/a;->j:I

    .line 24
    .line 25
    :goto_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/a;->e:[I

    .line 26
    .line 27
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/a;->j:I

    .line 28
    .line 29
    add-int/lit8 v2, v1, 0x1

    .line 30
    .line 31
    aget v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    if-le v0, p1, :cond_1

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return v1

    .line 37
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    :try_start_2
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/a;->j:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/a;->j:I

    .line 45
    .line 46
    :goto_1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/a;->e:[I

    .line 47
    .line 48
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/a;->j:I

    .line 49
    .line 50
    add-int/lit8 v2, v1, 0x1

    .line 51
    .line 52
    aget v0, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .line 54
    if-le v0, p1, :cond_3

    .line 55
    .line 56
    monitor-exit p0

    .line 57
    return v1

    .line 58
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    :try_start_3
    iput v1, p0, Lcom/googlecode/mp4parser/authoring/samples/a;->j:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    monitor-exit p0

    .line 65
    throw p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/samples/a;->a(I)Lcom/googlecode/mp4parser/authoring/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public size()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/a;->c:Lcom/coremedia/iso/boxes/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/f1;->y()Lcom/coremedia/iso/boxes/u0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/u0;->I()Lcom/coremedia/iso/boxes/t0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/t0;->v()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method
