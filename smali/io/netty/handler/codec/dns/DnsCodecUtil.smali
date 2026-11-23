.class final Lio/netty/handler/codec/dns/DnsCodecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static decodeDomainName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-string v2, "."

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    shl-int/2addr v1, v4

    .line 18
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, -0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/16 v9, 0x2e

    .line 30
    .line 31
    if-eqz v8, :cond_8

    .line 32
    .line 33
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    and-int/lit16 v10, v8, 0xc0

    .line 38
    .line 39
    const/16 v11, 0xc0

    .line 40
    .line 41
    if-ne v10, v11, :cond_1

    .line 42
    .line 43
    const/4 v10, 0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v10, 0x0

    .line 46
    :goto_1
    if-eqz v10, :cond_6

    .line 47
    .line 48
    if-ne v6, v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    add-int/2addr v6, v4

    .line 55
    :cond_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-eqz v9, :cond_5

    .line 60
    .line 61
    and-int/lit8 v8, v8, 0x3f

    .line 62
    .line 63
    shl-int/lit8 v8, v8, 0x8

    .line 64
    .line 65
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    or-int/2addr v8, v9

    .line 70
    if-ge v8, v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0, v8}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 73
    .line 74
    .line 75
    add-int/lit8 v7, v7, 0x2

    .line 76
    .line 77
    if-ge v7, v0, :cond_3

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    .line 81
    .line 82
    const-string v0, "name contains a loop."

    .line 83
    .line 84
    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_4
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    .line 89
    .line 90
    const-string v0, "name has an out-of-range pointer"

    .line 91
    .line 92
    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p0

    .line 96
    :cond_5
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    .line 97
    .line 98
    const-string v0, "truncated pointer in a name"

    .line 99
    .line 100
    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0

    .line 104
    :cond_6
    if-eqz v8, :cond_8

    .line 105
    .line 106
    invoke-virtual {p0, v8}, Lio/netty/buffer/ByteBuf;->isReadable(I)Z

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    if-eqz v10, :cond_7

    .line 111
    .line 112
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    sget-object v11, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 117
    .line 118
    invoke-virtual {p0, v10, v8, v11}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v8}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_7
    new-instance p0, Lio/netty/handler/codec/CorruptedFrameException;

    .line 133
    .line 134
    const-string v0, "truncated label in a name"

    .line 135
    .line 136
    invoke-direct {p0, v0}, Lio/netty/handler/codec/CorruptedFrameException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_8
    if-eq v6, v1, :cond_9

    .line 141
    .line 142
    invoke-virtual {p0, v6}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 143
    .line 144
    .line 145
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 146
    .line 147
    .line 148
    move-result p0

    .line 149
    if-nez p0, :cond_a

    .line 150
    .line 151
    return-object v2

    .line 152
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    sub-int/2addr p0, v4

    .line 157
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    if-eq p0, v9, :cond_b

    .line 162
    .line 163
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    return-object p0
.end method

.method static decompressDomainName(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 1
    invoke-static {p0}, Lio/netty/handler/codec/dns/DnsCodecUtil;->decodeDomainName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    shl-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    invoke-interface {p0, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-static {v0, p0}, Lio/netty/handler/codec/dns/DnsCodecUtil;->encodeDomainName(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method static encodeDomainName(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V
    .locals 5

    .line 1
    const-string v0, "."

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v0, "\\."

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    array-length v0, p0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v0, :cond_2

    .line 23
    .line 24
    aget-object v3, p0, v2

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 34
    .line 35
    .line 36
    invoke-static {p1, v3}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 37
    .line 38
    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    :goto_1
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 43
    .line 44
    .line 45
    return-void
.end method
