.class public Lio/netty/handler/codec/xml/XmlFrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "SourceFile"


# instance fields
.field private final maxFrameLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-lt p1, v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lio/netty/handler/codec/xml/XmlFrameDecoder;->maxFrameLength:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "maxFrameLength must be a positive int"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method private static extractFrame(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private fail(J)V
    .locals 4

    const-wide/16 v0, 0x0

    const-string v2, "frame length exceeds "

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    .line 1
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/netty/handler/codec/xml/XmlFrameDecoder;->maxFrameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " - discarded"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_0
    new-instance p1, Lio/netty/handler/codec/TooLongFrameException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lio/netty/handler/codec/xml/XmlFrameDecoder;->maxFrameLength:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " - discarding"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static fail(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2

    .line 3
    new-instance v0, Lio/netty/handler/codec/CorruptedFrameException;

    const-string v1, "frame contains content before the xml starts"

    invoke-direct {v0, v1}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method

.method private static isCDATABlockStart(Lio/netty/buffer/ByteBuf;I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x8

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x2

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x5b

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    add-int/lit8 v0, p1, 0x3

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/16 v2, 0x43

    .line 26
    .line 27
    if-ne v0, v2, :cond_0

    .line 28
    .line 29
    add-int/lit8 v0, p1, 0x4

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/16 v2, 0x44

    .line 36
    .line 37
    if-ne v0, v2, :cond_0

    .line 38
    .line 39
    add-int/lit8 v0, p1, 0x5

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/16 v2, 0x41

    .line 46
    .line 47
    if-ne v0, v2, :cond_0

    .line 48
    .line 49
    add-int/lit8 v0, p1, 0x6

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const/16 v3, 0x54

    .line 56
    .line 57
    if-ne v0, v3, :cond_0

    .line 58
    .line 59
    add-int/lit8 v0, p1, 0x7

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-ne v0, v2, :cond_0

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x8

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-ne p0, v1, :cond_0

    .line 74
    .line 75
    const/4 p0, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 p0, 0x0

    .line 78
    :goto_0
    return p0
.end method

.method private static isCommentBlockStart(Lio/netty/buffer/ByteBuf;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x3

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, p1, 0x2

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x2d

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    add-int/lit8 p1, p1, 0x3

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-ne p0, v1, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method private static isValidStartCharForXmlElement(B)Z
    .locals 1

    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x3a

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 18
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget v3, v0, Lio/netty/handler/codec/xml/XmlFrameDecoder;->maxFrameLength:I

    .line 10
    .line 11
    if-le v2, v3, :cond_0

    .line 12
    .line 13
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v1, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 18
    .line 19
    .line 20
    int-to-long v1, v2

    .line 21
    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->fail(J)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    const-wide/16 v10, 0x0

    .line 33
    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, 0x0

    .line 36
    :goto_0
    if-ge v3, v2, :cond_f

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 39
    .line 40
    .line 41
    move-result v14

    .line 42
    if-nez v7, :cond_1

    .line 43
    .line 44
    invoke-static {v14}, Ljava/lang/Character;->isWhitespace(I)Z

    .line 45
    .line 46
    .line 47
    move-result v15

    .line 48
    if-eqz v15, :cond_1

    .line 49
    .line 50
    add-int/lit8 v8, v8, 0x1

    .line 51
    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :cond_1
    const/16 v15, 0x3c

    .line 55
    .line 56
    if-nez v7, :cond_2

    .line 57
    .line 58
    if-eq v14, v15, :cond_2

    .line 59
    .line 60
    invoke-static/range {p1 .. p1}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->fail(Lio/netty/channel/ChannelHandlerContext;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    const/16 v4, 0x3f

    .line 72
    .line 73
    const/16 v5, 0x2f

    .line 74
    .line 75
    const/16 v6, 0x3e

    .line 76
    .line 77
    const-wide/16 v16, 0x1

    .line 78
    .line 79
    if-nez v9, :cond_9

    .line 80
    .line 81
    if-ne v14, v15, :cond_9

    .line 82
    .line 83
    add-int/lit8 v7, v2, -0x1

    .line 84
    .line 85
    const/4 v14, 0x1

    .line 86
    if-ge v3, v7, :cond_8

    .line 87
    .line 88
    add-int/lit8 v15, v3, 0x1

    .line 89
    .line 90
    invoke-virtual {v1, v15}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 91
    .line 92
    .line 93
    move-result v15

    .line 94
    if-ne v15, v5, :cond_4

    .line 95
    .line 96
    add-int/lit8 v4, v3, 0x2

    .line 97
    .line 98
    :goto_1
    if-gt v4, v7, :cond_8

    .line 99
    .line 100
    invoke-virtual {v1, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-ne v5, v6, :cond_3

    .line 105
    .line 106
    sub-long v10, v10, v16

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-static {v15}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->isValidStartCharForXmlElement(B)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_5

    .line 117
    .line 118
    add-long v10, v10, v16

    .line 119
    .line 120
    const/4 v13, 0x1

    .line 121
    goto :goto_3

    .line 122
    :cond_5
    const/16 v5, 0x21

    .line 123
    .line 124
    if-ne v15, v5, :cond_7

    .line 125
    .line 126
    invoke-static {v1, v3}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->isCommentBlockStart(Lio/netty/buffer/ByteBuf;I)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_6

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    invoke-static {v1, v3}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->isCDATABlockStart(Lio/netty/buffer/ByteBuf;I)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    add-long v10, v10, v16

    .line 140
    .line 141
    const/4 v9, 0x1

    .line 142
    goto :goto_3

    .line 143
    :cond_7
    if-ne v15, v4, :cond_8

    .line 144
    .line 145
    :goto_2
    add-long v10, v10, v16

    .line 146
    .line 147
    :cond_8
    :goto_3
    const/4 v7, 0x1

    .line 148
    goto :goto_6

    .line 149
    :cond_9
    if-nez v9, :cond_a

    .line 150
    .line 151
    if-ne v14, v5, :cond_a

    .line 152
    .line 153
    add-int/lit8 v4, v2, -0x1

    .line 154
    .line 155
    if-ge v3, v4, :cond_e

    .line 156
    .line 157
    add-int/lit8 v4, v3, 0x1

    .line 158
    .line 159
    invoke-virtual {v1, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    if-ne v4, v6, :cond_e

    .line 164
    .line 165
    sub-long v10, v10, v16

    .line 166
    .line 167
    goto :goto_6

    .line 168
    :cond_a
    if-ne v14, v6, :cond_e

    .line 169
    .line 170
    add-int/lit8 v12, v3, 0x1

    .line 171
    .line 172
    add-int/lit8 v5, v3, -0x1

    .line 173
    .line 174
    const/4 v6, -0x1

    .line 175
    if-le v5, v6, :cond_d

    .line 176
    .line 177
    invoke-virtual {v1, v5}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    if-nez v9, :cond_c

    .line 182
    .line 183
    if-ne v5, v4, :cond_b

    .line 184
    .line 185
    :goto_4
    sub-long v10, v10, v16

    .line 186
    .line 187
    goto :goto_5

    .line 188
    :cond_b
    const/16 v4, 0x2d

    .line 189
    .line 190
    if-ne v5, v4, :cond_d

    .line 191
    .line 192
    add-int/lit8 v5, v3, -0x2

    .line 193
    .line 194
    if-le v5, v6, :cond_d

    .line 195
    .line 196
    invoke-virtual {v1, v5}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    if-ne v5, v4, :cond_d

    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_c
    const/16 v4, 0x5d

    .line 204
    .line 205
    if-ne v5, v4, :cond_d

    .line 206
    .line 207
    add-int/lit8 v5, v3, -0x2

    .line 208
    .line 209
    if-le v5, v6, :cond_d

    .line 210
    .line 211
    invoke-virtual {v1, v5}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-ne v5, v4, :cond_d

    .line 216
    .line 217
    sub-long v10, v10, v16

    .line 218
    .line 219
    const/4 v9, 0x0

    .line 220
    :cond_d
    :goto_5
    if-eqz v13, :cond_e

    .line 221
    .line 222
    const-wide/16 v4, 0x0

    .line 223
    .line 224
    cmp-long v6, v10, v4

    .line 225
    .line 226
    if-nez v6, :cond_e

    .line 227
    .line 228
    goto :goto_7

    .line 229
    :cond_e
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_f
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    sub-int/2addr v12, v3

    .line 238
    const-wide/16 v4, 0x0

    .line 239
    .line 240
    cmp-long v6, v10, v4

    .line 241
    .line 242
    if-nez v6, :cond_11

    .line 243
    .line 244
    if-lez v12, :cond_11

    .line 245
    .line 246
    add-int v4, v3, v12

    .line 247
    .line 248
    if-lt v4, v2, :cond_10

    .line 249
    .line 250
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 251
    .line 252
    .line 253
    move-result v12

    .line 254
    :cond_10
    add-int/2addr v3, v8

    .line 255
    sub-int v2, v12, v8

    .line 256
    .line 257
    invoke-static {v1, v3, v2}, Lio/netty/handler/codec/xml/XmlFrameDecoder;->extractFrame(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v1, v12}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 262
    .line 263
    .line 264
    move-object/from16 v1, p3

    .line 265
    .line 266
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    :cond_11
    return-void
.end method
