.class public final Lcom/google/zxing/aztec/decoder/Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/decoder/Decoder$Table;
    }
.end annotation


# static fields
.field private static final DIGIT_TABLE:[Ljava/lang/String;

.field private static final LOWER_TABLE:[Ljava/lang/String;

.field private static final MIXED_TABLE:[Ljava/lang/String;

.field private static final NB_BITS:[I

.field private static final NB_BITS_COMPACT:[I

.field private static final NB_DATABLOCK:[I

.field private static final NB_DATABLOCK_COMPACT:[I

.field private static final PUNCT_TABLE:[Ljava/lang/String;

.field private static final UPPER_TABLE:[Ljava/lang/String;


# instance fields
.field private codewordSize:I

.field private ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

.field private invertedBitCount:I

.field private numCodewords:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 1
    const/16 v0, 0x198

    .line 2
    .line 3
    const/16 v1, 0x260

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x68

    .line 7
    .line 8
    const/16 v4, 0xf0

    .line 9
    .line 10
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    .line 15
    .line 16
    const/16 v0, 0x21

    .line 17
    .line 18
    new-array v1, v0, [I

    .line 19
    .line 20
    fill-array-data v1, :array_0

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    .line 24
    .line 25
    const/16 v1, 0x33

    .line 26
    .line 27
    const/16 v3, 0x4c

    .line 28
    .line 29
    const/16 v4, 0x11

    .line 30
    .line 31
    const/16 v5, 0x28

    .line 32
    .line 33
    filled-new-array {v2, v4, v5, v1, v3}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sput-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    .line 38
    .line 39
    new-array v0, v0, [I

    .line 40
    .line 41
    fill-array-data v0, :array_1

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    .line 45
    .line 46
    const-string v1, "CTRL_PS"

    .line 47
    .line 48
    const-string v2, " "

    .line 49
    .line 50
    const-string v3, "A"

    .line 51
    .line 52
    const-string v4, "B"

    .line 53
    .line 54
    const-string v5, "C"

    .line 55
    .line 56
    const-string v6, "D"

    .line 57
    .line 58
    const-string v7, "E"

    .line 59
    .line 60
    const-string v8, "F"

    .line 61
    .line 62
    const-string v9, "G"

    .line 63
    .line 64
    const-string v10, "H"

    .line 65
    .line 66
    const-string v11, "I"

    .line 67
    .line 68
    const-string v12, "J"

    .line 69
    .line 70
    const-string v13, "K"

    .line 71
    .line 72
    const-string v14, "L"

    .line 73
    .line 74
    const-string v15, "M"

    .line 75
    .line 76
    const-string v16, "N"

    .line 77
    .line 78
    const-string v17, "O"

    .line 79
    .line 80
    const-string v18, "P"

    .line 81
    .line 82
    const-string v19, "Q"

    .line 83
    .line 84
    const-string v20, "R"

    .line 85
    .line 86
    const-string v21, "S"

    .line 87
    .line 88
    const-string v22, "T"

    .line 89
    .line 90
    const-string v23, "U"

    .line 91
    .line 92
    const-string v24, "V"

    .line 93
    .line 94
    const-string v25, "W"

    .line 95
    .line 96
    const-string v26, "X"

    .line 97
    .line 98
    const-string v27, "Y"

    .line 99
    .line 100
    const-string v28, "Z"

    .line 101
    .line 102
    const-string v29, "CTRL_LL"

    .line 103
    .line 104
    const-string v30, "CTRL_ML"

    .line 105
    .line 106
    const-string v31, "CTRL_DL"

    .line 107
    .line 108
    const-string v32, "CTRL_BS"

    .line 109
    .line 110
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 115
    .line 116
    const-string v1, "CTRL_PS"

    .line 117
    .line 118
    const-string v2, " "

    .line 119
    .line 120
    const-string v3, "a"

    .line 121
    .line 122
    const-string v4, "b"

    .line 123
    .line 124
    const-string v5, "c"

    .line 125
    .line 126
    const-string v6, "d"

    .line 127
    .line 128
    const-string v7, "e"

    .line 129
    .line 130
    const-string v8, "f"

    .line 131
    .line 132
    const-string v9, "g"

    .line 133
    .line 134
    const-string v10, "h"

    .line 135
    .line 136
    const-string v11, "i"

    .line 137
    .line 138
    const-string v12, "j"

    .line 139
    .line 140
    const-string v13, "k"

    .line 141
    .line 142
    const-string v14, "l"

    .line 143
    .line 144
    const-string v15, "m"

    .line 145
    .line 146
    const-string v16, "n"

    .line 147
    .line 148
    const-string v17, "o"

    .line 149
    .line 150
    const-string v18, "p"

    .line 151
    .line 152
    const-string v19, "q"

    .line 153
    .line 154
    const-string v20, "r"

    .line 155
    .line 156
    const-string v21, "s"

    .line 157
    .line 158
    const-string v22, "t"

    .line 159
    .line 160
    const-string v23, "u"

    .line 161
    .line 162
    const-string v24, "v"

    .line 163
    .line 164
    const-string v25, "w"

    .line 165
    .line 166
    const-string v26, "x"

    .line 167
    .line 168
    const-string v27, "y"

    .line 169
    .line 170
    const-string v28, "z"

    .line 171
    .line 172
    const-string v29, "CTRL_US"

    .line 173
    .line 174
    const-string v30, "CTRL_ML"

    .line 175
    .line 176
    const-string v31, "CTRL_DL"

    .line 177
    .line 178
    const-string v32, "CTRL_BS"

    .line 179
    .line 180
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 185
    .line 186
    const-string v1, "CTRL_PS"

    .line 187
    .line 188
    const-string v2, " "

    .line 189
    .line 190
    const-string v3, "\u0001"

    .line 191
    .line 192
    const-string v4, "\u0002"

    .line 193
    .line 194
    const-string v5, "\u0003"

    .line 195
    .line 196
    const-string v6, "\u0004"

    .line 197
    .line 198
    const-string v7, "\u0005"

    .line 199
    .line 200
    const-string v8, "\u0006"

    .line 201
    .line 202
    const-string v9, "\u0007"

    .line 203
    .line 204
    const-string v10, "\u0008"

    .line 205
    .line 206
    const-string v11, "\t"

    .line 207
    .line 208
    const-string v12, "\n"

    .line 209
    .line 210
    const-string v13, "\u000b"

    .line 211
    .line 212
    const-string v14, "\u000c"

    .line 213
    .line 214
    const-string v15, "\r"

    .line 215
    .line 216
    const-string v16, "\u001b"

    .line 217
    .line 218
    const-string v17, "\u001c"

    .line 219
    .line 220
    const-string v18, "\u001d"

    .line 221
    .line 222
    const-string v19, "\u001e"

    .line 223
    .line 224
    const-string v20, "\u001f"

    .line 225
    .line 226
    const-string v21, "@"

    .line 227
    .line 228
    const-string v22, "\\"

    .line 229
    .line 230
    const-string v23, "^"

    .line 231
    .line 232
    const-string v24, "_"

    .line 233
    .line 234
    const-string v25, "`"

    .line 235
    .line 236
    const-string v26, "|"

    .line 237
    .line 238
    const-string v27, "~"

    .line 239
    .line 240
    const-string v28, "\u007f"

    .line 241
    .line 242
    const-string v29, "CTRL_LL"

    .line 243
    .line 244
    const-string v30, "CTRL_UL"

    .line 245
    .line 246
    const-string v31, "CTRL_PL"

    .line 247
    .line 248
    const-string v32, "CTRL_BS"

    .line 249
    .line 250
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 255
    .line 256
    const-string v1, ""

    .line 257
    .line 258
    const-string v2, "\r"

    .line 259
    .line 260
    const-string v3, "\r\n"

    .line 261
    .line 262
    const-string v4, ". "

    .line 263
    .line 264
    const-string v5, ", "

    .line 265
    .line 266
    const-string v6, ": "

    .line 267
    .line 268
    const-string v7, "!"

    .line 269
    .line 270
    const-string v8, "\""

    .line 271
    .line 272
    const-string v9, "#"

    .line 273
    .line 274
    const-string v10, "$"

    .line 275
    .line 276
    const-string v11, "%"

    .line 277
    .line 278
    const-string v12, "&"

    .line 279
    .line 280
    const-string v13, "\'"

    .line 281
    .line 282
    const-string v14, "("

    .line 283
    .line 284
    const-string v15, ")"

    .line 285
    .line 286
    const-string v16, "*"

    .line 287
    .line 288
    const-string v17, "+"

    .line 289
    .line 290
    const-string v18, ","

    .line 291
    .line 292
    const-string v19, "-"

    .line 293
    .line 294
    const-string v20, "."

    .line 295
    .line 296
    const-string v21, "/"

    .line 297
    .line 298
    const-string v22, ":"

    .line 299
    .line 300
    const-string v23, ";"

    .line 301
    .line 302
    const-string v24, "<"

    .line 303
    .line 304
    const-string v25, "="

    .line 305
    .line 306
    const-string v26, ">"

    .line 307
    .line 308
    const-string v27, "?"

    .line 309
    .line 310
    const-string v28, "["

    .line 311
    .line 312
    const-string v29, "]"

    .line 313
    .line 314
    const-string v30, "{"

    .line 315
    .line 316
    const-string v31, "}"

    .line 317
    .line 318
    const-string v32, "CTRL_UL"

    .line 319
    .line 320
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 325
    .line 326
    const-string v1, "CTRL_PS"

    .line 327
    .line 328
    const-string v2, " "

    .line 329
    .line 330
    const-string v3, "0"

    .line 331
    .line 332
    const-string v4, "1"

    .line 333
    .line 334
    const-string v5, "2"

    .line 335
    .line 336
    const-string v6, "3"

    .line 337
    .line 338
    const-string v7, "4"

    .line 339
    .line 340
    const-string v8, "5"

    .line 341
    .line 342
    const-string v9, "6"

    .line 343
    .line 344
    const-string v10, "7"

    .line 345
    .line 346
    const-string v11, "8"

    .line 347
    .line 348
    const-string v12, "9"

    .line 349
    .line 350
    const-string v13, ","

    .line 351
    .line 352
    const-string v14, "."

    .line 353
    .line 354
    const-string v15, "CTRL_UL"

    .line 355
    .line 356
    const-string v16, "CTRL_US"

    .line 357
    .line 358
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    sput-object v0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    .line 363
    .line 364
    return-void

    .line 365
    :array_0
    .array-data 4
        0x0
        0x80
        0x120
        0x1e0
        0x2c0
        0x3c0
        0x4e0
        0x620
        0x780
        0x900
        0xaa0
        0xc60
        0xe40
        0x1040
        0x1260
        0x14a0
        0x1700
        0x1980
        0x1c20
        0x1ee0
        0x21c0
        0x24c0
        0x27e0
        0x2b20
        0x2e80
        0x3200
        0x35a0
        0x3960
        0x3d40
        0x4140
        0x4560
        0x49a0
        0x4e00
    .end array-data

    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
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
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    :array_1
    .array-data 4
        0x0
        0x15
        0x30
        0x3c
        0x58
        0x78
        0x9c
        0xc4
        0xf0
        0xe6
        0x110
        0x13c
        0x16c
        0x1a0
        0x1d6
        0x210
        0x24c
        0x28c
        0x2d0
        0x316
        0x360
        0x3ac
        0x3fc
        0x398
        0x3e0
        0x42a
        0x478
        0x4c8
        0x51a
        0x570
        0x5c8
        0x622
        0x680
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

.method private correctBits([Z)[Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x6

    .line 11
    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 12
    .line 13
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_6:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    if-gt v0, v1, :cond_1

    .line 25
    .line 26
    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 27
    .line 28
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_8:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/16 v1, 0x16

    .line 38
    .line 39
    if-gt v0, v1, :cond_2

    .line 40
    .line 41
    const/16 v0, 0xa

    .line 42
    .line 43
    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 44
    .line 45
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_10:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/16 v0, 0xc

    .line 49
    .line 50
    iput v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 51
    .line 52
    sget-object v0, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_DATA_12:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 53
    .line 54
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    .line 69
    .line 70
    iget-object v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    aget v2, v2, v3

    .line 77
    .line 78
    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    .line 79
    .line 80
    iget v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 81
    .line 82
    mul-int v3, v3, v4

    .line 83
    .line 84
    sub-int/2addr v2, v3

    .line 85
    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    .line 86
    .line 87
    iget-object v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 88
    .line 89
    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    aget v3, v3, v4

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    sget-object v2, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    .line 97
    .line 98
    iget-object v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    aget v2, v2, v3

    .line 105
    .line 106
    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    .line 107
    .line 108
    iget v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 109
    .line 110
    mul-int v3, v3, v4

    .line 111
    .line 112
    sub-int/2addr v2, v3

    .line 113
    sget-object v3, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    .line 114
    .line 115
    iget-object v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 116
    .line 117
    invoke-virtual {v4}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    aget v3, v3, v4

    .line 122
    .line 123
    :goto_1
    sub-int/2addr v3, v1

    .line 124
    iget v4, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    .line 125
    .line 126
    new-array v4, v4, [I

    .line 127
    .line 128
    const/4 v5, 0x0

    .line 129
    const/4 v6, 0x0

    .line 130
    :goto_2
    iget v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    .line 131
    .line 132
    const/4 v8, 0x1

    .line 133
    if-ge v6, v7, :cond_6

    .line 134
    .line 135
    const/4 v7, 0x1

    .line 136
    :goto_3
    iget v9, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 137
    .line 138
    if-gt v8, v9, :cond_5

    .line 139
    .line 140
    mul-int v10, v9, v6

    .line 141
    .line 142
    add-int/2addr v10, v9

    .line 143
    sub-int/2addr v10, v8

    .line 144
    add-int/2addr v10, v2

    .line 145
    aget-boolean v9, p1, v10

    .line 146
    .line 147
    if-eqz v9, :cond_4

    .line 148
    .line 149
    aget v9, v4, v6

    .line 150
    .line 151
    add-int/2addr v9, v7

    .line 152
    aput v9, v4, v6

    .line 153
    .line 154
    :cond_4
    shl-int/lit8 v7, v7, 0x1

    .line 155
    .line 156
    add-int/lit8 v8, v8, 0x1

    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_6
    :try_start_0
    new-instance p1, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 163
    .line 164
    invoke-direct {p1, v0}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, v4, v3}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    .line 170
    iput v5, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    .line 171
    .line 172
    iget p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 173
    .line 174
    mul-int p1, p1, v1

    .line 175
    .line 176
    new-array p1, p1, [Z

    .line 177
    .line 178
    const/4 v0, 0x0

    .line 179
    const/4 v2, 0x0

    .line 180
    :goto_4
    if-ge v0, v1, :cond_c

    .line 181
    .line 182
    iget v3, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 183
    .line 184
    sub-int/2addr v3, v8

    .line 185
    shl-int v3, v8, v3

    .line 186
    .line 187
    const/4 v6, 0x0

    .line 188
    const/4 v7, 0x0

    .line 189
    const/4 v9, 0x0

    .line 190
    :goto_5
    iget v10, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 191
    .line 192
    if-ge v6, v10, :cond_b

    .line 193
    .line 194
    aget v11, v4, v0

    .line 195
    .line 196
    and-int/2addr v11, v3

    .line 197
    if-ne v11, v3, :cond_7

    .line 198
    .line 199
    const/4 v11, 0x1

    .line 200
    goto :goto_6

    .line 201
    :cond_7
    const/4 v11, 0x0

    .line 202
    :goto_6
    add-int/lit8 v12, v10, -0x1

    .line 203
    .line 204
    if-ne v7, v12, :cond_9

    .line 205
    .line 206
    if-eq v11, v9, :cond_8

    .line 207
    .line 208
    add-int/lit8 v2, v2, 0x1

    .line 209
    .line 210
    iget v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    .line 211
    .line 212
    add-int/2addr v7, v8

    .line 213
    iput v7, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    .line 214
    .line 215
    const/4 v7, 0x0

    .line 216
    const/4 v9, 0x0

    .line 217
    goto :goto_8

    .line 218
    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    throw p1

    .line 223
    :cond_9
    if-ne v9, v11, :cond_a

    .line 224
    .line 225
    add-int/lit8 v7, v7, 0x1

    .line 226
    .line 227
    goto :goto_7

    .line 228
    :cond_a
    move v9, v11

    .line 229
    const/4 v7, 0x1

    .line 230
    :goto_7
    mul-int v10, v10, v0

    .line 231
    .line 232
    add-int/2addr v10, v6

    .line 233
    sub-int/2addr v10, v2

    .line 234
    aput-boolean v11, p1, v10

    .line 235
    .line 236
    :goto_8
    ushr-int/lit8 v3, v3, 0x1

    .line 237
    .line 238
    add-int/lit8 v6, v6, 0x1

    .line 239
    .line 240
    goto :goto_5

    .line 241
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_c
    return-object p1

    .line 245
    :catch_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    throw p1
.end method

.method private extractBits(Lcom/google/zxing/common/BitMatrix;)[Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS_COMPACT:[I

    .line 16
    .line 17
    array-length v2, v1

    .line 18
    if-gt v0, v2, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    aget v0, v1, v0

    .line 27
    .line 28
    new-array v0, v0, [Z

    .line 29
    .line 30
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK_COMPACT:[I

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    aget v1, v1, v2

    .line 39
    .line 40
    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    throw p1

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_BITS:[I

    .line 55
    .line 56
    array-length v2, v1

    .line 57
    if-gt v0, v2, :cond_5

    .line 58
    .line 59
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    aget v0, v1, v0

    .line 66
    .line 67
    new-array v0, v0, [Z

    .line 68
    .line 69
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder;->NB_DATABLOCK:[I

    .line 70
    .line 71
    iget-object v2, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    aget v1, v1, v2

    .line 78
    .line 79
    iput v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->numCodewords:I

    .line 80
    .line 81
    :goto_0
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbLayers()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    const/4 v3, 0x0

    .line 92
    const/4 v4, 0x0

    .line 93
    const/4 v5, 0x0

    .line 94
    :goto_1
    if-eqz v1, :cond_4

    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    const/4 v7, 0x0

    .line 98
    :goto_2
    mul-int/lit8 v8, v2, 0x2

    .line 99
    .line 100
    add-int/lit8 v9, v8, -0x4

    .line 101
    .line 102
    if-ge v6, v9, :cond_2

    .line 103
    .line 104
    add-int v9, v4, v6

    .line 105
    .line 106
    add-int v10, v5, v7

    .line 107
    .line 108
    div-int/lit8 v11, v6, 0x2

    .line 109
    .line 110
    add-int/2addr v11, v5

    .line 111
    invoke-virtual {p1, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    aput-boolean v10, v0, v9

    .line 116
    .line 117
    add-int/2addr v8, v4

    .line 118
    add-int/lit8 v8, v8, -0x4

    .line 119
    .line 120
    add-int/2addr v8, v6

    .line 121
    add-int v9, v5, v2

    .line 122
    .line 123
    add-int/lit8 v9, v9, -0x1

    .line 124
    .line 125
    sub-int/2addr v9, v7

    .line 126
    invoke-virtual {p1, v11, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    aput-boolean v9, v0, v8

    .line 131
    .line 132
    add-int/lit8 v7, v7, 0x1

    .line 133
    .line 134
    rem-int/lit8 v7, v7, 0x2

    .line 135
    .line 136
    add-int/lit8 v6, v6, 0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    add-int/lit8 v6, v8, 0x1

    .line 140
    .line 141
    const/4 v7, 0x0

    .line 142
    :goto_3
    const/4 v9, 0x5

    .line 143
    if-le v6, v9, :cond_3

    .line 144
    .line 145
    mul-int/lit8 v9, v2, 0x4

    .line 146
    .line 147
    add-int/2addr v9, v4

    .line 148
    add-int/lit8 v9, v9, -0x8

    .line 149
    .line 150
    sub-int v10, v8, v6

    .line 151
    .line 152
    add-int/2addr v9, v10

    .line 153
    add-int/lit8 v9, v9, 0x1

    .line 154
    .line 155
    add-int v11, v5, v2

    .line 156
    .line 157
    add-int/lit8 v11, v11, -0x1

    .line 158
    .line 159
    sub-int/2addr v11, v7

    .line 160
    div-int/lit8 v12, v6, 0x2

    .line 161
    .line 162
    add-int/2addr v12, v5

    .line 163
    add-int/lit8 v12, v12, -0x1

    .line 164
    .line 165
    invoke-virtual {p1, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 166
    .line 167
    .line 168
    move-result v11

    .line 169
    aput-boolean v11, v0, v9

    .line 170
    .line 171
    mul-int/lit8 v9, v2, 0x6

    .line 172
    .line 173
    add-int/2addr v9, v4

    .line 174
    add-int/lit8 v9, v9, -0xc

    .line 175
    .line 176
    add-int/2addr v9, v10

    .line 177
    add-int/lit8 v9, v9, 0x1

    .line 178
    .line 179
    add-int v10, v5, v7

    .line 180
    .line 181
    invoke-virtual {p1, v12, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    aput-boolean v10, v0, v9

    .line 186
    .line 187
    add-int/lit8 v7, v7, 0x1

    .line 188
    .line 189
    rem-int/lit8 v7, v7, 0x2

    .line 190
    .line 191
    add-int/lit8 v6, v6, -0x1

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_3
    add-int/lit8 v5, v5, 0x2

    .line 195
    .line 196
    mul-int/lit8 v6, v2, 0x8

    .line 197
    .line 198
    add-int/lit8 v6, v6, -0x10

    .line 199
    .line 200
    add-int/2addr v4, v6

    .line 201
    add-int/lit8 v1, v1, -0x1

    .line 202
    .line 203
    add-int/lit8 v2, v2, -0x4

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_4
    return-object v0

    .line 207
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    throw p1
.end method

.method private static getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    aget p0, v0, p0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-eq p0, v0, :cond_4

    .line 11
    .line 12
    const/4 v0, 0x3

    .line 13
    if-eq p0, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x6

    .line 22
    if-eq p0, v0, :cond_0

    .line 23
    .line 24
    const-string p0, ""

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->DIGIT_TABLE:[Ljava/lang/String;

    .line 28
    .line 29
    aget-object p0, p0, p1

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->PUNCT_TABLE:[Ljava/lang/String;

    .line 33
    .line 34
    aget-object p0, p0, p1

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->MIXED_TABLE:[Ljava/lang/String;

    .line 38
    .line 39
    aget-object p0, p0, p1

    .line 40
    .line 41
    return-object p0

    .line 42
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->LOWER_TABLE:[Ljava/lang/String;

    .line 43
    .line 44
    aget-object p0, p0, p1

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder;->UPPER_TABLE:[Ljava/lang/String;

    .line 48
    .line 49
    aget-object p0, p0, p1

    .line 50
    .line 51
    return-object p0
.end method

.method private getEncodedData([Z)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->codewordSize:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/zxing/aztec/AztecDetectorResult;->getNbDatablocks()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    mul-int v0, v0, v1

    .line 10
    .line 11
    iget v1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->invertedBitCount:I

    .line 12
    .line 13
    sub-int/2addr v0, v1

    .line 14
    array-length v1, p1

    .line 15
    if-gt v0, v1, :cond_9

    .line 16
    .line 17
    sget-object v1, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const/16 v3, 0x14

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v4, v1

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    const/4 v7, 0x0

    .line 31
    :goto_0
    const/4 v8, 0x0

    .line 32
    :cond_0
    if-nez v5, :cond_8

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    if-eqz v6, :cond_1

    .line 36
    .line 37
    const/4 v8, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move-object v4, v1

    .line 40
    :goto_1
    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder$1;->$SwitchMap$com$google$zxing$aztec$decoder$Decoder$Table:[I

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v11

    .line 46
    aget v10, v10, v11

    .line 47
    .line 48
    if-eq v10, v9, :cond_5

    .line 49
    .line 50
    sget-object v10, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 51
    .line 52
    const/4 v11, 0x5

    .line 53
    if-ne v1, v10, :cond_2

    .line 54
    .line 55
    const/4 v10, 0x4

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/4 v10, 0x5

    .line 58
    :goto_2
    sub-int v12, v0, v7

    .line 59
    .line 60
    if-ge v12, v10, :cond_3

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_3
    invoke-static {p1, v7, v10}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    add-int/2addr v7, v10

    .line 68
    invoke-static {v1, v12}, Lcom/google/zxing/aztec/decoder/Decoder;->getCharacter(Lcom/google/zxing/aztec/decoder/Decoder$Table;I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    const-string v12, "CTRL_"

    .line 73
    .line 74
    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-eqz v12, :cond_4

    .line 79
    .line 80
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-static {v1}, Lcom/google/zxing/aztec/decoder/Decoder;->getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const/4 v11, 0x6

    .line 89
    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    const/16 v11, 0x53

    .line 94
    .line 95
    if-ne v10, v11, :cond_7

    .line 96
    .line 97
    const/4 v6, 0x1

    .line 98
    goto :goto_4

    .line 99
    :cond_4
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    sub-int v10, v0, v7

    .line 104
    .line 105
    const/16 v11, 0x8

    .line 106
    .line 107
    if-ge v10, v11, :cond_6

    .line 108
    .line 109
    :goto_3
    const/4 v5, 0x1

    .line 110
    goto :goto_4

    .line 111
    :cond_6
    invoke-static {p1, v7, v11}, Lcom/google/zxing/aztec/decoder/Decoder;->readCode([ZII)I

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    add-int/lit8 v7, v7, 0x8

    .line 116
    .line 117
    int-to-char v9, v9

    .line 118
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    :cond_7
    :goto_4
    if-eqz v8, :cond_0

    .line 122
    .line 123
    move-object v1, v4

    .line 124
    const/4 v6, 0x0

    .line 125
    goto :goto_0

    .line 126
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1

    .line 131
    :cond_9
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    throw p1
.end method

.method private static getTable(C)Lcom/google/zxing/aztec/decoder/Decoder$Table;
    .locals 1

    .line 1
    const/16 v0, 0x42

    .line 2
    .line 3
    if-eq p0, v0, :cond_4

    .line 4
    .line 5
    const/16 v0, 0x44

    .line 6
    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/16 v0, 0x50

    .line 10
    .line 11
    if-eq p0, v0, :cond_2

    .line 12
    .line 13
    const/16 v0, 0x4c

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x4d

    .line 18
    .line 19
    if-eq p0, v0, :cond_0

    .line 20
    .line 21
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->UPPER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->MIXED:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_1
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->LOWER:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_2
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->PUNCT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_3
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->DIGIT:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_4
    sget-object p0, Lcom/google/zxing/aztec/decoder/Decoder$Table;->BINARY:Lcom/google/zxing/aztec/decoder/Decoder$Table;

    .line 37
    .line 38
    return-object p0
.end method

.method private static readCode([ZII)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, p1

    .line 3
    :goto_0
    add-int v2, p1, p2

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    shl-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    aget-boolean v2, p0, v1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return v0
.end method

.method private static removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    div-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    div-int/lit8 v0, v0, 0x10

    .line 10
    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    new-instance v1, Lcom/google/zxing/common/BitMatrix;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-int/2addr v2, v0

    .line 22
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    sub-int/2addr v3, v0

    .line 27
    invoke-direct {v1, v2, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ge v2, v4, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    div-int/lit8 v4, v4, 0x2

    .line 44
    .line 45
    sub-int/2addr v4, v2

    .line 46
    rem-int/lit8 v4, v4, 0x10

    .line 47
    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_0
    const/4 v4, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-ge v4, v6, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    div-int/lit8 v6, v6, 0x2

    .line 64
    .line 65
    sub-int/2addr v6, v4

    .line 66
    rem-int/lit8 v6, v6, 0x10

    .line 67
    .line 68
    if-nez v6, :cond_1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    invoke-virtual {p0, v2, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_2

    .line 76
    .line 77
    invoke-virtual {v1, v3, v5}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 78
    .line 79
    .line 80
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    return-object v1
.end method


# virtual methods
.method public decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/zxing/aztec/AztecDetectorResult;->isCompact()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/zxing/aztec/decoder/Decoder;->ddata:Lcom/google/zxing/aztec/AztecDetectorResult;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/google/zxing/aztec/decoder/Decoder;->removeDashedLines(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->extractBits(Lcom/google/zxing/common/BitMatrix;)[Z

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->correctBits([Z)[Z

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcom/google/zxing/aztec/decoder/Decoder;->getEncodedData([Z)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {v0, v1, p1, v1, v1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v0
.end method
