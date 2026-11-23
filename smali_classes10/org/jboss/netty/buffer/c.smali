.class public Lorg/jboss/netty/buffer/c;
.super Lorg/jboss/netty/buffer/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/m;-><init>([B)V

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/m;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public W0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    ushr-int/lit8 v1, p2, 0x8

    .line 4
    .line 5
    int-to-byte v1, v1

    .line 6
    aput-byte v1, v0, p1

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    int-to-byte p2, p2

    .line 11
    aput-byte p2, v0, p1

    .line 12
    .line 13
    return-void
.end method

.method public d0(II)Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    if-ltz p2, :cond_0

    .line 4
    .line 5
    add-int v0, p1, p2

    .line 6
    .line 7
    iget-object v1, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    if-gt v0, v2, :cond_0

    .line 11
    .line 12
    new-array v0, p2, [B

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lorg/jboss/netty/buffer/c;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lorg/jboss/netty/buffer/c;-><init>([B)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "Too many bytes to copy - Need "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    add-int/2addr p1, p2

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ", maximum is "

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 46
    .line 47
    array-length p1, p1

    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/c;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/c;-><init>([BII)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/jboss/netty/buffer/n;->h(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getInt(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    aget-byte v1, v0, p1

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x18

    .line 8
    .line 9
    add-int/lit8 v2, p1, 0x1

    .line 10
    .line 11
    aget-byte v2, v0, v2

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    shl-int/lit8 v2, v2, 0x10

    .line 16
    .line 17
    or-int/2addr v1, v2

    .line 18
    add-int/lit8 v2, p1, 0x2

    .line 19
    .line 20
    aget-byte v2, v0, v2

    .line 21
    .line 22
    and-int/lit16 v2, v2, 0xff

    .line 23
    .line 24
    shl-int/lit8 v2, v2, 0x8

    .line 25
    .line 26
    or-int/2addr v1, v2

    .line 27
    add-int/lit8 p1, p1, 0x3

    .line 28
    .line 29
    aget-byte p1, v0, p1

    .line 30
    .line 31
    and-int/lit16 p1, p1, 0xff

    .line 32
    .line 33
    or-int/2addr p1, v1

    .line 34
    return p1
.end method

.method public getLong(I)J
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    aget-byte v1, v0, p1

    .line 4
    .line 5
    int-to-long v1, v1

    .line 6
    const-wide/16 v3, 0xff

    .line 7
    .line 8
    and-long/2addr v1, v3

    .line 9
    const/16 v5, 0x38

    .line 10
    .line 11
    shl-long/2addr v1, v5

    .line 12
    add-int/lit8 v5, p1, 0x1

    .line 13
    .line 14
    aget-byte v5, v0, v5

    .line 15
    .line 16
    int-to-long v5, v5

    .line 17
    and-long/2addr v5, v3

    .line 18
    const/16 v7, 0x30

    .line 19
    .line 20
    shl-long/2addr v5, v7

    .line 21
    or-long/2addr v1, v5

    .line 22
    add-int/lit8 v5, p1, 0x2

    .line 23
    .line 24
    aget-byte v5, v0, v5

    .line 25
    .line 26
    int-to-long v5, v5

    .line 27
    and-long/2addr v5, v3

    .line 28
    const/16 v7, 0x28

    .line 29
    .line 30
    shl-long/2addr v5, v7

    .line 31
    or-long/2addr v1, v5

    .line 32
    add-int/lit8 v5, p1, 0x3

    .line 33
    .line 34
    aget-byte v5, v0, v5

    .line 35
    .line 36
    int-to-long v5, v5

    .line 37
    and-long/2addr v5, v3

    .line 38
    const/16 v7, 0x20

    .line 39
    .line 40
    shl-long/2addr v5, v7

    .line 41
    or-long/2addr v1, v5

    .line 42
    add-int/lit8 v5, p1, 0x4

    .line 43
    .line 44
    aget-byte v5, v0, v5

    .line 45
    .line 46
    int-to-long v5, v5

    .line 47
    and-long/2addr v5, v3

    .line 48
    const/16 v7, 0x18

    .line 49
    .line 50
    shl-long/2addr v5, v7

    .line 51
    or-long/2addr v1, v5

    .line 52
    add-int/lit8 v5, p1, 0x5

    .line 53
    .line 54
    aget-byte v5, v0, v5

    .line 55
    .line 56
    int-to-long v5, v5

    .line 57
    and-long/2addr v5, v3

    .line 58
    const/16 v7, 0x10

    .line 59
    .line 60
    shl-long/2addr v5, v7

    .line 61
    or-long/2addr v1, v5

    .line 62
    add-int/lit8 v5, p1, 0x6

    .line 63
    .line 64
    aget-byte v5, v0, v5

    .line 65
    .line 66
    int-to-long v5, v5

    .line 67
    and-long/2addr v5, v3

    .line 68
    const/16 v7, 0x8

    .line 69
    .line 70
    shl-long/2addr v5, v7

    .line 71
    or-long/2addr v1, v5

    .line 72
    add-int/lit8 p1, p1, 0x7

    .line 73
    .line 74
    aget-byte p1, v0, p1

    .line 75
    .line 76
    int-to-long v5, p1

    .line 77
    and-long/2addr v3, v5

    .line 78
    or-long v0, v1, v3

    .line 79
    .line 80
    return-wide v0
.end method

.method public getShort(I)S
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    aget-byte v1, v0, p1

    .line 4
    .line 5
    shl-int/lit8 v1, v1, 0x8

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    aget-byte p1, v0, p1

    .line 10
    .line 11
    and-int/lit16 p1, p1, 0xff

    .line 12
    .line 13
    or-int/2addr p1, v1

    .line 14
    int-to-short p1, p1

    .line 15
    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    aget-byte v1, v0, p1

    .line 4
    .line 5
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    shl-int/lit8 v1, v1, 0x10

    .line 8
    .line 9
    add-int/lit8 v2, p1, 0x1

    .line 10
    .line 11
    aget-byte v2, v0, v2

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    shl-int/lit8 v2, v2, 0x8

    .line 16
    .line 17
    or-int/2addr v1, v2

    .line 18
    add-int/lit8 p1, p1, 0x2

    .line 19
    .line 20
    aget-byte p1, v0, p1

    .line 21
    .line 22
    and-int/lit16 p1, p1, 0xff

    .line 23
    .line 24
    or-int/2addr p1, v1

    .line 25
    return p1
.end method

.method public k0(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    ushr-int/lit8 v1, p2, 0x10

    .line 4
    .line 5
    int-to-byte v1, v1

    .line 6
    aput-byte v1, v0, p1

    .line 7
    .line 8
    add-int/lit8 v1, p1, 0x1

    .line 9
    .line 10
    ushr-int/lit8 v2, p2, 0x8

    .line 11
    .line 12
    int-to-byte v2, v2

    .line 13
    aput-byte v2, v0, v1

    .line 14
    .line 15
    add-int/lit8 p1, p1, 0x2

    .line 16
    .line 17
    int-to-byte p2, p2

    .line 18
    aput-byte p2, v0, p1

    .line 19
    .line 20
    return-void
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    return-object v0
.end method

.method public setInt(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    ushr-int/lit8 v1, p2, 0x18

    .line 4
    .line 5
    int-to-byte v1, v1

    .line 6
    aput-byte v1, v0, p1

    .line 7
    .line 8
    add-int/lit8 v1, p1, 0x1

    .line 9
    .line 10
    ushr-int/lit8 v2, p2, 0x10

    .line 11
    .line 12
    int-to-byte v2, v2

    .line 13
    aput-byte v2, v0, v1

    .line 14
    .line 15
    add-int/lit8 v1, p1, 0x2

    .line 16
    .line 17
    ushr-int/lit8 v2, p2, 0x8

    .line 18
    .line 19
    int-to-byte v2, v2

    .line 20
    aput-byte v2, v0, v1

    .line 21
    .line 22
    add-int/lit8 p1, p1, 0x3

    .line 23
    .line 24
    int-to-byte p2, p2

    .line 25
    aput-byte p2, v0, p1

    .line 26
    .line 27
    return-void
.end method

.method public setLong(IJ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    const/16 v1, 0x38

    .line 4
    .line 5
    ushr-long v1, p2, v1

    .line 6
    .line 7
    long-to-int v2, v1

    .line 8
    int-to-byte v1, v2

    .line 9
    aput-byte v1, v0, p1

    .line 10
    .line 11
    add-int/lit8 v1, p1, 0x1

    .line 12
    .line 13
    const/16 v2, 0x30

    .line 14
    .line 15
    ushr-long v2, p2, v2

    .line 16
    .line 17
    long-to-int v3, v2

    .line 18
    int-to-byte v2, v3

    .line 19
    aput-byte v2, v0, v1

    .line 20
    .line 21
    add-int/lit8 v1, p1, 0x2

    .line 22
    .line 23
    const/16 v2, 0x28

    .line 24
    .line 25
    ushr-long v2, p2, v2

    .line 26
    .line 27
    long-to-int v3, v2

    .line 28
    int-to-byte v2, v3

    .line 29
    aput-byte v2, v0, v1

    .line 30
    .line 31
    add-int/lit8 v1, p1, 0x3

    .line 32
    .line 33
    const/16 v2, 0x20

    .line 34
    .line 35
    ushr-long v2, p2, v2

    .line 36
    .line 37
    long-to-int v3, v2

    .line 38
    int-to-byte v2, v3

    .line 39
    aput-byte v2, v0, v1

    .line 40
    .line 41
    add-int/lit8 v1, p1, 0x4

    .line 42
    .line 43
    const/16 v2, 0x18

    .line 44
    .line 45
    ushr-long v2, p2, v2

    .line 46
    .line 47
    long-to-int v3, v2

    .line 48
    int-to-byte v2, v3

    .line 49
    aput-byte v2, v0, v1

    .line 50
    .line 51
    add-int/lit8 v1, p1, 0x5

    .line 52
    .line 53
    const/16 v2, 0x10

    .line 54
    .line 55
    ushr-long v2, p2, v2

    .line 56
    .line 57
    long-to-int v3, v2

    .line 58
    int-to-byte v2, v3

    .line 59
    aput-byte v2, v0, v1

    .line 60
    .line 61
    add-int/lit8 v1, p1, 0x6

    .line 62
    .line 63
    const/16 v2, 0x8

    .line 64
    .line 65
    ushr-long v2, p2, v2

    .line 66
    .line 67
    long-to-int v3, v2

    .line 68
    int-to-byte v2, v3

    .line 69
    aput-byte v2, v0, v1

    .line 70
    .line 71
    add-int/lit8 p1, p1, 0x7

    .line 72
    .line 73
    long-to-int p3, p2

    .line 74
    int-to-byte p2, p3

    .line 75
    aput-byte p2, v0, p1

    .line 76
    .line 77
    return-void
.end method
