.class public Lio/netty/handler/codec/compression/JdkZlibDecoder;
.super Lio/netty/handler/codec/compression/ZlibDecoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;
    }
.end annotation


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FRESERVED:I = 0xe0


# instance fields
.field private final crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

.field private decideZlibOrNone:Z

.field private final decompressConcatenated:Z

.field private final dictionary:[B

.field private volatile finished:Z

.field private flags:I

.field private gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field private inflater:Ljava/util/zip/Inflater;

.field private xlen:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v1, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;Z)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p1, v0, p2, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0, p2, p3}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V
    .locals 2

    .line 11
    invoke-direct {p0, p4}, Lio/netty/handler/codec/compression/ZlibDecoder;-><init>(I)V

    .line 12
    sget-object p4, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    const/4 p4, -0x1

    .line 13
    iput p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 14
    iput p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    const-string p4, "wrapper"

    .line 15
    invoke-static {p1, p4}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iput-boolean p3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decompressConcatenated:Z

    .line 17
    sget-object p3, Lio/netty/handler/codec/compression/JdkZlibDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p3, p3, p4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_3

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 18
    iput-boolean p4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    .line 19
    iput-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    goto :goto_0

    .line 20
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Only GZIP or ZLIB is supported, but you used "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 21
    :cond_1
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 22
    iput-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    goto :goto_0

    .line 23
    :cond_2
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1, p4}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 24
    iput-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    goto :goto_0

    .line 25
    :cond_3
    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1, p4}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 26
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-static {p1}, Lio/netty/handler/codec/compression/ByteBufChecksum;->wrapChecksum(Ljava/util/zip/Checksum;)Lio/netty/handler/codec/compression/ByteBufChecksum;

    move-result-object p1

    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 27
    :goto_0
    iput-object p2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->dictionary:[B

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 9
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    .line 10
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 3
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2

    .line 4
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    return-void
.end method

.method private static looksLikeZlib(S)Z
    .locals 2

    .line 1
    and-int/lit16 v0, p0, 0x7800

    .line 2
    .line 3
    const/16 v1, 0x7800

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    rem-int/lit8 p0, p0, 0x1f

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method private readGZIPFooter(Lio/netty/buffer/ByteBuf;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->verifyCrc(Lio/netty/buffer/ByteBuf;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :goto_0
    const/4 v1, 0x4

    .line 16
    if-ge v2, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    mul-int/lit8 v3, v2, 0x8

    .line 23
    .line 24
    shl-int/2addr v1, v3

    .line 25
    or-int/2addr v0, v1

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->getTotalOut()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-ne v0, p1, :cond_2

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :cond_2
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "Number of bytes mismatch. Expected: "

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ", Got: "

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v1, p1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v1
.end method

.method private readGZIPHeader(Lio/netty/buffer/ByteBuf;)Z
    .locals 7

    .line 1
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState:[I

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

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
    const/4 v1, 0x2

    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x0

    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :pswitch_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/16 v5, 0xa

    .line 30
    .line 31
    if-ge v0, v5, :cond_0

    .line 32
    .line 33
    return v4

    .line 34
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/16 v6, 0x1f

    .line 43
    .line 44
    if-ne v0, v6, :cond_f

    .line 45
    .line 46
    iget-object v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 47
    .line 48
    invoke-interface {v6, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 52
    .line 53
    invoke-interface {v0, v5}, Ljava/util/zip/Checksum;->update(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ne v0, v2, :cond_e

    .line 61
    .line 62
    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 63
    .line 64
    invoke-interface {v5, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 72
    .line 73
    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 74
    .line 75
    invoke-interface {v5, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 76
    .line 77
    .line 78
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 79
    .line 80
    and-int/lit16 v0, v0, 0xe0

    .line 81
    .line 82
    if-nez v0, :cond_d

    .line 83
    .line 84
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 85
    .line 86
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v0, p1, v5, v3}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 97
    .line 98
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-interface {v0, v5}, Ljava/util/zip/Checksum;->update(I)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 106
    .line 107
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-interface {v0, v5}, Ljava/util/zip/Checksum;->update(I)V

    .line 112
    .line 113
    .line 114
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->FLG_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 115
    .line 116
    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 117
    .line 118
    :pswitch_1
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 119
    .line 120
    and-int/2addr v0, v3

    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-ge v0, v1, :cond_1

    .line 128
    .line 129
    return v4

    .line 130
    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    iget-object v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 139
    .line 140
    invoke-interface {v6, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 141
    .line 142
    .line 143
    iget-object v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 144
    .line 145
    invoke-interface {v6, v5}, Ljava/util/zip/Checksum;->update(I)V

    .line 146
    .line 147
    .line 148
    iget v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 149
    .line 150
    shl-int/2addr v0, v2

    .line 151
    or-int/2addr v0, v5

    .line 152
    or-int/2addr v0, v6

    .line 153
    iput v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 154
    .line 155
    :cond_2
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->XLEN_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 156
    .line 157
    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 158
    .line 159
    :pswitch_2
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 160
    .line 161
    const/4 v5, -0x1

    .line 162
    if-eq v0, v5, :cond_4

    .line 163
    .line 164
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    iget v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 169
    .line 170
    if-ge v0, v5, :cond_3

    .line 171
    .line 172
    return v4

    .line 173
    :cond_3
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 174
    .line 175
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    iget v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 180
    .line 181
    invoke-virtual {v0, p1, v5, v6}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 182
    .line 183
    .line 184
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 185
    .line 186
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 187
    .line 188
    .line 189
    :cond_4
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->SKIP_FNAME:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 190
    .line 191
    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 192
    .line 193
    :pswitch_3
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 194
    .line 195
    and-int/2addr v0, v2

    .line 196
    if-eqz v0, :cond_7

    .line 197
    .line 198
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_5

    .line 203
    .line 204
    return v4

    .line 205
    :cond_5
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    iget-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 210
    .line 211
    invoke-interface {v2, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 212
    .line 213
    .line 214
    if-nez v0, :cond_6

    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    if-nez v0, :cond_5

    .line 222
    .line 223
    :cond_7
    :goto_0
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->SKIP_COMMENT:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 224
    .line 225
    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 226
    .line 227
    :pswitch_4
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 228
    .line 229
    and-int/lit8 v0, v0, 0x10

    .line 230
    .line 231
    if-eqz v0, :cond_a

    .line 232
    .line 233
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-nez v0, :cond_8

    .line 238
    .line 239
    return v4

    .line 240
    :cond_8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    iget-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 245
    .line 246
    invoke-interface {v2, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 247
    .line 248
    .line 249
    if-nez v0, :cond_9

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_9
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    if-nez v0, :cond_8

    .line 257
    .line 258
    :cond_a
    :goto_1
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->PROCESS_FHCRC:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 259
    .line 260
    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 261
    .line 262
    :pswitch_5
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 263
    .line 264
    and-int/2addr v0, v1

    .line 265
    if-eqz v0, :cond_c

    .line 266
    .line 267
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-ge v0, v3, :cond_b

    .line 272
    .line 273
    return v4

    .line 274
    :cond_b
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->verifyCrc(Lio/netty/buffer/ByteBuf;)V

    .line 275
    .line 276
    .line 277
    :cond_c
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 278
    .line 279
    invoke-interface {p1}, Ljava/util/zip/Checksum;->reset()V

    .line 280
    .line 281
    .line 282
    sget-object p1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_END:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 283
    .line 284
    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 285
    .line 286
    :pswitch_6
    const/4 p1, 0x1

    .line 287
    return p1

    .line 288
    :cond_d
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 289
    .line 290
    const-string v0, "Reserved flags are set in the GZIP header"

    .line 291
    .line 292
    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    throw p1

    .line 296
    :cond_e
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 297
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v2, "Unsupported compression method "

    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v0, " in the GZIP header"

    .line 312
    .line 313
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    throw p1

    .line 324
    :cond_f
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 325
    .line 326
    const-string v0, "Input is not in the GZIP format"

    .line 327
    .line 328
    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    throw p1

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private verifyCrc(Lio/netty/buffer/ByteBuf;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    const/4 v3, 0x4

    .line 5
    if-ge v2, v3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    int-to-long v3, v3

    .line 12
    mul-int/lit8 v5, v2, 0x8

    .line 13
    .line 14
    shl-long/2addr v3, v5

    .line 15
    or-long/2addr v0, v3

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long p1, v0, v2

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v5, "CRC value mismatch. Expected: "

    .line 38
    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, ", Got: "

    .line 46
    .line 47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-direct {p1, v0}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 9
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
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-boolean v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-ge v0, v1, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->looksLikeZlib(S)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    xor-int/2addr v1, v3

    .line 43
    new-instance v4, Ljava/util/zip/Inflater;

    .line 44
    .line 45
    invoke-direct {v4, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 46
    .line 47
    .line 48
    iput-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 49
    .line 50
    iput-boolean v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    .line 51
    .line 52
    :cond_3
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 53
    .line 54
    if-eqz v1, :cond_7

    .line 55
    .line 56
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState:[I

    .line 57
    .line 58
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    aget v0, v0, v1

    .line 65
    .line 66
    if-eq v0, v3, :cond_5

    .line 67
    .line 68
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 69
    .line 70
    sget-object v1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_END:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 71
    .line 72
    if-eq v0, v1, :cond_4

    .line 73
    .line 74
    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->readGZIPHeader(Lio/netty/buffer/ByteBuf;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    goto :goto_0

    .line 86
    :cond_5
    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->readGZIPFooter(Lio/netty/buffer/ByteBuf;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    iput-boolean v3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    .line 93
    .line 94
    :cond_6
    return-void

    .line 95
    :cond_7
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_8

    .line 100
    .line 101
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 102
    .line 103
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    add-int/2addr v5, v6

    .line 116
    invoke-virtual {v1, v4, v5, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_8
    new-array v1, v0, [B

    .line 121
    .line 122
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    .line 123
    .line 124
    .line 125
    move-result v4

    .line 126
    invoke-virtual {p2, v4, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 127
    .line 128
    .line 129
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 130
    .line 131
    invoke-virtual {v4, v1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 132
    .line 133
    .line 134
    :goto_1
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    shl-int/2addr v1, v3

    .line 141
    const/4 v4, 0x0

    .line 142
    invoke-virtual {p0, p1, v4, v1}, Lio/netty/handler/codec/compression/ZlibDecoder;->prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :goto_2
    :try_start_0
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 147
    .line 148
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    if-nez v4, :cond_e

    .line 153
    .line 154
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->array()[B

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    add-int/2addr v6, v5

    .line 167
    iget-object v7, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 168
    .line 169
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    invoke-virtual {v7, v4, v6, v8}, Ljava/util/zip/Inflater;->inflate([BII)I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-lez v7, :cond_9

    .line 178
    .line 179
    add-int/2addr v5, v7

    .line 180
    invoke-virtual {v1, v5}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 181
    .line 182
    .line 183
    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 184
    .line 185
    if-eqz v5, :cond_b

    .line 186
    .line 187
    invoke-interface {v5, v4, v6, v7}, Ljava/util/zip/Checksum;->update([BII)V

    .line 188
    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_9
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsDictionary()Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_b

    .line 198
    .line 199
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->dictionary:[B

    .line 200
    .line 201
    if-eqz v4, :cond_a

    .line 202
    .line 203
    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 204
    .line 205
    invoke-virtual {v5, v4}, Ljava/util/zip/Inflater;->setDictionary([B)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_a
    new-instance p1, Lio/netty/handler/codec/compression/DecompressionException;

    .line 210
    .line 211
    const-string p2, "decompression failure, unable to set dictionary as non was specified"

    .line 212
    .line 213
    invoke-direct {p1, p2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p1

    .line 217
    :cond_b
    :goto_3
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 218
    .line 219
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    .line 220
    .line 221
    .line 222
    move-result v4

    .line 223
    if-eqz v4, :cond_d

    .line 224
    .line 225
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 226
    .line 227
    if-nez p1, :cond_c

    .line 228
    .line 229
    iput-boolean v3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_c
    const/4 p1, 0x1

    .line 233
    goto :goto_5

    .line 234
    :cond_d
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 237
    .line 238
    .line 239
    move-result v4

    .line 240
    shl-int/2addr v4, v3

    .line 241
    invoke-virtual {p0, p1, v1, v4}, Lio/netty/handler/codec/compression/ZlibDecoder;->prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    goto :goto_2

    .line 246
    :cond_e
    :goto_4
    const/4 p1, 0x0

    .line 247
    :goto_5
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 248
    .line 249
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    sub-int/2addr v0, v4

    .line 254
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 255
    .line 256
    .line 257
    if-eqz p1, :cond_10

    .line 258
    .line 259
    sget-object p1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->FOOTER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 260
    .line 261
    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 262
    .line 263
    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->readGZIPFooter(Lio/netty/buffer/ByteBuf;)Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-eqz p1, :cond_10

    .line 268
    .line 269
    iget-boolean p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decompressConcatenated:Z

    .line 270
    .line 271
    if-nez p1, :cond_f

    .line 272
    .line 273
    const/4 v2, 0x1

    .line 274
    :cond_f
    iput-boolean v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    .line 275
    .line 276
    iget-boolean p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    .line 277
    .line 278
    if-nez p1, :cond_10

    .line 279
    .line 280
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 281
    .line 282
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->reset()V

    .line 283
    .line 284
    .line 285
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 286
    .line 287
    invoke-interface {p1}, Ljava/util/zip/Checksum;->reset()V

    .line 288
    .line 289
    .line 290
    sget-object p1, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 291
    .line 292
    iput-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .line 294
    :cond_10
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 295
    .line 296
    .line 297
    move-result p1

    .line 298
    if-eqz p1, :cond_11

    .line 299
    .line 300
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_11
    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 305
    .line 306
    .line 307
    :goto_6
    return-void

    .line 308
    :catchall_0
    move-exception p1

    .line 309
    goto :goto_7

    .line 310
    :catch_0
    move-exception p1

    .line 311
    :try_start_1
    new-instance p2, Lio/netty/handler/codec/compression/DecompressionException;

    .line 312
    .line 313
    const-string v0, "decompression failure"

    .line 314
    .line 315
    invoke-direct {p2, v0, p1}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    .line 317
    .line 318
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :goto_7
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    .line 320
    .line 321
    .line 322
    move-result p2

    .line 323
    if-eqz p2, :cond_12

    .line 324
    .line 325
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_12
    invoke-interface {v1}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 330
    .line 331
    .line 332
    :goto_8
    throw p1
.end method

.method protected decompressionBufferExhausted(Lio/netty/buffer/ByteBuf;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    .line 3
    .line 4
    return-void
.end method

.method protected handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    .line 2
    .line 3
    return v0
.end method
