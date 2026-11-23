.class public Lcom/alibaba/fastjson/util/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[C

.field public static final b:[Z

.field public static final c:[Z

.field public static final d:[B

.field public static final e:[B

.field public static final f:[C

.field public static final g:[C

.field static final h:[C

.field static final i:[C

.field static final j:[C

.field static final k:[I

.field public static l:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/alibaba/fastjson/util/f;->a:[C

    .line 9
    .line 10
    const/16 v0, 0x100

    .line 11
    .line 12
    new-array v1, v0, [Z

    .line 13
    .line 14
    sput-object v1, Lcom/alibaba/fastjson/util/f;->b:[Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson/util/f;->b:[Z

    .line 19
    .line 20
    array-length v4, v3

    .line 21
    const/16 v5, 0x5f

    .line 22
    .line 23
    const/16 v6, 0x5a

    .line 24
    .line 25
    const/16 v7, 0x61

    .line 26
    .line 27
    const/16 v8, 0x41

    .line 28
    .line 29
    const/4 v9, 0x1

    .line 30
    if-ge v2, v4, :cond_3

    .line 31
    .line 32
    if-lt v2, v8, :cond_0

    .line 33
    .line 34
    if-gt v2, v6, :cond_0

    .line 35
    .line 36
    aput-boolean v9, v3, v2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    if-lt v2, v7, :cond_1

    .line 40
    .line 41
    const/16 v4, 0x7a

    .line 42
    .line 43
    if-gt v2, v4, :cond_1

    .line 44
    .line 45
    aput-boolean v9, v3, v2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    if-ne v2, v5, :cond_2

    .line 49
    .line 50
    aput-boolean v9, v3, v2

    .line 51
    .line 52
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    int-to-char v2, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    new-array v2, v0, [Z

    .line 57
    .line 58
    sput-object v2, Lcom/alibaba/fastjson/util/f;->c:[Z

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    :goto_2
    sget-object v3, Lcom/alibaba/fastjson/util/f;->c:[Z

    .line 62
    .line 63
    array-length v4, v3

    .line 64
    if-ge v2, v4, :cond_8

    .line 65
    .line 66
    if-lt v2, v8, :cond_4

    .line 67
    .line 68
    if-gt v2, v6, :cond_4

    .line 69
    .line 70
    aput-boolean v9, v3, v2

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_4
    if-lt v2, v7, :cond_5

    .line 74
    .line 75
    const/16 v4, 0x7a

    .line 76
    .line 77
    if-gt v2, v4, :cond_5

    .line 78
    .line 79
    aput-boolean v9, v3, v2

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_5
    if-ne v2, v5, :cond_6

    .line 83
    .line 84
    aput-boolean v9, v3, v2

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    const/16 v4, 0x30

    .line 88
    .line 89
    if-lt v2, v4, :cond_7

    .line 90
    .line 91
    const/16 v4, 0x39

    .line 92
    .line 93
    if-gt v2, v4, :cond_7

    .line 94
    .line 95
    aput-boolean v9, v3, v2

    .line 96
    .line 97
    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 98
    .line 99
    int-to-char v2, v2

    .line 100
    goto :goto_2

    .line 101
    :cond_8
    new-array v2, v0, [B

    .line 102
    .line 103
    sput-object v2, Lcom/alibaba/fastjson/util/f;->d:[B

    .line 104
    .line 105
    new-array v3, v0, [B

    .line 106
    .line 107
    sput-object v3, Lcom/alibaba/fastjson/util/f;->e:[B

    .line 108
    .line 109
    const/16 v4, 0x80

    .line 110
    .line 111
    new-array v4, v4, [C

    .line 112
    .line 113
    sput-object v4, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 114
    .line 115
    const/4 v4, 0x4

    .line 116
    aput-byte v4, v2, v1

    .line 117
    .line 118
    aput-byte v4, v2, v9

    .line 119
    .line 120
    const/4 v5, 0x2

    .line 121
    aput-byte v4, v2, v5

    .line 122
    .line 123
    const/4 v6, 0x3

    .line 124
    aput-byte v4, v2, v6

    .line 125
    .line 126
    aput-byte v4, v2, v4

    .line 127
    .line 128
    const/4 v7, 0x5

    .line 129
    aput-byte v4, v2, v7

    .line 130
    .line 131
    const/4 v8, 0x6

    .line 132
    aput-byte v4, v2, v8

    .line 133
    .line 134
    const/4 v10, 0x7

    .line 135
    aput-byte v4, v2, v10

    .line 136
    .line 137
    const/16 v11, 0x8

    .line 138
    .line 139
    aput-byte v9, v2, v11

    .line 140
    .line 141
    const/16 v12, 0x9

    .line 142
    .line 143
    aput-byte v9, v2, v12

    .line 144
    .line 145
    const/16 v13, 0xa

    .line 146
    .line 147
    aput-byte v9, v2, v13

    .line 148
    .line 149
    const/16 v14, 0xb

    .line 150
    .line 151
    aput-byte v4, v2, v14

    .line 152
    .line 153
    const/16 v15, 0xc

    .line 154
    .line 155
    aput-byte v9, v2, v15

    .line 156
    .line 157
    const/16 v16, 0xd

    .line 158
    .line 159
    aput-byte v9, v2, v16

    .line 160
    .line 161
    const/16 v17, 0x22

    .line 162
    .line 163
    aput-byte v9, v2, v17

    .line 164
    .line 165
    const/16 v18, 0x5c

    .line 166
    .line 167
    aput-byte v9, v2, v18

    .line 168
    .line 169
    aput-byte v4, v3, v1

    .line 170
    .line 171
    aput-byte v4, v3, v9

    .line 172
    .line 173
    aput-byte v4, v3, v5

    .line 174
    .line 175
    aput-byte v4, v3, v6

    .line 176
    .line 177
    aput-byte v4, v3, v4

    .line 178
    .line 179
    aput-byte v4, v3, v7

    .line 180
    .line 181
    aput-byte v4, v3, v8

    .line 182
    .line 183
    aput-byte v4, v3, v10

    .line 184
    .line 185
    aput-byte v9, v3, v11

    .line 186
    .line 187
    aput-byte v9, v3, v12

    .line 188
    .line 189
    aput-byte v9, v3, v13

    .line 190
    .line 191
    aput-byte v4, v3, v14

    .line 192
    .line 193
    aput-byte v9, v3, v15

    .line 194
    .line 195
    aput-byte v9, v3, v16

    .line 196
    .line 197
    aput-byte v9, v3, v18

    .line 198
    .line 199
    const/16 v2, 0x27

    .line 200
    .line 201
    aput-byte v9, v3, v2

    .line 202
    .line 203
    const/16 v3, 0xe

    .line 204
    .line 205
    :goto_4
    const/16 v0, 0x1f

    .line 206
    .line 207
    if-gt v3, v0, :cond_9

    .line 208
    .line 209
    sget-object v0, Lcom/alibaba/fastjson/util/f;->d:[B

    .line 210
    .line 211
    aput-byte v4, v0, v3

    .line 212
    .line 213
    sget-object v0, Lcom/alibaba/fastjson/util/f;->e:[B

    .line 214
    .line 215
    aput-byte v4, v0, v3

    .line 216
    .line 217
    add-int/lit8 v3, v3, 0x1

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_9
    const/16 v0, 0x7f

    .line 221
    .line 222
    :goto_5
    const/16 v3, 0xa0

    .line 223
    .line 224
    if-gt v0, v3, :cond_a

    .line 225
    .line 226
    sget-object v3, Lcom/alibaba/fastjson/util/f;->d:[B

    .line 227
    .line 228
    aput-byte v4, v3, v0

    .line 229
    .line 230
    sget-object v3, Lcom/alibaba/fastjson/util/f;->e:[B

    .line 231
    .line 232
    aput-byte v4, v3, v0

    .line 233
    .line 234
    add-int/lit8 v0, v0, 0x1

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_a
    sget-object v0, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 238
    .line 239
    const/16 v3, 0x30

    .line 240
    .line 241
    aput-char v3, v0, v1

    .line 242
    .line 243
    const/16 v1, 0x31

    .line 244
    .line 245
    aput-char v1, v0, v9

    .line 246
    .line 247
    const/16 v1, 0x32

    .line 248
    .line 249
    aput-char v1, v0, v5

    .line 250
    .line 251
    const/16 v1, 0x33

    .line 252
    .line 253
    aput-char v1, v0, v6

    .line 254
    .line 255
    const/16 v1, 0x34

    .line 256
    .line 257
    aput-char v1, v0, v4

    .line 258
    .line 259
    const/16 v1, 0x35

    .line 260
    .line 261
    aput-char v1, v0, v7

    .line 262
    .line 263
    const/16 v1, 0x36

    .line 264
    .line 265
    aput-char v1, v0, v8

    .line 266
    .line 267
    const/16 v1, 0x37

    .line 268
    .line 269
    aput-char v1, v0, v10

    .line 270
    .line 271
    const/16 v1, 0x62

    .line 272
    .line 273
    aput-char v1, v0, v11

    .line 274
    .line 275
    const/16 v1, 0x74

    .line 276
    .line 277
    aput-char v1, v0, v12

    .line 278
    .line 279
    const/16 v1, 0x6e

    .line 280
    .line 281
    aput-char v1, v0, v13

    .line 282
    .line 283
    const/16 v1, 0x76

    .line 284
    .line 285
    aput-char v1, v0, v14

    .line 286
    .line 287
    const/16 v1, 0x66

    .line 288
    .line 289
    aput-char v1, v0, v15

    .line 290
    .line 291
    const/16 v1, 0x72

    .line 292
    .line 293
    aput-char v1, v0, v16

    .line 294
    .line 295
    aput-char v17, v0, v17

    .line 296
    .line 297
    aput-char v2, v0, v2

    .line 298
    .line 299
    const/16 v1, 0x2f

    .line 300
    .line 301
    const/16 v2, 0x2f

    .line 302
    .line 303
    aput-char v2, v0, v1

    .line 304
    .line 305
    aput-char v18, v0, v18

    .line 306
    .line 307
    const/16 v0, 0x60

    .line 308
    .line 309
    new-array v0, v0, [C

    .line 310
    .line 311
    fill-array-data v0, :array_1

    .line 312
    .line 313
    .line 314
    sput-object v0, Lcom/alibaba/fastjson/util/f;->g:[C

    .line 315
    .line 316
    const/16 v0, 0x24

    .line 317
    .line 318
    new-array v0, v0, [C

    .line 319
    .line 320
    fill-array-data v0, :array_2

    .line 321
    .line 322
    .line 323
    sput-object v0, Lcom/alibaba/fastjson/util/f;->h:[C

    .line 324
    .line 325
    const/16 v0, 0x64

    .line 326
    .line 327
    new-array v0, v0, [C

    .line 328
    .line 329
    fill-array-data v0, :array_3

    .line 330
    .line 331
    .line 332
    sput-object v0, Lcom/alibaba/fastjson/util/f;->i:[C

    .line 333
    .line 334
    const/16 v0, 0x64

    .line 335
    .line 336
    new-array v0, v0, [C

    .line 337
    .line 338
    fill-array-data v0, :array_4

    .line 339
    .line 340
    .line 341
    sput-object v0, Lcom/alibaba/fastjson/util/f;->j:[C

    .line 342
    .line 343
    new-array v0, v13, [I

    .line 344
    .line 345
    fill-array-data v0, :array_5

    .line 346
    .line 347
    .line 348
    sput-object v0, Lcom/alibaba/fastjson/util/f;->k:[I

    .line 349
    .line 350
    const/16 v0, 0x100

    .line 351
    .line 352
    new-array v0, v0, [Z

    .line 353
    .line 354
    sput-object v0, Lcom/alibaba/fastjson/util/f;->l:[Z

    .line 355
    .line 356
    const/16 v1, 0x20

    .line 357
    .line 358
    aput-boolean v9, v0, v1

    .line 359
    .line 360
    aput-boolean v9, v0, v13

    .line 361
    .line 362
    aput-boolean v9, v0, v16

    .line 363
    .line 364
    aput-boolean v9, v0, v12

    .line 365
    .line 366
    aput-boolean v9, v0, v15

    .line 367
    .line 368
    aput-boolean v9, v0, v11

    .line 369
    .line 370
    return-void

    .line 371
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_3
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_4
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static b(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public static c(C)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/f;->b:[Z

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p0, v1, :cond_0

    .line 5
    .line 6
    aget-boolean p0, v0, p0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public static d(BI[C)V
    .locals 4

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    neg-int p0, p0

    .line 4
    const/16 v0, 0x2d

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const v1, 0xcccd

    .line 9
    .line 10
    .line 11
    mul-int v1, v1, p0

    .line 12
    .line 13
    ushr-int/lit8 v1, v1, 0x13

    .line 14
    .line 15
    shl-int/lit8 v2, v1, 0x3

    .line 16
    .line 17
    shl-int/lit8 v3, v1, 0x1

    .line 18
    .line 19
    add-int/2addr v2, v3

    .line 20
    sub-int/2addr p0, v2

    .line 21
    add-int/lit8 p1, p1, -0x1

    .line 22
    .line 23
    sget-object v2, Lcom/alibaba/fastjson/util/f;->h:[C

    .line 24
    .line 25
    aget-char p0, v2, p0

    .line 26
    .line 27
    aput-char p0, p2, p1

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    add-int/lit8 p1, p1, -0x1

    .line 34
    .line 35
    aput-char v0, p2, p1

    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :cond_2
    move p0, v1

    .line 39
    goto :goto_0
.end method

.method public static e(II[C)V
    .locals 4

    .line 1
    if-gez p0, :cond_0

    .line 2
    .line 3
    neg-int p0, p0

    .line 4
    const/16 v0, 0x2d

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    const/high16 v1, 0x10000

    .line 9
    .line 10
    if-lt p0, v1, :cond_1

    .line 11
    .line 12
    div-int/lit8 v1, p0, 0x64

    .line 13
    .line 14
    shl-int/lit8 v2, v1, 0x6

    .line 15
    .line 16
    shl-int/lit8 v3, v1, 0x5

    .line 17
    .line 18
    add-int/2addr v2, v3

    .line 19
    shl-int/lit8 v3, v1, 0x2

    .line 20
    .line 21
    add-int/2addr v2, v3

    .line 22
    sub-int/2addr p0, v2

    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    .line 25
    sget-object v2, Lcom/alibaba/fastjson/util/f;->j:[C

    .line 26
    .line 27
    aget-char v2, v2, p0

    .line 28
    .line 29
    aput-char v2, p2, p1

    .line 30
    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 32
    .line 33
    sget-object v2, Lcom/alibaba/fastjson/util/f;->i:[C

    .line 34
    .line 35
    aget-char p0, v2, p0

    .line 36
    .line 37
    aput-char p0, p2, p1

    .line 38
    .line 39
    move p0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    :goto_1
    const v1, 0xcccd

    .line 42
    .line 43
    .line 44
    mul-int v1, v1, p0

    .line 45
    .line 46
    ushr-int/lit8 v1, v1, 0x13

    .line 47
    .line 48
    shl-int/lit8 v2, v1, 0x3

    .line 49
    .line 50
    shl-int/lit8 v3, v1, 0x1

    .line 51
    .line 52
    add-int/2addr v2, v3

    .line 53
    sub-int/2addr p0, v2

    .line 54
    add-int/lit8 p1, p1, -0x1

    .line 55
    .line 56
    sget-object v2, Lcom/alibaba/fastjson/util/f;->h:[C

    .line 57
    .line 58
    aget-char p0, v2, p0

    .line 59
    .line 60
    aput-char p0, p2, p1

    .line 61
    .line 62
    if-nez v1, :cond_3

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    add-int/lit8 p1, p1, -0x1

    .line 67
    .line 68
    aput-char v0, p2, p1

    .line 69
    .line 70
    :cond_2
    return-void

    .line 71
    :cond_3
    move p0, v1

    .line 72
    goto :goto_1
.end method

.method public static f(JI[C)V
    .locals 7

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-gez v2, :cond_0

    .line 6
    .line 7
    neg-long p0, p0

    .line 8
    const/16 v0, 0x2d

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    const-wide/32 v1, 0x7fffffff

    .line 13
    .line 14
    .line 15
    cmp-long v3, p0, v1

    .line 16
    .line 17
    if-lez v3, :cond_1

    .line 18
    .line 19
    const-wide/16 v1, 0x64

    .line 20
    .line 21
    div-long v1, p0, v1

    .line 22
    .line 23
    const/4 v3, 0x6

    .line 24
    shl-long v3, v1, v3

    .line 25
    .line 26
    const/4 v5, 0x5

    .line 27
    shl-long v5, v1, v5

    .line 28
    .line 29
    add-long/2addr v3, v5

    .line 30
    const/4 v5, 0x2

    .line 31
    shl-long v5, v1, v5

    .line 32
    .line 33
    add-long/2addr v3, v5

    .line 34
    sub-long/2addr p0, v3

    .line 35
    long-to-int p1, p0

    .line 36
    add-int/lit8 p2, p2, -0x1

    .line 37
    .line 38
    sget-object p0, Lcom/alibaba/fastjson/util/f;->j:[C

    .line 39
    .line 40
    aget-char p0, p0, p1

    .line 41
    .line 42
    aput-char p0, p3, p2

    .line 43
    .line 44
    add-int/lit8 p2, p2, -0x1

    .line 45
    .line 46
    sget-object p0, Lcom/alibaba/fastjson/util/f;->i:[C

    .line 47
    .line 48
    aget-char p0, p0, p1

    .line 49
    .line 50
    aput-char p0, p3, p2

    .line 51
    .line 52
    move-wide p0, v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    long-to-int p1, p0

    .line 55
    :goto_1
    const/high16 p0, 0x10000

    .line 56
    .line 57
    if-lt p1, p0, :cond_2

    .line 58
    .line 59
    div-int/lit8 p0, p1, 0x64

    .line 60
    .line 61
    shl-int/lit8 v1, p0, 0x6

    .line 62
    .line 63
    shl-int/lit8 v2, p0, 0x5

    .line 64
    .line 65
    add-int/2addr v1, v2

    .line 66
    shl-int/lit8 v2, p0, 0x2

    .line 67
    .line 68
    add-int/2addr v1, v2

    .line 69
    sub-int/2addr p1, v1

    .line 70
    add-int/lit8 p2, p2, -0x1

    .line 71
    .line 72
    sget-object v1, Lcom/alibaba/fastjson/util/f;->j:[C

    .line 73
    .line 74
    aget-char v1, v1, p1

    .line 75
    .line 76
    aput-char v1, p3, p2

    .line 77
    .line 78
    add-int/lit8 p2, p2, -0x1

    .line 79
    .line 80
    sget-object v1, Lcom/alibaba/fastjson/util/f;->i:[C

    .line 81
    .line 82
    aget-char p1, v1, p1

    .line 83
    .line 84
    aput-char p1, p3, p2

    .line 85
    .line 86
    move p1, p0

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    :goto_2
    const p0, 0xcccd

    .line 89
    .line 90
    .line 91
    mul-int p0, p0, p1

    .line 92
    .line 93
    ushr-int/lit8 p0, p0, 0x13

    .line 94
    .line 95
    shl-int/lit8 v1, p0, 0x3

    .line 96
    .line 97
    shl-int/lit8 v2, p0, 0x1

    .line 98
    .line 99
    add-int/2addr v1, v2

    .line 100
    sub-int/2addr p1, v1

    .line 101
    add-int/lit8 p2, p2, -0x1

    .line 102
    .line 103
    sget-object v1, Lcom/alibaba/fastjson/util/f;->h:[C

    .line 104
    .line 105
    aget-char p1, v1, p1

    .line 106
    .line 107
    aput-char p1, p3, p2

    .line 108
    .line 109
    if-nez p0, :cond_4

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    add-int/lit8 p2, p2, -0x1

    .line 114
    .line 115
    aput-char v0, p3, p2

    .line 116
    .line 117
    :cond_3
    return-void

    .line 118
    :cond_4
    move p1, p0

    .line 119
    goto :goto_2
.end method

.method public static g(C)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/util/f;->c:[Z

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p0, v1, :cond_0

    .line 5
    .line 6
    aget-boolean p0, v0, p0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
.end method

.method public static h(I)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/f;->k:[I

    .line 3
    .line 4
    aget v1, v1, v0

    .line 5
    .line 6
    if-gt p0, v1, :cond_0

    .line 7
    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    goto :goto_0
.end method

.method public static i(J)I
    .locals 6

    .line 1
    const-wide/16 v0, 0xa

    const/4 v2, 0x1

    move-wide v3, v0

    :goto_0
    const/16 v5, 0x13

    if-ge v2, v5, :cond_1

    cmp-long v5, p0, v3

    if-gez v5, :cond_0

    return v2

    :cond_0
    mul-long v3, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method
