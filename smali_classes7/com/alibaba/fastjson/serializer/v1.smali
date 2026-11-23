.class public final Lcom/alibaba/fastjson/serializer/v1;
.super Ljava/io/Writer;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[C>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected b:[C

.field protected c:I

.field private d:I

.field private final e:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/v1;->f:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/v1;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 4
    sget p1, Lcom/alibaba/fastjson/a;->DEFAULT_GENERATE_FEATURE:I

    iput p1, p0, Lcom/alibaba/fastjson/serializer/v1;->d:I

    .line 5
    sget-object p1, Lcom/alibaba/fastjson/serializer/v1;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    if-nez p1, :cond_1

    const/16 p1, 0x400

    new-array p1, p1, [C

    .line 9
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    if-lez p2, :cond_0

    .line 24
    new-array p1, p2, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative initial size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 13
    sget-object p1, Lcom/alibaba/fastjson/serializer/v1;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    if-nez p1, :cond_1

    const/16 p1, 0x400

    new-array p1, p1, [C

    .line 17
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 18
    :cond_1
    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v2, p2, v0

    .line 19
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_2
    iput v1, p0, Lcom/alibaba/fastjson/serializer/v1;->d:I

    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/v1;-><init>(Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method private g0(CLjava/lang/String;Ljava/lang/String;Z)V
    .locals 16

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
    move/from16 v3, p4

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    iget v5, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v7, v4, 0x8

    .line 19
    .line 20
    add-int/2addr v5, v7

    .line 21
    const/4 v7, 0x4

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    add-int v8, v4, v7

    .line 28
    .line 29
    add-int/lit8 v8, v8, 0x6

    .line 30
    .line 31
    add-int/2addr v5, v8

    .line 32
    :goto_0
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 33
    .line 34
    array-length v8, v8

    .line 35
    const/16 v9, 0x3a

    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    if-le v5, v8, :cond_2

    .line 39
    .line 40
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 41
    .line 42
    if-eqz v8, :cond_1

    .line 43
    .line 44
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v1, v9, v3}, Lcom/alibaba/fastjson/serializer/v1;->t0(Ljava/lang/String;CZ)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v0, v2, v10, v3}, Lcom/alibaba/fastjson/serializer/v1;->t0(Ljava/lang/String;CZ)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 58
    .line 59
    iget v11, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 60
    .line 61
    aput-char p1, v8, v11

    .line 62
    .line 63
    add-int/lit8 v12, v11, 0x2

    .line 64
    .line 65
    add-int v13, v12, v4

    .line 66
    .line 67
    const/4 v14, 0x1

    .line 68
    add-int/2addr v11, v14

    .line 69
    const/16 v15, 0x22

    .line 70
    .line 71
    aput-char v15, v8, v11

    .line 72
    .line 73
    invoke-virtual {v1, v10, v4, v8, v12}, Ljava/lang/String;->getChars(II[CI)V

    .line 74
    .line 75
    .line 76
    iput v5, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 77
    .line 78
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 79
    .line 80
    aput-char v15, v1, v13

    .line 81
    .line 82
    add-int/2addr v13, v14

    .line 83
    add-int/lit8 v4, v13, 0x1

    .line 84
    .line 85
    aput-char v9, v1, v13

    .line 86
    .line 87
    const/16 v8, 0x75

    .line 88
    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    add-int/lit8 v2, v4, 0x1

    .line 92
    .line 93
    const/16 v3, 0x6e

    .line 94
    .line 95
    aput-char v3, v1, v4

    .line 96
    .line 97
    add-int/lit8 v3, v2, 0x1

    .line 98
    .line 99
    aput-char v8, v1, v2

    .line 100
    .line 101
    add-int/lit8 v2, v3, 0x1

    .line 102
    .line 103
    const/16 v4, 0x6c

    .line 104
    .line 105
    aput-char v4, v1, v3

    .line 106
    .line 107
    aput-char v4, v1, v2

    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    add-int/lit8 v9, v4, 0x1

    .line 111
    .line 112
    aput-char v15, v1, v4

    .line 113
    .line 114
    add-int v4, v9, v7

    .line 115
    .line 116
    invoke-virtual {v2, v10, v7, v1, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 117
    .line 118
    .line 119
    if-eqz v3, :cond_14

    .line 120
    .line 121
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCheckSpecialChar:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_14

    .line 128
    .line 129
    const/4 v1, -0x1

    .line 130
    move v7, v9

    .line 131
    const/4 v3, 0x0

    .line 132
    const/4 v11, -0x1

    .line 133
    const/4 v12, -0x1

    .line 134
    :goto_1
    const/16 v13, 0x2028

    .line 135
    .line 136
    if-ge v7, v4, :cond_a

    .line 137
    .line 138
    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 139
    .line 140
    aget-char v15, v15, v7

    .line 141
    .line 142
    if-ne v15, v13, :cond_5

    .line 143
    .line 144
    add-int/lit8 v10, v10, 0x1

    .line 145
    .line 146
    add-int/lit8 v5, v5, 0x4

    .line 147
    .line 148
    if-ne v11, v1, :cond_4

    .line 149
    .line 150
    :goto_2
    move v11, v7

    .line 151
    move v12, v11

    .line 152
    goto :goto_4

    .line 153
    :cond_4
    :goto_3
    move v12, v7

    .line 154
    :goto_4
    move v3, v15

    .line 155
    goto :goto_5

    .line 156
    :cond_5
    const/16 v13, 0x5d

    .line 157
    .line 158
    if-lt v15, v13, :cond_7

    .line 159
    .line 160
    const/16 v13, 0x7f

    .line 161
    .line 162
    if-lt v15, v13, :cond_9

    .line 163
    .line 164
    const/16 v13, 0xa0

    .line 165
    .line 166
    if-gt v15, v13, :cond_9

    .line 167
    .line 168
    if-ne v11, v1, :cond_6

    .line 169
    .line 170
    move v11, v7

    .line 171
    :cond_6
    add-int/lit8 v10, v10, 0x1

    .line 172
    .line 173
    add-int/lit8 v5, v5, 0x4

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :cond_7
    iget v13, v0, Lcom/alibaba/fastjson/serializer/v1;->d:I

    .line 177
    .line 178
    invoke-static {v15, v13}, Lcom/alibaba/fastjson/serializer/v1;->h(CI)Z

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    if-eqz v13, :cond_9

    .line 183
    .line 184
    add-int/lit8 v10, v10, 0x1

    .line 185
    .line 186
    sget-object v3, Lcom/alibaba/fastjson/util/f;->d:[B

    .line 187
    .line 188
    array-length v12, v3

    .line 189
    if-ge v15, v12, :cond_8

    .line 190
    .line 191
    aget-byte v3, v3, v15

    .line 192
    .line 193
    if-ne v3, v6, :cond_8

    .line 194
    .line 195
    add-int/lit8 v5, v5, 0x4

    .line 196
    .line 197
    :cond_8
    if-ne v11, v1, :cond_4

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 201
    .line 202
    const/16 v15, 0x22

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_a
    if-lez v10, :cond_14

    .line 206
    .line 207
    add-int/2addr v5, v10

    .line 208
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 209
    .line 210
    array-length v1, v1

    .line 211
    if-le v5, v1, :cond_b

    .line 212
    .line 213
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 214
    .line 215
    .line 216
    :cond_b
    iput v5, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 217
    .line 218
    const/16 v1, 0x5c

    .line 219
    .line 220
    if-ne v10, v14, :cond_e

    .line 221
    .line 222
    if-ne v3, v13, :cond_c

    .line 223
    .line 224
    add-int/lit8 v2, v12, 0x1

    .line 225
    .line 226
    add-int/lit8 v3, v12, 0x6

    .line 227
    .line 228
    sub-int/2addr v4, v12

    .line 229
    sub-int/2addr v4, v14

    .line 230
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 231
    .line 232
    invoke-static {v5, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    .line 234
    .line 235
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 236
    .line 237
    aput-char v1, v3, v12

    .line 238
    .line 239
    aput-char v8, v3, v2

    .line 240
    .line 241
    add-int/2addr v2, v14

    .line 242
    const/16 v1, 0x32

    .line 243
    .line 244
    aput-char v1, v3, v2

    .line 245
    .line 246
    add-int/2addr v2, v14

    .line 247
    const/16 v4, 0x30

    .line 248
    .line 249
    aput-char v4, v3, v2

    .line 250
    .line 251
    add-int/2addr v2, v14

    .line 252
    aput-char v1, v3, v2

    .line 253
    .line 254
    add-int/2addr v2, v14

    .line 255
    const/16 v1, 0x38

    .line 256
    .line 257
    aput-char v1, v3, v2

    .line 258
    .line 259
    goto/16 :goto_9

    .line 260
    .line 261
    :cond_c
    sget-object v2, Lcom/alibaba/fastjson/util/f;->d:[B

    .line 262
    .line 263
    array-length v5, v2

    .line 264
    if-ge v3, v5, :cond_d

    .line 265
    .line 266
    aget-byte v2, v2, v3

    .line 267
    .line 268
    if-ne v2, v6, :cond_d

    .line 269
    .line 270
    add-int/lit8 v2, v12, 0x1

    .line 271
    .line 272
    add-int/lit8 v5, v12, 0x6

    .line 273
    .line 274
    sub-int/2addr v4, v12

    .line 275
    sub-int/2addr v4, v14

    .line 276
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 277
    .line 278
    invoke-static {v6, v2, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    .line 280
    .line 281
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 282
    .line 283
    aput-char v1, v4, v12

    .line 284
    .line 285
    add-int/lit8 v1, v2, 0x1

    .line 286
    .line 287
    aput-char v8, v4, v2

    .line 288
    .line 289
    add-int/lit8 v2, v1, 0x1

    .line 290
    .line 291
    sget-object v5, Lcom/alibaba/fastjson/util/f;->a:[C

    .line 292
    .line 293
    ushr-int/lit8 v6, v3, 0xc

    .line 294
    .line 295
    and-int/lit8 v6, v6, 0xf

    .line 296
    .line 297
    aget-char v6, v5, v6

    .line 298
    .line 299
    aput-char v6, v4, v1

    .line 300
    .line 301
    add-int/lit8 v1, v2, 0x1

    .line 302
    .line 303
    ushr-int/lit8 v6, v3, 0x8

    .line 304
    .line 305
    and-int/lit8 v6, v6, 0xf

    .line 306
    .line 307
    aget-char v6, v5, v6

    .line 308
    .line 309
    aput-char v6, v4, v2

    .line 310
    .line 311
    add-int/lit8 v2, v1, 0x1

    .line 312
    .line 313
    ushr-int/lit8 v6, v3, 0x4

    .line 314
    .line 315
    and-int/lit8 v6, v6, 0xf

    .line 316
    .line 317
    aget-char v6, v5, v6

    .line 318
    .line 319
    aput-char v6, v4, v1

    .line 320
    .line 321
    and-int/lit8 v1, v3, 0xf

    .line 322
    .line 323
    aget-char v1, v5, v1

    .line 324
    .line 325
    aput-char v1, v4, v2

    .line 326
    .line 327
    goto/16 :goto_9

    .line 328
    .line 329
    :cond_d
    add-int/lit8 v2, v12, 0x1

    .line 330
    .line 331
    add-int/lit8 v5, v12, 0x2

    .line 332
    .line 333
    sub-int/2addr v4, v12

    .line 334
    sub-int/2addr v4, v14

    .line 335
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 336
    .line 337
    invoke-static {v6, v2, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    .line 339
    .line 340
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 341
    .line 342
    aput-char v1, v4, v12

    .line 343
    .line 344
    sget-object v1, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 345
    .line 346
    aget-char v1, v1, v3

    .line 347
    .line 348
    aput-char v1, v4, v2

    .line 349
    .line 350
    goto/16 :goto_9

    .line 351
    .line 352
    :cond_e
    if-le v10, v14, :cond_14

    .line 353
    .line 354
    sub-int v3, v11, v9

    .line 355
    .line 356
    :goto_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 357
    .line 358
    .line 359
    move-result v4

    .line 360
    if-ge v3, v4, :cond_14

    .line 361
    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    sget-object v5, Lcom/alibaba/fastjson/util/f;->d:[B

    .line 367
    .line 368
    array-length v7, v5

    .line 369
    if-ge v4, v7, :cond_f

    .line 370
    .line 371
    aget-byte v7, v5, v4

    .line 372
    .line 373
    if-nez v7, :cond_10

    .line 374
    .line 375
    :cond_f
    const/16 v7, 0x2f

    .line 376
    .line 377
    if-ne v4, v7, :cond_12

    .line 378
    .line 379
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 380
    .line 381
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 382
    .line 383
    .line 384
    move-result v7

    .line 385
    if-eqz v7, :cond_12

    .line 386
    .line 387
    :cond_10
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 388
    .line 389
    add-int/lit8 v9, v11, 0x1

    .line 390
    .line 391
    aput-char v1, v7, v11

    .line 392
    .line 393
    aget-byte v5, v5, v4

    .line 394
    .line 395
    if-ne v5, v6, :cond_11

    .line 396
    .line 397
    add-int/lit8 v5, v9, 0x1

    .line 398
    .line 399
    aput-char v8, v7, v9

    .line 400
    .line 401
    add-int/lit8 v9, v5, 0x1

    .line 402
    .line 403
    sget-object v10, Lcom/alibaba/fastjson/util/f;->a:[C

    .line 404
    .line 405
    ushr-int/lit8 v11, v4, 0xc

    .line 406
    .line 407
    and-int/lit8 v11, v11, 0xf

    .line 408
    .line 409
    aget-char v11, v10, v11

    .line 410
    .line 411
    aput-char v11, v7, v5

    .line 412
    .line 413
    add-int/lit8 v5, v9, 0x1

    .line 414
    .line 415
    ushr-int/lit8 v11, v4, 0x8

    .line 416
    .line 417
    and-int/lit8 v11, v11, 0xf

    .line 418
    .line 419
    aget-char v11, v10, v11

    .line 420
    .line 421
    aput-char v11, v7, v9

    .line 422
    .line 423
    add-int/lit8 v9, v5, 0x1

    .line 424
    .line 425
    ushr-int/lit8 v11, v4, 0x4

    .line 426
    .line 427
    and-int/lit8 v11, v11, 0xf

    .line 428
    .line 429
    aget-char v11, v10, v11

    .line 430
    .line 431
    aput-char v11, v7, v5

    .line 432
    .line 433
    add-int/lit8 v5, v9, 0x1

    .line 434
    .line 435
    and-int/lit8 v4, v4, 0xf

    .line 436
    .line 437
    aget-char v4, v10, v4

    .line 438
    .line 439
    aput-char v4, v7, v9

    .line 440
    .line 441
    goto :goto_7

    .line 442
    :cond_11
    add-int/lit8 v5, v9, 0x1

    .line 443
    .line 444
    sget-object v10, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 445
    .line 446
    aget-char v4, v10, v4

    .line 447
    .line 448
    aput-char v4, v7, v9

    .line 449
    .line 450
    :goto_7
    move v11, v5

    .line 451
    goto :goto_8

    .line 452
    :cond_12
    if-ne v4, v13, :cond_13

    .line 453
    .line 454
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 455
    .line 456
    add-int/lit8 v7, v11, 0x1

    .line 457
    .line 458
    aput-char v1, v5, v11

    .line 459
    .line 460
    add-int/lit8 v9, v7, 0x1

    .line 461
    .line 462
    aput-char v8, v5, v7

    .line 463
    .line 464
    add-int/lit8 v7, v9, 0x1

    .line 465
    .line 466
    sget-object v10, Lcom/alibaba/fastjson/util/f;->a:[C

    .line 467
    .line 468
    ushr-int/lit8 v11, v4, 0xc

    .line 469
    .line 470
    and-int/lit8 v11, v11, 0xf

    .line 471
    .line 472
    aget-char v11, v10, v11

    .line 473
    .line 474
    aput-char v11, v5, v9

    .line 475
    .line 476
    add-int/lit8 v9, v7, 0x1

    .line 477
    .line 478
    ushr-int/lit8 v11, v4, 0x8

    .line 479
    .line 480
    and-int/lit8 v11, v11, 0xf

    .line 481
    .line 482
    aget-char v11, v10, v11

    .line 483
    .line 484
    aput-char v11, v5, v7

    .line 485
    .line 486
    add-int/lit8 v7, v9, 0x1

    .line 487
    .line 488
    ushr-int/lit8 v11, v4, 0x4

    .line 489
    .line 490
    and-int/lit8 v11, v11, 0xf

    .line 491
    .line 492
    aget-char v11, v10, v11

    .line 493
    .line 494
    aput-char v11, v5, v9

    .line 495
    .line 496
    add-int/lit8 v9, v7, 0x1

    .line 497
    .line 498
    and-int/lit8 v4, v4, 0xf

    .line 499
    .line 500
    aget-char v4, v10, v4

    .line 501
    .line 502
    aput-char v4, v5, v7

    .line 503
    .line 504
    move v11, v9

    .line 505
    goto :goto_8

    .line 506
    :cond_13
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 507
    .line 508
    add-int/lit8 v7, v11, 0x1

    .line 509
    .line 510
    aput-char v4, v5, v11

    .line 511
    .line 512
    move v11, v7

    .line 513
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 514
    .line 515
    goto/16 :goto_6

    .line 516
    .line 517
    :cond_14
    :goto_9
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 518
    .line 519
    iget v2, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 520
    .line 521
    sub-int/2addr v2, v14

    .line 522
    const/16 v3, 0x22

    .line 523
    .line 524
    aput-char v3, v1, v2

    .line 525
    .line 526
    return-void
.end method

.method static final h(CI)Z
    .locals 3

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/16 v0, 0x2f

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    const/16 p1, 0x23

    .line 22
    .line 23
    const/16 v0, 0x5c

    .line 24
    .line 25
    if-le p0, p1, :cond_2

    .line 26
    .line 27
    if-eq p0, v0, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    const/16 p1, 0x1f

    .line 31
    .line 32
    if-le p0, p1, :cond_4

    .line 33
    .line 34
    if-eq p0, v0, :cond_4

    .line 35
    .line 36
    const/16 p1, 0x22

    .line 37
    .line 38
    if-ne p0, p1, :cond_3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    return v1

    .line 42
    :cond_4
    :goto_0
    return v2
.end method

.method private l0(Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lcom/alibaba/fastjson/util/f;->d:[B

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 12
    .line 13
    add-int/2addr v4, v3

    .line 14
    const/4 v5, 0x1

    .line 15
    add-int/2addr v4, v5

    .line 16
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 17
    .line 18
    array-length v6, v6

    .line 19
    const/16 v7, 0x5c

    .line 20
    .line 21
    const/16 v8, 0x3a

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/16 v10, 0x22

    .line 25
    .line 26
    if-le v4, v6, :cond_8

    .line 27
    .line 28
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 29
    .line 30
    if-eqz v6, :cond_7

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const/4 v4, 0x0

    .line 45
    :goto_0
    if-ge v4, v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    array-length v11, v2

    .line 52
    if-ge v6, v11, :cond_1

    .line 53
    .line 54
    aget-byte v6, v2, v6

    .line 55
    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v5, 0x0

    .line 63
    :goto_1
    if-eqz v5, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_2
    if-ge v9, v3, :cond_5

    .line 69
    .line 70
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    array-length v6, v2

    .line 75
    if-ge v4, v6, :cond_4

    .line 76
    .line 77
    aget-byte v6, v2, v4

    .line 78
    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 82
    .line 83
    .line 84
    sget-object v6, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 85
    .line 86
    aget-char v4, v6, v4

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 93
    .line 94
    .line 95
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    if-eqz v5, :cond_6

    .line 99
    .line 100
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 101
    .line 102
    .line 103
    :cond_6
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_7
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 108
    .line 109
    .line 110
    :cond_8
    if-nez v3, :cond_a

    .line 111
    .line 112
    iget v1, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 113
    .line 114
    add-int/lit8 v2, v1, 0x3

    .line 115
    .line 116
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 117
    .line 118
    array-length v3, v3

    .line 119
    if-le v2, v3, :cond_9

    .line 120
    .line 121
    add-int/lit8 v1, v1, 0x3

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 124
    .line 125
    .line 126
    :cond_9
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 127
    .line 128
    iget v2, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 129
    .line 130
    add-int/lit8 v3, v2, 0x1

    .line 131
    .line 132
    aput-char v10, v1, v2

    .line 133
    .line 134
    add-int/lit8 v2, v3, 0x1

    .line 135
    .line 136
    aput-char v10, v1, v3

    .line 137
    .line 138
    add-int/lit8 v3, v2, 0x1

    .line 139
    .line 140
    iput v3, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 141
    .line 142
    aput-char v8, v1, v2

    .line 143
    .line 144
    return-void

    .line 145
    :cond_a
    iget v6, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 146
    .line 147
    add-int v11, v6, v3

    .line 148
    .line 149
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 150
    .line 151
    invoke-virtual {v1, v9, v3, v12, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 152
    .line 153
    .line 154
    iput v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 155
    .line 156
    move v1, v6

    .line 157
    const/4 v3, 0x0

    .line 158
    :goto_4
    if-ge v1, v11, :cond_f

    .line 159
    .line 160
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 161
    .line 162
    aget-char v13, v12, v1

    .line 163
    .line 164
    array-length v14, v2

    .line 165
    if-ge v13, v14, :cond_e

    .line 166
    .line 167
    aget-byte v14, v2, v13

    .line 168
    .line 169
    if-eqz v14, :cond_e

    .line 170
    .line 171
    if-nez v3, :cond_c

    .line 172
    .line 173
    add-int/lit8 v4, v4, 0x3

    .line 174
    .line 175
    array-length v3, v12

    .line 176
    if-le v4, v3, :cond_b

    .line 177
    .line 178
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 179
    .line 180
    .line 181
    :cond_b
    iput v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 182
    .line 183
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 184
    .line 185
    add-int/lit8 v12, v1, 0x1

    .line 186
    .line 187
    add-int/lit8 v14, v1, 0x3

    .line 188
    .line 189
    sub-int v15, v11, v1

    .line 190
    .line 191
    sub-int/2addr v15, v5

    .line 192
    invoke-static {v3, v12, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    .line 194
    .line 195
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 196
    .line 197
    invoke-static {v3, v9, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 201
    .line 202
    aput-char v10, v1, v6

    .line 203
    .line 204
    aput-char v7, v1, v12

    .line 205
    .line 206
    add-int/lit8 v3, v12, 0x1

    .line 207
    .line 208
    sget-object v12, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 209
    .line 210
    aget-char v12, v12, v13

    .line 211
    .line 212
    aput-char v12, v1, v3

    .line 213
    .line 214
    add-int/lit8 v11, v11, 0x2

    .line 215
    .line 216
    iget v12, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 217
    .line 218
    add-int/lit8 v12, v12, -0x2

    .line 219
    .line 220
    aput-char v10, v1, v12

    .line 221
    .line 222
    move v1, v3

    .line 223
    const/4 v3, 0x1

    .line 224
    goto :goto_5

    .line 225
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 226
    .line 227
    array-length v12, v12

    .line 228
    if-le v4, v12, :cond_d

    .line 229
    .line 230
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 231
    .line 232
    .line 233
    :cond_d
    iput v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 234
    .line 235
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 236
    .line 237
    add-int/lit8 v14, v1, 0x1

    .line 238
    .line 239
    add-int/lit8 v15, v1, 0x2

    .line 240
    .line 241
    sub-int v9, v11, v1

    .line 242
    .line 243
    invoke-static {v12, v14, v12, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    .line 245
    .line 246
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 247
    .line 248
    aput-char v7, v9, v1

    .line 249
    .line 250
    sget-object v1, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 251
    .line 252
    aget-char v1, v1, v13

    .line 253
    .line 254
    aput-char v1, v9, v14

    .line 255
    .line 256
    add-int/lit8 v11, v11, 0x1

    .line 257
    .line 258
    move v1, v14

    .line 259
    :cond_e
    :goto_5
    add-int/2addr v1, v5

    .line 260
    const/4 v9, 0x0

    .line 261
    goto :goto_4

    .line 262
    :cond_f
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 263
    .line 264
    iget v2, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 265
    .line 266
    sub-int/2addr v2, v5

    .line 267
    aput-char v8, v1, v2

    .line 268
    .line 269
    return-void
.end method

.method private m0(Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lcom/alibaba/fastjson/util/f;->e:[B

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    iget v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 12
    .line 13
    add-int/2addr v4, v3

    .line 14
    const/4 v5, 0x1

    .line 15
    add-int/2addr v4, v5

    .line 16
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 17
    .line 18
    array-length v6, v6

    .line 19
    const/16 v7, 0x5c

    .line 20
    .line 21
    const/16 v8, 0x3a

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/16 v10, 0x27

    .line 25
    .line 26
    if-le v4, v6, :cond_8

    .line 27
    .line 28
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 29
    .line 30
    if-eqz v6, :cond_7

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    const/4 v4, 0x0

    .line 45
    :goto_0
    if-ge v4, v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    array-length v11, v2

    .line 52
    if-ge v6, v11, :cond_1

    .line 53
    .line 54
    aget-byte v6, v2, v6

    .line 55
    .line 56
    if-eqz v6, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    const/4 v5, 0x0

    .line 63
    :goto_1
    if-eqz v5, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_2
    if-ge v9, v3, :cond_5

    .line 69
    .line 70
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    array-length v6, v2

    .line 75
    if-ge v4, v6, :cond_4

    .line 76
    .line 77
    aget-byte v6, v2, v4

    .line 78
    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 82
    .line 83
    .line 84
    sget-object v6, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 85
    .line 86
    aget-char v4, v6, v4

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 93
    .line 94
    .line 95
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_5
    if-eqz v5, :cond_6

    .line 99
    .line 100
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 101
    .line 102
    .line 103
    :cond_6
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_7
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 108
    .line 109
    .line 110
    :cond_8
    if-nez v3, :cond_a

    .line 111
    .line 112
    iget v1, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 113
    .line 114
    add-int/lit8 v2, v1, 0x3

    .line 115
    .line 116
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 117
    .line 118
    array-length v3, v3

    .line 119
    if-le v2, v3, :cond_9

    .line 120
    .line 121
    add-int/lit8 v1, v1, 0x3

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 124
    .line 125
    .line 126
    :cond_9
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 127
    .line 128
    iget v2, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 129
    .line 130
    add-int/lit8 v3, v2, 0x1

    .line 131
    .line 132
    aput-char v10, v1, v2

    .line 133
    .line 134
    add-int/lit8 v2, v3, 0x1

    .line 135
    .line 136
    aput-char v10, v1, v3

    .line 137
    .line 138
    add-int/lit8 v3, v2, 0x1

    .line 139
    .line 140
    iput v3, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 141
    .line 142
    aput-char v8, v1, v2

    .line 143
    .line 144
    return-void

    .line 145
    :cond_a
    iget v6, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 146
    .line 147
    add-int v11, v6, v3

    .line 148
    .line 149
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 150
    .line 151
    invoke-virtual {v1, v9, v3, v12, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 152
    .line 153
    .line 154
    iput v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 155
    .line 156
    move v1, v6

    .line 157
    const/4 v3, 0x0

    .line 158
    :goto_4
    if-ge v1, v11, :cond_f

    .line 159
    .line 160
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 161
    .line 162
    aget-char v13, v12, v1

    .line 163
    .line 164
    array-length v14, v2

    .line 165
    if-ge v13, v14, :cond_e

    .line 166
    .line 167
    aget-byte v14, v2, v13

    .line 168
    .line 169
    if-eqz v14, :cond_e

    .line 170
    .line 171
    if-nez v3, :cond_c

    .line 172
    .line 173
    add-int/lit8 v4, v4, 0x3

    .line 174
    .line 175
    array-length v3, v12

    .line 176
    if-le v4, v3, :cond_b

    .line 177
    .line 178
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 179
    .line 180
    .line 181
    :cond_b
    iput v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 182
    .line 183
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 184
    .line 185
    add-int/lit8 v12, v1, 0x1

    .line 186
    .line 187
    add-int/lit8 v14, v1, 0x3

    .line 188
    .line 189
    sub-int v15, v11, v1

    .line 190
    .line 191
    sub-int/2addr v15, v5

    .line 192
    invoke-static {v3, v12, v3, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    .line 194
    .line 195
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 196
    .line 197
    invoke-static {v3, v9, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 201
    .line 202
    aput-char v10, v1, v6

    .line 203
    .line 204
    aput-char v7, v1, v12

    .line 205
    .line 206
    add-int/lit8 v3, v12, 0x1

    .line 207
    .line 208
    sget-object v12, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 209
    .line 210
    aget-char v12, v12, v13

    .line 211
    .line 212
    aput-char v12, v1, v3

    .line 213
    .line 214
    add-int/lit8 v11, v11, 0x2

    .line 215
    .line 216
    iget v12, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 217
    .line 218
    add-int/lit8 v12, v12, -0x2

    .line 219
    .line 220
    aput-char v10, v1, v12

    .line 221
    .line 222
    move v1, v3

    .line 223
    const/4 v3, 0x1

    .line 224
    goto :goto_5

    .line 225
    :cond_c
    add-int/lit8 v4, v4, 0x1

    .line 226
    .line 227
    array-length v12, v12

    .line 228
    if-le v4, v12, :cond_d

    .line 229
    .line 230
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 231
    .line 232
    .line 233
    :cond_d
    iput v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 234
    .line 235
    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 236
    .line 237
    add-int/lit8 v14, v1, 0x1

    .line 238
    .line 239
    add-int/lit8 v15, v1, 0x2

    .line 240
    .line 241
    sub-int v9, v11, v1

    .line 242
    .line 243
    invoke-static {v12, v14, v12, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    .line 245
    .line 246
    iget-object v9, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 247
    .line 248
    aput-char v7, v9, v1

    .line 249
    .line 250
    sget-object v1, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 251
    .line 252
    aget-char v1, v1, v13

    .line 253
    .line 254
    aput-char v1, v9, v14

    .line 255
    .line 256
    add-int/lit8 v11, v11, 0x1

    .line 257
    .line 258
    move v1, v14

    .line 259
    :cond_e
    :goto_5
    add-int/2addr v1, v5

    .line 260
    const/4 v9, 0x0

    .line 261
    goto :goto_4

    .line 262
    :cond_f
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 263
    .line 264
    sub-int/2addr v4, v5

    .line 265
    aput-char v8, v1, v4

    .line 266
    .line 267
    return-void
.end method

.method private s0(Ljava/lang/String;C)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/serializer/v1;->t0(Ljava/lang/String;CZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private t0(Ljava/lang/String;CZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 10
    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    iget v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 23
    .line 24
    add-int/2addr v4, v3

    .line 25
    add-int/lit8 v4, v4, 0x2

    .line 26
    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    :cond_2
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 32
    .line 33
    array-length v5, v5

    .line 34
    const/16 v6, 0x20

    .line 35
    .line 36
    const/16 v7, 0x9

    .line 37
    .line 38
    const/16 v8, 0xd

    .line 39
    .line 40
    const/16 v9, 0xa

    .line 41
    .line 42
    const/16 v13, 0x2f

    .line 43
    .line 44
    const/16 v15, 0xc

    .line 45
    .line 46
    const/16 v11, 0x8

    .line 47
    .line 48
    const/16 v10, 0x22

    .line 49
    .line 50
    const/16 v12, 0x5c

    .line 51
    .line 52
    const/4 v14, 0x1

    .line 53
    if-le v4, v5, :cond_d

    .line 54
    .line 55
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 56
    .line 57
    if-eqz v5, :cond_c

    .line 58
    .line 59
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 60
    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-ge v3, v4, :cond_a

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 74
    .line 75
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_6

    .line 80
    .line 81
    if-eq v4, v11, :cond_5

    .line 82
    .line 83
    if-eq v4, v15, :cond_5

    .line 84
    .line 85
    if-eq v4, v9, :cond_5

    .line 86
    .line 87
    if-eq v4, v8, :cond_5

    .line 88
    .line 89
    if-eq v4, v7, :cond_5

    .line 90
    .line 91
    if-eq v4, v10, :cond_5

    .line 92
    .line 93
    if-eq v4, v13, :cond_5

    .line 94
    .line 95
    if-ne v4, v12, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    if-ge v4, v6, :cond_4

    .line 99
    .line 100
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 101
    .line 102
    .line 103
    const/16 v5, 0x75

    .line 104
    .line 105
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 106
    .line 107
    .line 108
    const/16 v5, 0x30

    .line 109
    .line 110
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 114
    .line 115
    .line 116
    sget-object v5, Lcom/alibaba/fastjson/util/f;->g:[C

    .line 117
    .line 118
    mul-int/lit8 v4, v4, 0x2

    .line 119
    .line 120
    aget-char v6, v5, v4

    .line 121
    .line 122
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 123
    .line 124
    .line 125
    add-int/2addr v4, v14

    .line 126
    aget-char v4, v5, v4

    .line 127
    .line 128
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_4
    const/16 v5, 0x7f

    .line 133
    .line 134
    if-lt v4, v5, :cond_9

    .line 135
    .line 136
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 137
    .line 138
    .line 139
    const/16 v5, 0x75

    .line 140
    .line 141
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 142
    .line 143
    .line 144
    sget-object v5, Lcom/alibaba/fastjson/util/f;->a:[C

    .line 145
    .line 146
    ushr-int/lit8 v6, v4, 0xc

    .line 147
    .line 148
    and-int/lit8 v6, v6, 0xf

    .line 149
    .line 150
    aget-char v6, v5, v6

    .line 151
    .line 152
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 153
    .line 154
    .line 155
    ushr-int/lit8 v6, v4, 0x8

    .line 156
    .line 157
    and-int/lit8 v6, v6, 0xf

    .line 158
    .line 159
    aget-char v6, v5, v6

    .line 160
    .line 161
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 162
    .line 163
    .line 164
    ushr-int/lit8 v6, v4, 0x4

    .line 165
    .line 166
    and-int/lit8 v6, v6, 0xf

    .line 167
    .line 168
    aget-char v6, v5, v6

    .line 169
    .line 170
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 171
    .line 172
    .line 173
    and-int/lit8 v4, v4, 0xf

    .line 174
    .line 175
    aget-char v4, v5, v4

    .line 176
    .line 177
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_5
    :goto_1
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 182
    .line 183
    .line 184
    sget-object v5, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 185
    .line 186
    aget-char v4, v5, v4

    .line 187
    .line 188
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_6
    sget-object v5, Lcom/alibaba/fastjson/util/f;->d:[B

    .line 193
    .line 194
    array-length v6, v5

    .line 195
    if-ge v4, v6, :cond_7

    .line 196
    .line 197
    aget-byte v5, v5, v4

    .line 198
    .line 199
    if-nez v5, :cond_8

    .line 200
    .line 201
    :cond_7
    if-ne v4, v13, :cond_9

    .line 202
    .line 203
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 204
    .line 205
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    if-eqz v5, :cond_9

    .line 210
    .line 211
    :cond_8
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 212
    .line 213
    .line 214
    sget-object v5, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 215
    .line 216
    aget-char v4, v5, v4

    .line 217
    .line 218
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_9
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 223
    .line 224
    .line 225
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 226
    .line 227
    const/16 v6, 0x20

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_a
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 232
    .line 233
    .line 234
    if-eqz v2, :cond_b

    .line 235
    .line 236
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 237
    .line 238
    .line 239
    :cond_b
    return-void

    .line 240
    :cond_c
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 241
    .line 242
    .line 243
    :cond_d
    iget v5, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 244
    .line 245
    add-int/lit8 v6, v5, 0x1

    .line 246
    .line 247
    add-int v14, v6, v3

    .line 248
    .line 249
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 250
    .line 251
    aput-char v10, v7, v5

    .line 252
    .line 253
    const/4 v5, 0x0

    .line 254
    invoke-virtual {v1, v5, v3, v7, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 255
    .line 256
    .line 257
    iput v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 258
    .line 259
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 260
    .line 261
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    const/4 v7, -0x1

    .line 266
    if-eqz v3, :cond_1d

    .line 267
    .line 268
    move v1, v6

    .line 269
    :goto_3
    if-ge v1, v14, :cond_13

    .line 270
    .line 271
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 272
    .line 273
    aget-char v3, v3, v1

    .line 274
    .line 275
    if-eq v3, v10, :cond_11

    .line 276
    .line 277
    if-eq v3, v13, :cond_11

    .line 278
    .line 279
    if-ne v3, v12, :cond_e

    .line 280
    .line 281
    goto :goto_5

    .line 282
    :cond_e
    if-eq v3, v11, :cond_11

    .line 283
    .line 284
    if-eq v3, v15, :cond_11

    .line 285
    .line 286
    if-eq v3, v9, :cond_11

    .line 287
    .line 288
    if-eq v3, v8, :cond_11

    .line 289
    .line 290
    const/16 v5, 0x9

    .line 291
    .line 292
    if-ne v3, v5, :cond_f

    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_f
    const/16 v5, 0x20

    .line 296
    .line 297
    if-ge v3, v5, :cond_10

    .line 298
    .line 299
    :goto_4
    add-int/lit8 v4, v4, 0x5

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_10
    const/16 v5, 0x7f

    .line 303
    .line 304
    if-lt v3, v5, :cond_12

    .line 305
    .line 306
    goto :goto_4

    .line 307
    :cond_11
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 308
    .line 309
    :goto_6
    move v7, v1

    .line 310
    :cond_12
    add-int/lit8 v1, v1, 0x1

    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_13
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 314
    .line 315
    array-length v1, v1

    .line 316
    if-le v4, v1, :cond_14

    .line 317
    .line 318
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 319
    .line 320
    .line 321
    :cond_14
    iput v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 322
    .line 323
    :goto_7
    if-lt v7, v6, :cond_1b

    .line 324
    .line 325
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 326
    .line 327
    aget-char v3, v1, v7

    .line 328
    .line 329
    if-eq v3, v11, :cond_19

    .line 330
    .line 331
    if-eq v3, v15, :cond_19

    .line 332
    .line 333
    if-eq v3, v9, :cond_19

    .line 334
    .line 335
    if-eq v3, v8, :cond_19

    .line 336
    .line 337
    const/16 v4, 0x9

    .line 338
    .line 339
    if-ne v3, v4, :cond_15

    .line 340
    .line 341
    goto/16 :goto_a

    .line 342
    .line 343
    :cond_15
    if-eq v3, v10, :cond_18

    .line 344
    .line 345
    if-eq v3, v13, :cond_18

    .line 346
    .line 347
    if-ne v3, v12, :cond_16

    .line 348
    .line 349
    goto/16 :goto_9

    .line 350
    .line 351
    :cond_16
    const/16 v5, 0x20

    .line 352
    .line 353
    if-ge v3, v5, :cond_17

    .line 354
    .line 355
    add-int/lit8 v4, v7, 0x1

    .line 356
    .line 357
    add-int/lit8 v5, v7, 0x6

    .line 358
    .line 359
    sub-int v16, v14, v7

    .line 360
    .line 361
    const/16 v17, 0x1

    .line 362
    .line 363
    add-int/lit8 v8, v16, -0x1

    .line 364
    .line 365
    invoke-static {v1, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 366
    .line 367
    .line 368
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 369
    .line 370
    aput-char v12, v1, v7

    .line 371
    .line 372
    const/16 v5, 0x75

    .line 373
    .line 374
    aput-char v5, v1, v4

    .line 375
    .line 376
    add-int/lit8 v4, v7, 0x2

    .line 377
    .line 378
    const/16 v5, 0x30

    .line 379
    .line 380
    aput-char v5, v1, v4

    .line 381
    .line 382
    add-int/lit8 v4, v7, 0x3

    .line 383
    .line 384
    aput-char v5, v1, v4

    .line 385
    .line 386
    add-int/lit8 v4, v7, 0x4

    .line 387
    .line 388
    sget-object v5, Lcom/alibaba/fastjson/util/f;->g:[C

    .line 389
    .line 390
    mul-int/lit8 v3, v3, 0x2

    .line 391
    .line 392
    aget-char v8, v5, v3

    .line 393
    .line 394
    aput-char v8, v1, v4

    .line 395
    .line 396
    add-int/lit8 v4, v7, 0x5

    .line 397
    .line 398
    const/4 v8, 0x1

    .line 399
    add-int/2addr v3, v8

    .line 400
    aget-char v3, v5, v3

    .line 401
    .line 402
    aput-char v3, v1, v4

    .line 403
    .line 404
    :goto_8
    add-int/lit8 v14, v14, 0x5

    .line 405
    .line 406
    goto :goto_c

    .line 407
    :cond_17
    const/16 v4, 0x7f

    .line 408
    .line 409
    if-lt v3, v4, :cond_1a

    .line 410
    .line 411
    add-int/lit8 v4, v7, 0x1

    .line 412
    .line 413
    add-int/lit8 v5, v7, 0x6

    .line 414
    .line 415
    sub-int v8, v14, v7

    .line 416
    .line 417
    const/16 v16, 0x1

    .line 418
    .line 419
    add-int/lit8 v8, v8, -0x1

    .line 420
    .line 421
    invoke-static {v1, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    .line 423
    .line 424
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 425
    .line 426
    aput-char v12, v1, v7

    .line 427
    .line 428
    const/16 v5, 0x75

    .line 429
    .line 430
    aput-char v5, v1, v4

    .line 431
    .line 432
    add-int/lit8 v4, v7, 0x2

    .line 433
    .line 434
    sget-object v5, Lcom/alibaba/fastjson/util/f;->a:[C

    .line 435
    .line 436
    ushr-int/lit8 v8, v3, 0xc

    .line 437
    .line 438
    and-int/lit8 v8, v8, 0xf

    .line 439
    .line 440
    aget-char v8, v5, v8

    .line 441
    .line 442
    aput-char v8, v1, v4

    .line 443
    .line 444
    add-int/lit8 v4, v7, 0x3

    .line 445
    .line 446
    ushr-int/lit8 v8, v3, 0x8

    .line 447
    .line 448
    and-int/lit8 v8, v8, 0xf

    .line 449
    .line 450
    aget-char v8, v5, v8

    .line 451
    .line 452
    aput-char v8, v1, v4

    .line 453
    .line 454
    add-int/lit8 v4, v7, 0x4

    .line 455
    .line 456
    ushr-int/lit8 v8, v3, 0x4

    .line 457
    .line 458
    and-int/lit8 v8, v8, 0xf

    .line 459
    .line 460
    aget-char v8, v5, v8

    .line 461
    .line 462
    aput-char v8, v1, v4

    .line 463
    .line 464
    add-int/lit8 v4, v7, 0x5

    .line 465
    .line 466
    and-int/lit8 v3, v3, 0xf

    .line 467
    .line 468
    aget-char v3, v5, v3

    .line 469
    .line 470
    aput-char v3, v1, v4

    .line 471
    .line 472
    goto :goto_8

    .line 473
    :cond_18
    :goto_9
    add-int/lit8 v4, v7, 0x1

    .line 474
    .line 475
    add-int/lit8 v5, v7, 0x2

    .line 476
    .line 477
    sub-int v8, v14, v7

    .line 478
    .line 479
    const/16 v16, 0x1

    .line 480
    .line 481
    add-int/lit8 v8, v8, -0x1

    .line 482
    .line 483
    invoke-static {v1, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    .line 485
    .line 486
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 487
    .line 488
    aput-char v12, v1, v7

    .line 489
    .line 490
    aput-char v3, v1, v4

    .line 491
    .line 492
    goto :goto_b

    .line 493
    :cond_19
    :goto_a
    add-int/lit8 v4, v7, 0x1

    .line 494
    .line 495
    add-int/lit8 v5, v7, 0x2

    .line 496
    .line 497
    sub-int v8, v14, v7

    .line 498
    .line 499
    const/16 v16, 0x1

    .line 500
    .line 501
    add-int/lit8 v8, v8, -0x1

    .line 502
    .line 503
    invoke-static {v1, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    .line 505
    .line 506
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 507
    .line 508
    aput-char v12, v1, v7

    .line 509
    .line 510
    sget-object v5, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 511
    .line 512
    aget-char v3, v5, v3

    .line 513
    .line 514
    aput-char v3, v1, v4

    .line 515
    .line 516
    :goto_b
    add-int/lit8 v14, v14, 0x1

    .line 517
    .line 518
    :cond_1a
    :goto_c
    add-int/lit8 v7, v7, -0x1

    .line 519
    .line 520
    const/16 v8, 0xd

    .line 521
    .line 522
    goto/16 :goto_7

    .line 523
    .line 524
    :cond_1b
    if-eqz v2, :cond_1c

    .line 525
    .line 526
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 527
    .line 528
    iget v3, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 529
    .line 530
    add-int/lit8 v4, v3, -0x2

    .line 531
    .line 532
    aput-char v10, v1, v4

    .line 533
    .line 534
    const/4 v4, 0x1

    .line 535
    sub-int/2addr v3, v4

    .line 536
    aput-char v2, v1, v3

    .line 537
    .line 538
    goto :goto_d

    .line 539
    :cond_1c
    const/4 v4, 0x1

    .line 540
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 541
    .line 542
    iget v2, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 543
    .line 544
    sub-int/2addr v2, v4

    .line 545
    aput-char v10, v1, v2

    .line 546
    .line 547
    :goto_d
    return-void

    .line 548
    :cond_1d
    if-eqz p3, :cond_2e

    .line 549
    .line 550
    move v3, v6

    .line 551
    const/4 v8, -0x1

    .line 552
    const/4 v9, -0x1

    .line 553
    const/4 v11, 0x0

    .line 554
    :goto_e
    const/16 v15, 0x2028

    .line 555
    .line 556
    const/4 v10, 0x4

    .line 557
    if-ge v3, v14, :cond_24

    .line 558
    .line 559
    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 560
    .line 561
    aget-char v13, v13, v3

    .line 562
    .line 563
    if-ne v13, v15, :cond_1f

    .line 564
    .line 565
    add-int/lit8 v11, v11, 0x1

    .line 566
    .line 567
    add-int/lit8 v4, v4, 0x4

    .line 568
    .line 569
    if-ne v8, v7, :cond_1e

    .line 570
    .line 571
    :goto_f
    move v8, v3

    .line 572
    move v9, v8

    .line 573
    goto :goto_11

    .line 574
    :cond_1e
    :goto_10
    move v9, v3

    .line 575
    :goto_11
    move v5, v13

    .line 576
    goto :goto_12

    .line 577
    :cond_1f
    const/16 v15, 0x5d

    .line 578
    .line 579
    if-lt v13, v15, :cond_21

    .line 580
    .line 581
    const/16 v15, 0x7f

    .line 582
    .line 583
    if-lt v13, v15, :cond_23

    .line 584
    .line 585
    const/16 v10, 0xa0

    .line 586
    .line 587
    if-gt v13, v10, :cond_23

    .line 588
    .line 589
    if-ne v8, v7, :cond_20

    .line 590
    .line 591
    move v8, v3

    .line 592
    :cond_20
    add-int/lit8 v11, v11, 0x1

    .line 593
    .line 594
    add-int/lit8 v4, v4, 0x4

    .line 595
    .line 596
    goto :goto_10

    .line 597
    :cond_21
    iget v15, v0, Lcom/alibaba/fastjson/serializer/v1;->d:I

    .line 598
    .line 599
    invoke-static {v13, v15}, Lcom/alibaba/fastjson/serializer/v1;->h(CI)Z

    .line 600
    .line 601
    .line 602
    move-result v15

    .line 603
    if-eqz v15, :cond_23

    .line 604
    .line 605
    add-int/lit8 v11, v11, 0x1

    .line 606
    .line 607
    sget-object v5, Lcom/alibaba/fastjson/util/f;->d:[B

    .line 608
    .line 609
    array-length v9, v5

    .line 610
    if-ge v13, v9, :cond_22

    .line 611
    .line 612
    aget-byte v5, v5, v13

    .line 613
    .line 614
    if-ne v5, v10, :cond_22

    .line 615
    .line 616
    add-int/lit8 v4, v4, 0x4

    .line 617
    .line 618
    :cond_22
    if-ne v8, v7, :cond_1e

    .line 619
    .line 620
    goto :goto_f

    .line 621
    :cond_23
    :goto_12
    add-int/lit8 v3, v3, 0x1

    .line 622
    .line 623
    const/16 v10, 0x22

    .line 624
    .line 625
    const/16 v13, 0x2f

    .line 626
    .line 627
    goto :goto_e

    .line 628
    :cond_24
    if-lez v11, :cond_2e

    .line 629
    .line 630
    add-int/2addr v4, v11

    .line 631
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 632
    .line 633
    array-length v3, v3

    .line 634
    if-le v4, v3, :cond_25

    .line 635
    .line 636
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 637
    .line 638
    .line 639
    :cond_25
    iput v4, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 640
    .line 641
    const/4 v3, 0x1

    .line 642
    if-ne v11, v3, :cond_28

    .line 643
    .line 644
    if-ne v5, v15, :cond_26

    .line 645
    .line 646
    add-int/lit8 v1, v9, 0x1

    .line 647
    .line 648
    add-int/lit8 v4, v9, 0x6

    .line 649
    .line 650
    sub-int/2addr v14, v9

    .line 651
    sub-int/2addr v14, v3

    .line 652
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 653
    .line 654
    invoke-static {v5, v1, v5, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 655
    .line 656
    .line 657
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 658
    .line 659
    aput-char v12, v4, v9

    .line 660
    .line 661
    const/16 v5, 0x75

    .line 662
    .line 663
    aput-char v5, v4, v1

    .line 664
    .line 665
    add-int/2addr v1, v3

    .line 666
    const/16 v5, 0x32

    .line 667
    .line 668
    aput-char v5, v4, v1

    .line 669
    .line 670
    add-int/2addr v1, v3

    .line 671
    const/16 v6, 0x30

    .line 672
    .line 673
    aput-char v6, v4, v1

    .line 674
    .line 675
    add-int/2addr v1, v3

    .line 676
    aput-char v5, v4, v1

    .line 677
    .line 678
    add-int/2addr v1, v3

    .line 679
    const/16 v3, 0x38

    .line 680
    .line 681
    aput-char v3, v4, v1

    .line 682
    .line 683
    goto/16 :goto_18

    .line 684
    .line 685
    :cond_26
    sget-object v1, Lcom/alibaba/fastjson/util/f;->d:[B

    .line 686
    .line 687
    array-length v3, v1

    .line 688
    if-ge v5, v3, :cond_27

    .line 689
    .line 690
    aget-byte v1, v1, v5

    .line 691
    .line 692
    if-ne v1, v10, :cond_27

    .line 693
    .line 694
    add-int/lit8 v1, v9, 0x1

    .line 695
    .line 696
    add-int/lit8 v3, v9, 0x6

    .line 697
    .line 698
    sub-int/2addr v14, v9

    .line 699
    const/4 v4, 0x1

    .line 700
    sub-int/2addr v14, v4

    .line 701
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 702
    .line 703
    invoke-static {v4, v1, v4, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 704
    .line 705
    .line 706
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 707
    .line 708
    aput-char v12, v3, v9

    .line 709
    .line 710
    add-int/lit8 v4, v1, 0x1

    .line 711
    .line 712
    const/16 v6, 0x75

    .line 713
    .line 714
    aput-char v6, v3, v1

    .line 715
    .line 716
    add-int/lit8 v1, v4, 0x1

    .line 717
    .line 718
    sget-object v6, Lcom/alibaba/fastjson/util/f;->a:[C

    .line 719
    .line 720
    ushr-int/lit8 v7, v5, 0xc

    .line 721
    .line 722
    and-int/lit8 v7, v7, 0xf

    .line 723
    .line 724
    aget-char v7, v6, v7

    .line 725
    .line 726
    aput-char v7, v3, v4

    .line 727
    .line 728
    add-int/lit8 v4, v1, 0x1

    .line 729
    .line 730
    ushr-int/lit8 v7, v5, 0x8

    .line 731
    .line 732
    and-int/lit8 v7, v7, 0xf

    .line 733
    .line 734
    aget-char v7, v6, v7

    .line 735
    .line 736
    aput-char v7, v3, v1

    .line 737
    .line 738
    add-int/lit8 v1, v4, 0x1

    .line 739
    .line 740
    ushr-int/lit8 v7, v5, 0x4

    .line 741
    .line 742
    and-int/lit8 v7, v7, 0xf

    .line 743
    .line 744
    aget-char v7, v6, v7

    .line 745
    .line 746
    aput-char v7, v3, v4

    .line 747
    .line 748
    and-int/lit8 v4, v5, 0xf

    .line 749
    .line 750
    aget-char v4, v6, v4

    .line 751
    .line 752
    aput-char v4, v3, v1

    .line 753
    .line 754
    const/4 v4, 0x1

    .line 755
    goto/16 :goto_18

    .line 756
    .line 757
    :cond_27
    add-int/lit8 v1, v9, 0x1

    .line 758
    .line 759
    add-int/lit8 v3, v9, 0x2

    .line 760
    .line 761
    sub-int/2addr v14, v9

    .line 762
    const/4 v4, 0x1

    .line 763
    sub-int/2addr v14, v4

    .line 764
    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 765
    .line 766
    invoke-static {v6, v1, v6, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    .line 768
    .line 769
    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 770
    .line 771
    aput-char v12, v3, v9

    .line 772
    .line 773
    sget-object v6, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 774
    .line 775
    aget-char v5, v6, v5

    .line 776
    .line 777
    aput-char v5, v3, v1

    .line 778
    .line 779
    goto/16 :goto_18

    .line 780
    .line 781
    :cond_28
    const/4 v4, 0x1

    .line 782
    if-le v11, v4, :cond_2e

    .line 783
    .line 784
    sub-int v3, v8, v6

    .line 785
    .line 786
    :goto_13
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 787
    .line 788
    .line 789
    move-result v4

    .line 790
    if-ge v3, v4, :cond_2e

    .line 791
    .line 792
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    .line 793
    .line 794
    .line 795
    move-result v4

    .line 796
    sget-object v5, Lcom/alibaba/fastjson/util/f;->d:[B

    .line 797
    .line 798
    array-length v6, v5

    .line 799
    if-ge v4, v6, :cond_2a

    .line 800
    .line 801
    aget-byte v6, v5, v4

    .line 802
    .line 803
    if-nez v6, :cond_29

    .line 804
    .line 805
    goto :goto_14

    .line 806
    :cond_29
    const/16 v6, 0x2f

    .line 807
    .line 808
    goto :goto_15

    .line 809
    :cond_2a
    :goto_14
    const/16 v6, 0x2f

    .line 810
    .line 811
    if-ne v4, v6, :cond_2c

    .line 812
    .line 813
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 814
    .line 815
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 816
    .line 817
    .line 818
    move-result v7

    .line 819
    if-eqz v7, :cond_2c

    .line 820
    .line 821
    :goto_15
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 822
    .line 823
    add-int/lit8 v9, v8, 0x1

    .line 824
    .line 825
    aput-char v12, v7, v8

    .line 826
    .line 827
    aget-byte v5, v5, v4

    .line 828
    .line 829
    if-ne v5, v10, :cond_2b

    .line 830
    .line 831
    add-int/lit8 v5, v9, 0x1

    .line 832
    .line 833
    const/16 v8, 0x75

    .line 834
    .line 835
    aput-char v8, v7, v9

    .line 836
    .line 837
    add-int/lit8 v8, v5, 0x1

    .line 838
    .line 839
    sget-object v9, Lcom/alibaba/fastjson/util/f;->a:[C

    .line 840
    .line 841
    ushr-int/lit8 v11, v4, 0xc

    .line 842
    .line 843
    and-int/lit8 v11, v11, 0xf

    .line 844
    .line 845
    aget-char v11, v9, v11

    .line 846
    .line 847
    aput-char v11, v7, v5

    .line 848
    .line 849
    add-int/lit8 v5, v8, 0x1

    .line 850
    .line 851
    ushr-int/lit8 v11, v4, 0x8

    .line 852
    .line 853
    and-int/lit8 v11, v11, 0xf

    .line 854
    .line 855
    aget-char v11, v9, v11

    .line 856
    .line 857
    aput-char v11, v7, v8

    .line 858
    .line 859
    add-int/lit8 v8, v5, 0x1

    .line 860
    .line 861
    ushr-int/lit8 v11, v4, 0x4

    .line 862
    .line 863
    and-int/lit8 v11, v11, 0xf

    .line 864
    .line 865
    aget-char v11, v9, v11

    .line 866
    .line 867
    aput-char v11, v7, v5

    .line 868
    .line 869
    add-int/lit8 v5, v8, 0x1

    .line 870
    .line 871
    and-int/lit8 v4, v4, 0xf

    .line 872
    .line 873
    aget-char v4, v9, v4

    .line 874
    .line 875
    aput-char v4, v7, v8

    .line 876
    .line 877
    goto :goto_16

    .line 878
    :cond_2b
    add-int/lit8 v5, v9, 0x1

    .line 879
    .line 880
    sget-object v8, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 881
    .line 882
    aget-char v4, v8, v4

    .line 883
    .line 884
    aput-char v4, v7, v9

    .line 885
    .line 886
    :goto_16
    move v8, v5

    .line 887
    const/16 v9, 0x75

    .line 888
    .line 889
    goto :goto_17

    .line 890
    :cond_2c
    if-ne v4, v15, :cond_2d

    .line 891
    .line 892
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 893
    .line 894
    add-int/lit8 v7, v8, 0x1

    .line 895
    .line 896
    aput-char v12, v5, v8

    .line 897
    .line 898
    add-int/lit8 v8, v7, 0x1

    .line 899
    .line 900
    const/16 v9, 0x75

    .line 901
    .line 902
    aput-char v9, v5, v7

    .line 903
    .line 904
    add-int/lit8 v7, v8, 0x1

    .line 905
    .line 906
    sget-object v11, Lcom/alibaba/fastjson/util/f;->a:[C

    .line 907
    .line 908
    ushr-int/lit8 v13, v4, 0xc

    .line 909
    .line 910
    and-int/lit8 v13, v13, 0xf

    .line 911
    .line 912
    aget-char v13, v11, v13

    .line 913
    .line 914
    aput-char v13, v5, v8

    .line 915
    .line 916
    add-int/lit8 v8, v7, 0x1

    .line 917
    .line 918
    ushr-int/lit8 v13, v4, 0x8

    .line 919
    .line 920
    and-int/lit8 v13, v13, 0xf

    .line 921
    .line 922
    aget-char v13, v11, v13

    .line 923
    .line 924
    aput-char v13, v5, v7

    .line 925
    .line 926
    add-int/lit8 v7, v8, 0x1

    .line 927
    .line 928
    ushr-int/lit8 v13, v4, 0x4

    .line 929
    .line 930
    and-int/lit8 v13, v13, 0xf

    .line 931
    .line 932
    aget-char v13, v11, v13

    .line 933
    .line 934
    aput-char v13, v5, v8

    .line 935
    .line 936
    add-int/lit8 v8, v7, 0x1

    .line 937
    .line 938
    and-int/lit8 v4, v4, 0xf

    .line 939
    .line 940
    aget-char v4, v11, v4

    .line 941
    .line 942
    aput-char v4, v5, v7

    .line 943
    .line 944
    goto :goto_17

    .line 945
    :cond_2d
    const/16 v9, 0x75

    .line 946
    .line 947
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 948
    .line 949
    add-int/lit8 v7, v8, 0x1

    .line 950
    .line 951
    aput-char v4, v5, v8

    .line 952
    .line 953
    move v8, v7

    .line 954
    :goto_17
    add-int/lit8 v3, v3, 0x1

    .line 955
    .line 956
    goto/16 :goto_13

    .line 957
    .line 958
    :cond_2e
    :goto_18
    if-eqz v2, :cond_2f

    .line 959
    .line 960
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 961
    .line 962
    iget v3, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 963
    .line 964
    add-int/lit8 v4, v3, -0x2

    .line 965
    .line 966
    const/16 v5, 0x22

    .line 967
    .line 968
    aput-char v5, v1, v4

    .line 969
    .line 970
    const/4 v4, 0x1

    .line 971
    sub-int/2addr v3, v4

    .line 972
    aput-char v2, v1, v3

    .line 973
    .line 974
    goto :goto_19

    .line 975
    :cond_2f
    const/4 v4, 0x1

    .line 976
    const/16 v5, 0x22

    .line 977
    .line 978
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 979
    .line 980
    iget v2, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 981
    .line 982
    sub-int/2addr v2, v4

    .line 983
    aput-char v5, v1, v2

    .line 984
    .line 985
    :goto_19
    return-void
.end method

.method private u0(Ljava/lang/String;)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget p1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    add-int/2addr p1, v1

    .line 8
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 9
    .line 10
    array-length v2, v2

    .line 11
    if-le p1, v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 17
    .line 18
    iget v3, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 19
    .line 20
    const-string v4, "null"

    .line 21
    .line 22
    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 33
    .line 34
    add-int/2addr v2, v1

    .line 35
    add-int/lit8 v2, v2, 0x2

    .line 36
    .line 37
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 38
    .line 39
    array-length v3, v3

    .line 40
    const/16 v4, 0x2f

    .line 41
    .line 42
    const/16 v5, 0xd

    .line 43
    .line 44
    const/16 v6, 0x5c

    .line 45
    .line 46
    const/16 v7, 0x27

    .line 47
    .line 48
    if-le v2, v3, :cond_6

    .line 49
    .line 50
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 51
    .line 52
    if-eqz v3, :cond_5

    .line 53
    .line 54
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-ge v0, v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-le v1, v5, :cond_3

    .line 68
    .line 69
    if-eq v1, v6, :cond_3

    .line 70
    .line 71
    if-eq v1, v7, :cond_3

    .line 72
    .line 73
    if-ne v1, v4, :cond_2

    .line 74
    .line 75
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    :goto_1
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 89
    .line 90
    .line 91
    sget-object v2, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 92
    .line 93
    aget-char v1, v2, v1

    .line 94
    .line 95
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 96
    .line 97
    .line 98
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_5
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 106
    .line 107
    .line 108
    :cond_6
    iget v3, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 109
    .line 110
    add-int/lit8 v8, v3, 0x1

    .line 111
    .line 112
    add-int v9, v8, v1

    .line 113
    .line 114
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 115
    .line 116
    aput-char v7, v10, v3

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 119
    .line 120
    .line 121
    iput v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 122
    .line 123
    const/4 p1, -0x1

    .line 124
    move v3, v8

    .line 125
    const/4 v1, 0x0

    .line 126
    :goto_3
    if-ge v3, v9, :cond_9

    .line 127
    .line 128
    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 129
    .line 130
    aget-char v10, v10, v3

    .line 131
    .line 132
    if-le v10, v5, :cond_7

    .line 133
    .line 134
    if-eq v10, v6, :cond_7

    .line 135
    .line 136
    if-eq v10, v7, :cond_7

    .line 137
    .line 138
    if-ne v10, v4, :cond_8

    .line 139
    .line 140
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 141
    .line 142
    invoke-virtual {p0, v11}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-eqz v11, :cond_8

    .line 147
    .line 148
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 149
    .line 150
    move p1, v3

    .line 151
    move v1, v10

    .line 152
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_9
    add-int/2addr v2, v0

    .line 156
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 157
    .line 158
    array-length v3, v3

    .line 159
    if-le v2, v3, :cond_a

    .line 160
    .line 161
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 162
    .line 163
    .line 164
    :cond_a
    iput v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 165
    .line 166
    const/4 v2, 0x1

    .line 167
    if-ne v0, v2, :cond_b

    .line 168
    .line 169
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 170
    .line 171
    add-int/lit8 v3, p1, 0x1

    .line 172
    .line 173
    add-int/lit8 v4, p1, 0x2

    .line 174
    .line 175
    sub-int/2addr v9, p1

    .line 176
    sub-int/2addr v9, v2

    .line 177
    invoke-static {v0, v3, v0, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 181
    .line 182
    aput-char v6, v0, p1

    .line 183
    .line 184
    sget-object p1, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 185
    .line 186
    aget-char p1, p1, v1

    .line 187
    .line 188
    aput-char p1, v0, v3

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_b
    if-le v0, v2, :cond_e

    .line 192
    .line 193
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 194
    .line 195
    add-int/lit8 v3, p1, 0x1

    .line 196
    .line 197
    add-int/lit8 v10, p1, 0x2

    .line 198
    .line 199
    sub-int v11, v9, p1

    .line 200
    .line 201
    sub-int/2addr v11, v2

    .line 202
    invoke-static {v0, v3, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 206
    .line 207
    aput-char v6, v0, p1

    .line 208
    .line 209
    sget-object p1, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 210
    .line 211
    aget-char p1, p1, v1

    .line 212
    .line 213
    aput-char p1, v0, v3

    .line 214
    .line 215
    add-int/2addr v9, v2

    .line 216
    add-int/lit8 v3, v3, -0x2

    .line 217
    .line 218
    :goto_4
    if-lt v3, v8, :cond_e

    .line 219
    .line 220
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 221
    .line 222
    aget-char p1, p1, v3

    .line 223
    .line 224
    if-le p1, v5, :cond_c

    .line 225
    .line 226
    if-eq p1, v6, :cond_c

    .line 227
    .line 228
    if-eq p1, v7, :cond_c

    .line 229
    .line 230
    if-ne p1, v4, :cond_d

    .line 231
    .line 232
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 233
    .line 234
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    if-eqz v0, :cond_d

    .line 239
    .line 240
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 241
    .line 242
    add-int/lit8 v1, v3, 0x1

    .line 243
    .line 244
    add-int/lit8 v10, v3, 0x2

    .line 245
    .line 246
    sub-int v11, v9, v3

    .line 247
    .line 248
    sub-int/2addr v11, v2

    .line 249
    invoke-static {v0, v1, v0, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 253
    .line 254
    aput-char v6, v0, v3

    .line 255
    .line 256
    sget-object v10, Lcom/alibaba/fastjson/util/f;->f:[C

    .line 257
    .line 258
    aget-char p1, v10, p1

    .line 259
    .line 260
    aput-char p1, v0, v1

    .line 261
    .line 262
    add-int/lit8 v9, v9, 0x1

    .line 263
    .line 264
    :cond_d
    add-int/lit8 v3, v3, -0x1

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 268
    .line 269
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 270
    .line 271
    sub-int/2addr v0, v2

    .line 272
    aput-char v7, p1, v0

    .line 273
    .line 274
    return-void
.end method


# virtual methods
.method public I(CLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "[]"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public J(CLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const/16 p1, 0x30

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public K(CLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, ""

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public L(CLjava/lang/String;C)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const-string p1, "\u0000"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
.end method

.method public M(CLjava/lang/String;D)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-wide/16 p1, 0x0

    .line 8
    .line 9
    cmpl-double v0, p3, p1

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/16 p1, 0x30

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, ".0"

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_3

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    add-int/lit8 p2, p2, -0x2

    .line 56
    .line 57
    const/4 p3, 0x0

    .line 58
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method public O(CLjava/lang/String;F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    cmpl-float p1, p3, p1

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const/16 p1, 0x30

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {p3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, ".0"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    add-int/lit8 p2, p2, -0x2

    .line 55
    .line 56
    const/4 p3, 0x0

    .line 57
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public P(CLjava/lang/String;I)V
    .locals 5

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-eq p3, v0, :cond_5

    .line 4
    .line 5
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x27

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v0, 0x22

    .line 26
    .line 27
    :goto_0
    if-gez p3, :cond_2

    .line 28
    .line 29
    neg-int v1, p3

    .line 30
    invoke-static {v1}, Lcom/alibaba/fastjson/util/f;->h(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    invoke-static {p3}, Lcom/alibaba/fastjson/util/f;->h(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget v3, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 46
    .line 47
    add-int/2addr v3, v2

    .line 48
    add-int/lit8 v3, v3, 0x4

    .line 49
    .line 50
    add-int/2addr v3, v1

    .line 51
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 52
    .line 53
    array-length v1, v1

    .line 54
    if-le v3, v1, :cond_4

    .line 55
    .line 56
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/v1;->e0(CLjava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 65
    .line 66
    .line 67
    :cond_4
    iget v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 68
    .line 69
    iput v3, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 70
    .line 71
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 72
    .line 73
    aput-char p1, v3, v1

    .line 74
    .line 75
    add-int p1, v1, v2

    .line 76
    .line 77
    add-int/lit8 p1, p1, 0x1

    .line 78
    .line 79
    add-int/lit8 v4, v1, 0x1

    .line 80
    .line 81
    aput-char v0, v3, v4

    .line 82
    .line 83
    const/4 v4, 0x0

    .line 84
    add-int/lit8 v1, v1, 0x2

    .line 85
    .line 86
    invoke-virtual {p2, v4, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 87
    .line 88
    .line 89
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 90
    .line 91
    add-int/lit8 v1, p1, 0x1

    .line 92
    .line 93
    aput-char v0, p2, v1

    .line 94
    .line 95
    add-int/lit8 p1, p1, 0x2

    .line 96
    .line 97
    const/16 v0, 0x3a

    .line 98
    .line 99
    aput-char v0, p2, p1

    .line 100
    .line 101
    iget p1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 102
    .line 103
    invoke-static {p3, p1, p2}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/v1;->e0(CLjava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public Q(CLjava/lang/String;J)V
    .locals 5

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    cmp-long v2, p3, v0

    .line 4
    .line 5
    if-eqz v2, :cond_5

    .line 6
    .line 7
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x27

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/16 v0, 0x22

    .line 28
    .line 29
    :goto_0
    const-wide/16 v1, 0x0

    .line 30
    .line 31
    cmp-long v3, p3, v1

    .line 32
    .line 33
    if-gez v3, :cond_2

    .line 34
    .line 35
    neg-long v1, p3

    .line 36
    invoke-static {v1, v2}, Lcom/alibaba/fastjson/util/f;->i(J)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    invoke-static {p3, p4}, Lcom/alibaba/fastjson/util/f;->i(J)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget v3, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 52
    .line 53
    add-int/2addr v3, v2

    .line 54
    add-int/lit8 v3, v3, 0x4

    .line 55
    .line 56
    add-int/2addr v3, v1

    .line 57
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 58
    .line 59
    array-length v1, v1

    .line 60
    if-le v3, v1, :cond_4

    .line 61
    .line 62
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/v1;->n0(J)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 80
    .line 81
    iput v3, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 82
    .line 83
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 84
    .line 85
    aput-char p1, v3, v1

    .line 86
    .line 87
    add-int p1, v1, v2

    .line 88
    .line 89
    add-int/lit8 p1, p1, 0x1

    .line 90
    .line 91
    add-int/lit8 v4, v1, 0x1

    .line 92
    .line 93
    aput-char v0, v3, v4

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    add-int/lit8 v1, v1, 0x2

    .line 97
    .line 98
    invoke-virtual {p2, v4, v2, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 99
    .line 100
    .line 101
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 102
    .line 103
    add-int/lit8 v1, p1, 0x1

    .line 104
    .line 105
    aput-char v0, p2, v1

    .line 106
    .line 107
    add-int/lit8 p1, p1, 0x2

    .line 108
    .line 109
    const/16 v0, 0x3a

    .line 110
    .line 111
    aput-char v0, p2, p1

    .line 112
    .line 113
    iget p1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 114
    .line 115
    invoke-static {p3, p4, p1, p2}, Lcom/alibaba/fastjson/util/f;->f(JI[C)V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/v1;->f0(CLjava/lang/String;J)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public R(CLjava/lang/String;Ljava/lang/Enum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Ljava/lang/String;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/v1;->a0(CLjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/v1;->g0(CLjava/lang/String;Ljava/lang/String;Z)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result p3

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/v1;->P(CLjava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public a(C)Lcom/alibaba/fastjson/serializer/v1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public a0(CLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-nez p3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 42
    .line 43
    .line 44
    const/16 p1, 0x3a

    .line 45
    .line 46
    invoke-direct {p0, p2, p1}, Lcom/alibaba/fastjson/serializer/v1;->s0(Ljava/lang/String;C)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-direct {p0, p3, p1}, Lcom/alibaba/fastjson/serializer/v1;->s0(Ljava/lang/String;C)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x1

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/serializer/v1;->g0(CLjava/lang/String;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-nez p3, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->b(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/v1;->c(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->b(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/v1;->c(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/v1;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/v1;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "null"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p0, p1, v1, v0}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;II)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/v1;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "null"

    .line 4
    .line 5
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-virtual {p0, p1, p3, p2}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    return-object p0
.end method

.method public c0(CLjava/lang/String;Ljava/math/BigDecimal;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p3}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->flush()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 13
    .line 14
    array-length v0, v0

    .line 15
    const/16 v1, 0x2000

    .line 16
    .line 17
    if-gt v0, v1, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/alibaba/fastjson/serializer/v1;->f:Ljava/lang/ThreadLocal;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/ref/SoftReference;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 33
    .line 34
    return-void
.end method

.method public d(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lcom/alibaba/fastjson/serializer/v1;->d:I

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    or-int/2addr p1, p2

    .line 10
    iput p1, p0, Lcom/alibaba/fastjson/serializer/v1;->d:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/serializer/v1;->d:I

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    not-int p1, p1

    .line 20
    and-int/2addr p1, p2

    .line 21
    iput p1, p0, Lcom/alibaba/fastjson/serializer/v1;->d:I

    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public d0(CLjava/lang/String;Z)V
    .locals 6

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v0, 0x27

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v0, 0x22

    .line 13
    .line 14
    :goto_0
    const/4 v1, 0x4

    .line 15
    const/4 v2, 0x5

    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v3, 0x5

    .line 21
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget v5, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 26
    .line 27
    add-int/2addr v5, v4

    .line 28
    add-int/2addr v5, v1

    .line 29
    add-int/2addr v5, v3

    .line 30
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 31
    .line 32
    array-length v1, v1

    .line 33
    if-le v5, v1, :cond_3

    .line 34
    .line 35
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/16 p1, 0x3a

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/v1;->n(Z)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 58
    .line 59
    iput v5, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 60
    .line 61
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 62
    .line 63
    aput-char p1, v3, v1

    .line 64
    .line 65
    add-int p1, v1, v4

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x1

    .line 68
    .line 69
    add-int/lit8 v5, v1, 0x1

    .line 70
    .line 71
    aput-char v0, v3, v5

    .line 72
    .line 73
    add-int/lit8 v1, v1, 0x2

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-virtual {p2, v5, v4, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 80
    .line 81
    add-int/lit8 v1, p1, 0x1

    .line 82
    .line 83
    aput-char v0, p2, v1

    .line 84
    .line 85
    if-eqz p3, :cond_4

    .line 86
    .line 87
    const-string p2, ":true"

    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iget-object p3, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 94
    .line 95
    add-int/lit8 p1, p1, 0x2

    .line 96
    .line 97
    invoke-static {p2, v5, p3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    const-string p2, ":false"

    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iget-object p3, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 108
    .line 109
    add-int/lit8 p1, p1, 0x2

    .line 110
    .line 111
    const/4 v0, 0x6

    .line 112
    invoke-static {p2, v5, p3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    :goto_2
    return-void
.end method

.method public e(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    mul-int/lit8 v1, v1, 0x3

    .line 5
    .line 6
    div-int/lit8 v1, v1, 0x2

    .line 7
    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    if-ge v1, p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p1, v1

    .line 14
    :goto_0
    new-array p1, p1, [C

    .line 15
    .line 16
    iget v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 23
    .line 24
    return-void
.end method

.method public e0(CLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/v1;->j0(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public f0(CLjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/v1;->n0(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public flush()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 7
    .line 8
    iget v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    iput v3, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method public g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v1;->d:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->isEnabled(ILcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public i0(FC)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, ".0"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x2

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public j()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 3
    .line 4
    return-void
.end method

.method public j0(I)V
    .locals 3

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "-2147483648"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    if-gez p1, :cond_1

    .line 12
    .line 13
    neg-int v0, p1

    .line 14
    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->h(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/f;->h(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 26
    .line 27
    add-int/2addr v1, v0

    .line 28
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 29
    .line 30
    array-length v2, v2

    .line 31
    if-le v1, v2, :cond_3

    .line 32
    .line 33
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 34
    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    new-array v1, v0, [C

    .line 42
    .line 43
    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, v1, p1, v0}, Lcom/alibaba/fastjson/serializer/v1;->write([CII)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 52
    .line 53
    invoke-static {p1, v1, v0}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 54
    .line 55
    .line 56
    iput v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 57
    .line 58
    return-void
.end method

.method public k(Ljava/lang/String;)[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "UTF-8"

    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Lcom/alibaba/fastjson/serializer/s1;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/s1;-><init>(Ljava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iget v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 22
    .line 23
    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/fastjson/serializer/s1;->a([CII)[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 29
    .line 30
    const-string v0, "writer not null"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public k0(IC)V
    .locals 3

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const-string p1, "-2147483648"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-gez p1, :cond_1

    .line 15
    .line 16
    neg-int v0, p1

    .line 17
    invoke-static {v0}, Lcom/alibaba/fastjson/util/f;->h(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/util/f;->h(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 29
    .line 30
    add-int/2addr v1, v0

    .line 31
    add-int/lit8 v0, v1, 0x1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 34
    .line 35
    array-length v2, v2

    .line 36
    if-le v0, v2, :cond_3

    .line 37
    .line 38
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 39
    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->j0(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 53
    .line 54
    invoke-static {p1, v1, v2}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 58
    .line 59
    aput-char p2, p1, v1

    .line 60
    .line 61
    iput v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 62
    .line 63
    return-void
.end method

.method public l()[C
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 6
    .line 7
    new-array v1, v0, [C

    .line 8
    .line 9
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 17
    .line 18
    const-string v1, "writer not null"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public m(C)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 6
    .line 7
    array-length v2, v2

    .line 8
    if-le v0, v2, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->flush()V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    move v1, v0

    .line 23
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 24
    .line 25
    iget v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 26
    .line 27
    aput-char p1, v0, v2

    .line 28
    .line 29
    iput v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 30
    .line 31
    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p1, "true"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p1, "false"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public n0(J)V
    .locals 3

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const-string p1, "-9223372036854775808"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v2, p1, v0

    .line 16
    .line 17
    if-gez v2, :cond_1

    .line 18
    .line 19
    neg-long v0, p1

    .line 20
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/f;->i(J)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/f;->i(J)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 32
    .line 33
    add-int/2addr v1, v0

    .line 34
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 35
    .line 36
    array-length v2, v2

    .line 37
    if-le v1, v2, :cond_3

    .line 38
    .line 39
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-array v1, v0, [C

    .line 48
    .line 49
    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson/util/f;->f(JI[C)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, v1, p1, v0}, Lcom/alibaba/fastjson/serializer/v1;->write([CII)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 58
    .line 59
    invoke-static {p1, p2, v1, v0}, Lcom/alibaba/fastjson/util/f;->f(JI[C)V

    .line 60
    .line 61
    .line 62
    iput v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 63
    .line 64
    return-void
.end method

.method public o(ZC)V
    .locals 2

    .line 1
    const/16 v0, 0x5d

    .line 2
    .line 3
    const/16 v1, 0x2c

    .line 4
    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    if-ne p2, v1, :cond_0

    .line 8
    .line 9
    const-string p1, "true,"

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    if-ne p2, v0, :cond_1

    .line 16
    .line 17
    const-string p1, "true]"

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const-string p1, "true"

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    if-ne p2, v1, :cond_3

    .line 33
    .line 34
    const-string p1, "false,"

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    if-ne p2, v0, :cond_4

    .line 41
    .line 42
    const-string p1, "false]"

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    const-string p1, "false"

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public o0(JC)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const-string p1, "-9223372036854775808"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    cmp-long v2, p1, v0

    .line 19
    .line 20
    if-gez v2, :cond_1

    .line 21
    .line 22
    neg-long v0, p1

    .line 23
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/f;->i(J)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/util/f;->i(J)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 35
    .line 36
    add-int/2addr v1, v0

    .line 37
    add-int/lit8 v0, v1, 0x1

    .line 38
    .line 39
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 40
    .line 41
    array-length v2, v2

    .line 42
    if-le v0, v2, :cond_3

    .line 43
    .line 44
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->n0(J)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 59
    .line 60
    invoke-static {p1, p2, v1, v2}, Lcom/alibaba/fastjson/util/f;->f(JI[C)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 64
    .line 65
    aput-char p3, p1, v1

    .line 66
    .line 67
    iput v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 68
    .line 69
    return-void
.end method

.method public p([B)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 7
    .line 8
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    const/16 v4, 0x27

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v4, 0x22

    .line 18
    .line 19
    :goto_0
    if-nez v2, :cond_2

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    const-string v1, "\'\'"

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    const-string v1, "\"\""

    .line 27
    .line 28
    :goto_1
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    sget-object v3, Lcom/alibaba/fastjson/util/c;->a:[C

    .line 33
    .line 34
    div-int/lit8 v5, v2, 0x3

    .line 35
    .line 36
    mul-int/lit8 v5, v5, 0x3

    .line 37
    .line 38
    add-int/lit8 v6, v2, -0x1

    .line 39
    .line 40
    div-int/lit8 v7, v6, 0x3

    .line 41
    .line 42
    add-int/lit8 v7, v7, 0x1

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    shl-int/2addr v7, v8

    .line 46
    iget v9, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 47
    .line 48
    add-int/2addr v7, v9

    .line 49
    add-int/2addr v7, v8

    .line 50
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 51
    .line 52
    array-length v10, v10

    .line 53
    const/16 v11, 0x3d

    .line 54
    .line 55
    const/4 v12, 0x0

    .line 56
    if-le v7, v10, :cond_8

    .line 57
    .line 58
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 59
    .line 60
    if-eqz v10, :cond_7

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 63
    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    :goto_2
    if-ge v7, v5, :cond_3

    .line 67
    .line 68
    add-int/lit8 v9, v7, 0x1

    .line 69
    .line 70
    aget-byte v7, v1, v7

    .line 71
    .line 72
    and-int/lit16 v7, v7, 0xff

    .line 73
    .line 74
    shl-int/lit8 v7, v7, 0x10

    .line 75
    .line 76
    add-int/lit8 v10, v9, 0x1

    .line 77
    .line 78
    aget-byte v9, v1, v9

    .line 79
    .line 80
    and-int/lit16 v9, v9, 0xff

    .line 81
    .line 82
    shl-int/lit8 v9, v9, 0x8

    .line 83
    .line 84
    or-int/2addr v7, v9

    .line 85
    add-int/lit8 v9, v10, 0x1

    .line 86
    .line 87
    aget-byte v10, v1, v10

    .line 88
    .line 89
    and-int/lit16 v10, v10, 0xff

    .line 90
    .line 91
    or-int/2addr v7, v10

    .line 92
    ushr-int/lit8 v10, v7, 0x12

    .line 93
    .line 94
    and-int/lit8 v10, v10, 0x3f

    .line 95
    .line 96
    aget-char v10, v3, v10

    .line 97
    .line 98
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 99
    .line 100
    .line 101
    ushr-int/lit8 v10, v7, 0xc

    .line 102
    .line 103
    and-int/lit8 v10, v10, 0x3f

    .line 104
    .line 105
    aget-char v10, v3, v10

    .line 106
    .line 107
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 108
    .line 109
    .line 110
    ushr-int/lit8 v10, v7, 0x6

    .line 111
    .line 112
    and-int/lit8 v10, v10, 0x3f

    .line 113
    .line 114
    aget-char v10, v3, v10

    .line 115
    .line 116
    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 117
    .line 118
    .line 119
    and-int/lit8 v7, v7, 0x3f

    .line 120
    .line 121
    aget-char v7, v3, v7

    .line 122
    .line 123
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 124
    .line 125
    .line 126
    move v7, v9

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    sub-int/2addr v2, v5

    .line 129
    if-lez v2, :cond_6

    .line 130
    .line 131
    aget-byte v5, v1, v5

    .line 132
    .line 133
    and-int/lit16 v5, v5, 0xff

    .line 134
    .line 135
    shl-int/lit8 v5, v5, 0xa

    .line 136
    .line 137
    if-ne v2, v8, :cond_4

    .line 138
    .line 139
    aget-byte v1, v1, v6

    .line 140
    .line 141
    and-int/lit16 v1, v1, 0xff

    .line 142
    .line 143
    shl-int/lit8 v12, v1, 0x2

    .line 144
    .line 145
    :cond_4
    or-int v1, v5, v12

    .line 146
    .line 147
    shr-int/lit8 v5, v1, 0xc

    .line 148
    .line 149
    aget-char v5, v3, v5

    .line 150
    .line 151
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 152
    .line 153
    .line 154
    ushr-int/lit8 v5, v1, 0x6

    .line 155
    .line 156
    and-int/lit8 v5, v5, 0x3f

    .line 157
    .line 158
    aget-char v5, v3, v5

    .line 159
    .line 160
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 161
    .line 162
    .line 163
    if-ne v2, v8, :cond_5

    .line 164
    .line 165
    and-int/lit8 v1, v1, 0x3f

    .line 166
    .line 167
    aget-char v1, v3, v1

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_5
    const/16 v1, 0x3d

    .line 171
    .line 172
    :goto_3
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 176
    .line 177
    .line 178
    :cond_6
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_7
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    .line 183
    .line 184
    .line 185
    :cond_8
    iput v7, v0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 186
    .line 187
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 188
    .line 189
    add-int/lit8 v13, v9, 0x1

    .line 190
    .line 191
    aput-char v4, v10, v9

    .line 192
    .line 193
    const/4 v9, 0x0

    .line 194
    :goto_4
    if-ge v9, v5, :cond_9

    .line 195
    .line 196
    add-int/lit8 v10, v9, 0x1

    .line 197
    .line 198
    aget-byte v9, v1, v9

    .line 199
    .line 200
    and-int/lit16 v9, v9, 0xff

    .line 201
    .line 202
    shl-int/lit8 v9, v9, 0x10

    .line 203
    .line 204
    add-int/lit8 v14, v10, 0x1

    .line 205
    .line 206
    aget-byte v10, v1, v10

    .line 207
    .line 208
    and-int/lit16 v10, v10, 0xff

    .line 209
    .line 210
    shl-int/lit8 v10, v10, 0x8

    .line 211
    .line 212
    or-int/2addr v9, v10

    .line 213
    add-int/lit8 v10, v14, 0x1

    .line 214
    .line 215
    aget-byte v14, v1, v14

    .line 216
    .line 217
    and-int/lit16 v14, v14, 0xff

    .line 218
    .line 219
    or-int/2addr v9, v14

    .line 220
    iget-object v14, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 221
    .line 222
    add-int/lit8 v15, v13, 0x1

    .line 223
    .line 224
    ushr-int/lit8 v16, v9, 0x12

    .line 225
    .line 226
    and-int/lit8 v16, v16, 0x3f

    .line 227
    .line 228
    aget-char v16, v3, v16

    .line 229
    .line 230
    aput-char v16, v14, v13

    .line 231
    .line 232
    add-int/lit8 v13, v15, 0x1

    .line 233
    .line 234
    ushr-int/lit8 v16, v9, 0xc

    .line 235
    .line 236
    and-int/lit8 v16, v16, 0x3f

    .line 237
    .line 238
    aget-char v16, v3, v16

    .line 239
    .line 240
    aput-char v16, v14, v15

    .line 241
    .line 242
    add-int/lit8 v15, v13, 0x1

    .line 243
    .line 244
    ushr-int/lit8 v16, v9, 0x6

    .line 245
    .line 246
    and-int/lit8 v16, v16, 0x3f

    .line 247
    .line 248
    aget-char v16, v3, v16

    .line 249
    .line 250
    aput-char v16, v14, v13

    .line 251
    .line 252
    add-int/lit8 v13, v15, 0x1

    .line 253
    .line 254
    and-int/lit8 v9, v9, 0x3f

    .line 255
    .line 256
    aget-char v9, v3, v9

    .line 257
    .line 258
    aput-char v9, v14, v15

    .line 259
    .line 260
    move v9, v10

    .line 261
    goto :goto_4

    .line 262
    :cond_9
    sub-int/2addr v2, v5

    .line 263
    if-lez v2, :cond_c

    .line 264
    .line 265
    aget-byte v5, v1, v5

    .line 266
    .line 267
    and-int/lit16 v5, v5, 0xff

    .line 268
    .line 269
    shl-int/lit8 v5, v5, 0xa

    .line 270
    .line 271
    if-ne v2, v8, :cond_a

    .line 272
    .line 273
    aget-byte v1, v1, v6

    .line 274
    .line 275
    and-int/lit16 v1, v1, 0xff

    .line 276
    .line 277
    shl-int/lit8 v12, v1, 0x2

    .line 278
    .line 279
    :cond_a
    or-int v1, v5, v12

    .line 280
    .line 281
    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 282
    .line 283
    add-int/lit8 v6, v7, -0x5

    .line 284
    .line 285
    shr-int/lit8 v9, v1, 0xc

    .line 286
    .line 287
    aget-char v9, v3, v9

    .line 288
    .line 289
    aput-char v9, v5, v6

    .line 290
    .line 291
    add-int/lit8 v6, v7, -0x4

    .line 292
    .line 293
    ushr-int/lit8 v9, v1, 0x6

    .line 294
    .line 295
    and-int/lit8 v9, v9, 0x3f

    .line 296
    .line 297
    aget-char v9, v3, v9

    .line 298
    .line 299
    aput-char v9, v5, v6

    .line 300
    .line 301
    add-int/lit8 v6, v7, -0x3

    .line 302
    .line 303
    if-ne v2, v8, :cond_b

    .line 304
    .line 305
    and-int/lit8 v1, v1, 0x3f

    .line 306
    .line 307
    aget-char v1, v3, v1

    .line 308
    .line 309
    goto :goto_5

    .line 310
    :cond_b
    const/16 v1, 0x3d

    .line 311
    .line 312
    :goto_5
    aput-char v1, v5, v6

    .line 313
    .line 314
    add-int/lit8 v1, v7, -0x2

    .line 315
    .line 316
    aput-char v11, v5, v1

    .line 317
    .line 318
    :cond_c
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 319
    .line 320
    add-int/lit8 v7, v7, -0x1

    .line 321
    .line 322
    aput-char v4, v1, v7

    .line 323
    .line 324
    return-void
.end method

.method public p0()V
    .locals 1

    .line 1
    const-string v0, "null"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(CC)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public q0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->u0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/v1;->s0(Ljava/lang/String;C)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public r0(Ljava/lang/String;C)V
    .locals 1

    .line 1
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->u0(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->s0(Ljava/lang/String;C)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public s(DC)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, ".0"

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    add-int/lit8 p2, p2, -0x2

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public t(Ljava/lang/Enum;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;C)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x2c

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/16 v0, 0x27

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/16 v0, 0x22

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void

    .line 66
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->k0(IC)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget v3, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public u(CLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "[]"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/v1;->x(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public v0(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/v1;->w0(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public w0(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iget v3, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 24
    .line 25
    const-string p2, "writer not null"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public write(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    array-length v2, v2

    if-le v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->flush()V

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    .line 6
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    int-to-char p1, p1

    aput-char p1, v0, v2

    .line 7
    iput v1, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4

    .line 21
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    add-int/2addr v0, p3

    .line 22
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 23
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 24
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    sub-int/2addr v1, v2

    add-int v3, p2, v1

    .line 26
    invoke-virtual {p1, p2, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 27
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    array-length p2, p2

    iput p2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->flush()V

    sub-int/2addr p3, v1

    .line 29
    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    array-length p2, p2

    if-gt p3, p2, :cond_1

    move v0, p3

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v3

    goto :goto_0

    :cond_2
    :goto_1
    add-int/2addr p3, p2

    .line 30
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    invoke-virtual {p1, p2, p3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 31
    iput v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    return-void
.end method

.method public write([CII)V
    .locals 3

    if-ltz p2, :cond_3

    .line 8
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    if-nez p3, :cond_0

    return-void

    .line 9
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    add-int/2addr v0, p3

    .line 10
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    array-length v1, v1

    if-le v0, v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 12
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->e(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    sub-int/2addr v1, v2

    .line 14
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    array-length v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->flush()V

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    array-length v0, v0

    if-gt p3, v0, :cond_1

    move v0, p3

    .line 18
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    iput v0, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    return-void

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public x(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "null:"

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x3a

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 20
    .line 21
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->u0(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m0(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-direct {p0, p1, v1, p2}, Lcom/alibaba/fastjson/serializer/v1;->t0(Ljava/lang/String;CZ)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->l0(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public x0(Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->e:Ljava/io/Writer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/v1;->b:[C

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iget v2, p0, Lcom/alibaba/fastjson/serializer/v1;->c:I

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 15
    .line 16
    const-string v0, "writer not null"

    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public y(CLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public z(CLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-string p1, "false"

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
