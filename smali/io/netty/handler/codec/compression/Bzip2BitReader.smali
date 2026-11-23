.class Lio/netty/handler/codec/compression/Bzip2BitReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_COUNT_OF_READABLE_BYTES:I = 0xfffffff


# instance fields
.field private bitBuffer:J

.field private bitCount:I

.field private in:Lio/netty/buffer/ByteBuf;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method hasReadableBits(I)Z
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    .line 4
    .line 5
    if-ge v0, p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    shl-int/lit8 v0, v0, 0x3

    .line 14
    .line 15
    const v1, 0x7fffffff

    .line 16
    .line 17
    .line 18
    and-int/2addr v0, v1

    .line 19
    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    .line 20
    .line 21
    sub-int/2addr p1, v1

    .line 22
    if-lt v0, p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 28
    :goto_1
    return p1

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "count: "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " (expected value greater than 0)"

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method hasReadableBytes(I)Z
    .locals 4

    .line 1
    const v0, 0xfffffff

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_0

    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    shl-int/lit8 p1, p1, 0x3

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/compression/Bzip2BitReader;->hasReadableBits(I)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "count: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " (expected: 0-"

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 p1, 0x29

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1
.end method

.method isReadable()Z
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    .line 2
    .line 3
    if-gtz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method readBits(I)I
    .locals 8

    .line 1
    if-ltz p1, :cond_5

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    if-gt p1, v0, :cond_5

    .line 6
    .line 7
    iget v1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    .line 8
    .line 9
    iget-wide v2, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitBuffer:J

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-ge v1, p1, :cond_3

    .line 13
    .line 14
    iget-object v5, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    .line 15
    .line 16
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eq v5, v4, :cond_2

    .line 21
    .line 22
    const/4 v6, 0x2

    .line 23
    if-eq v5, v6, :cond_1

    .line 24
    .line 25
    const/4 v6, 0x3

    .line 26
    if-eq v5, v6, :cond_0

    .line 27
    .line 28
    iget-object v5, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    .line 29
    .line 30
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readUnsignedInt()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    const/16 v7, 0x20

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v5, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    .line 38
    .line 39
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readUnsignedMedium()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    int-to-long v5, v5

    .line 44
    const/16 v7, 0x18

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v5, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    .line 48
    .line 49
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    int-to-long v5, v5

    .line 54
    const/16 v7, 0x10

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v5, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    .line 58
    .line 59
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    int-to-long v5, v5

    .line 64
    const/16 v7, 0x8

    .line 65
    .line 66
    :goto_0
    shl-long/2addr v2, v7

    .line 67
    or-long/2addr v2, v5

    .line 68
    add-int/2addr v1, v7

    .line 69
    iput-wide v2, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitBuffer:J

    .line 70
    .line 71
    :cond_3
    sub-int/2addr v1, p1

    .line 72
    iput v1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    .line 73
    .line 74
    ushr-long v1, v2, v1

    .line 75
    .line 76
    if-eq p1, v0, :cond_4

    .line 77
    .line 78
    shl-int p1, v4, p1

    .line 79
    .line 80
    sub-int/2addr p1, v4

    .line 81
    int-to-long v3, p1

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const-wide v3, 0xffffffffL

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    :goto_1
    and-long v0, v1, v3

    .line 89
    .line 90
    long-to-int p1, v0

    .line 91
    return p1

    .line 92
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 93
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v2, "count: "

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, " (expected: 0-32 )"

    .line 108
    .line 109
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0
.end method

.method readBoolean()Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method readInt()I
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/compression/Bzip2BitReader;->readBits(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method refill()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-wide v1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitBuffer:J

    .line 8
    .line 9
    const/16 v3, 0x8

    .line 10
    .line 11
    shl-long/2addr v1, v3

    .line 12
    int-to-long v4, v0

    .line 13
    or-long v0, v1, v4

    .line 14
    .line 15
    iput-wide v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitBuffer:J

    .line 16
    .line 17
    iget v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    .line 18
    .line 19
    add-int/2addr v0, v3

    .line 20
    iput v0, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->bitCount:I

    .line 21
    .line 22
    return-void
.end method

.method setByteBuf(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2BitReader;->in:Lio/netty/buffer/ByteBuf;

    .line 2
    .line 3
    return-void
.end method
