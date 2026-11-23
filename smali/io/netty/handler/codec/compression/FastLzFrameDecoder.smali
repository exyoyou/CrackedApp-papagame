.class public Lio/netty/handler/codec/compression/FastLzFrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;
    }
.end annotation


# instance fields
.field private final checksum:Ljava/util/zip/Checksum;

.field private chunkLength:I

.field private currentChecksum:I

.field private currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

.field private hasChecksum:Z

.field private isCompressed:Z

.field private originalLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/FastLzFrameDecoder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/Checksum;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 4
    sget-object v0, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 5
    iput-object p1, p0, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->checksum:Ljava/util/zip/Checksum;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Ljava/util/zip/Adler32;

    invoke-direct {p1}, Ljava/util/zip/Adler32;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/FastLzFrameDecoder;-><init>(Ljava/util/zip/Checksum;)V

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
    :try_start_0
    sget-object v2, Lio/netty/handler/codec/compression/FastLzFrameDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$FastLzFrameDecoder$State:[I

    .line 6
    .line 7
    iget-object v3, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    aget v2, v2, v3

    .line 14
    .line 15
    const/4 v3, 0x4

    .line 16
    const/4 v4, 0x2

    .line 17
    const/4 v5, 0x1

    .line 18
    const/4 v6, 0x0

    .line 19
    if-eq v2, v5, :cond_1

    .line 20
    .line 21
    if-eq v2, v4, :cond_5

    .line 22
    .line 23
    const/4 v7, 0x3

    .line 24
    if-eq v2, v7, :cond_b

    .line 25
    .line 26
    if-ne v2, v3, :cond_0

    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 33
    .line 34
    .line 35
    goto/16 :goto_9

    .line 36
    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 40
    .line 41
    .line 42
    throw v0

    .line 43
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-ge v2, v3, :cond_2

    .line 48
    .line 49
    goto/16 :goto_9

    .line 50
    .line 51
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedMedium()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const v7, 0x464c5a

    .line 56
    .line 57
    .line 58
    if-ne v2, v7, :cond_15

    .line 59
    .line 60
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    and-int/lit8 v7, v2, 0x1

    .line 65
    .line 66
    if-ne v7, v5, :cond_3

    .line 67
    .line 68
    const/4 v7, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/4 v7, 0x0

    .line 71
    :goto_0
    iput-boolean v7, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z

    .line 72
    .line 73
    const/16 v7, 0x10

    .line 74
    .line 75
    and-int/2addr v2, v7

    .line 76
    if-ne v2, v7, :cond_4

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const/4 v2, 0x0

    .line 81
    :goto_1
    iput-boolean v2, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->hasChecksum:Z

    .line 82
    .line 83
    sget-object v2, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->INIT_BLOCK_PARAMS:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 84
    .line 85
    iput-object v2, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 86
    .line 87
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    iget-boolean v7, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z

    .line 92
    .line 93
    if-eqz v7, :cond_6

    .line 94
    .line 95
    const/4 v7, 0x2

    .line 96
    goto :goto_2

    .line 97
    :cond_6
    const/4 v7, 0x0

    .line 98
    :goto_2
    add-int/2addr v7, v4

    .line 99
    iget-boolean v8, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->hasChecksum:Z

    .line 100
    .line 101
    if-eqz v8, :cond_7

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_7
    const/4 v3, 0x0

    .line 105
    :goto_3
    add-int/2addr v7, v3

    .line 106
    if-ge v2, v7, :cond_8

    .line 107
    .line 108
    goto/16 :goto_9

    .line 109
    .line 110
    :cond_8
    if-eqz v8, :cond_9

    .line 111
    .line 112
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readInt()I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    goto :goto_4

    .line 117
    :cond_9
    const/4 v2, 0x0

    .line 118
    :goto_4
    iput v2, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentChecksum:I

    .line 119
    .line 120
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    iput v2, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->chunkLength:I

    .line 125
    .line 126
    iget-boolean v3, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z

    .line 127
    .line 128
    if-eqz v3, :cond_a

    .line 129
    .line 130
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    :cond_a
    iput v2, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->originalLength:I

    .line 135
    .line 136
    sget-object v2, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->DECOMPRESS_DATA:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 137
    .line 138
    iput-object v2, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 139
    .line 140
    :cond_b
    iget v2, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->chunkLength:I

    .line 141
    .line 142
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-ge v3, v2, :cond_c

    .line 147
    .line 148
    goto/16 :goto_9

    .line 149
    .line 150
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    iget v13, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->originalLength:I

    .line 155
    .line 156
    if-eqz v13, :cond_d

    .line 157
    .line 158
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-interface {v7, v13, v13}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->array()[B

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    add-int/2addr v9, v10

    .line 179
    move-object v14, v7

    .line 180
    move-object v15, v8

    .line 181
    move v12, v9

    .line 182
    goto :goto_5

    .line 183
    :cond_d
    sget-object v8, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .line 185
    const/4 v7, 0x0

    .line 186
    move-object v14, v7

    .line 187
    move-object v15, v8

    .line 188
    const/4 v12, 0x0

    .line 189
    :goto_5
    :try_start_1
    iget-boolean v7, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->isCompressed:Z

    .line 190
    .line 191
    if-eqz v7, :cond_10

    .line 192
    .line 193
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    .line 194
    .line 195
    .line 196
    move-result v7

    .line 197
    if-eqz v7, :cond_e

    .line 198
    .line 199
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->array()[B

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    add-int/2addr v8, v3

    .line 208
    goto :goto_6

    .line 209
    :cond_e
    new-array v7, v2, [B

    .line 210
    .line 211
    invoke-virtual {v0, v3, v7}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 212
    .line 213
    .line 214
    const/4 v8, 0x0

    .line 215
    :goto_6
    move v9, v2

    .line 216
    move-object v10, v15

    .line 217
    move v11, v12

    .line 218
    move v3, v12

    .line 219
    move v12, v13

    .line 220
    invoke-static/range {v7 .. v12}, Lio/netty/handler/codec/compression/FastLz;->decompress([BII[BII)I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    if-ne v13, v7, :cond_f

    .line 225
    .line 226
    move v9, v3

    .line 227
    goto :goto_7

    .line 228
    :cond_f
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    .line 229
    .line 230
    const-string v2, "stream corrupted: originalLength(%d) and actual length(%d) mismatch"

    .line 231
    .line 232
    new-array v3, v4, [Ljava/lang/Object;

    .line 233
    .line 234
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v4

    .line 238
    aput-object v4, v3, v6

    .line 239
    .line 240
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    aput-object v4, v3, v5

    .line 245
    .line 246
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    throw v0

    .line 254
    :cond_10
    move v9, v12

    .line 255
    invoke-virtual {v0, v3, v15, v9, v2}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 256
    .line 257
    .line 258
    :goto_7
    iget-object v3, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->checksum:Ljava/util/zip/Checksum;

    .line 259
    .line 260
    iget-boolean v7, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->hasChecksum:Z

    .line 261
    .line 262
    if-eqz v7, :cond_12

    .line 263
    .line 264
    if-eqz v3, :cond_12

    .line 265
    .line 266
    invoke-interface {v3}, Ljava/util/zip/Checksum;->reset()V

    .line 267
    .line 268
    .line 269
    invoke-interface {v3, v15, v9, v13}, Ljava/util/zip/Checksum;->update([BII)V

    .line 270
    .line 271
    .line 272
    invoke-interface {v3}, Ljava/util/zip/Checksum;->getValue()J

    .line 273
    .line 274
    .line 275
    move-result-wide v7

    .line 276
    long-to-int v3, v7

    .line 277
    iget v7, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentChecksum:I

    .line 278
    .line 279
    if-ne v3, v7, :cond_11

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_11
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    .line 283
    .line 284
    const-string v2, "stream corrupted: mismatching checksum: %d (expected: %d)"

    .line 285
    .line 286
    new-array v4, v4, [Ljava/lang/Object;

    .line 287
    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    aput-object v3, v4, v6

    .line 293
    .line 294
    iget v3, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentChecksum:I

    .line 295
    .line 296
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    aput-object v3, v4, v5

    .line 301
    .line 302
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw v0

    .line 310
    :cond_12
    :goto_8
    if-eqz v14, :cond_13

    .line 311
    .line 312
    invoke-virtual {v14}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    add-int/2addr v3, v13

    .line 317
    invoke-virtual {v14, v3}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 318
    .line 319
    .line 320
    move-object/from16 v3, p3

    .line 321
    .line 322
    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    :cond_13
    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 326
    .line 327
    .line 328
    sget-object v0, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 329
    .line 330
    iput-object v0, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    .line 332
    :goto_9
    return-void

    .line 333
    :catchall_0
    move-exception v0

    .line 334
    if-eqz v14, :cond_14

    .line 335
    .line 336
    :try_start_2
    invoke-interface {v14}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 337
    .line 338
    .line 339
    :cond_14
    throw v0

    .line 340
    :cond_15
    new-instance v0, Lio/netty/handler/codec/compression/DecompressionException;

    .line 341
    .line 342
    const-string v2, "unexpected block identifier"

    .line 343
    .line 344
    invoke-direct {v0, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    sget-object v2, Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;->CORRUPTED:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 350
    .line 351
    iput-object v2, v1, Lio/netty/handler/codec/compression/FastLzFrameDecoder;->currentState:Lio/netty/handler/codec/compression/FastLzFrameDecoder$State;

    .line 352
    .line 353
    throw v0
.end method
