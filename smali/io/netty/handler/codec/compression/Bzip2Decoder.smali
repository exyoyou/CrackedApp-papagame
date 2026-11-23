.class public Lio/netty/handler/codec/compression/Bzip2Decoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/Bzip2Decoder$State;
    }
.end annotation


# instance fields
.field private blockCRC:I

.field private blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

.field private blockSize:I

.field private currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

.field private huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

.field private final reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

.field private streamCRC:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 5
    .line 6
    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 7
    .line 8
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2BitReader;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v2, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->reader:Lio/netty/handler/codec/compression/Bzip2BitReader;

    .line 13
    .line 14
    invoke-virtual {v2, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->setByteBuf(Lio/netty/buffer/ByteBuf;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$1;->$SwitchMap$io$netty$handler$codec$compression$Bzip2Decoder$State:[I

    .line 18
    .line 19
    iget-object v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    aget v3, v3, v4

    .line 26
    .line 27
    const/4 v9, 0x6

    .line 28
    const/16 v4, 0x18

    .line 29
    .line 30
    const/16 v10, 0x10

    .line 31
    .line 32
    const/4 v11, 0x0

    .line 33
    const/4 v12, 0x1

    .line 34
    packed-switch v3, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const/4 v5, 0x4

    .line 56
    if-ge v3, v5, :cond_1

    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedMedium()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const v5, 0x425a68

    .line 64
    .line 65
    .line 66
    if-ne v3, v5, :cond_23

    .line 67
    .line 68
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    add-int/lit8 v3, v3, -0x30

    .line 73
    .line 74
    if-lt v3, v12, :cond_22

    .line 75
    .line 76
    const/16 v5, 0x9

    .line 77
    .line 78
    if-gt v3, v5, :cond_22

    .line 79
    .line 80
    const v5, 0x186a0

    .line 81
    .line 82
    .line 83
    mul-int v3, v3, v5

    .line 84
    .line 85
    iput v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockSize:I

    .line 86
    .line 87
    iput v11, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    .line 88
    .line 89
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 90
    .line 91
    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 92
    .line 93
    :pswitch_2
    const/16 v3, 0xa

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBytes(I)Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-nez v3, :cond_2

    .line 100
    .line 101
    return-void

    .line 102
    :cond_2
    invoke-virtual {v2, v4}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    invoke-virtual {v2, v4}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    const v6, 0x177245

    .line 111
    .line 112
    .line 113
    if-ne v3, v6, :cond_4

    .line 114
    .line 115
    const v6, 0x385090

    .line 116
    .line 117
    .line 118
    if-ne v5, v6, :cond_4

    .line 119
    .line 120
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    iget v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    .line 125
    .line 126
    if-ne v3, v4, :cond_3

    .line 127
    .line 128
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->EOF:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 129
    .line 130
    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    .line 134
    .line 135
    const-string v2, "stream CRC error"

    .line 136
    .line 137
    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :cond_4
    const v6, 0x314159

    .line 142
    .line 143
    .line 144
    if-ne v3, v6, :cond_21

    .line 145
    .line 146
    const v3, 0x265359

    .line 147
    .line 148
    .line 149
    if-ne v5, v3, :cond_21

    .line 150
    .line 151
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readInt()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    iput v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockCRC:I

    .line 156
    .line 157
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK_PARAMS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 158
    .line 159
    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 160
    .line 161
    :pswitch_3
    const/16 v3, 0x19

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-nez v3, :cond_5

    .line 168
    .line 169
    return-void

    .line 170
    :cond_5
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    invoke-virtual {v2, v4}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    new-instance v13, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    .line 179
    .line 180
    iget v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockSize:I

    .line 181
    .line 182
    iget v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockCRC:I

    .line 183
    .line 184
    move-object v3, v13

    .line 185
    move-object v8, v2

    .line 186
    invoke-direct/range {v3 .. v8}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;-><init>(IIZILio/netty/handler/codec/compression/Bzip2BitReader;)V

    .line 187
    .line 188
    .line 189
    iput-object v13, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    .line 190
    .line 191
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_USED_MAP:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 192
    .line 193
    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 194
    .line 195
    :pswitch_4
    invoke-virtual {v2, v10}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    if-nez v3, :cond_6

    .line 200
    .line 201
    return-void

    .line 202
    :cond_6
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    .line 203
    .line 204
    invoke-virtual {v2, v10}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    iput v4, v3, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanInUse16:I

    .line 209
    .line 210
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_USED_BITMAPS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 211
    .line 212
    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 213
    .line 214
    :pswitch_5
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    .line 215
    .line 216
    iget v4, v3, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanInUse16:I

    .line 217
    .line 218
    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    .line 219
    .line 220
    .line 221
    move-result v5

    .line 222
    iget-object v6, v3, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanSymbolMap:[B

    .line 223
    .line 224
    mul-int/lit8 v7, v5, 0x10

    .line 225
    .line 226
    const/4 v8, 0x3

    .line 227
    add-int/2addr v7, v8

    .line 228
    invoke-virtual {v2, v7}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    .line 229
    .line 230
    .line 231
    move-result v7

    .line 232
    if-nez v7, :cond_7

    .line 233
    .line 234
    return-void

    .line 235
    :cond_7
    if-lez v5, :cond_a

    .line 236
    .line 237
    const/4 v5, 0x0

    .line 238
    const/4 v7, 0x0

    .line 239
    :goto_1
    if-ge v5, v10, :cond_b

    .line 240
    .line 241
    const v13, 0x8000

    .line 242
    .line 243
    .line 244
    ushr-int/2addr v13, v5

    .line 245
    and-int/2addr v13, v4

    .line 246
    if-eqz v13, :cond_9

    .line 247
    .line 248
    shl-int/lit8 v13, v5, 0x4

    .line 249
    .line 250
    const/4 v14, 0x0

    .line 251
    :goto_2
    if-ge v14, v10, :cond_9

    .line 252
    .line 253
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    .line 254
    .line 255
    .line 256
    move-result v15

    .line 257
    if-eqz v15, :cond_8

    .line 258
    .line 259
    add-int/lit8 v15, v7, 0x1

    .line 260
    .line 261
    int-to-byte v10, v13

    .line 262
    aput-byte v10, v6, v7

    .line 263
    .line 264
    move v7, v15

    .line 265
    :cond_8
    add-int/lit8 v14, v14, 0x1

    .line 266
    .line 267
    add-int/lit8 v13, v13, 0x1

    .line 268
    .line 269
    const/16 v10, 0x10

    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 273
    .line 274
    const/16 v10, 0x10

    .line 275
    .line 276
    goto :goto_1

    .line 277
    :cond_a
    const/4 v7, 0x0

    .line 278
    :cond_b
    add-int/lit8 v4, v7, 0x1

    .line 279
    .line 280
    iput v4, v3, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->huffmanEndOfBlockSymbol:I

    .line 281
    .line 282
    invoke-virtual {v2, v8}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    .line 283
    .line 284
    .line 285
    move-result v3

    .line 286
    const/4 v4, 0x2

    .line 287
    if-lt v3, v4, :cond_20

    .line 288
    .line 289
    if-gt v3, v9, :cond_20

    .line 290
    .line 291
    add-int/lit8 v7, v7, 0x2

    .line 292
    .line 293
    const/16 v4, 0x102

    .line 294
    .line 295
    if-gt v7, v4, :cond_1f

    .line 296
    .line 297
    new-instance v4, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 298
    .line 299
    invoke-direct {v4, v2, v3, v7}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;-><init>(Lio/netty/handler/codec/compression/Bzip2BitReader;II)V

    .line 300
    .line 301
    .line 302
    iput-object v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 303
    .line 304
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_SELECTORS_NUMBER:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 305
    .line 306
    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 307
    .line 308
    :pswitch_6
    const/16 v3, 0xf

    .line 309
    .line 310
    invoke-virtual {v2, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    if-nez v4, :cond_c

    .line 315
    .line 316
    return-void

    .line 317
    :cond_c
    invoke-virtual {v2, v3}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    .line 318
    .line 319
    .line 320
    move-result v3

    .line 321
    if-lt v3, v12, :cond_1e

    .line 322
    .line 323
    const/16 v4, 0x4652

    .line 324
    .line 325
    if-gt v3, v4, :cond_1e

    .line 326
    .line 327
    iget-object v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 328
    .line 329
    new-array v3, v3, [B

    .line 330
    .line 331
    iput-object v3, v4, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->selectors:[B

    .line 332
    .line 333
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_SELECTORS:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 334
    .line 335
    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 336
    .line 337
    :pswitch_7
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 338
    .line 339
    iget-object v4, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->selectors:[B

    .line 340
    .line 341
    array-length v5, v4

    .line 342
    iget-object v6, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->tableMTF:Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;

    .line 343
    .line 344
    iget v7, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentSelector:I

    .line 345
    .line 346
    :goto_3
    if-ge v7, v5, :cond_f

    .line 347
    .line 348
    invoke-virtual {v2, v9}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    .line 349
    .line 350
    .line 351
    move-result v8

    .line 352
    if-nez v8, :cond_d

    .line 353
    .line 354
    iput v7, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentSelector:I

    .line 355
    .line 356
    return-void

    .line 357
    :cond_d
    const/4 v8, 0x0

    .line 358
    :goto_4
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    .line 359
    .line 360
    .line 361
    move-result v10

    .line 362
    if-eqz v10, :cond_e

    .line 363
    .line 364
    add-int/lit8 v8, v8, 0x1

    .line 365
    .line 366
    goto :goto_4

    .line 367
    :cond_e
    invoke-virtual {v6, v8}, Lio/netty/handler/codec/compression/Bzip2MoveToFrontTable;->indexToFront(I)B

    .line 368
    .line 369
    .line 370
    move-result v8

    .line 371
    aput-byte v8, v4, v7

    .line 372
    .line 373
    add-int/lit8 v7, v7, 0x1

    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_f
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->RECEIVE_HUFFMAN_LENGTH:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 377
    .line 378
    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 379
    .line 380
    :pswitch_8
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 381
    .line 382
    iget v4, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->totalTables:I

    .line 383
    .line 384
    iget-object v5, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->tableCodeLengths:[[B

    .line 385
    .line 386
    iget v6, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->alphabetSize:I

    .line 387
    .line 388
    iget v7, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentLength:I

    .line 389
    .line 390
    iget-boolean v8, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->modifyLength:Z

    .line 391
    .line 392
    iget v9, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentGroup:I

    .line 393
    .line 394
    :goto_5
    if-ge v9, v4, :cond_19

    .line 395
    .line 396
    const/4 v10, 0x5

    .line 397
    invoke-virtual {v2, v10}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    .line 398
    .line 399
    .line 400
    move-result v13

    .line 401
    if-nez v13, :cond_10

    .line 402
    .line 403
    const/4 v10, 0x0

    .line 404
    :goto_6
    const/4 v11, 0x1

    .line 405
    goto :goto_b

    .line 406
    :cond_10
    if-gez v7, :cond_11

    .line 407
    .line 408
    invoke-virtual {v2, v10}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    .line 409
    .line 410
    .line 411
    move-result v7

    .line 412
    :cond_11
    iget v10, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    .line 413
    .line 414
    :goto_7
    const/4 v13, -0x1

    .line 415
    if-ge v10, v6, :cond_18

    .line 416
    .line 417
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    .line 418
    .line 419
    .line 420
    move-result v14

    .line 421
    if-nez v14, :cond_12

    .line 422
    .line 423
    goto :goto_6

    .line 424
    :cond_12
    :goto_8
    if-nez v8, :cond_14

    .line 425
    .line 426
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    .line 427
    .line 428
    .line 429
    move-result v14

    .line 430
    if-eqz v14, :cond_13

    .line 431
    .line 432
    goto :goto_9

    .line 433
    :cond_13
    aget-object v13, v5, v9

    .line 434
    .line 435
    int-to-byte v14, v7

    .line 436
    aput-byte v14, v13, v10

    .line 437
    .line 438
    add-int/lit8 v10, v10, 0x1

    .line 439
    .line 440
    goto :goto_7

    .line 441
    :cond_14
    :goto_9
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    .line 442
    .line 443
    .line 444
    move-result v8

    .line 445
    if-nez v8, :cond_15

    .line 446
    .line 447
    const/4 v8, 0x1

    .line 448
    goto :goto_6

    .line 449
    :cond_15
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBoolean()Z

    .line 450
    .line 451
    .line 452
    move-result v8

    .line 453
    if-eqz v8, :cond_16

    .line 454
    .line 455
    const/4 v8, -0x1

    .line 456
    goto :goto_a

    .line 457
    :cond_16
    const/4 v8, 0x1

    .line 458
    :goto_a
    add-int/2addr v7, v8

    .line 459
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->isReadable()Z

    .line 460
    .line 461
    .line 462
    move-result v8

    .line 463
    if-nez v8, :cond_17

    .line 464
    .line 465
    const/4 v8, 0x0

    .line 466
    goto :goto_6

    .line 467
    :cond_17
    const/4 v8, 0x0

    .line 468
    goto :goto_8

    .line 469
    :cond_18
    iput v11, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    .line 470
    .line 471
    add-int/lit8 v9, v9, 0x1

    .line 472
    .line 473
    const/4 v7, -0x1

    .line 474
    const/4 v8, 0x0

    .line 475
    goto :goto_5

    .line 476
    :cond_19
    const/4 v10, 0x0

    .line 477
    :goto_b
    if-eqz v11, :cond_1a

    .line 478
    .line 479
    iput v9, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentGroup:I

    .line 480
    .line 481
    iput v7, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentLength:I

    .line 482
    .line 483
    iput v10, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->currentAlpha:I

    .line 484
    .line 485
    iput-boolean v8, v3, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->modifyLength:Z

    .line 486
    .line 487
    return-void

    .line 488
    :cond_1a
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;->createHuffmanDecodingTables()V

    .line 489
    .line 490
    .line 491
    sget-object v3, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->DECODE_HUFFMAN_DATA:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 492
    .line 493
    iput-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 494
    .line 495
    :pswitch_9
    iget-object v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->blockDecompressor:Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;

    .line 496
    .line 497
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 498
    .line 499
    .line 500
    move-result v4

    .line 501
    iget-object v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->huffmanStageDecoder:Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;

    .line 502
    .line 503
    invoke-virtual {v3, v5}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->decodeHuffmanData(Lio/netty/handler/codec/compression/Bzip2HuffmanStageDecoder;)Z

    .line 504
    .line 505
    .line 506
    move-result v5

    .line 507
    if-nez v5, :cond_1b

    .line 508
    .line 509
    return-void

    .line 510
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    if-ne v5, v4, :cond_1c

    .line 515
    .line 516
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 517
    .line 518
    .line 519
    move-result v4

    .line 520
    if-eqz v4, :cond_1c

    .line 521
    .line 522
    invoke-virtual {v2}, Lio/netty/handler/codec/compression/Bzip2BitReader;->refill()V

    .line 523
    .line 524
    .line 525
    :cond_1c
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->blockLength()I

    .line 526
    .line 527
    .line 528
    move-result v4

    .line 529
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    .line 530
    .line 531
    .line 532
    move-result-object v5

    .line 533
    invoke-interface {v5, v4}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    .line 534
    .line 535
    .line 536
    move-result-object v4

    .line 537
    :goto_c
    :try_start_0
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->read()I

    .line 538
    .line 539
    .line 540
    move-result v5

    .line 541
    if-ltz v5, :cond_1d

    .line 542
    .line 543
    invoke-virtual {v4, v5}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 544
    .line 545
    .line 546
    goto :goto_c

    .line 547
    :cond_1d
    invoke-virtual {v3}, Lio/netty/handler/codec/compression/Bzip2BlockDecompressor;->checkCRC()I

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    iget v5, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    .line 552
    .line 553
    shl-int/lit8 v6, v5, 0x1

    .line 554
    .line 555
    ushr-int/lit8 v5, v5, 0x1f

    .line 556
    .line 557
    or-int/2addr v5, v6

    .line 558
    xor-int/2addr v3, v5

    .line 559
    iput v3, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->streamCRC:I

    .line 560
    .line 561
    move-object/from16 v3, p3

    .line 562
    .line 563
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    .line 565
    .line 566
    sget-object v4, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 567
    .line 568
    iput-object v4, v1, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 569
    .line 570
    goto/16 :goto_0

    .line 571
    .line 572
    :catchall_0
    move-exception v0

    .line 573
    invoke-interface {v4}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 574
    .line 575
    .line 576
    throw v0

    .line 577
    :cond_1e
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    .line 578
    .line 579
    const-string v2, "incorrect selectors number"

    .line 580
    .line 581
    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    throw v0

    .line 585
    :cond_1f
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    .line 586
    .line 587
    const-string v2, "incorrect alphabet size"

    .line 588
    .line 589
    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 590
    .line 591
    .line 592
    throw v0

    .line 593
    :cond_20
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    .line 594
    .line 595
    const-string v2, "incorrect huffman groups number"

    .line 596
    .line 597
    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    throw v0

    .line 601
    :cond_21
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    .line 602
    .line 603
    const-string v2, "bad block header"

    .line 604
    .line 605
    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 606
    .line 607
    .line 608
    throw v0

    .line 609
    :cond_22
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    .line 610
    .line 611
    const-string v2, "block size is invalid"

    .line 612
    .line 613
    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 614
    .line 615
    .line 616
    throw v0

    .line 617
    :cond_23
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    .line 618
    .line 619
    const-string v2, "Unexpected stream identifier contents. Mismatched bzip2 protocol version?"

    .line 620
    .line 621
    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    throw v0

    .line 625
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public isClosed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2Decoder;->currentState:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 2
    .line 3
    sget-object v1, Lio/netty/handler/codec/compression/Bzip2Decoder$State;->EOF:Lio/netty/handler/codec/compression/Bzip2Decoder$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method
