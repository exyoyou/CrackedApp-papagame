.class public Lcom/alibaba/fastjson/serializer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/asm/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/b$a;
    }
.end annotation


# instance fields
.field private Z0:Lcom/alibaba/fastjson/util/a;

.field private final a1:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/alibaba/fastjson/util/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/alibaba/fastjson/util/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/b;->Z0:Lcom/alibaba/fastjson/util/a;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/b;->a1:Ljava/util/concurrent/atomic/AtomicLong;

    .line 17
    .line 18
    return-void
.end method

.method private A(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Ljava/util/List;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/e;",
            ">;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p4

    .line 6
    .line 7
    const-string v3, "out"

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/16 v5, 0x19

    .line 14
    .line 15
    invoke-interface {v1, v5, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 16
    .line 17
    .line 18
    const/16 v4, 0x5b

    .line 19
    .line 20
    const/16 v6, 0x10

    .line 21
    .line 22
    invoke-interface {v1, v6, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 23
    .line 24
    .line 25
    const/16 v4, 0xb6

    .line 26
    .line 27
    const-string v7, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 28
    .line 29
    const-string v8, "write"

    .line 30
    .line 31
    const-string v9, "(C)V"

    .line 32
    .line 33
    invoke-interface {v1, v4, v7, v8, v9}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v10

    .line 40
    const/16 v11, 0x5d

    .line 41
    .line 42
    if-nez v10, :cond_0

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-interface {v1, v5, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v6, v11}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v1, v4, v7, v8, v9}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    const/4 v13, 0x0

    .line 59
    :goto_0
    if-ge v13, v10, :cond_d

    .line 60
    .line 61
    add-int/lit8 v14, v10, -0x1

    .line 62
    .line 63
    if-ne v13, v14, :cond_1

    .line 64
    .line 65
    move-object/from16 v15, p3

    .line 66
    .line 67
    const/16 v14, 0x5d

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/16 v14, 0x2c

    .line 71
    .line 72
    move-object/from16 v15, p3

    .line 73
    .line 74
    :goto_1
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v16

    .line 78
    move-object/from16 v11, v16

    .line 79
    .line 80
    check-cast v11, Lcom/alibaba/fastjson/util/e;

    .line 81
    .line 82
    invoke-virtual {v11}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    invoke-virtual {v11}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    const/16 v4, 0x3a

    .line 94
    .line 95
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    invoke-interface {v1, v4, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 100
    .line 101
    .line 102
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 103
    .line 104
    if-eq v12, v4, :cond_c

    .line 105
    .line 106
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 107
    .line 108
    if-eq v12, v4, :cond_c

    .line 109
    .line 110
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 111
    .line 112
    if-ne v12, v4, :cond_2

    .line 113
    .line 114
    goto/16 :goto_6

    .line 115
    .line 116
    :cond_2
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 117
    .line 118
    if-ne v12, v4, :cond_3

    .line 119
    .line 120
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    invoke-interface {v1, v5, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 128
    .line 129
    .line 130
    const/16 v4, 0x10

    .line 131
    .line 132
    invoke-interface {v1, v4, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 133
    .line 134
    .line 135
    const-string v6, "writeLongAndChar"

    .line 136
    .line 137
    const-string v11, "(JC)V"

    .line 138
    .line 139
    const/16 v12, 0xb6

    .line 140
    .line 141
    invoke-interface {v1, v12, v7, v6, v11}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    move/from16 v17, v10

    .line 145
    .line 146
    :goto_3
    const/16 v5, 0xb6

    .line 147
    .line 148
    const/16 v6, 0x19

    .line 149
    .line 150
    goto/16 :goto_7

    .line 151
    .line 152
    :cond_3
    const/16 v4, 0x10

    .line 153
    .line 154
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 155
    .line 156
    if-ne v12, v6, :cond_4

    .line 157
    .line 158
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 163
    .line 164
    .line 165
    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v1, v4, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 169
    .line 170
    .line 171
    const-string v6, "writeFloatAndChar"

    .line 172
    .line 173
    const-string v11, "(FC)V"

    .line 174
    .line 175
    const/16 v12, 0xb6

    .line 176
    .line 177
    invoke-interface {v1, v12, v7, v6, v11}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_4
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 182
    .line 183
    if-ne v12, v6, :cond_5

    .line 184
    .line 185
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 190
    .line 191
    .line 192
    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v1, v4, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 196
    .line 197
    .line 198
    const-string v6, "writeDoubleAndChar"

    .line 199
    .line 200
    const-string v11, "(DC)V"

    .line 201
    .line 202
    const/16 v12, 0xb6

    .line 203
    .line 204
    invoke-interface {v1, v12, v7, v6, v11}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 209
    .line 210
    if-ne v12, v6, :cond_6

    .line 211
    .line 212
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    move-result v6

    .line 216
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 217
    .line 218
    .line 219
    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v1, v4, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 223
    .line 224
    .line 225
    const-string v6, "writeBooleanAndChar"

    .line 226
    .line 227
    const-string v11, "(ZC)V"

    .line 228
    .line 229
    const/16 v12, 0xb6

    .line 230
    .line 231
    invoke-interface {v1, v12, v7, v6, v11}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_6
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 236
    .line 237
    if-ne v12, v6, :cond_7

    .line 238
    .line 239
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 244
    .line 245
    .line 246
    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v1, v4, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 250
    .line 251
    .line 252
    const-string v6, "writeCharacterAndChar"

    .line 253
    .line 254
    const-string v11, "(CC)V"

    .line 255
    .line 256
    const/16 v12, 0xb6

    .line 257
    .line 258
    invoke-interface {v1, v12, v7, v6, v11}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto :goto_2

    .line 262
    :cond_7
    const-class v6, Ljava/lang/String;

    .line 263
    .line 264
    if-ne v12, v6, :cond_8

    .line 265
    .line 266
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v6

    .line 270
    invoke-interface {v1, v5, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 271
    .line 272
    .line 273
    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 274
    .line 275
    .line 276
    invoke-interface {v1, v4, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 277
    .line 278
    .line 279
    const-string v6, "writeString"

    .line 280
    .line 281
    const-string v11, "(Ljava/lang/String;C)V"

    .line 282
    .line 283
    const/16 v12, 0xb6

    .line 284
    .line 285
    invoke-interface {v1, v12, v7, v6, v11}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto/16 :goto_2

    .line 289
    .line 290
    :cond_8
    const/16 v6, 0xb6

    .line 291
    .line 292
    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    .line 293
    .line 294
    .line 295
    move-result v12

    .line 296
    if-eqz v12, :cond_9

    .line 297
    .line 298
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    move-result v12

    .line 302
    invoke-interface {v1, v5, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 303
    .line 304
    .line 305
    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 306
    .line 307
    .line 308
    invoke-interface {v1, v4, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 309
    .line 310
    .line 311
    const-string v4, "writeEnum"

    .line 312
    .line 313
    const-string v11, "(Ljava/lang/Enum;C)V"

    .line 314
    .line 315
    invoke-interface {v1, v6, v7, v4, v11}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    move/from16 v17, v10

    .line 319
    .line 320
    const/16 v4, 0x10

    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :cond_9
    invoke-virtual {v11}, Lcom/alibaba/fastjson/util/e;->m()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 329
    .line 330
    .line 331
    move-result v12

    .line 332
    invoke-interface {v1, v5, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 333
    .line 334
    .line 335
    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 336
    .line 337
    .line 338
    const-string v12, "com/alibaba/fastjson/serializer/JSONSerializer"

    .line 339
    .line 340
    if-eqz v4, :cond_a

    .line 341
    .line 342
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 343
    .line 344
    .line 345
    const-string v4, "writeWithFormat"

    .line 346
    .line 347
    const-string v11, "(Ljava/lang/Object;Ljava/lang/String;)V"

    .line 348
    .line 349
    invoke-interface {v1, v6, v12, v4, v11}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :goto_4
    move/from16 v17, v10

    .line 353
    .line 354
    const/16 v5, 0xb6

    .line 355
    .line 356
    goto :goto_5

    .line 357
    :cond_a
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    invoke-interface {v1, v5, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v11}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 365
    .line 366
    .line 367
    move-result-object v4

    .line 368
    instance-of v4, v4, Ljava/lang/Class;

    .line 369
    .line 370
    const-string v6, "writeWithFieldName"

    .line 371
    .line 372
    if-eqz v4, :cond_b

    .line 373
    .line 374
    invoke-virtual {v11}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Ljava/lang/Class;

    .line 379
    .line 380
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    if-eqz v4, :cond_b

    .line 385
    .line 386
    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 387
    .line 388
    const/16 v11, 0xb6

    .line 389
    .line 390
    invoke-interface {v1, v11, v12, v6, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    goto :goto_4

    .line 394
    :cond_b
    const/4 v4, 0x0

    .line 395
    invoke-interface {v1, v5, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 396
    .line 397
    .line 398
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->d()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    move/from16 v17, v10

    .line 408
    .line 409
    invoke-virtual {v11}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v10

    .line 413
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    const-string v10, "_asm_fieldType"

    .line 417
    .line 418
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v5

    .line 425
    const-string v10, "Ljava/lang/reflect/Type;"

    .line 426
    .line 427
    const/16 v15, 0xb4

    .line 428
    .line 429
    invoke-interface {v1, v15, v4, v5, v10}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual {v11}, Lcom/alibaba/fastjson/util/e;->q()I

    .line 433
    .line 434
    .line 435
    move-result v4

    .line 436
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-interface {v1, v4}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    const-string v4, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 444
    .line 445
    const/16 v5, 0xb6

    .line 446
    .line 447
    invoke-interface {v1, v5, v12, v6, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    :goto_5
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    const/16 v6, 0x19

    .line 455
    .line 456
    invoke-interface {v1, v6, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 457
    .line 458
    .line 459
    const/16 v4, 0x10

    .line 460
    .line 461
    invoke-interface {v1, v4, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 462
    .line 463
    .line 464
    invoke-interface {v1, v5, v7, v8, v9}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    goto :goto_7

    .line 468
    :cond_c
    :goto_6
    move/from16 v17, v10

    .line 469
    .line 470
    const/16 v4, 0x10

    .line 471
    .line 472
    const/16 v5, 0xb6

    .line 473
    .line 474
    const/16 v6, 0x19

    .line 475
    .line 476
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    move-result v10

    .line 480
    invoke-interface {v1, v6, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 481
    .line 482
    .line 483
    invoke-direct {v0, v1, v2, v11}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 484
    .line 485
    .line 486
    invoke-interface {v1, v4, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 487
    .line 488
    .line 489
    const-string v10, "writeIntAndChar"

    .line 490
    .line 491
    const-string v11, "(IC)V"

    .line 492
    .line 493
    invoke-interface {v1, v5, v7, v10, v11}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 497
    .line 498
    move/from16 v10, v17

    .line 499
    .line 500
    const/16 v4, 0xb6

    .line 501
    .line 502
    const/16 v5, 0x19

    .line 503
    .line 504
    const/16 v6, 0x10

    .line 505
    .line 506
    const/16 v11, 0x5d

    .line 507
    .line 508
    goto/16 :goto_0

    .line 509
    .line 510
    :cond_d
    return-void
.end method

.method private B(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Ljava/util/List;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/e;",
            ">;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    .line 10
    .line 11
    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 19
    .line 20
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v7, Lcom/alibaba/fastjson/asm/f;

    .line 24
    .line 25
    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v8, "out"

    .line 29
    .line 30
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v9

    .line 34
    const/16 v10, 0x19

    .line 35
    .line 36
    invoke-interface {v2, v10, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 37
    .line 38
    .line 39
    const-string v9, "PrettyFormat"

    .line 40
    .line 41
    const-string v11, "Lcom/alibaba/fastjson/serializer/SerializerFeature;"

    .line 42
    .line 43
    const/16 v12, 0xb2

    .line 44
    .line 45
    const-string v13, "com/alibaba/fastjson/serializer/SerializerFeature"

    .line 46
    .line 47
    invoke-interface {v2, v12, v13, v9, v11}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v9, "isEnabled"

    .line 51
    .line 52
    const-string v11, "(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z"

    .line 53
    .line 54
    const/16 v12, 0xb6

    .line 55
    .line 56
    const-string v13, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 57
    .line 58
    invoke-interface {v2, v12, v13, v9, v11}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/16 v9, 0x99

    .line 62
    .line 63
    invoke-interface {v2, v9, v6}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 64
    .line 65
    .line 66
    const/4 v11, 0x0

    .line 67
    invoke-interface {v2, v10, v11}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->d()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v14

    .line 74
    const/16 v15, 0xb4

    .line 75
    .line 76
    const-string v9, "nature"

    .line 77
    .line 78
    const-string v12, "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;"

    .line 79
    .line 80
    invoke-interface {v2, v15, v14, v9, v12}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/16 v14, 0xc7

    .line 84
    .line 85
    invoke-interface {v2, v14, v7}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v2, v10, v11}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->d()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-interface {v2, v15, v7, v9, v12}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 v7, 0x1

    .line 102
    invoke-interface {v2, v10, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 103
    .line 104
    .line 105
    const/4 v7, 0x2

    .line 106
    invoke-interface {v2, v10, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 107
    .line 108
    .line 109
    const/4 v7, 0x3

    .line 110
    invoke-interface {v2, v10, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 111
    .line 112
    .line 113
    const/4 v7, 0x4

    .line 114
    invoke-interface {v2, v10, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 115
    .line 116
    .line 117
    const/4 v7, 0x5

    .line 118
    const/16 v14, 0x15

    .line 119
    .line 120
    invoke-interface {v2, v14, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 121
    .line 122
    .line 123
    const-string v7, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 124
    .line 125
    const-string v14, "com/alibaba/fastjson/serializer/JavaBeanSerializer"

    .line 126
    .line 127
    const-string v15, "write"

    .line 128
    .line 129
    const/16 v10, 0xb6

    .line 130
    .line 131
    invoke-interface {v2, v10, v14, v15, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const/16 v7, 0xb1

    .line 135
    .line 136
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 137
    .line 138
    .line 139
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 140
    .line 141
    .line 142
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 143
    .line 144
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 145
    .line 146
    .line 147
    new-instance v10, Lcom/alibaba/fastjson/asm/f;

    .line 148
    .line 149
    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 150
    .line 151
    .line 152
    const/16 v7, 0x19

    .line 153
    .line 154
    invoke-interface {v2, v7, v11}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->d()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    const/16 v11, 0xb4

    .line 162
    .line 163
    invoke-interface {v2, v11, v7, v9, v12}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const/16 v7, 0xc7

    .line 167
    .line 168
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 169
    .line 170
    .line 171
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 172
    .line 173
    .line 174
    const/16 v7, 0x19

    .line 175
    .line 176
    const/4 v10, 0x0

    .line 177
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->d()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-interface {v2, v11, v10, v9, v12}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const/4 v10, 0x1

    .line 188
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 189
    .line 190
    .line 191
    const/4 v10, 0x2

    .line 192
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 193
    .line 194
    .line 195
    const/4 v10, 0x5

    .line 196
    const/16 v11, 0x15

    .line 197
    .line 198
    invoke-interface {v2, v11, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 199
    .line 200
    .line 201
    const-string v10, "writeReference"

    .line 202
    .line 203
    const-string v11, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z"

    .line 204
    .line 205
    const/16 v7, 0xb6

    .line 206
    .line 207
    invoke-interface {v2, v7, v14, v10, v11}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    const/16 v7, 0x99

    .line 211
    .line 212
    invoke-interface {v2, v7, v6}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 213
    .line 214
    .line 215
    const/16 v7, 0xb1

    .line 216
    .line 217
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 218
    .line 219
    .line 220
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 221
    .line 222
    .line 223
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 224
    .line 225
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 226
    .line 227
    .line 228
    const/16 v7, 0x19

    .line 229
    .line 230
    const/4 v10, 0x0

    .line 231
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->d()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    const/16 v10, 0xb4

    .line 239
    .line 240
    invoke-interface {v2, v10, v11, v9, v12}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    invoke-interface {v2, v7, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 248
    .line 249
    .line 250
    const-string v9, "isWriteAsArray"

    .line 251
    .line 252
    const-string v10, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z"

    .line 253
    .line 254
    const/16 v11, 0xb6

    .line 255
    .line 256
    invoke-interface {v2, v11, v14, v9, v10}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const/16 v9, 0x99

    .line 260
    .line 261
    invoke-interface {v2, v9, v6}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 262
    .line 263
    .line 264
    const/4 v9, 0x0

    .line 265
    invoke-interface {v2, v7, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 266
    .line 267
    .line 268
    const/4 v10, 0x1

    .line 269
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 270
    .line 271
    .line 272
    const/4 v10, 0x2

    .line 273
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 274
    .line 275
    .line 276
    const/4 v10, 0x3

    .line 277
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 278
    .line 279
    .line 280
    const/4 v10, 0x4

    .line 281
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 282
    .line 283
    .line 284
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->d()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v10

    .line 288
    const-string v12, "writeAsArray"

    .line 289
    .line 290
    const-string v14, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 291
    .line 292
    invoke-interface {v2, v11, v10, v12, v14}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const/16 v10, 0xb1

    .line 296
    .line 297
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 298
    .line 299
    .line 300
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    invoke-interface {v2, v7, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 308
    .line 309
    .line 310
    const-string v6, "getContext"

    .line 311
    .line 312
    const-string v10, "()Lcom/alibaba/fastjson/serializer/SerialContext;"

    .line 313
    .line 314
    const-string v12, "com/alibaba/fastjson/serializer/JSONSerializer"

    .line 315
    .line 316
    invoke-interface {v2, v11, v12, v6, v10}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    const-string v6, "parent"

    .line 320
    .line 321
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    move-result v10

    .line 325
    const/16 v11, 0x3a

    .line 326
    .line 327
    invoke-interface {v2, v11, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 328
    .line 329
    .line 330
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 331
    .line 332
    .line 333
    move-result v10

    .line 334
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    move-result v10

    .line 341
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 342
    .line 343
    .line 344
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 345
    .line 346
    .line 347
    move-result v10

    .line 348
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 349
    .line 350
    .line 351
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->h()I

    .line 352
    .line 353
    .line 354
    move-result v10

    .line 355
    invoke-interface {v2, v7, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 356
    .line 357
    .line 358
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->a(Lcom/alibaba/fastjson/serializer/b$a;)I

    .line 359
    .line 360
    .line 361
    move-result v7

    .line 362
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v7

    .line 366
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    const-string v7, "setContext"

    .line 370
    .line 371
    const-string v10, "(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V"

    .line 372
    .line 373
    const/16 v11, 0xb6

    .line 374
    .line 375
    invoke-interface {v2, v11, v12, v7, v10}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    new-instance v7, Lcom/alibaba/fastjson/asm/f;

    .line 379
    .line 380
    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 381
    .line 382
    .line 383
    new-instance v10, Lcom/alibaba/fastjson/asm/f;

    .line 384
    .line 385
    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 386
    .line 387
    .line 388
    new-instance v11, Lcom/alibaba/fastjson/asm/f;

    .line 389
    .line 390
    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 394
    .line 395
    .line 396
    move-result v14

    .line 397
    const/16 v9, 0x19

    .line 398
    .line 399
    invoke-interface {v2, v9, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 400
    .line 401
    .line 402
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->i()I

    .line 403
    .line 404
    .line 405
    move-result v14

    .line 406
    invoke-interface {v2, v9, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 407
    .line 408
    .line 409
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 410
    .line 411
    .line 412
    move-result v14

    .line 413
    invoke-interface {v2, v9, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 414
    .line 415
    .line 416
    const-string v14, "isWriteClassName"

    .line 417
    .line 418
    const-string v9, "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"

    .line 419
    .line 420
    move-object/from16 v17, v6

    .line 421
    .line 422
    const/16 v6, 0xb6

    .line 423
    .line 424
    invoke-interface {v2, v6, v12, v14, v9}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    const/16 v9, 0x99

    .line 428
    .line 429
    invoke-interface {v2, v9, v10}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 430
    .line 431
    .line 432
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->i()I

    .line 433
    .line 434
    .line 435
    move-result v9

    .line 436
    const/16 v14, 0x19

    .line 437
    .line 438
    invoke-interface {v2, v14, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 439
    .line 440
    .line 441
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 442
    .line 443
    .line 444
    move-result v9

    .line 445
    invoke-interface {v2, v14, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 446
    .line 447
    .line 448
    const-string v9, "getClass"

    .line 449
    .line 450
    const-string v14, "()Ljava/lang/Class;"

    .line 451
    .line 452
    move-object/from16 v16, v12

    .line 453
    .line 454
    const-string v12, "java/lang/Object"

    .line 455
    .line 456
    invoke-interface {v2, v6, v12, v9, v14}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    const/16 v6, 0xa5

    .line 460
    .line 461
    invoke-interface {v2, v6, v10}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 462
    .line 463
    .line 464
    invoke-interface {v2, v11}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    move-result v6

    .line 471
    const/16 v9, 0x19

    .line 472
    .line 473
    invoke-interface {v2, v9, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 474
    .line 475
    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .line 480
    .line 481
    const-string v9, "{\""

    .line 482
    .line 483
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    sget-object v9, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 487
    .line 488
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string v9, "\":\""

    .line 492
    .line 493
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v9

    .line 500
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v9, "\""

    .line 504
    .line 505
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    invoke-interface {v2, v6}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    const-string v6, "(Ljava/lang/String;)V"

    .line 516
    .line 517
    const/16 v9, 0xb6

    .line 518
    .line 519
    invoke-interface {v2, v9, v13, v15, v6}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    const/16 v6, 0x2c

    .line 523
    .line 524
    const/16 v9, 0x10

    .line 525
    .line 526
    invoke-interface {v2, v9, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 527
    .line 528
    .line 529
    const/16 v6, 0xa7

    .line 530
    .line 531
    invoke-interface {v2, v6, v7}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 532
    .line 533
    .line 534
    invoke-interface {v2, v10}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 535
    .line 536
    .line 537
    const/16 v6, 0x7b

    .line 538
    .line 539
    invoke-interface {v2, v9, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 540
    .line 541
    .line 542
    invoke-interface {v2, v7}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 543
    .line 544
    .line 545
    const-string v7, "seperator"

    .line 546
    .line 547
    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 548
    .line 549
    .line 550
    move-result v7

    .line 551
    const/16 v10, 0x36

    .line 552
    .line 553
    invoke-interface {v2, v10, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 554
    .line 555
    .line 556
    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/b;->c(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 557
    .line 558
    .line 559
    const/4 v11, 0x0

    .line 560
    :goto_0
    if-ge v11, v5, :cond_c

    .line 561
    .line 562
    move-object/from16 v7, p3

    .line 563
    .line 564
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v10

    .line 568
    check-cast v10, Lcom/alibaba/fastjson/util/e;

    .line 569
    .line 570
    invoke-virtual {v10}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 571
    .line 572
    .line 573
    move-result-object v12

    .line 574
    invoke-virtual {v10}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v14

    .line 578
    invoke-interface {v2, v14}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    const/16 v14, 0x3a

    .line 582
    .line 583
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 584
    .line 585
    .line 586
    move-result v6

    .line 587
    invoke-interface {v2, v14, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 588
    .line 589
    .line 590
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 591
    .line 592
    if-ne v12, v6, :cond_0

    .line 593
    .line 594
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->e(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_1

    .line 598
    .line 599
    :cond_0
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 600
    .line 601
    if-ne v12, v6, :cond_1

    .line 602
    .line 603
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->w(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 604
    .line 605
    .line 606
    goto :goto_1

    .line 607
    :cond_1
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 608
    .line 609
    if-ne v12, v6, :cond_2

    .line 610
    .line 611
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->n(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 612
    .line 613
    .line 614
    goto :goto_1

    .line 615
    :cond_2
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 616
    .line 617
    if-ne v12, v6, :cond_3

    .line 618
    .line 619
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->p(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 620
    .line 621
    .line 622
    goto :goto_1

    .line 623
    :cond_3
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 624
    .line 625
    if-ne v12, v6, :cond_4

    .line 626
    .line 627
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->k(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 628
    .line 629
    .line 630
    goto :goto_1

    .line 631
    :cond_4
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 632
    .line 633
    if-ne v12, v6, :cond_5

    .line 634
    .line 635
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->h(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 636
    .line 637
    .line 638
    goto :goto_1

    .line 639
    :cond_5
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 640
    .line 641
    if-ne v12, v6, :cond_6

    .line 642
    .line 643
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->d(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 644
    .line 645
    .line 646
    goto :goto_1

    .line 647
    :cond_6
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 648
    .line 649
    if-ne v12, v6, :cond_7

    .line 650
    .line 651
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->f(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 652
    .line 653
    .line 654
    goto :goto_1

    .line 655
    :cond_7
    const-class v6, Ljava/lang/String;

    .line 656
    .line 657
    if-ne v12, v6, :cond_8

    .line 658
    .line 659
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->x(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 660
    .line 661
    .line 662
    goto :goto_1

    .line 663
    :cond_8
    const-class v6, Ljava/math/BigDecimal;

    .line 664
    .line 665
    if-ne v12, v6, :cond_9

    .line 666
    .line 667
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->g(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 668
    .line 669
    .line 670
    goto :goto_1

    .line 671
    :cond_9
    const-class v6, Ljava/util/List;

    .line 672
    .line 673
    invoke-virtual {v6, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 674
    .line 675
    .line 676
    move-result v6

    .line 677
    if-eqz v6, :cond_a

    .line 678
    .line 679
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->o(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 680
    .line 681
    .line 682
    goto :goto_1

    .line 683
    :cond_a
    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    .line 684
    .line 685
    .line 686
    move-result v6

    .line 687
    if-eqz v6, :cond_b

    .line 688
    .line 689
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->i(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 690
    .line 691
    .line 692
    goto :goto_1

    .line 693
    :cond_b
    invoke-direct {v0, v1, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/b;->s(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 694
    .line 695
    .line 696
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 697
    .line 698
    const/16 v6, 0x7b

    .line 699
    .line 700
    goto/16 :goto_0

    .line 701
    .line 702
    :cond_c
    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson/serializer/b;->a(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 703
    .line 704
    .line 705
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    .line 706
    .line 707
    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 708
    .line 709
    .line 710
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    .line 711
    .line 712
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 713
    .line 714
    .line 715
    const-string v6, "seperator"

    .line 716
    .line 717
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 718
    .line 719
    .line 720
    move-result v6

    .line 721
    const/16 v7, 0x15

    .line 722
    .line 723
    invoke-interface {v2, v7, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 724
    .line 725
    .line 726
    const/16 v6, 0x7b

    .line 727
    .line 728
    invoke-interface {v2, v9, v6}, Lcom/alibaba/fastjson/asm/g;->i(II)V

    .line 729
    .line 730
    .line 731
    const/16 v7, 0xa0

    .line 732
    .line 733
    invoke-interface {v2, v7, v1}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 737
    .line 738
    .line 739
    move-result v7

    .line 740
    const/16 v10, 0x19

    .line 741
    .line 742
    invoke-interface {v2, v10, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 743
    .line 744
    .line 745
    invoke-interface {v2, v9, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 746
    .line 747
    .line 748
    const-string v6, "(C)V"

    .line 749
    .line 750
    const/16 v7, 0xb6

    .line 751
    .line 752
    invoke-interface {v2, v7, v13, v15, v6}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    invoke-interface {v2, v1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 756
    .line 757
    .line 758
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 759
    .line 760
    .line 761
    move-result v1

    .line 762
    invoke-interface {v2, v10, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 763
    .line 764
    .line 765
    const/16 v1, 0x7d

    .line 766
    .line 767
    invoke-interface {v2, v9, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 768
    .line 769
    .line 770
    const-string v1, "(C)V"

    .line 771
    .line 772
    invoke-interface {v2, v7, v13, v15, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    .line 774
    .line 775
    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 776
    .line 777
    .line 778
    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 782
    .line 783
    .line 784
    move-result v1

    .line 785
    invoke-interface {v2, v10, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 786
    .line 787
    .line 788
    move-object/from16 v1, v17

    .line 789
    .line 790
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 791
    .line 792
    .line 793
    move-result v1

    .line 794
    invoke-interface {v2, v10, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 795
    .line 796
    .line 797
    const-string v1, "setContext"

    .line 798
    .line 799
    const-string v3, "(Lcom/alibaba/fastjson/serializer/SerialContext;)V"

    .line 800
    .line 801
    move-object/from16 v4, v16

    .line 802
    .line 803
    invoke-interface {v2, v7, v4, v1, v3}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    return-void
.end method

.method private a(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x19

    .line 6
    .line 7
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 15
    .line 16
    .line 17
    const-string v0, "seperator"

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x15

    .line 24
    .line 25
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 26
    .line 27
    .line 28
    const-string v1, "writeAfter"

    .line 29
    .line 30
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C"

    .line 31
    .line 32
    const/16 v3, 0xb8

    .line 33
    .line 34
    const-string v4, "com/alibaba/fastjson/serializer/FilterUtils"

    .line 35
    .line 36
    invoke-interface {p1, v3, v4, v1, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x36

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private b(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x19

    .line 10
    .line 11
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z"

    .line 31
    .line 32
    const/16 v3, 0x15

    .line 33
    .line 34
    const-string v4, "apply"

    .line 35
    .line 36
    const-string v5, "com/alibaba/fastjson/serializer/FilterUtils"

    .line 37
    .line 38
    const/16 v6, 0xb8

    .line 39
    .line 40
    if-ne p2, v0, :cond_0

    .line 41
    .line 42
    const-string p2, "byte"

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v6, v5, v4, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    if-ne p2, v0, :cond_1

    .line 59
    .line 60
    const-string p2, "short"

    .line 61
    .line 62
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 67
    .line 68
    .line 69
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Z"

    .line 70
    .line 71
    invoke-interface {p1, v6, v5, v4, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 77
    .line 78
    if-ne p2, v0, :cond_2

    .line 79
    .line 80
    const-string p2, "int"

    .line 81
    .line 82
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 87
    .line 88
    .line 89
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Z"

    .line 90
    .line 91
    invoke-interface {p1, v6, v5, v4, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 97
    .line 98
    if-ne p2, v0, :cond_3

    .line 99
    .line 100
    const-string p2, "char"

    .line 101
    .line 102
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 107
    .line 108
    .line 109
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Z"

    .line 110
    .line 111
    invoke-interface {p1, v6, v5, v4, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 117
    .line 118
    const/4 v7, 0x2

    .line 119
    if-ne p2, v0, :cond_4

    .line 120
    .line 121
    const-string p2, "long"

    .line 122
    .line 123
    invoke-virtual {p3, p2, v7}, Lcom/alibaba/fastjson/serializer/b$a;->m(Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    const/16 p3, 0x16

    .line 128
    .line 129
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 130
    .line 131
    .line 132
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Z"

    .line 133
    .line 134
    invoke-interface {p1, v6, v5, v4, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 140
    .line 141
    if-ne p2, v0, :cond_5

    .line 142
    .line 143
    const-string p2, "float"

    .line 144
    .line 145
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    const/16 p3, 0x17

    .line 150
    .line 151
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 152
    .line 153
    .line 154
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Z"

    .line 155
    .line 156
    invoke-interface {p1, v6, v5, v4, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 162
    .line 163
    if-ne p2, v0, :cond_6

    .line 164
    .line 165
    const-string p2, "double"

    .line 166
    .line 167
    invoke-virtual {p3, p2, v7}, Lcom/alibaba/fastjson/serializer/b$a;->m(Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    const/16 p3, 0x18

    .line 172
    .line 173
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 174
    .line 175
    .line 176
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Z"

    .line 177
    .line 178
    invoke-interface {p1, v6, v5, v4, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 183
    .line 184
    if-ne p2, v0, :cond_7

    .line 185
    .line 186
    const-string p2, "boolean"

    .line 187
    .line 188
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 193
    .line 194
    .line 195
    invoke-interface {p1, v6, v5, v4, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_7
    const-class v0, Ljava/math/BigDecimal;

    .line 200
    .line 201
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    .line 202
    .line 203
    if-ne p2, v0, :cond_8

    .line 204
    .line 205
    const-string p2, "decimal"

    .line 206
    .line 207
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 212
    .line 213
    .line 214
    invoke-interface {p1, v6, v5, v4, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_8
    const-class v0, Ljava/lang/String;

    .line 219
    .line 220
    if-ne p2, v0, :cond_9

    .line 221
    .line 222
    const-string p2, "string"

    .line 223
    .line 224
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p1, v6, v5, v4, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_a

    .line 240
    .line 241
    const-string p2, "enum"

    .line 242
    .line 243
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result p2

    .line 247
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 248
    .line 249
    .line 250
    invoke-interface {p1, v6, v5, v4, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto :goto_0

    .line 254
    :cond_a
    const-class v0, Ljava/util/List;

    .line 255
    .line 256
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 257
    .line 258
    .line 259
    move-result p2

    .line 260
    if-eqz p2, :cond_b

    .line 261
    .line 262
    const-string p2, "list"

    .line 263
    .line 264
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    move-result p2

    .line 268
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 269
    .line 270
    .line 271
    invoke-interface {p1, v6, v5, v4, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    goto :goto_0

    .line 275
    :cond_b
    const-string p2, "object"

    .line 276
    .line 277
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result p2

    .line 281
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 282
    .line 283
    .line 284
    invoke-interface {p1, v6, v5, v4, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :goto_0
    return-void
.end method

.method private c(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x19

    .line 6
    .line 7
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 15
    .line 16
    .line 17
    const-string v0, "seperator"

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/16 v2, 0x15

    .line 24
    .line 25
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 26
    .line 27
    .line 28
    const-string v1, "writeBefore"

    .line 29
    .line 30
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C"

    .line 31
    .line 32
    const/16 v3, 0xb8

    .line 33
    .line 34
    const-string v4, "com/alibaba/fastjson/serializer/FilterUtils"

    .line 35
    .line 36
    invoke-interface {p1, v3, v4, v1, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x36

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private d(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "boolean"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x36

    .line 19
    .line 20
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    const-string p3, "out"

    .line 27
    .line 28
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const/16 v1, 0x19

    .line 33
    .line 34
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 35
    .line 36
    .line 37
    const-string p3, "seperator"

    .line 38
    .line 39
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    const/16 v2, 0x15

    .line 44
    .line 45
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 60
    .line 61
    .line 62
    const-string p3, "writeFieldValue"

    .line 63
    .line 64
    const-string v0, "(CLjava/lang/String;Z)V"

    .line 65
    .line 66
    const/16 v1, 0xb6

    .line 67
    .line 68
    const-string v2, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 69
    .line 70
    invoke-interface {p2, v1, v2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private e(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "byte"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x36

    .line 19
    .line 20
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    const-string p3, "out"

    .line 27
    .line 28
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const/16 v1, 0x19

    .line 33
    .line 34
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 35
    .line 36
    .line 37
    const-string p3, "seperator"

    .line 38
    .line 39
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    const/16 v2, 0x15

    .line 44
    .line 45
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 60
    .line 61
    .line 62
    const-string p3, "writeFieldValue"

    .line 63
    .line 64
    const-string v0, "(CLjava/lang/String;I)V"

    .line 65
    .line 66
    const/16 v1, 0xb6

    .line 67
    .line 68
    const-string v2, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 69
    .line 70
    invoke-interface {p2, v1, v2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private f(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "char"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x36

    .line 19
    .line 20
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    const-string p3, "out"

    .line 27
    .line 28
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const/16 v1, 0x19

    .line 33
    .line 34
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 35
    .line 36
    .line 37
    const-string p3, "seperator"

    .line 38
    .line 39
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    const/16 v2, 0x15

    .line 44
    .line 45
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 60
    .line 61
    .line 62
    const-string p3, "writeFieldValue"

    .line 63
    .line 64
    const-string v0, "(CLjava/lang/String;C)V"

    .line 65
    .line 66
    const/16 v1, 0xb6

    .line 67
    .line 68
    const-string v2, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 69
    .line 70
    invoke-interface {p2, v1, v2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private g(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "decimal"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x3a

    .line 19
    .line 20
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    .line 37
    .line 38
    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/16 v4, 0x19

    .line 49
    .line 50
    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 51
    .line 52
    .line 53
    const/16 v1, 0xc7

    .line 54
    .line 55
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/b;->m(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 59
    .line 60
    .line 61
    const/16 p3, 0xa7

    .line 62
    .line 63
    invoke-interface {p2, p3, v3}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 67
    .line 68
    .line 69
    const-string v1, "out"

    .line 70
    .line 71
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 76
    .line 77
    .line 78
    const-string v1, "seperator"

    .line 79
    .line 80
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/16 v2, 0x15

    .line 85
    .line 86
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 101
    .line 102
    .line 103
    const-string v0, "writeFieldValue"

    .line 104
    .line 105
    const-string v1, "(CLjava/lang/String;Ljava/math/BigDecimal;)V"

    .line 106
    .line 107
    const/16 v2, 0xb6

    .line 108
    .line 109
    const-string v4, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 110
    .line 111
    invoke-interface {p2, v2, v4, v0, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p2, p3, v3}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method private h(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "double"

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p4, v0, v1}, Lcom/alibaba/fastjson/serializer/b$a;->m(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x39

    .line 20
    .line 21
    invoke-interface {p2, v3, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 25
    .line 26
    .line 27
    const-string p3, "out"

    .line 28
    .line 29
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    const/16 v2, 0x19

    .line 34
    .line 35
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 36
    .line 37
    .line 38
    const-string p3, "seperator"

    .line 39
    .line 40
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    const/16 v3, 0x15

    .line 45
    .line 46
    invoke-interface {p2, v3, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 54
    .line 55
    .line 56
    const/16 p3, 0x18

    .line 57
    .line 58
    invoke-virtual {p4, v0, v1}, Lcom/alibaba/fastjson/serializer/b$a;->m(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-interface {p2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 63
    .line 64
    .line 65
    const-string p3, "writeFieldValue"

    .line 66
    .line 67
    const-string v0, "(CLjava/lang/String;D)V"

    .line 68
    .line 69
    const/16 v1, 0xb6

    .line 70
    .line 71
    const-string v2, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 72
    .line 73
    invoke-interface {p2, v1, v2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private i(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    const-class p1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 2
    .line 3
    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/util/e;->g(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-interface {p1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    array-length v1, p1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    aget-object v3, p1, v0

    .line 21
    .line 22
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 23
    .line 24
    if-ne v3, v4, :cond_0

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    .line 42
    .line 43
    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 50
    .line 51
    .line 52
    const/16 v3, 0xc0

    .line 53
    .line 54
    const-string v4, "java/lang/Enum"

    .line 55
    .line 56
    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v3, "enum"

    .line 60
    .line 61
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    const/16 v5, 0x3a

    .line 66
    .line 67
    invoke-interface {p2, v5, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const/16 v5, 0x19

    .line 78
    .line 79
    invoke-interface {p2, v5, v4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 80
    .line 81
    .line 82
    const/16 v4, 0xc7

    .line 83
    .line 84
    invoke-interface {p2, v4, p1}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/b;->m(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 88
    .line 89
    .line 90
    const/16 p3, 0xa7

    .line 91
    .line 92
    invoke-interface {p2, p3, v1}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 96
    .line 97
    .line 98
    const-string p1, "out"

    .line 99
    .line 100
    invoke-virtual {p4, p1}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-interface {p2, v5, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 105
    .line 106
    .line 107
    const-string p1, "seperator"

    .line 108
    .line 109
    invoke-virtual {p4, p1}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    const/16 p3, 0x15

    .line 114
    .line 115
    invoke-interface {p2, p3, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-interface {p2, v5, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-interface {p2, v5, p1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 130
    .line 131
    .line 132
    const-string p1, "writeFieldValue"

    .line 133
    .line 134
    const-string p3, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 135
    .line 136
    const/16 v3, 0xb6

    .line 137
    .line 138
    if-eqz v0, :cond_3

    .line 139
    .line 140
    const-string v0, "toString"

    .line 141
    .line 142
    const-string v4, "()Ljava/lang/String;"

    .line 143
    .line 144
    const-string v5, "java/lang/Object"

    .line 145
    .line 146
    invoke-interface {p2, v3, v5, v0, v4}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v0, "(CLjava/lang/String;Ljava/lang/String;)V"

    .line 150
    .line 151
    invoke-interface {p2, v3, p3, p1, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_3
    const-string v0, "(CLjava/lang/String;Ljava/lang/Enum;)V"

    .line 156
    .line 157
    invoke-interface {p2, v3, p3, p1, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :goto_1
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 161
    .line 162
    .line 163
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method private j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->i()Ljava/lang/reflect/Field;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x19

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->i()Ljava/lang/reflect/Field;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, "out"

    .line 24
    .line 25
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 30
    .line 31
    .line 32
    const-string v0, "SkipTransientField"

    .line 33
    .line 34
    const-string v2, "Lcom/alibaba/fastjson/serializer/SerializerFeature;"

    .line 35
    .line 36
    const/16 v3, 0xb2

    .line 37
    .line 38
    const-string v4, "com/alibaba/fastjson/serializer/SerializerFeature"

    .line 39
    .line 40
    invoke-interface {p1, v3, v4, v0, v2}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "isEnabled"

    .line 44
    .line 45
    const-string v2, "(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z"

    .line 46
    .line 47
    const/16 v3, 0xb6

    .line 48
    .line 49
    const-string v4, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 50
    .line 51
    invoke-interface {p1, v3, v4, v0, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x9a

    .line 55
    .line 56
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/b;->r(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/b;->b(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 63
    .line 64
    .line 65
    const/16 v0, 0x99

    .line 66
    .line 67
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/b;->t(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 74
    .line 75
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/b;->u(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->g()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->j()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 93
    .line 94
    .line 95
    const/16 v1, 0xa5

    .line 96
    .line 97
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/b;->y(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 101
    .line 102
    .line 103
    const/16 p2, 0xa7

    .line 104
    .line 105
    invoke-interface {p1, p2, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private k(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "float"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x38

    .line 19
    .line 20
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    const-string p3, "out"

    .line 27
    .line 28
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const/16 v1, 0x19

    .line 33
    .line 34
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 35
    .line 36
    .line 37
    const-string p3, "seperator"

    .line 38
    .line 39
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    const/16 v2, 0x15

    .line 44
    .line 45
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 53
    .line 54
    .line 55
    const/16 p3, 0x17

    .line 56
    .line 57
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-interface {p2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 62
    .line 63
    .line 64
    const-string p3, "writeFieldValue"

    .line 65
    .line 66
    const-string v0, "(CLjava/lang/String;F)V"

    .line 67
    .line 68
    const/16 v1, 0xb6

    .line 69
    .line 70
    const-string v2, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 71
    .line 72
    invoke-interface {p2, v1, v2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "entity"

    .line 6
    .line 7
    const/16 v2, 0x19

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->c(Ljava/lang/reflect/Method;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/16 v1, 0xb6

    .line 35
    .line 36
    invoke-interface {p1, v1, p2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->h()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-static {p2}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->i()Ljava/lang/reflect/Field;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-static {p3}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    const/16 v1, 0xb4

    .line 72
    .line 73
    invoke-interface {p1, v1, p2, v0, p3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method private m(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    new-instance v3, Lcom/alibaba/fastjson/asm/f;

    .line 10
    .line 11
    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v4, Lcom/alibaba/fastjson/asm/f;

    .line 15
    .line 16
    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v5, Lcom/alibaba/fastjson/asm/f;

    .line 20
    .line 21
    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 22
    .line 23
    .line 24
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 25
    .line 26
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 30
    .line 31
    .line 32
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 33
    .line 34
    move-object/from16 v7, p2

    .line 35
    .line 36
    invoke-virtual {v7, v3}, Lcom/alibaba/fastjson/util/e;->g(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    if-eqz v3, :cond_6

    .line 44
    .line 45
    invoke-interface {v3}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    array-length v8, v3

    .line 50
    const/4 v9, 0x0

    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v12, 0x0

    .line 54
    const/4 v13, 0x0

    .line 55
    :goto_0
    if-ge v7, v8, :cond_5

    .line 56
    .line 57
    aget-object v14, v3, v7

    .line 58
    .line 59
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 60
    .line 61
    const/16 v16, 0x1

    .line 62
    .line 63
    if-ne v14, v15, :cond_0

    .line 64
    .line 65
    const/4 v9, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 68
    .line 69
    if-ne v14, v15, :cond_1

    .line 70
    .line 71
    const/4 v11, 0x1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 74
    .line 75
    if-ne v14, v15, :cond_2

    .line 76
    .line 77
    const/4 v10, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 80
    .line 81
    if-ne v14, v15, :cond_3

    .line 82
    .line 83
    const/4 v12, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    sget-object v15, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 86
    .line 87
    if-ne v14, v15, :cond_4

    .line 88
    .line 89
    const/4 v13, 0x1

    .line 90
    :cond_4
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    move v7, v9

    .line 94
    goto :goto_2

    .line 95
    :cond_6
    const/4 v10, 0x0

    .line 96
    const/4 v11, 0x0

    .line 97
    const/4 v12, 0x0

    .line 98
    const/4 v13, 0x0

    .line 99
    :goto_2
    const-string v3, "out"

    .line 100
    .line 101
    const/16 v8, 0x19

    .line 102
    .line 103
    const-string v9, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 104
    .line 105
    if-nez v7, :cond_7

    .line 106
    .line 107
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    invoke-interface {v0, v8, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 112
    .line 113
    .line 114
    const-string v7, "WriteMapNullValue"

    .line 115
    .line 116
    const-string v15, "Lcom/alibaba/fastjson/serializer/SerializerFeature;"

    .line 117
    .line 118
    const/16 v8, 0xb2

    .line 119
    .line 120
    const-string v14, "com/alibaba/fastjson/serializer/SerializerFeature"

    .line 121
    .line 122
    invoke-interface {v0, v8, v14, v7, v15}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v7, "isEnabled"

    .line 126
    .line 127
    const-string v8, "(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z"

    .line 128
    .line 129
    const/16 v14, 0xb6

    .line 130
    .line 131
    invoke-interface {v0, v14, v9, v7, v8}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const/16 v7, 0x99

    .line 135
    .line 136
    invoke-interface {v0, v7, v4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    const/16 v5, 0x19

    .line 147
    .line 148
    invoke-interface {v0, v5, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 149
    .line 150
    .line 151
    const-string v3, "seperator"

    .line 152
    .line 153
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    const/16 v7, 0x15

    .line 158
    .line 159
    invoke-interface {v0, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 160
    .line 161
    .line 162
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    invoke-interface {v0, v5, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 167
    .line 168
    .line 169
    const-class v3, Ljava/lang/String;

    .line 170
    .line 171
    const-string v5, "writeFieldValue"

    .line 172
    .line 173
    const-string v7, "(CLjava/lang/String;)V"

    .line 174
    .line 175
    if-eq v2, v3, :cond_10

    .line 176
    .line 177
    const-class v3, Ljava/lang/Character;

    .line 178
    .line 179
    if-ne v2, v3, :cond_8

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_8
    const-class v3, Ljava/lang/Number;

    .line 183
    .line 184
    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    const/4 v8, 0x3

    .line 189
    if-eqz v3, :cond_a

    .line 190
    .line 191
    if-eqz v11, :cond_9

    .line 192
    .line 193
    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 194
    .line 195
    .line 196
    const-string v2, "(CLjava/lang/String;I)V"

    .line 197
    .line 198
    const/16 v3, 0xb6

    .line 199
    .line 200
    invoke-interface {v0, v3, v9, v5, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_5

    .line 204
    :cond_9
    const/16 v3, 0xb6

    .line 205
    .line 206
    const-string v2, "writeFieldNullNumber"

    .line 207
    .line 208
    invoke-interface {v0, v3, v9, v2, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_a
    const/16 v3, 0xb6

    .line 213
    .line 214
    const-class v10, Ljava/lang/Boolean;

    .line 215
    .line 216
    if-ne v2, v10, :cond_c

    .line 217
    .line 218
    if-eqz v12, :cond_b

    .line 219
    .line 220
    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 221
    .line 222
    .line 223
    const-string v2, "(CLjava/lang/String;Z)V"

    .line 224
    .line 225
    invoke-interface {v0, v3, v9, v5, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_b
    const-string v2, "writeFieldNullBoolean"

    .line 230
    .line 231
    invoke-interface {v0, v3, v9, v2, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :cond_c
    const-class v5, Ljava/util/Collection;

    .line 236
    .line 237
    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 238
    .line 239
    .line 240
    move-result v5

    .line 241
    if-nez v5, :cond_e

    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-eqz v2, :cond_d

    .line 248
    .line 249
    goto :goto_3

    .line 250
    :cond_d
    const-string v2, "writeFieldNull"

    .line 251
    .line 252
    invoke-interface {v0, v3, v9, v2, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :cond_e
    :goto_3
    if-eqz v13, :cond_f

    .line 257
    .line 258
    const-string v2, "writeFieldEmptyList"

    .line 259
    .line 260
    invoke-interface {v0, v3, v9, v2, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_f
    const-string v2, "writeFieldNullList"

    .line 265
    .line 266
    invoke-interface {v0, v3, v9, v2, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_5

    .line 270
    :cond_10
    :goto_4
    const/16 v3, 0xb6

    .line 271
    .line 272
    if-eqz v10, :cond_11

    .line 273
    .line 274
    const-string v2, ""

    .line 275
    .line 276
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 277
    .line 278
    .line 279
    const-string v2, "(CLjava/lang/String;Ljava/lang/String;)V"

    .line 280
    .line 281
    invoke-interface {v0, v3, v9, v5, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_11
    const-string v2, "writeFieldNullString"

    .line 286
    .line 287
    invoke-interface {v0, v3, v9, v2, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :goto_5
    move-object/from16 v2, p0

    .line 291
    .line 292
    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 293
    .line 294
    .line 295
    const/16 v1, 0xa7

    .line 296
    .line 297
    invoke-interface {v0, v1, v6}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 298
    .line 299
    .line 300
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 301
    .line 302
    .line 303
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method private n(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "int"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x36

    .line 19
    .line 20
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    const-string p3, "out"

    .line 27
    .line 28
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const/16 v1, 0x19

    .line 33
    .line 34
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 35
    .line 36
    .line 37
    const-string p3, "seperator"

    .line 38
    .line 39
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    const/16 v2, 0x15

    .line 44
    .line 45
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 60
    .line 61
    .line 62
    const-string p3, "writeFieldValue"

    .line 63
    .line 64
    const-string v0, "(CLjava/lang/String;I)V"

    .line 65
    .line 66
    const/16 v1, 0xb6

    .line 67
    .line 68
    const-string v2, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 69
    .line 70
    invoke-interface {p2, v1, v2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private o(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    instance-of v5, v4, Ljava/lang/Class;

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    const-class v4, Ljava/lang/Object;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 21
    .line 22
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const/4 v5, 0x0

    .line 27
    aget-object v4, v4, v5

    .line 28
    .line 29
    :goto_0
    instance-of v5, v4, Ljava/lang/Class;

    .line 30
    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    move-object v5, v4

    .line 34
    check-cast v5, Ljava/lang/Class;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v5, 0x0

    .line 38
    :goto_1
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 39
    .line 40
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v7, Lcom/alibaba/fastjson/asm/f;

    .line 44
    .line 45
    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 46
    .line 47
    .line 48
    new-instance v8, Lcom/alibaba/fastjson/asm/f;

    .line 49
    .line 50
    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 51
    .line 52
    .line 53
    new-instance v9, Lcom/alibaba/fastjson/asm/f;

    .line 54
    .line 55
    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {v1, v7}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {v0, v1, v2, v3, v6}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 65
    .line 66
    .line 67
    const/16 v7, 0xc0

    .line 68
    .line 69
    const-string v10, "java/util/List"

    .line 70
    .line 71
    invoke-interface {v1, v7, v10}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v11, "list"

    .line 75
    .line 76
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    const/16 v13, 0x3a

    .line 81
    .line 82
    invoke-interface {v1, v13, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 83
    .line 84
    .line 85
    invoke-direct {v0, v1, v2, v3, v6}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    const/16 v14, 0x19

    .line 93
    .line 94
    invoke-interface {v1, v14, v12}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 95
    .line 96
    .line 97
    const/16 v12, 0xc7

    .line 98
    .line 99
    invoke-interface {v1, v12, v8}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/b;->m(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 103
    .line 104
    .line 105
    const/16 v12, 0xa7

    .line 106
    .line 107
    invoke-interface {v1, v12, v9}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v1, v8}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 111
    .line 112
    .line 113
    const-string v8, "out"

    .line 114
    .line 115
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v15

    .line 119
    invoke-interface {v1, v14, v15}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 120
    .line 121
    .line 122
    const-string v15, "seperator"

    .line 123
    .line 124
    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    const/16 v13, 0x15

    .line 129
    .line 130
    invoke-interface {v1, v13, v15}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 131
    .line 132
    .line 133
    const/16 v15, 0xb6

    .line 134
    .line 135
    const-string v7, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 136
    .line 137
    const-string v12, "write"

    .line 138
    .line 139
    const-string v13, "(C)V"

    .line 140
    .line 141
    invoke-interface {v1, v15, v7, v12, v13}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v15

    .line 148
    invoke-interface {v1, v14, v15}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 152
    .line 153
    .line 154
    move-result v15

    .line 155
    invoke-interface {v1, v14, v15}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 156
    .line 157
    .line 158
    const-string v15, "writeFieldName"

    .line 159
    .line 160
    const-string v14, "(Ljava/lang/String;)V"

    .line 161
    .line 162
    const/16 v2, 0xb6

    .line 163
    .line 164
    invoke-interface {v1, v2, v7, v15, v14}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    const/16 v15, 0x19

    .line 172
    .line 173
    invoke-interface {v1, v15, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 174
    .line 175
    .line 176
    const-string v2, "size"

    .line 177
    .line 178
    const-string v15, "()I"

    .line 179
    .line 180
    move-object/from16 v17, v6

    .line 181
    .line 182
    const/16 v6, 0xb9

    .line 183
    .line 184
    invoke-interface {v1, v6, v10, v2, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const/16 v2, 0x36

    .line 188
    .line 189
    const-string v15, "int"

    .line 190
    .line 191
    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    invoke-interface {v1, v2, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 196
    .line 197
    .line 198
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    .line 199
    .line 200
    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 201
    .line 202
    .line 203
    new-instance v6, Lcom/alibaba/fastjson/asm/f;

    .line 204
    .line 205
    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 206
    .line 207
    .line 208
    move-object/from16 v18, v9

    .line 209
    .line 210
    new-instance v9, Lcom/alibaba/fastjson/asm/f;

    .line 211
    .line 212
    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    const/16 v0, 0x15

    .line 223
    .line 224
    invoke-interface {v1, v0, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 225
    .line 226
    .line 227
    const/4 v0, 0x3

    .line 228
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 229
    .line 230
    .line 231
    const/16 v0, 0xa0

    .line 232
    .line 233
    invoke-interface {v1, v0, v6}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    const/16 v2, 0x19

    .line 241
    .line 242
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 243
    .line 244
    .line 245
    const-string v0, "[]"

    .line 246
    .line 247
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    const/16 v0, 0xb6

    .line 251
    .line 252
    invoke-interface {v1, v0, v7, v12, v14}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const/16 v0, 0xa7

    .line 256
    .line 257
    invoke-interface {v1, v0, v9}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 258
    .line 259
    .line 260
    invoke-interface {v1, v6}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 275
    .line 276
    .line 277
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 282
    .line 283
    .line 284
    const-string v0, "setContext"

    .line 285
    .line 286
    const-string v6, "com/alibaba/fastjson/serializer/JSONSerializer"

    .line 287
    .line 288
    const-string v14, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 289
    .line 290
    const/16 v2, 0xb6

    .line 291
    .line 292
    invoke-interface {v1, v2, v6, v0, v14}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    const/16 v2, 0x19

    .line 300
    .line 301
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 302
    .line 303
    .line 304
    const/16 v0, 0x5b

    .line 305
    .line 306
    const/16 v2, 0x10

    .line 307
    .line 308
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 309
    .line 310
    .line 311
    const/16 v0, 0xb6

    .line 312
    .line 313
    invoke-interface {v1, v0, v7, v12, v13}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const/4 v0, 0x1

    .line 317
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 318
    .line 319
    .line 320
    const-string v0, "com/alibaba/fastjson/serializer/ObjectSerializer"

    .line 321
    .line 322
    const/16 v2, 0xc0

    .line 323
    .line 324
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string v0, "list_ser"

    .line 328
    .line 329
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    const/16 v2, 0x3a

    .line 334
    .line 335
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 336
    .line 337
    .line 338
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 339
    .line 340
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 341
    .line 342
    .line 343
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    .line 344
    .line 345
    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 346
    .line 347
    .line 348
    move-object/from16 p1, v9

    .line 349
    .line 350
    const/4 v9, 0x3

    .line 351
    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 352
    .line 353
    .line 354
    const/16 v9, 0x36

    .line 355
    .line 356
    move-object/from16 v19, v12

    .line 357
    .line 358
    const-string v12, "i"

    .line 359
    .line 360
    move-object/from16 v20, v13

    .line 361
    .line 362
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    move-result v13

    .line 366
    invoke-interface {v1, v9, v13}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 367
    .line 368
    .line 369
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 373
    .line 374
    .line 375
    move-result v9

    .line 376
    const/16 v13, 0x15

    .line 377
    .line 378
    invoke-interface {v1, v13, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v3, v15}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    move-result v9

    .line 385
    invoke-interface {v1, v13, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 386
    .line 387
    .line 388
    const/4 v9, 0x4

    .line 389
    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 390
    .line 391
    .line 392
    const/16 v9, 0x64

    .line 393
    .line 394
    invoke-interface {v1, v9}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 395
    .line 396
    .line 397
    const/16 v9, 0xa2

    .line 398
    .line 399
    invoke-interface {v1, v9, v2}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 400
    .line 401
    .line 402
    const-class v9, Ljava/lang/String;

    .line 403
    .line 404
    const-string v13, "writeWithFieldName"

    .line 405
    .line 406
    move-object/from16 v21, v15

    .line 407
    .line 408
    const-string v15, "(I)Ljava/lang/Object;"

    .line 409
    .line 410
    move-object/from16 v22, v2

    .line 411
    .line 412
    const-string v2, "get"

    .line 413
    .line 414
    if-ne v4, v9, :cond_2

    .line 415
    .line 416
    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    move-result v9

    .line 420
    move-object/from16 v23, v0

    .line 421
    .line 422
    const/16 v0, 0x19

    .line 423
    .line 424
    invoke-interface {v1, v0, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    move-result v9

    .line 431
    invoke-interface {v1, v0, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    const/16 v9, 0x15

    .line 439
    .line 440
    invoke-interface {v1, v9, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 441
    .line 442
    .line 443
    const/16 v0, 0xb9

    .line 444
    .line 445
    invoke-interface {v1, v0, v10, v2, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    const-string v0, "java/lang/String"

    .line 449
    .line 450
    const/16 v9, 0xc0

    .line 451
    .line 452
    invoke-interface {v1, v9, v0}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 453
    .line 454
    .line 455
    const/16 v0, 0x2c

    .line 456
    .line 457
    const/16 v9, 0x10

    .line 458
    .line 459
    invoke-interface {v1, v9, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 460
    .line 461
    .line 462
    const-string v0, "writeString"

    .line 463
    .line 464
    const-string v9, "(Ljava/lang/String;C)V"

    .line 465
    .line 466
    move-object/from16 v24, v8

    .line 467
    .line 468
    const/16 v8, 0xb6

    .line 469
    .line 470
    invoke-interface {v1, v8, v7, v0, v9}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    move-object/from16 v25, v2

    .line 474
    .line 475
    move-object/from16 v9, v19

    .line 476
    .line 477
    move-object/from16 v8, v20

    .line 478
    .line 479
    move-object/from16 v0, v24

    .line 480
    .line 481
    goto/16 :goto_3

    .line 482
    .line 483
    :cond_2
    move-object/from16 v23, v0

    .line 484
    .line 485
    move-object/from16 v24, v8

    .line 486
    .line 487
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    const/16 v8, 0x19

    .line 492
    .line 493
    invoke-interface {v1, v8, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    invoke-interface {v1, v8, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    const/16 v8, 0x15

    .line 508
    .line 509
    invoke-interface {v1, v8, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 510
    .line 511
    .line 512
    const/16 v0, 0xb9

    .line 513
    .line 514
    invoke-interface {v1, v0, v10, v2, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    invoke-interface {v1, v8, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 522
    .line 523
    .line 524
    const-string v0, "valueOf"

    .line 525
    .line 526
    const-string v8, "(I)Ljava/lang/Integer;"

    .line 527
    .line 528
    const/16 v9, 0xb8

    .line 529
    .line 530
    move-object/from16 v25, v2

    .line 531
    .line 532
    const-string v2, "java/lang/Integer"

    .line 533
    .line 534
    invoke-interface {v1, v9, v2, v0, v8}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    if-eqz v5, :cond_3

    .line 538
    .line 539
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    .line 540
    .line 541
    .line 542
    move-result v0

    .line 543
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 544
    .line 545
    .line 546
    move-result v0

    .line 547
    if-eqz v0, :cond_3

    .line 548
    .line 549
    move-object v0, v4

    .line 550
    check-cast v0, Ljava/lang/Class;

    .line 551
    .line 552
    invoke-static {v0}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v0

    .line 556
    invoke-static {v0}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/util/e;->q()I

    .line 564
    .line 565
    .line 566
    move-result v0

    .line 567
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 572
    .line 573
    .line 574
    const-string v0, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 575
    .line 576
    const/16 v2, 0xb6

    .line 577
    .line 578
    invoke-interface {v1, v2, v6, v13, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    goto :goto_2

    .line 582
    :cond_3
    const/16 v2, 0xb6

    .line 583
    .line 584
    invoke-interface {v1, v2, v6, v13, v14}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    :goto_2
    move-object/from16 v0, v24

    .line 588
    .line 589
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 590
    .line 591
    .line 592
    move-result v8

    .line 593
    const/16 v9, 0x19

    .line 594
    .line 595
    invoke-interface {v1, v9, v8}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 596
    .line 597
    .line 598
    const/16 v8, 0x2c

    .line 599
    .line 600
    const/16 v9, 0x10

    .line 601
    .line 602
    invoke-interface {v1, v9, v8}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 603
    .line 604
    .line 605
    move-object/from16 v9, v19

    .line 606
    .line 607
    move-object/from16 v8, v20

    .line 608
    .line 609
    invoke-interface {v1, v2, v7, v9, v8}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    :goto_3
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    move-object/from16 v20, v8

    .line 617
    .line 618
    const/4 v8, 0x1

    .line 619
    invoke-interface {v1, v2, v8}, Lcom/alibaba/fastjson/asm/g;->h(II)V

    .line 620
    .line 621
    .line 622
    move-object/from16 v2, v23

    .line 623
    .line 624
    const/16 v8, 0xa7

    .line 625
    .line 626
    invoke-interface {v1, v8, v2}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 627
    .line 628
    .line 629
    move-object/from16 v2, v22

    .line 630
    .line 631
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 632
    .line 633
    .line 634
    const-class v2, Ljava/lang/String;

    .line 635
    .line 636
    if-ne v4, v2, :cond_4

    .line 637
    .line 638
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 639
    .line 640
    .line 641
    move-result v0

    .line 642
    const/16 v2, 0x19

    .line 643
    .line 644
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 645
    .line 646
    .line 647
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 648
    .line 649
    .line 650
    move-result v0

    .line 651
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 652
    .line 653
    .line 654
    move-object/from16 v0, v21

    .line 655
    .line 656
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 657
    .line 658
    .line 659
    move-result v0

    .line 660
    const/16 v2, 0x15

    .line 661
    .line 662
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 663
    .line 664
    .line 665
    const/4 v0, 0x4

    .line 666
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 667
    .line 668
    .line 669
    const/16 v0, 0x64

    .line 670
    .line 671
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 672
    .line 673
    .line 674
    move-object/from16 v2, v25

    .line 675
    .line 676
    const/16 v0, 0xb9

    .line 677
    .line 678
    invoke-interface {v1, v0, v10, v2, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    const-string v0, "java/lang/String"

    .line 682
    .line 683
    const/16 v2, 0xc0

    .line 684
    .line 685
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 686
    .line 687
    .line 688
    const/16 v0, 0x5d

    .line 689
    .line 690
    const/16 v2, 0x10

    .line 691
    .line 692
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 693
    .line 694
    .line 695
    const-string v0, "writeString"

    .line 696
    .line 697
    const-string v2, "(Ljava/lang/String;C)V"

    .line 698
    .line 699
    const/16 v4, 0xb6

    .line 700
    .line 701
    invoke-interface {v1, v4, v7, v0, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    const/16 v2, 0x19

    .line 705
    .line 706
    goto/16 :goto_5

    .line 707
    .line 708
    :cond_4
    move-object/from16 v2, v25

    .line 709
    .line 710
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 711
    .line 712
    .line 713
    move-result v8

    .line 714
    move-object/from16 v16, v7

    .line 715
    .line 716
    const/16 v7, 0x19

    .line 717
    .line 718
    invoke-interface {v1, v7, v8}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 722
    .line 723
    .line 724
    move-result v8

    .line 725
    invoke-interface {v1, v7, v8}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 729
    .line 730
    .line 731
    move-result v7

    .line 732
    const/16 v8, 0x15

    .line 733
    .line 734
    invoke-interface {v1, v8, v7}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 735
    .line 736
    .line 737
    const/16 v7, 0xb9

    .line 738
    .line 739
    invoke-interface {v1, v7, v10, v2, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v3, v12}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 743
    .line 744
    .line 745
    move-result v2

    .line 746
    invoke-interface {v1, v8, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 747
    .line 748
    .line 749
    const-string v2, "valueOf"

    .line 750
    .line 751
    const-string v7, "(I)Ljava/lang/Integer;"

    .line 752
    .line 753
    const/16 v8, 0xb8

    .line 754
    .line 755
    const-string v10, "java/lang/Integer"

    .line 756
    .line 757
    invoke-interface {v1, v8, v10, v2, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    .line 759
    .line 760
    if-eqz v5, :cond_5

    .line 761
    .line 762
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    .line 763
    .line 764
    .line 765
    move-result v2

    .line 766
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 767
    .line 768
    .line 769
    move-result v2

    .line 770
    if-eqz v2, :cond_5

    .line 771
    .line 772
    check-cast v4, Ljava/lang/Class;

    .line 773
    .line 774
    invoke-static {v4}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v2

    .line 778
    invoke-static {v2}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 779
    .line 780
    .line 781
    move-result-object v2

    .line 782
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 783
    .line 784
    .line 785
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/util/e;->q()I

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 790
    .line 791
    .line 792
    move-result-object v2

    .line 793
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 794
    .line 795
    .line 796
    const-string v2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 797
    .line 798
    const/16 v4, 0xb6

    .line 799
    .line 800
    invoke-interface {v1, v4, v6, v13, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .line 802
    .line 803
    goto :goto_4

    .line 804
    :cond_5
    const/16 v4, 0xb6

    .line 805
    .line 806
    invoke-interface {v1, v4, v6, v13, v14}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    :goto_4
    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 810
    .line 811
    .line 812
    move-result v0

    .line 813
    const/16 v2, 0x19

    .line 814
    .line 815
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 816
    .line 817
    .line 818
    const/16 v0, 0x5d

    .line 819
    .line 820
    const/16 v5, 0x10

    .line 821
    .line 822
    invoke-interface {v1, v5, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 823
    .line 824
    .line 825
    move-object/from16 v5, v16

    .line 826
    .line 827
    move-object/from16 v0, v20

    .line 828
    .line 829
    invoke-interface {v1, v4, v5, v9, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    :goto_5
    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 833
    .line 834
    .line 835
    move-result v0

    .line 836
    invoke-interface {v1, v2, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 837
    .line 838
    .line 839
    const-string v0, "popContext"

    .line 840
    .line 841
    const-string v2, "()V"

    .line 842
    .line 843
    invoke-interface {v1, v4, v6, v0, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    move-object/from16 v0, p1

    .line 847
    .line 848
    invoke-interface {v1, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 849
    .line 850
    .line 851
    move-object/from16 v0, p0

    .line 852
    .line 853
    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 854
    .line 855
    .line 856
    move-object/from16 v2, v18

    .line 857
    .line 858
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 859
    .line 860
    .line 861
    move-object/from16 v2, v17

    .line 862
    .line 863
    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 864
    .line 865
    .line 866
    return-void
.end method

.method private p(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "long"

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-virtual {p4, v0, v1}, Lcom/alibaba/fastjson/serializer/b$a;->m(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x37

    .line 20
    .line 21
    invoke-interface {p2, v3, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 25
    .line 26
    .line 27
    const-string p3, "out"

    .line 28
    .line 29
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    const/16 v2, 0x19

    .line 34
    .line 35
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 36
    .line 37
    .line 38
    const-string p3, "seperator"

    .line 39
    .line 40
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    const/16 v3, 0x15

    .line 45
    .line 46
    invoke-interface {p2, v3, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 50
    .line 51
    .line 52
    move-result p3

    .line 53
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 54
    .line 55
    .line 56
    const/16 p3, 0x16

    .line 57
    .line 58
    invoke-virtual {p4, v0, v1}, Lcom/alibaba/fastjson/serializer/b$a;->m(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-interface {p2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 63
    .line 64
    .line 65
    const-string p3, "writeFieldValue"

    .line 66
    .line 67
    const-string v0, "(CLjava/lang/String;J)V"

    .line 68
    .line 69
    const/16 v1, 0xb6

    .line 70
    .line 71
    const-string v2, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 72
    .line 73
    invoke-interface {p2, v1, v2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0x19

    .line 6
    .line 7
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 22
    .line 23
    .line 24
    const-string p2, "applyName"

    .line 25
    .line 26
    const-string p3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z"

    .line 27
    .line 28
    const/16 v0, 0xb8

    .line 29
    .line 30
    const-string v1, "com/alibaba/fastjson/serializer/FilterUtils"

    .line 31
    .line 32
    invoke-interface {p1, v0, v1, p2, p3}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/16 p2, 0x99

    .line 36
    .line 37
    invoke-interface {p1, p2, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private r(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "out"

    .line 7
    .line 8
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x19

    .line 13
    .line 14
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 15
    .line 16
    .line 17
    const-string v1, "NotWriteDefaultValue"

    .line 18
    .line 19
    const-string v2, "Lcom/alibaba/fastjson/serializer/SerializerFeature;"

    .line 20
    .line 21
    const/16 v3, 0xb2

    .line 22
    .line 23
    const-string v4, "com/alibaba/fastjson/serializer/SerializerFeature"

    .line 24
    .line 25
    invoke-interface {p1, v3, v4, v1, v2}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "isEnabled"

    .line 29
    .line 30
    const-string v2, "(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z"

    .line 31
    .line 32
    const/16 v3, 0xb6

    .line 33
    .line 34
    const-string v4, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 35
    .line 36
    invoke-interface {p1, v3, v4, v1, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x99

    .line 40
    .line 41
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 49
    .line 50
    const/16 v3, 0x15

    .line 51
    .line 52
    if-ne p2, v2, :cond_0

    .line 53
    .line 54
    const-string p2, "boolean"

    .line 55
    .line 56
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_0
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    if-ne p2, v2, :cond_1

    .line 71
    .line 72
    const-string p2, "byte"

    .line 73
    .line 74
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :cond_1
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 87
    .line 88
    if-ne p2, v2, :cond_2

    .line 89
    .line 90
    const-string p2, "short"

    .line 91
    .line 92
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 104
    .line 105
    if-ne p2, v2, :cond_3

    .line 106
    .line 107
    const-string p2, "int"

    .line 108
    .line 109
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-interface {p1, v3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 121
    .line 122
    if-ne p2, v2, :cond_4

    .line 123
    .line 124
    const-string p2, "long"

    .line 125
    .line 126
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    const/16 p3, 0x16

    .line 131
    .line 132
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 133
    .line 134
    .line 135
    const/16 p2, 0x9

    .line 136
    .line 137
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 138
    .line 139
    .line 140
    const/16 p2, 0x94

    .line 141
    .line 142
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 150
    .line 151
    if-ne p2, v2, :cond_5

    .line 152
    .line 153
    const-string p2, "float"

    .line 154
    .line 155
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    const/16 p3, 0x17

    .line 160
    .line 161
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 162
    .line 163
    .line 164
    const/16 p2, 0xb

    .line 165
    .line 166
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 167
    .line 168
    .line 169
    const/16 p2, 0x95

    .line 170
    .line 171
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_5
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 179
    .line 180
    if-ne p2, v2, :cond_6

    .line 181
    .line 182
    const-string p2, "double"

    .line 183
    .line 184
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    const/16 p3, 0x18

    .line 189
    .line 190
    invoke-interface {p1, p3, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 191
    .line 192
    .line 193
    const/16 p2, 0xe

    .line 194
    .line 195
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 196
    .line 197
    .line 198
    const/16 p2, 0x97

    .line 199
    .line 200
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 201
    .line 202
    .line 203
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 204
    .line 205
    .line 206
    :cond_6
    :goto_0
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method

.method private s(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "object"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x3a

    .line 19
    .line 20
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->y(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private t(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x19

    .line 10
    .line 11
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    const/16 v2, 0x15

    .line 31
    .line 32
    const-string v3, "processKey"

    .line 33
    .line 34
    const-string v4, "com/alibaba/fastjson/serializer/FilterUtils"

    .line 35
    .line 36
    const/16 v5, 0xb8

    .line 37
    .line 38
    if-ne p2, v0, :cond_0

    .line 39
    .line 40
    const-string p2, "byte"

    .line 41
    .line 42
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 47
    .line 48
    .line 49
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Ljava/lang/String;"

    .line 50
    .line 51
    invoke-interface {p1, v5, v4, v3, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    if-ne p2, v0, :cond_1

    .line 59
    .line 60
    const-string p2, "short"

    .line 61
    .line 62
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 67
    .line 68
    .line 69
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Ljava/lang/String;"

    .line 70
    .line 71
    invoke-interface {p1, v5, v4, v3, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 77
    .line 78
    if-ne p2, v0, :cond_2

    .line 79
    .line 80
    const-string p2, "int"

    .line 81
    .line 82
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 87
    .line 88
    .line 89
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;"

    .line 90
    .line 91
    invoke-interface {p1, v5, v4, v3, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 97
    .line 98
    if-ne p2, v0, :cond_3

    .line 99
    .line 100
    const-string p2, "char"

    .line 101
    .line 102
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 107
    .line 108
    .line 109
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Ljava/lang/String;"

    .line 110
    .line 111
    invoke-interface {p1, v5, v4, v3, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_0

    .line 115
    .line 116
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 117
    .line 118
    const/4 v6, 0x2

    .line 119
    if-ne p2, v0, :cond_4

    .line 120
    .line 121
    const-string p2, "long"

    .line 122
    .line 123
    invoke-virtual {p3, p2, v6}, Lcom/alibaba/fastjson/serializer/b$a;->m(Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    const/16 v0, 0x16

    .line 128
    .line 129
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 130
    .line 131
    .line 132
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/String;"

    .line 133
    .line 134
    invoke-interface {p1, v5, v4, v3, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_0

    .line 138
    .line 139
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 140
    .line 141
    if-ne p2, v0, :cond_5

    .line 142
    .line 143
    const-string p2, "float"

    .line 144
    .line 145
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    const/16 v0, 0x17

    .line 150
    .line 151
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 152
    .line 153
    .line 154
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Ljava/lang/String;"

    .line 155
    .line 156
    invoke-interface {p1, v5, v4, v3, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 162
    .line 163
    if-ne p2, v0, :cond_6

    .line 164
    .line 165
    const-string p2, "double"

    .line 166
    .line 167
    invoke-virtual {p3, p2, v6}, Lcom/alibaba/fastjson/serializer/b$a;->m(Ljava/lang/String;I)I

    .line 168
    .line 169
    .line 170
    move-result p2

    .line 171
    const/16 v0, 0x18

    .line 172
    .line 173
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 174
    .line 175
    .line 176
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Ljava/lang/String;"

    .line 177
    .line 178
    invoke-interface {p1, v5, v4, v3, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 183
    .line 184
    if-ne p2, v0, :cond_7

    .line 185
    .line 186
    const-string p2, "boolean"

    .line 187
    .line 188
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 193
    .line 194
    .line 195
    const-string p2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;"

    .line 196
    .line 197
    invoke-interface {p1, v5, v4, v3, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :cond_7
    const-class v0, Ljava/math/BigDecimal;

    .line 202
    .line 203
    const-string v2, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    .line 204
    .line 205
    if-ne p2, v0, :cond_8

    .line 206
    .line 207
    const-string p2, "decimal"

    .line 208
    .line 209
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 214
    .line 215
    .line 216
    invoke-interface {p1, v5, v4, v3, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_8
    const-class v0, Ljava/lang/String;

    .line 221
    .line 222
    if-ne p2, v0, :cond_9

    .line 223
    .line 224
    const-string p2, "string"

    .line 225
    .line 226
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, v5, v4, v3, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_a

    .line 242
    .line 243
    const-string p2, "enum"

    .line 244
    .line 245
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 246
    .line 247
    .line 248
    move-result p2

    .line 249
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 250
    .line 251
    .line 252
    invoke-interface {p1, v5, v4, v3, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_a
    const-class v0, Ljava/util/List;

    .line 257
    .line 258
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 259
    .line 260
    .line 261
    move-result p2

    .line 262
    if-eqz p2, :cond_b

    .line 263
    .line 264
    const-string p2, "list"

    .line 265
    .line 266
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result p2

    .line 270
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 271
    .line 272
    .line 273
    invoke-interface {p1, v5, v4, v3, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_0

    .line 277
    :cond_b
    const-string p2, "object"

    .line 278
    .line 279
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 284
    .line 285
    .line 286
    invoke-interface {p1, v5, v4, v3, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    :goto_0
    const/16 p2, 0x3a

    .line 290
    .line 291
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 292
    .line 293
    .line 294
    move-result p3

    .line 295
    invoke-interface {p1, p2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 296
    .line 297
    .line 298
    return-void
.end method

.method private u(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->j()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x19

    .line 10
    .line 11
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    const/16 v2, 0x15

    .line 31
    .line 32
    const-string v3, "valueOf"

    .line 33
    .line 34
    const/16 v4, 0xb8

    .line 35
    .line 36
    if-ne p2, v0, :cond_0

    .line 37
    .line 38
    const-string p2, "byte"

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 45
    .line 46
    .line 47
    const-string p2, "java/lang/Byte"

    .line 48
    .line 49
    const-string v0, "(B)Ljava/lang/Byte;"

    .line 50
    .line 51
    invoke-interface {p1, v4, p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    if-ne p2, v0, :cond_1

    .line 59
    .line 60
    const-string p2, "short"

    .line 61
    .line 62
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 67
    .line 68
    .line 69
    const-string p2, "java/lang/Short"

    .line 70
    .line 71
    const-string v0, "(S)Ljava/lang/Short;"

    .line 72
    .line 73
    invoke-interface {p1, v4, p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 79
    .line 80
    if-ne p2, v0, :cond_2

    .line 81
    .line 82
    const-string p2, "int"

    .line 83
    .line 84
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 89
    .line 90
    .line 91
    const-string p2, "java/lang/Integer"

    .line 92
    .line 93
    const-string v0, "(I)Ljava/lang/Integer;"

    .line 94
    .line 95
    invoke-interface {p1, v4, p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_0

    .line 99
    .line 100
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 101
    .line 102
    if-ne p2, v0, :cond_3

    .line 103
    .line 104
    const-string p2, "char"

    .line 105
    .line 106
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 111
    .line 112
    .line 113
    const-string p2, "java/lang/Character"

    .line 114
    .line 115
    const-string v0, "(C)Ljava/lang/Character;"

    .line 116
    .line 117
    invoke-interface {p1, v4, p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto/16 :goto_0

    .line 121
    .line 122
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 123
    .line 124
    const/4 v5, 0x2

    .line 125
    if-ne p2, v0, :cond_4

    .line 126
    .line 127
    const-string p2, "long"

    .line 128
    .line 129
    invoke-virtual {p3, p2, v5}, Lcom/alibaba/fastjson/serializer/b$a;->m(Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    const/16 v0, 0x16

    .line 134
    .line 135
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 136
    .line 137
    .line 138
    const-string p2, "java/lang/Long"

    .line 139
    .line 140
    const-string v0, "(J)Ljava/lang/Long;"

    .line 141
    .line 142
    invoke-interface {p1, v4, p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_0

    .line 146
    .line 147
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 148
    .line 149
    if-ne p2, v0, :cond_5

    .line 150
    .line 151
    const-string p2, "float"

    .line 152
    .line 153
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    move-result p2

    .line 157
    const/16 v0, 0x17

    .line 158
    .line 159
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 160
    .line 161
    .line 162
    const-string p2, "java/lang/Float"

    .line 163
    .line 164
    const-string v0, "(F)Ljava/lang/Float;"

    .line 165
    .line 166
    invoke-interface {p1, v4, p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 172
    .line 173
    if-ne p2, v0, :cond_6

    .line 174
    .line 175
    const-string p2, "double"

    .line 176
    .line 177
    invoke-virtual {p3, p2, v5}, Lcom/alibaba/fastjson/serializer/b$a;->m(Ljava/lang/String;I)I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    const/16 v0, 0x18

    .line 182
    .line 183
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 184
    .line 185
    .line 186
    const-string p2, "java/lang/Double"

    .line 187
    .line 188
    const-string v0, "(D)Ljava/lang/Double;"

    .line 189
    .line 190
    invoke-interface {p1, v4, p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 195
    .line 196
    if-ne p2, v0, :cond_7

    .line 197
    .line 198
    const-string p2, "boolean"

    .line 199
    .line 200
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-result p2

    .line 204
    invoke-interface {p1, v2, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 205
    .line 206
    .line 207
    const-string p2, "java/lang/Boolean"

    .line 208
    .line 209
    const-string v0, "(Z)Ljava/lang/Boolean;"

    .line 210
    .line 211
    invoke-interface {p1, v4, p2, v3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    goto :goto_0

    .line 215
    :cond_7
    const-class v0, Ljava/math/BigDecimal;

    .line 216
    .line 217
    if-ne p2, v0, :cond_8

    .line 218
    .line 219
    const-string p2, "decimal"

    .line 220
    .line 221
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 222
    .line 223
    .line 224
    move-result p2

    .line 225
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 226
    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_8
    const-class v0, Ljava/lang/String;

    .line 230
    .line 231
    if-ne p2, v0, :cond_9

    .line 232
    .line 233
    const-string p2, "string"

    .line 234
    .line 235
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 240
    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_a

    .line 248
    .line 249
    const-string p2, "enum"

    .line 250
    .line 251
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    move-result p2

    .line 255
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 256
    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_a
    const-class v0, Ljava/util/List;

    .line 260
    .line 261
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 262
    .line 263
    .line 264
    move-result p2

    .line 265
    if-eqz p2, :cond_b

    .line 266
    .line 267
    const-string p2, "list"

    .line 268
    .line 269
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    move-result p2

    .line 273
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 274
    .line 275
    .line 276
    goto :goto_0

    .line 277
    :cond_b
    const-string p2, "object"

    .line 278
    .line 279
    invoke-virtual {p3, p2}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 284
    .line 285
    .line 286
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->g()I

    .line 287
    .line 288
    .line 289
    move-result p2

    .line 290
    const/16 v0, 0x3a

    .line 291
    .line 292
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->g()I

    .line 296
    .line 297
    .line 298
    move-result p2

    .line 299
    invoke-interface {p1, v1, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 300
    .line 301
    .line 302
    const-string p2, "processValue"

    .line 303
    .line 304
    const-string v1, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;"

    .line 305
    .line 306
    const-string v2, "com/alibaba/fastjson/serializer/FilterUtils"

    .line 307
    .line 308
    invoke-interface {p1, v4, v2, p2, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->j()I

    .line 312
    .line 313
    .line 314
    move-result p2

    .line 315
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 316
    .line 317
    .line 318
    return-void
.end method

.method private v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x2c

    .line 4
    .line 5
    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 6
    .line 7
    .line 8
    const-string v0, "seperator"

    .line 9
    .line 10
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/16 v0, 0x36

    .line 15
    .line 16
    invoke-interface {p1, v0, p2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private w(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "short"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x36

    .line 19
    .line 20
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    const-string p3, "out"

    .line 27
    .line 28
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    const/16 v1, 0x19

    .line 33
    .line 34
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 35
    .line 36
    .line 37
    const-string p3, "seperator"

    .line 38
    .line 39
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    const/16 v2, 0x15

    .line 44
    .line 45
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    invoke-interface {p2, v2, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 60
    .line 61
    .line 62
    const-string p3, "writeFieldValue"

    .line 63
    .line 64
    const-string v0, "(CLjava/lang/String;I)V"

    .line 65
    .line 66
    const/16 v1, 0xb6

    .line 67
    .line 68
    const-string v2, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 69
    .line 70
    invoke-interface {p2, v1, v2, p3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private x(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/asm/g;",
            "Lcom/alibaba/fastjson/util/e;",
            "Lcom/alibaba/fastjson/serializer/b$a;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/alibaba/fastjson/asm/f;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->q(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/b;->l(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/util/e;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "string"

    .line 13
    .line 14
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0x3a

    .line 19
    .line 20
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/alibaba/fastjson/serializer/b;->j(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/alibaba/fastjson/asm/f;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/16 v4, 0x19

    .line 41
    .line 42
    invoke-interface {p2, v4, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 43
    .line 44
    .line 45
    const/16 v3, 0xc7

    .line 46
    .line 47
    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/b;->m(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 51
    .line 52
    .line 53
    const/16 p3, 0xa7

    .line 54
    .line 55
    invoke-interface {p2, p3, v2}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 59
    .line 60
    .line 61
    const-string p3, "out"

    .line 62
    .line 63
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    invoke-interface {p2, v4, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 68
    .line 69
    .line 70
    const-string p3, "seperator"

    .line 71
    .line 72
    invoke-virtual {p4, p3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    const/16 v1, 0x15

    .line 77
    .line 78
    invoke-interface {p2, v1, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    invoke-interface {p2, v4, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    invoke-interface {p2, v4, p3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 93
    .line 94
    .line 95
    const-string p3, "writeFieldValue"

    .line 96
    .line 97
    const-string v0, "(CLjava/lang/String;Ljava/lang/String;)V"

    .line 98
    .line 99
    const/16 v1, 0xb6

    .line 100
    .line 101
    const-string v3, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 102
    .line 103
    invoke-interface {p2, v1, v3, p3, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method private y(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;Lcom/alibaba/fastjson/asm/f;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->m()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/alibaba/fastjson/asm/f;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->j()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/16 v3, 0x19

    .line 15
    .line 16
    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 17
    .line 18
    .line 19
    const/16 v2, 0xc7

    .line 20
    .line 21
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/b;->m(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/util/e;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 25
    .line 26
    .line 27
    const/16 v2, 0xa7

    .line 28
    .line 29
    invoke-interface {p1, v2, p4}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 33
    .line 34
    .line 35
    const-string p4, "out"

    .line 36
    .line 37
    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 42
    .line 43
    .line 44
    const-string v1, "seperator"

    .line 45
    .line 46
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/16 v2, 0x15

    .line 51
    .line 52
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 53
    .line 54
    .line 55
    const-string v1, "write"

    .line 56
    .line 57
    const-string v2, "(C)V"

    .line 58
    .line 59
    const/16 v4, 0xb6

    .line 60
    .line 61
    const-string v5, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 62
    .line 63
    invoke-interface {p1, v4, v5, v1, v2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p3, p4}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 78
    .line 79
    .line 80
    const-string p4, "writeFieldName"

    .line 81
    .line 82
    const-string v1, "(Ljava/lang/String;)V"

    .line 83
    .line 84
    invoke-interface {p1, v4, v5, p4, v1}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 88
    .line 89
    .line 90
    move-result p4

    .line 91
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->j()I

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 99
    .line 100
    .line 101
    const-string p4, "com/alibaba/fastjson/serializer/JSONSerializer"

    .line 102
    .line 103
    if-eqz v0, :cond_0

    .line 104
    .line 105
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    const-string p2, "writeWithFormat"

    .line 109
    .line 110
    const-string v0, "(Ljava/lang/Object;Ljava/lang/String;)V"

    .line 111
    .line 112
    invoke-interface {p1, v4, p4, p2, v0}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->c()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-interface {p1, v3, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    instance-of v0, v0, Ljava/lang/Class;

    .line 128
    .line 129
    const-string v1, "writeWithFieldName"

    .line 130
    .line 131
    if-eqz v0, :cond_1

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->k()Ljava/lang/reflect/Type;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Ljava/lang/Class;

    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_1

    .line 144
    .line 145
    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    .line 146
    .line 147
    invoke-interface {p1, v4, p4, v1, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    const/4 v0, 0x0

    .line 152
    invoke-interface {p1, v3, v0}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/b$a;->d()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    const-string v3, "_asm_fieldType"

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    const-string v3, "Ljava/lang/reflect/Type;"

    .line 181
    .line 182
    const/16 v5, 0xb4

    .line 183
    .line 184
    invoke-interface {p1, v5, v0, v2, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/e;->q()I

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-interface {p1, p2}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    const-string p2, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 199
    .line 200
    invoke-interface {p1, v4, p4, v1, p2}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/b;->v(Lcom/alibaba/fastjson/asm/g;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 204
    .line 205
    .line 206
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Serializer_"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/b;->a1:Ljava/util/concurrent/atomic/AtomicLong;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public D(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/b;->Z0:Lcom/alibaba/fastjson/util/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/a;->c(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public z(Ljava/lang/Class;Ljava/util/Map;)Lcom/alibaba/fastjson/serializer/j1;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson/serializer/j1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isPrimitive()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-nez v3, :cond_7

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson/util/k;->z(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    check-cast v6, Lcom/alibaba/fastjson/util/e;

    .line 33
    .line 34
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/e;->o()Ljava/lang/reflect/Member;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-static {v6}, Lcom/alibaba/fastjson/util/b;->a(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    return-object v1

    .line 50
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/b;->C(Ljava/lang/Class;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/k;->G(Ljava/lang/Class;)I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    new-instance v13, Lcom/alibaba/fastjson/asm/b;

    .line 59
    .line 60
    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/b;-><init>()V

    .line 61
    .line 62
    .line 63
    const/16 v6, 0x31

    .line 64
    .line 65
    const/16 v7, 0x21

    .line 66
    .line 67
    const-string v9, "com/alibaba/fastjson/serializer/ASMJavaBeanSerializer"

    .line 68
    .line 69
    const-string v5, "com/alibaba/fastjson/serializer/ObjectSerializer"

    .line 70
    .line 71
    filled-new-array {v5}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    move-object v5, v13

    .line 76
    move-object v8, v11

    .line 77
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/asm/b;->o(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const-string v14, "_asm_fieldType"

    .line 89
    .line 90
    const-string v15, "Ljava/lang/reflect/Type;"

    .line 91
    .line 92
    const/4 v10, 0x1

    .line 93
    if-eqz v6, :cond_2

    .line 94
    .line 95
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Lcom/alibaba/fastjson/util/e;

    .line 100
    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v8, "_asm_fieldPrefix"

    .line 114
    .line 115
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    invoke-virtual {v13, v10, v7, v15}, Lcom/alibaba/fastjson/asm/b;->p(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/c;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-interface {v7}, Lcom/alibaba/fastjson/asm/c;->a()V

    .line 127
    .line 128
    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-virtual {v13, v10, v6, v15}, Lcom/alibaba/fastjson/asm/b;->p(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/c;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-interface {v6}, Lcom/alibaba/fastjson/asm/c;->a()V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_2
    const/4 v6, 0x1

    .line 157
    const-string v7, "<init>"

    .line 158
    .line 159
    const-string v8, "()V"

    .line 160
    .line 161
    const/4 v9, 0x0

    .line 162
    const/16 v16, 0x0

    .line 163
    .line 164
    move-object v5, v13

    .line 165
    move-object/from16 v10, v16

    .line 166
    .line 167
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    const/16 v10, 0x19

    .line 172
    .line 173
    invoke-interface {v5, v10, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 174
    .line 175
    .line 176
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-static {v6}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    const-string v6, "<init>"

    .line 188
    .line 189
    const-string v7, "(Ljava/lang/Class;)V"

    .line 190
    .line 191
    const/16 v8, 0xb7

    .line 192
    .line 193
    const-string v9, "com/alibaba/fastjson/serializer/ASMJavaBeanSerializer"

    .line 194
    .line 195
    invoke-interface {v5, v8, v9, v6, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v7

    .line 206
    if-eqz v7, :cond_4

    .line 207
    .line 208
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v7

    .line 212
    check-cast v7, Lcom/alibaba/fastjson/util/e;

    .line 213
    .line 214
    invoke-interface {v5, v10, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/e;->h()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    invoke-static {v8}, Lcom/alibaba/fastjson/util/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    invoke-static {v8}, Lcom/alibaba/fastjson/asm/j;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/j;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-interface {v5, v8}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    const-string v9, "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"

    .line 237
    .line 238
    const-string v10, "com/alibaba/fastjson/util/ASMUtils"

    .line 239
    .line 240
    const/16 v3, 0xb8

    .line 241
    .line 242
    if-eqz v8, :cond_3

    .line 243
    .line 244
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/e;->p()Ljava/lang/reflect/Method;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    invoke-interface {v5, v8}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    const-string v8, "getMethodType"

    .line 256
    .line 257
    invoke-interface {v5, v3, v10, v8, v9}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    goto :goto_2

    .line 261
    :cond_3
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/e;->i()Ljava/lang/reflect/Field;

    .line 262
    .line 263
    .line 264
    move-result-object v8

    .line 265
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v8

    .line 269
    invoke-interface {v5, v8}, Lcom/alibaba/fastjson/asm/g;->c(Ljava/lang/Object;)V

    .line 270
    .line 271
    .line 272
    const-string v8, "getFieldType"

    .line 273
    .line 274
    invoke-interface {v5, v3, v10, v8, v9}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/e;->getName()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    const/16 v7, 0xb5

    .line 297
    .line 298
    invoke-interface {v5, v7, v11, v3, v15}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    const/4 v3, 0x0

    .line 302
    const/16 v10, 0x19

    .line 303
    .line 304
    goto :goto_1

    .line 305
    :cond_4
    const/16 v3, 0xb1

    .line 306
    .line 307
    invoke-interface {v5, v3}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 308
    .line 309
    .line 310
    const/4 v14, 0x4

    .line 311
    invoke-interface {v5, v14, v14}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 312
    .line 313
    .line 314
    invoke-interface {v5}, Lcom/alibaba/fastjson/asm/g;->a()V

    .line 315
    .line 316
    .line 317
    new-instance v15, Lcom/alibaba/fastjson/serializer/b$a;

    .line 318
    .line 319
    invoke-direct {v15, v11, v12}, Lcom/alibaba/fastjson/serializer/b$a;-><init>(Ljava/lang/String;I)V

    .line 320
    .line 321
    .line 322
    const/4 v6, 0x1

    .line 323
    const-string v7, "write"

    .line 324
    .line 325
    const-string v8, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 326
    .line 327
    const/4 v9, 0x0

    .line 328
    const-string v17, "java/io/IOException"

    .line 329
    .line 330
    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v10

    .line 334
    move-object v5, v13

    .line 335
    const/16 v3, 0x19

    .line 336
    .line 337
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    invoke-virtual {v15}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    invoke-interface {v5, v3, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 346
    .line 347
    .line 348
    const/16 v10, 0xb6

    .line 349
    .line 350
    const-string v9, "com/alibaba/fastjson/serializer/JSONSerializer"

    .line 351
    .line 352
    const-string v8, "getWriter"

    .line 353
    .line 354
    const-string v7, "()Lcom/alibaba/fastjson/serializer/SerializeWriter;"

    .line 355
    .line 356
    invoke-interface {v5, v10, v9, v8, v7}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    const-string v6, "out"

    .line 360
    .line 361
    invoke-virtual {v15, v6}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    move-result v14

    .line 365
    move-object/from16 v18, v9

    .line 366
    .line 367
    const/16 v9, 0x3a

    .line 368
    .line 369
    invoke-interface {v5, v9, v14}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 370
    .line 371
    .line 372
    const-class v14, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 373
    .line 374
    invoke-virtual {v1, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 375
    .line 376
    .line 377
    move-result-object v14

    .line 378
    check-cast v14, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 379
    .line 380
    if-eqz v14, :cond_6

    .line 381
    .line 382
    invoke-interface {v14}, Lcom/alibaba/fastjson/annotation/JSONType;->alphabetic()Z

    .line 383
    .line 384
    .line 385
    move-result v14

    .line 386
    if-eqz v14, :cond_5

    .line 387
    .line 388
    goto :goto_3

    .line 389
    :cond_5
    move-object/from16 v21, v6

    .line 390
    .line 391
    const/16 v3, 0xb6

    .line 392
    .line 393
    const/16 v6, 0x19

    .line 394
    .line 395
    goto :goto_4

    .line 396
    :cond_6
    :goto_3
    new-instance v14, Lcom/alibaba/fastjson/asm/f;

    .line 397
    .line 398
    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/f;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v15, v6}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    move-result v9

    .line 405
    invoke-interface {v5, v3, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 406
    .line 407
    .line 408
    const-string v9, "SortField"

    .line 409
    .line 410
    const-string v3, "Lcom/alibaba/fastjson/serializer/SerializerFeature;"

    .line 411
    .line 412
    const/16 v10, 0xb2

    .line 413
    .line 414
    move-object/from16 v21, v6

    .line 415
    .line 416
    const-string v6, "com/alibaba/fastjson/serializer/SerializerFeature"

    .line 417
    .line 418
    invoke-interface {v5, v10, v6, v9, v3}, Lcom/alibaba/fastjson/asm/g;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    const-string v3, "isEnabled"

    .line 422
    .line 423
    const-string v6, "(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z"

    .line 424
    .line 425
    const-string v9, "com/alibaba/fastjson/serializer/SerializeWriter"

    .line 426
    .line 427
    const/16 v10, 0xb6

    .line 428
    .line 429
    invoke-interface {v5, v10, v9, v3, v6}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    const/16 v3, 0x99

    .line 433
    .line 434
    invoke-interface {v5, v3, v14}, Lcom/alibaba/fastjson/asm/g;->f(ILcom/alibaba/fastjson/asm/f;)V

    .line 435
    .line 436
    .line 437
    const/4 v3, 0x0

    .line 438
    const/16 v6, 0x19

    .line 439
    .line 440
    invoke-interface {v5, v6, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 441
    .line 442
    .line 443
    const/4 v3, 0x1

    .line 444
    invoke-interface {v5, v6, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 445
    .line 446
    .line 447
    const/4 v9, 0x2

    .line 448
    invoke-interface {v5, v6, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 449
    .line 450
    .line 451
    const/4 v9, 0x3

    .line 452
    invoke-interface {v5, v6, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 453
    .line 454
    .line 455
    const/4 v9, 0x4

    .line 456
    invoke-interface {v5, v6, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 457
    .line 458
    .line 459
    const/16 v9, 0x15

    .line 460
    .line 461
    const/4 v10, 0x5

    .line 462
    invoke-interface {v5, v9, v10}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 463
    .line 464
    .line 465
    const-string v9, "write1"

    .line 466
    .line 467
    const-string v10, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 468
    .line 469
    const/16 v3, 0xb6

    .line 470
    .line 471
    invoke-interface {v5, v3, v11, v9, v10}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    const/16 v9, 0xb1

    .line 475
    .line 476
    invoke-interface {v5, v9}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 477
    .line 478
    .line 479
    invoke-interface {v5, v14}, Lcom/alibaba/fastjson/asm/g;->e(Lcom/alibaba/fastjson/asm/f;)V

    .line 480
    .line 481
    .line 482
    :goto_4
    invoke-virtual {v15}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 483
    .line 484
    .line 485
    move-result v9

    .line 486
    invoke-interface {v5, v6, v9}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 487
    .line 488
    .line 489
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v6

    .line 493
    const/16 v14, 0xc0

    .line 494
    .line 495
    invoke-interface {v5, v14, v6}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 496
    .line 497
    .line 498
    const-string v10, "entity"

    .line 499
    .line 500
    invoke-virtual {v15, v10}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    move-result v6

    .line 504
    const/16 v9, 0x3a

    .line 505
    .line 506
    invoke-interface {v5, v9, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 507
    .line 508
    .line 509
    invoke-direct {v0, v1, v5, v4, v15}, Lcom/alibaba/fastjson/serializer/b;->B(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Ljava/util/List;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 510
    .line 511
    .line 512
    const/16 v4, 0xb1

    .line 513
    .line 514
    invoke-interface {v5, v4}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v15}, Lcom/alibaba/fastjson/serializer/b$a;->e()I

    .line 518
    .line 519
    .line 520
    move-result v4

    .line 521
    const/4 v6, 0x1

    .line 522
    add-int/2addr v4, v6

    .line 523
    const/4 v15, 0x6

    .line 524
    invoke-interface {v5, v15, v4}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 525
    .line 526
    .line 527
    invoke-interface {v5}, Lcom/alibaba/fastjson/asm/g;->a()V

    .line 528
    .line 529
    .line 530
    invoke-static {v1, v2, v6}, Lcom/alibaba/fastjson/util/k;->z(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    new-instance v4, Lcom/alibaba/fastjson/serializer/b$a;

    .line 535
    .line 536
    invoke-direct {v4, v11, v12}, Lcom/alibaba/fastjson/serializer/b$a;-><init>(Ljava/lang/String;I)V

    .line 537
    .line 538
    .line 539
    const/4 v6, 0x1

    .line 540
    const-string v16, "write1"

    .line 541
    .line 542
    const-string v19, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    .line 543
    .line 544
    const/16 v20, 0x0

    .line 545
    .line 546
    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v22

    .line 550
    move-object v5, v13

    .line 551
    move-object/from16 v3, v21

    .line 552
    .line 553
    move-object v15, v7

    .line 554
    move-object/from16 v7, v16

    .line 555
    .line 556
    move-object v14, v8

    .line 557
    move-object/from16 v8, v19

    .line 558
    .line 559
    move-object/from16 v23, v18

    .line 560
    .line 561
    move-object/from16 v9, v20

    .line 562
    .line 563
    move-object/from16 v19, v11

    .line 564
    .line 565
    move-object/from16 v18, v13

    .line 566
    .line 567
    const/16 v11, 0xb6

    .line 568
    .line 569
    move-object v13, v10

    .line 570
    move-object/from16 v10, v22

    .line 571
    .line 572
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    .line 573
    .line 574
    .line 575
    move-result-object v5

    .line 576
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 577
    .line 578
    .line 579
    move-result v6

    .line 580
    const/16 v7, 0x19

    .line 581
    .line 582
    invoke-interface {v5, v7, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 583
    .line 584
    .line 585
    move-object/from16 v10, v23

    .line 586
    .line 587
    invoke-interface {v5, v11, v10, v14, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 591
    .line 592
    .line 593
    move-result v6

    .line 594
    const/16 v9, 0x3a

    .line 595
    .line 596
    invoke-interface {v5, v9, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 600
    .line 601
    .line 602
    move-result v6

    .line 603
    invoke-interface {v5, v7, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 604
    .line 605
    .line 606
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v6

    .line 610
    const/16 v7, 0xc0

    .line 611
    .line 612
    invoke-interface {v5, v7, v6}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v4, v13}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    move-result v6

    .line 619
    invoke-interface {v5, v9, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 620
    .line 621
    .line 622
    invoke-direct {v0, v1, v5, v2, v4}, Lcom/alibaba/fastjson/serializer/b;->B(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Ljava/util/List;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 623
    .line 624
    .line 625
    const/16 v6, 0xb1

    .line 626
    .line 627
    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/b$a;->e()I

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    const/4 v6, 0x1

    .line 635
    add-int/2addr v4, v6

    .line 636
    const/4 v6, 0x6

    .line 637
    invoke-interface {v5, v6, v4}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 638
    .line 639
    .line 640
    invoke-interface {v5}, Lcom/alibaba/fastjson/asm/g;->a()V

    .line 641
    .line 642
    .line 643
    new-instance v4, Lcom/alibaba/fastjson/serializer/b$a;

    .line 644
    .line 645
    move-object/from16 v8, v19

    .line 646
    .line 647
    invoke-direct {v4, v8, v12}, Lcom/alibaba/fastjson/serializer/b$a;-><init>(Ljava/lang/String;I)V

    .line 648
    .line 649
    .line 650
    const/4 v6, 0x1

    .line 651
    const-string v7, "writeAsArray"

    .line 652
    .line 653
    const-string v12, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    .line 654
    .line 655
    const/16 v19, 0x0

    .line 656
    .line 657
    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v17

    .line 661
    move-object/from16 v5, v18

    .line 662
    .line 663
    move-object/from16 v24, v8

    .line 664
    .line 665
    move-object v8, v12

    .line 666
    const/16 v12, 0x3a

    .line 667
    .line 668
    move-object/from16 v9, v19

    .line 669
    .line 670
    move-object v12, v10

    .line 671
    move-object/from16 v10, v17

    .line 672
    .line 673
    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/asm/b;->q(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/g;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/b$a;->k()I

    .line 678
    .line 679
    .line 680
    move-result v6

    .line 681
    const/16 v7, 0x19

    .line 682
    .line 683
    invoke-interface {v5, v7, v6}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 684
    .line 685
    .line 686
    invoke-interface {v5, v11, v12, v14, v15}, Lcom/alibaba/fastjson/asm/g;->l(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 690
    .line 691
    .line 692
    move-result v3

    .line 693
    const/16 v6, 0x3a

    .line 694
    .line 695
    invoke-interface {v5, v6, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/b$a;->f()I

    .line 699
    .line 700
    .line 701
    move-result v3

    .line 702
    invoke-interface {v5, v7, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 703
    .line 704
    .line 705
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/b;->getType(Ljava/lang/Class;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v3

    .line 709
    const/16 v7, 0xc0

    .line 710
    .line 711
    invoke-interface {v5, v7, v3}, Lcom/alibaba/fastjson/asm/g;->d(ILjava/lang/String;)V

    .line 712
    .line 713
    .line 714
    invoke-virtual {v4, v13}, Lcom/alibaba/fastjson/serializer/b$a;->l(Ljava/lang/String;)I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    invoke-interface {v5, v6, v3}, Lcom/alibaba/fastjson/asm/g;->g(II)V

    .line 719
    .line 720
    .line 721
    invoke-direct {v0, v1, v5, v2, v4}, Lcom/alibaba/fastjson/serializer/b;->A(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/g;Ljava/util/List;Lcom/alibaba/fastjson/serializer/b$a;)V

    .line 722
    .line 723
    .line 724
    const/16 v1, 0xb1

    .line 725
    .line 726
    invoke-interface {v5, v1}, Lcom/alibaba/fastjson/asm/g;->j(I)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/b$a;->e()I

    .line 730
    .line 731
    .line 732
    move-result v1

    .line 733
    const/4 v2, 0x1

    .line 734
    add-int/2addr v1, v2

    .line 735
    const/4 v2, 0x6

    .line 736
    invoke-interface {v5, v2, v1}, Lcom/alibaba/fastjson/asm/g;->k(II)V

    .line 737
    .line 738
    .line 739
    invoke-interface {v5}, Lcom/alibaba/fastjson/asm/g;->a()V

    .line 740
    .line 741
    .line 742
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/fastjson/asm/b;->n()[B

    .line 743
    .line 744
    .line 745
    move-result-object v1

    .line 746
    iget-object v2, v0, Lcom/alibaba/fastjson/serializer/b;->Z0:Lcom/alibaba/fastjson/util/a;

    .line 747
    .line 748
    array-length v3, v1

    .line 749
    move-object/from16 v4, v24

    .line 750
    .line 751
    const/4 v5, 0x0

    .line 752
    invoke-virtual {v2, v4, v1, v5, v3}, Lcom/alibaba/fastjson/util/a;->a(Ljava/lang/String;[BII)Ljava/lang/Class;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 757
    .line 758
    .line 759
    move-result-object v1

    .line 760
    check-cast v1, Lcom/alibaba/fastjson/serializer/j1;

    .line 761
    .line 762
    return-object v1

    .line 763
    :cond_7
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    .line 764
    .line 765
    new-instance v3, Ljava/lang/StringBuilder;

    .line 766
    .line 767
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 768
    .line 769
    .line 770
    const-string v4, "unsupportd class "

    .line 771
    .line 772
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    .line 774
    .line 775
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    throw v2
.end method
