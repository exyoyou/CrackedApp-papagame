.class public Lio/netty/handler/codec/compression/Lz4FrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;
    }
.end annotation


# instance fields
.field private blockType:I

.field private checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

.field private compressedLength:I

.field private currentChecksum:I

.field private currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

.field private decompressedLength:I

.field private decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/Lz4FrameDecoder;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lnet/jpountz/lz4/LZ4Factory;Ljava/util/zip/Checksum;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 5
    sget-object v0, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    const-string v0, "factory"

    .line 6
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/jpountz/lz4/LZ4Factory;

    invoke-virtual {p1}, Lnet/jpountz/lz4/LZ4Factory;->fastDecompressor()Lnet/jpountz/lz4/LZ4FastDecompressor;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p2}, Lio/netty/handler/codec/compression/ByteBufChecksum;->wrapChecksum(Ljava/util/zip/Checksum;)Lio/netty/handler/codec/compression/ByteBufChecksum;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    return-void
.end method

.method public constructor <init>(Lnet/jpountz/lz4/LZ4Factory;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lio/netty/handler/codec/compression/Lz4XXHash32;

    const v0, -0x68b84d74

    invoke-direct {p2, v0}, Lio/netty/handler/codec/compression/Lz4XXHash32;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/compression/Lz4FrameDecoder;-><init>(Lnet/jpountz/lz4/LZ4Factory;Ljava/util/zip/Checksum;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-static {}, Lnet/jpountz/lz4/LZ4Factory;->fastestInstance()Lnet/jpountz/lz4/LZ4Factory;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/compression/Lz4FrameDecoder;-><init>(Lnet/jpountz/lz4/LZ4Factory;Z)V

    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 12
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
    :try_start_0
    sget-object v0, Lio/netty/handler/codec/compression/Lz4FrameDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$Lz4FrameDecoder$State:[I

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    const/16 v2, 0x10

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x2

    .line 17
    const/4 v6, 0x1

    .line 18
    if-eq v0, v6, :cond_2

    .line 19
    .line 20
    if-eq v0, v5, :cond_a

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const/4 p1, 0x4

    .line 25
    if-ne v0, p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/16 v7, 0x15

    .line 48
    .line 49
    if-ge v0, v7, :cond_3

    .line 50
    .line 51
    goto/16 :goto_3

    .line 52
    .line 53
    :cond_3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readLong()J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    const-wide v9, 0x4c5a34426c6f636bL    # 6.579441740982069E59

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    cmp-long v0, v7, v9

    .line 63
    .line 64
    if-nez v0, :cond_12

    .line 65
    .line 66
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    and-int/lit8 v7, v0, 0xf

    .line 71
    .line 72
    add-int/lit8 v7, v7, 0xa

    .line 73
    .line 74
    and-int/lit16 v0, v0, 0xf0

    .line 75
    .line 76
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readInt()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    const/high16 v9, 0x2000000

    .line 85
    .line 86
    if-ltz v8, :cond_11

    .line 87
    .line 88
    if-gt v8, v9, :cond_11

    .line 89
    .line 90
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readInt()I

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    invoke-static {v9}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 95
    .line 96
    .line 97
    move-result v9

    .line 98
    shl-int v7, v6, v7

    .line 99
    .line 100
    if-ltz v9, :cond_10

    .line 101
    .line 102
    if-gt v9, v7, :cond_10

    .line 103
    .line 104
    if-nez v9, :cond_4

    .line 105
    .line 106
    if-nez v8, :cond_6

    .line 107
    .line 108
    :cond_4
    if-eqz v9, :cond_5

    .line 109
    .line 110
    if-eqz v8, :cond_6

    .line 111
    .line 112
    :cond_5
    if-ne v0, v2, :cond_7

    .line 113
    .line 114
    if-ne v9, v8, :cond_6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 118
    .line 119
    const-string p2, "stream corrupted: compressedLength(%d) and decompressedLength(%d) mismatch"

    .line 120
    .line 121
    new-array p3, v5, [Ljava/lang/Object;

    .line 122
    .line 123
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    aput-object v0, p3, v3

    .line 128
    .line 129
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    aput-object v0, p3, v6

    .line 134
    .line 135
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_7
    :goto_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 148
    .line 149
    .line 150
    move-result v7

    .line 151
    if-nez v9, :cond_9

    .line 152
    .line 153
    if-nez v8, :cond_9

    .line 154
    .line 155
    if-nez v7, :cond_8

    .line 156
    .line 157
    sget-object p1, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->FINISHED:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 158
    .line 159
    iput-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 160
    .line 161
    iput-object v4, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    .line 162
    .line 163
    iput-object v4, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 164
    .line 165
    goto/16 :goto_3

    .line 166
    .line 167
    :cond_8
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 168
    .line 169
    const-string p2, "stream corrupted: checksum error"

    .line 170
    .line 171
    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_9
    iput v0, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->blockType:I

    .line 176
    .line 177
    iput v8, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->compressedLength:I

    .line 178
    .line 179
    iput v9, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->decompressedLength:I

    .line 180
    .line 181
    iput v7, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentChecksum:I

    .line 182
    .line 183
    sget-object v0, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->DECOMPRESS_DATA:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 184
    .line 185
    iput-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 186
    .line 187
    :cond_a
    iget v0, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->blockType:I

    .line 188
    .line 189
    iget v7, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->compressedLength:I

    .line 190
    .line 191
    iget v8, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->decompressedLength:I

    .line 192
    .line 193
    iget v9, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentChecksum:I

    .line 194
    .line 195
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 196
    .line 197
    .line 198
    move-result v10

    .line 199
    if-ge v10, v7, :cond_b

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_b
    iget-object v10, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->checksum:Lio/netty/handler/codec/compression/ByteBufChecksum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 203
    .line 204
    if-eq v0, v2, :cond_d

    .line 205
    .line 206
    const/16 v11, 0x20

    .line 207
    .line 208
    if-ne v0, v11, :cond_c

    .line 209
    .line 210
    :try_start_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-interface {p1, v8, v8}, Lio/netty/buffer/ByteBufAllocator;->buffer(II)Lio/netty/buffer/ByteBuf;

    .line 215
    .line 216
    .line 217
    move-result-object p1
    :try_end_1
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 218
    :try_start_2
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->decompressor:Lnet/jpountz/lz4/LZ4FastDecompressor;

    .line 219
    .line 220
    invoke-static {p2}, Lio/netty/handler/codec/compression/CompressionUtil;->safeNioBuffer(Lio/netty/buffer/ByteBuf;)Ljava/nio/ByteBuffer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    invoke-virtual {p1, v2, v8}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v0, v1, v2}, Lnet/jpountz/lz4/LZ4FastDecompressor;->decompress(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    add-int/2addr v0, v8

    .line 240
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_2
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :catchall_0
    move-exception p2

    .line 245
    move-object v4, p1

    .line 246
    goto :goto_5

    .line 247
    :catch_0
    move-exception p2

    .line 248
    move-object v4, p1

    .line 249
    goto :goto_4

    .line 250
    :cond_c
    :try_start_3
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 251
    .line 252
    const-string p2, "unexpected blockType: %d (expected: %d or %d)"

    .line 253
    .line 254
    new-array p3, v1, [Ljava/lang/Object;

    .line 255
    .line 256
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    aput-object v0, p3, v3

    .line 261
    .line 262
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    aput-object v0, p3, v6

    .line 267
    .line 268
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    aput-object v0, p3, v5

    .line 273
    .line 274
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p2

    .line 278
    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw p1

    .line 282
    :cond_d
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    invoke-virtual {p2, p1, v8}, Lio/netty/buffer/ByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    .line 287
    .line 288
    .line 289
    move-result-object p1
    :try_end_3
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    :goto_2
    :try_start_4
    invoke-virtual {p2, v7}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 291
    .line 292
    .line 293
    if-eqz v10, :cond_e

    .line 294
    .line 295
    invoke-static {v10, p1, v9}, Lio/netty/handler/codec/compression/CompressionUtil;->checkChecksum(Lio/netty/handler/codec/compression/ByteBufChecksum;Lio/netty/buffer/ByteBuf;I)V

    .line 296
    .line 297
    .line 298
    :cond_e
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 299
    .line 300
    .line 301
    :try_start_5
    sget-object p1, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->INIT_BLOCK:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 302
    .line 303
    iput-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;
    :try_end_5
    .catch Lnet/jpountz/lz4/LZ4Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 304
    .line 305
    :goto_3
    return-void

    .line 306
    :catchall_1
    move-exception p2

    .line 307
    goto :goto_5

    .line 308
    :catch_1
    move-exception p2

    .line 309
    :goto_4
    :try_start_6
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 310
    .line 311
    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/Throwable;)V

    .line 312
    .line 313
    .line 314
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 315
    :goto_5
    if-eqz v4, :cond_f

    .line 316
    .line 317
    :try_start_7
    invoke-interface {v4}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 318
    .line 319
    .line 320
    :cond_f
    throw p2

    .line 321
    :cond_10
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 322
    .line 323
    const-string p2, "invalid decompressedLength: %d (expected: 0-%d)"

    .line 324
    .line 325
    new-array p3, v5, [Ljava/lang/Object;

    .line 326
    .line 327
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    aput-object v0, p3, v3

    .line 332
    .line 333
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    aput-object v0, p3, v6

    .line 338
    .line 339
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p2

    .line 343
    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw p1

    .line 347
    :cond_11
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 348
    .line 349
    const-string p2, "invalid compressedLength: %d (expected: 0-%d)"

    .line 350
    .line 351
    new-array p3, v5, [Ljava/lang/Object;

    .line 352
    .line 353
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    aput-object v0, p3, v3

    .line 358
    .line 359
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    aput-object v0, p3, v6

    .line 364
    .line 365
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object p2

    .line 369
    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    throw p1

    .line 373
    :cond_12
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 374
    .line 375
    const-string p2, "unexpected block identifier"

    .line 376
    .line 377
    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 381
    :catch_2
    move-exception p1

    .line 382
    sget-object p2, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->CORRUPTED:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 383
    .line 384
    iput-object p2, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 385
    .line 386
    throw p1
.end method

.method public isClosed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameDecoder;->currentState:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

    .line 2
    .line 3
    sget-object v1, Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;->FINISHED:Lio/netty/handler/codec/compression/Lz4FrameDecoder$State;

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
