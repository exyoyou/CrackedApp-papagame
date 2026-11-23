.class public Lcom/join/mgps/ptr/header/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/mgps/ptr/header/d;->a:Landroid/util/SparseArray;

    .line 7
    .line 8
    const/16 v0, 0x1a

    .line 9
    .line 10
    new-array v1, v0, [[F

    .line 11
    .line 12
    const/16 v2, 0x14

    .line 13
    .line 14
    new-array v3, v2, [F

    .line 15
    .line 16
    fill-array-data v3, :array_0

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    aput-object v3, v1, v4

    .line 21
    .line 22
    const/16 v3, 0x28

    .line 23
    .line 24
    new-array v3, v3, [F

    .line 25
    .line 26
    fill-array-data v3, :array_1

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    aput-object v3, v1, v5

    .line 31
    .line 32
    const/16 v3, 0xc

    .line 33
    .line 34
    new-array v6, v3, [F

    .line 35
    .line 36
    fill-array-data v6, :array_2

    .line 37
    .line 38
    .line 39
    const/4 v7, 0x2

    .line 40
    aput-object v6, v1, v7

    .line 41
    .line 42
    const/16 v6, 0x18

    .line 43
    .line 44
    new-array v8, v6, [F

    .line 45
    .line 46
    fill-array-data v8, :array_3

    .line 47
    .line 48
    .line 49
    const/4 v9, 0x3

    .line 50
    aput-object v8, v1, v9

    .line 51
    .line 52
    const/16 v8, 0x10

    .line 53
    .line 54
    new-array v10, v8, [F

    .line 55
    .line 56
    fill-array-data v10, :array_4

    .line 57
    .line 58
    .line 59
    const/4 v11, 0x4

    .line 60
    aput-object v10, v1, v11

    .line 61
    .line 62
    new-array v10, v3, [F

    .line 63
    .line 64
    fill-array-data v10, :array_5

    .line 65
    .line 66
    .line 67
    const/4 v12, 0x5

    .line 68
    aput-object v10, v1, v12

    .line 69
    .line 70
    new-array v10, v6, [F

    .line 71
    .line 72
    fill-array-data v10, :array_6

    .line 73
    .line 74
    .line 75
    const/4 v13, 0x6

    .line 76
    aput-object v10, v1, v13

    .line 77
    .line 78
    new-array v10, v3, [F

    .line 79
    .line 80
    fill-array-data v10, :array_7

    .line 81
    .line 82
    .line 83
    const/4 v14, 0x7

    .line 84
    aput-object v10, v1, v14

    .line 85
    .line 86
    new-array v10, v3, [F

    .line 87
    .line 88
    fill-array-data v10, :array_8

    .line 89
    .line 90
    .line 91
    const/16 v15, 0x8

    .line 92
    .line 93
    aput-object v10, v1, v15

    .line 94
    .line 95
    new-array v10, v3, [F

    .line 96
    .line 97
    fill-array-data v10, :array_9

    .line 98
    .line 99
    .line 100
    const/16 v16, 0x9

    .line 101
    .line 102
    aput-object v10, v1, v16

    .line 103
    .line 104
    new-array v10, v3, [F

    .line 105
    .line 106
    fill-array-data v10, :array_a

    .line 107
    .line 108
    .line 109
    const/16 v0, 0xa

    .line 110
    .line 111
    aput-object v10, v1, v0

    .line 112
    .line 113
    new-array v10, v15, [F

    .line 114
    .line 115
    fill-array-data v10, :array_b

    .line 116
    .line 117
    .line 118
    const/16 v17, 0xb

    .line 119
    .line 120
    aput-object v10, v1, v17

    .line 121
    .line 122
    new-array v10, v8, [F

    .line 123
    .line 124
    fill-array-data v10, :array_c

    .line 125
    .line 126
    .line 127
    aput-object v10, v1, v3

    .line 128
    .line 129
    new-array v10, v3, [F

    .line 130
    .line 131
    fill-array-data v10, :array_d

    .line 132
    .line 133
    .line 134
    const/16 v17, 0xd

    .line 135
    .line 136
    aput-object v10, v1, v17

    .line 137
    .line 138
    new-array v10, v8, [F

    .line 139
    .line 140
    fill-array-data v10, :array_e

    .line 141
    .line 142
    .line 143
    const/16 v17, 0xe

    .line 144
    .line 145
    aput-object v10, v1, v17

    .line 146
    .line 147
    new-array v10, v8, [F

    .line 148
    .line 149
    fill-array-data v10, :array_f

    .line 150
    .line 151
    .line 152
    const/16 v17, 0xf

    .line 153
    .line 154
    aput-object v10, v1, v17

    .line 155
    .line 156
    new-array v10, v6, [F

    .line 157
    .line 158
    fill-array-data v10, :array_10

    .line 159
    .line 160
    .line 161
    aput-object v10, v1, v8

    .line 162
    .line 163
    new-array v10, v2, [F

    .line 164
    .line 165
    fill-array-data v10, :array_11

    .line 166
    .line 167
    .line 168
    const/16 v17, 0x11

    .line 169
    .line 170
    aput-object v10, v1, v17

    .line 171
    .line 172
    new-array v10, v2, [F

    .line 173
    .line 174
    fill-array-data v10, :array_12

    .line 175
    .line 176
    .line 177
    const/16 v17, 0x12

    .line 178
    .line 179
    aput-object v10, v1, v17

    .line 180
    .line 181
    new-array v10, v15, [F

    .line 182
    .line 183
    fill-array-data v10, :array_13

    .line 184
    .line 185
    .line 186
    const/16 v17, 0x13

    .line 187
    .line 188
    aput-object v10, v1, v17

    .line 189
    .line 190
    new-array v10, v3, [F

    .line 191
    .line 192
    fill-array-data v10, :array_14

    .line 193
    .line 194
    .line 195
    aput-object v10, v1, v2

    .line 196
    .line 197
    new-array v10, v15, [F

    .line 198
    .line 199
    fill-array-data v10, :array_15

    .line 200
    .line 201
    .line 202
    const/16 v17, 0x15

    .line 203
    .line 204
    aput-object v10, v1, v17

    .line 205
    .line 206
    new-array v10, v8, [F

    .line 207
    .line 208
    fill-array-data v10, :array_16

    .line 209
    .line 210
    .line 211
    const/16 v17, 0x16

    .line 212
    .line 213
    aput-object v10, v1, v17

    .line 214
    .line 215
    new-array v10, v15, [F

    .line 216
    .line 217
    fill-array-data v10, :array_17

    .line 218
    .line 219
    .line 220
    const/16 v17, 0x17

    .line 221
    .line 222
    aput-object v10, v1, v17

    .line 223
    .line 224
    new-array v10, v3, [F

    .line 225
    .line 226
    fill-array-data v10, :array_18

    .line 227
    .line 228
    .line 229
    aput-object v10, v1, v6

    .line 230
    .line 231
    new-array v6, v3, [F

    .line 232
    .line 233
    fill-array-data v6, :array_19

    .line 234
    .line 235
    .line 236
    const/16 v10, 0x19

    .line 237
    .line 238
    aput-object v6, v1, v10

    .line 239
    .line 240
    new-array v6, v0, [[F

    .line 241
    .line 242
    new-array v10, v8, [F

    .line 243
    .line 244
    fill-array-data v10, :array_1a

    .line 245
    .line 246
    .line 247
    aput-object v10, v6, v4

    .line 248
    .line 249
    new-array v10, v11, [F

    .line 250
    .line 251
    fill-array-data v10, :array_1b

    .line 252
    .line 253
    .line 254
    aput-object v10, v6, v5

    .line 255
    .line 256
    new-array v5, v2, [F

    .line 257
    .line 258
    fill-array-data v5, :array_1c

    .line 259
    .line 260
    .line 261
    aput-object v5, v6, v7

    .line 262
    .line 263
    new-array v5, v2, [F

    .line 264
    .line 265
    fill-array-data v5, :array_1d

    .line 266
    .line 267
    .line 268
    aput-object v5, v6, v9

    .line 269
    .line 270
    new-array v3, v3, [F

    .line 271
    .line 272
    fill-array-data v3, :array_1e

    .line 273
    .line 274
    .line 275
    aput-object v3, v6, v11

    .line 276
    .line 277
    new-array v3, v2, [F

    .line 278
    .line 279
    fill-array-data v3, :array_1f

    .line 280
    .line 281
    .line 282
    aput-object v3, v6, v12

    .line 283
    .line 284
    new-array v3, v8, [F

    .line 285
    .line 286
    fill-array-data v3, :array_20

    .line 287
    .line 288
    .line 289
    aput-object v3, v6, v13

    .line 290
    .line 291
    new-array v3, v15, [F

    .line 292
    .line 293
    fill-array-data v3, :array_21

    .line 294
    .line 295
    .line 296
    aput-object v3, v6, v14

    .line 297
    .line 298
    new-array v2, v2, [F

    .line 299
    .line 300
    fill-array-data v2, :array_22

    .line 301
    .line 302
    .line 303
    aput-object v2, v6, v15

    .line 304
    .line 305
    new-array v2, v8, [F

    .line 306
    .line 307
    fill-array-data v2, :array_23

    .line 308
    .line 309
    .line 310
    aput-object v2, v6, v16

    .line 311
    .line 312
    const/4 v2, 0x0

    .line 313
    const/16 v3, 0x1a

    .line 314
    .line 315
    :goto_0
    if-ge v2, v3, :cond_0

    .line 316
    .line 317
    sget-object v5, Lcom/join/mgps/ptr/header/d;->a:Landroid/util/SparseArray;

    .line 318
    .line 319
    add-int/lit8 v7, v2, 0x41

    .line 320
    .line 321
    aget-object v8, v1, v2

    .line 322
    .line 323
    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 324
    .line 325
    .line 326
    add-int/lit8 v2, v2, 0x1

    .line 327
    .line 328
    goto :goto_0

    .line 329
    :cond_0
    const/4 v2, 0x0

    .line 330
    :goto_1
    const/16 v5, 0x20

    .line 331
    .line 332
    if-ge v2, v3, :cond_1

    .line 333
    .line 334
    sget-object v7, Lcom/join/mgps/ptr/header/d;->a:Landroid/util/SparseArray;

    .line 335
    .line 336
    add-int/lit8 v8, v2, 0x41

    .line 337
    .line 338
    add-int/2addr v8, v5

    .line 339
    aget-object v5, v1, v2

    .line 340
    .line 341
    invoke-virtual {v7, v8, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    add-int/lit8 v2, v2, 0x1

    .line 345
    .line 346
    goto :goto_1

    .line 347
    :cond_1
    const/4 v1, 0x0

    .line 348
    :goto_2
    if-ge v1, v0, :cond_2

    .line 349
    .line 350
    sget-object v2, Lcom/join/mgps/ptr/header/d;->a:Landroid/util/SparseArray;

    .line 351
    .line 352
    add-int/lit8 v3, v1, 0x30

    .line 353
    .line 354
    aget-object v7, v6, v1

    .line 355
    .line 356
    invoke-virtual {v2, v3, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 357
    .line 358
    .line 359
    add-int/lit8 v1, v1, 0x1

    .line 360
    .line 361
    goto :goto_2

    .line 362
    :cond_2
    new-array v0, v4, [F

    .line 363
    .line 364
    invoke-static {v5, v0}, Lcom/join/mgps/ptr/header/d;->a(C[F)V

    .line 365
    .line 366
    .line 367
    new-array v0, v11, [F

    .line 368
    .line 369
    fill-array-data v0, :array_24

    .line 370
    .line 371
    .line 372
    const/16 v1, 0x2d

    .line 373
    .line 374
    invoke-static {v1, v0}, Lcom/join/mgps/ptr/header/d;->a(C[F)V

    .line 375
    .line 376
    .line 377
    new-array v0, v11, [F

    .line 378
    .line 379
    fill-array-data v0, :array_25

    .line 380
    .line 381
    .line 382
    const/16 v1, 0x2e

    .line 383
    .line 384
    invoke-static {v1, v0}, Lcom/join/mgps/ptr/header/d;->a(C[F)V

    .line 385
    .line 386
    .line 387
    return-void

    .line 388
    nop

    .line 389
    :array_0
    .array-data 4
        0x41c00000    # 24.0f
        0x0
        0x3f800000    # 1.0f
        0x41b00000    # 22.0f
        0x3f800000    # 1.0f
        0x41b00000    # 22.0f
        0x3f800000    # 1.0f
        0x42900000    # 72.0f
        0x41c00000    # 24.0f
        0x0
        0x423c0000    # 47.0f
        0x41b00000    # 22.0f
        0x423c0000    # 47.0f
        0x41b00000    # 22.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x3f800000    # 1.0f
        0x42400000    # 48.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
    .end array-data

    .line 390
    .line 391
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
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x42140000    # 37.0f
        0x0
        0x42140000    # 37.0f
        0x0
        0x423c0000    # 47.0f
        0x41300000    # 11.0f
        0x423c0000    # 47.0f
        0x41300000    # 11.0f
        0x423c0000    # 47.0f
        0x41d00000    # 26.0f
        0x423c0000    # 47.0f
        0x41d00000    # 26.0f
        0x42180000    # 38.0f
        0x42100000    # 36.0f
        0x42180000    # 38.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x42180000    # 38.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42380000    # 46.0f
        0x423c0000    # 47.0f
        0x42380000    # 46.0f
        0x423c0000    # 47.0f
        0x42740000    # 61.0f
        0x423c0000    # 47.0f
        0x42740000    # 61.0f
        0x42180000    # 38.0f
        0x428e0000    # 71.0f
        0x42140000    # 37.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
    .end array-data

    :array_2
    .array-data 4
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x41c00000    # 24.0f
        0x0
        0x41c00000    # 24.0f
        0x0
        0x423c0000    # 47.0f
        0x41b00000    # 22.0f
        0x423c0000    # 47.0f
        0x41b00000    # 22.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x41b80000    # 23.0f
        0x42900000    # 72.0f
        0x41b80000    # 23.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x42100000    # 36.0f
        0x42140000    # 37.0f
        0x42100000    # 36.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x42100000    # 36.0f
        0x42140000    # 37.0f
        0x42100000    # 36.0f
    .end array-data

    :array_6
    .array-data 4
        0x423c0000    # 47.0f
        0x41b80000    # 23.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x41c00000    # 24.0f
        0x42400000    # 48.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x41c00000    # 24.0f
        0x0
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_9
    .array-data 4
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
        0x0
        0x42400000    # 48.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
        0x40400000    # 3.0f
        0x42040000    # 33.0f
        0x40400000    # 3.0f
        0x42180000    # 38.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x41c00000    # 24.0f
        0x41b80000    # 23.0f
        0x41c00000    # 24.0f
        0x41b80000    # 23.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x41b80000    # 23.0f
        0x42900000    # 72.0f
        0x41b80000    # 23.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x423c0000    # 47.0f
        0x42400000    # 48.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x41c00000    # 24.0f
        0x41e00000    # 28.0f
        0x423c0000    # 47.0f
        0x428e0000    # 71.0f
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x0
        0x42140000    # 37.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_12
    .array-data 4
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x41c00000    # 24.0f
        0x0
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x0
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x41c00000    # 24.0f
        0x42440000    # 49.0f
        0x41c00000    # 24.0f
        0x42440000    # 49.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
        0x0
        0x42900000    # 72.0f
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x0
        0x41c00000    # 24.0f
        0x41b80000    # 23.0f
        0x423c0000    # 47.0f
        0x0
        0x41c00000    # 24.0f
        0x41b80000    # 23.0f
        0x41c00000    # 24.0f
        0x41b80000    # 23.0f
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1b
    .array-data 4
        0x41c00000    # 24.0f
        0x0
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x0
        0x0
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_1f
    .array-data 4
        0x0
        0x0
        0x0
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x0
        0x0
        0x42900000    # 72.0f
        0x0
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
    .end array-data

    :array_23
    .array-data 4
        0x423c0000    # 47.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x42100000    # 36.0f
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x0
        0x423c0000    # 47.0f
        0x42900000    # 72.0f
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x42100000    # 36.0f
        0x423c0000    # 47.0f
        0x42100000    # 36.0f
    .end array-data

    :array_25
    .array-data 4
        0x41c00000    # 24.0f
        0x42700000    # 60.0f
        0x41c00000    # 24.0f
        0x42900000    # 72.0f
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

.method public static a(C[F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "points"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/ptr/header/d;->a:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Lcom/join/mgps/ptr/header/d;->c(Ljava/lang/String;FI)Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static c(Ljava/lang/String;FI)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "str",
            "scale",
            "gapBetweenLetter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FI)",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    if-ge v3, v4, :cond_4

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    sget-object v5, Lcom/join/mgps/ptr/header/d;->a:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    const/4 v7, -0x1

    .line 26
    if-ne v6, v7, :cond_0

    .line 27
    .line 28
    goto :goto_4

    .line 29
    :cond_0
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, [F

    .line 34
    .line 35
    array-length v5, v4

    .line 36
    const/4 v6, 0x4

    .line 37
    div-int/2addr v5, v6

    .line 38
    const/4 v7, 0x0

    .line 39
    :goto_1
    if-ge v7, v5, :cond_3

    .line 40
    .line 41
    new-array v8, v6, [F

    .line 42
    .line 43
    const/4 v9, 0x0

    .line 44
    :goto_2
    if-ge v9, v6, :cond_2

    .line 45
    .line 46
    mul-int/lit8 v10, v7, 0x4

    .line 47
    .line 48
    add-int/2addr v10, v9

    .line 49
    aget v10, v4, v10

    .line 50
    .line 51
    rem-int/lit8 v11, v9, 0x2

    .line 52
    .line 53
    if-nez v11, :cond_1

    .line 54
    .line 55
    add-float/2addr v10, v1

    .line 56
    mul-float v10, v10, p1

    .line 57
    .line 58
    aput v10, v8, v9

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_1
    mul-float v10, v10, p1

    .line 62
    .line 63
    aput v10, v8, v9

    .line 64
    .line 65
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    add-int/lit8 v7, v7, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    add-int/lit8 v4, p2, 0x39

    .line 75
    .line 76
    int-to-float v4, v4

    .line 77
    add-float/2addr v1, v4

    .line 78
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    return-object v0
.end method
