.class public Lorg/jboss/netty/buffer/o;
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
    int-to-byte v1, p2

    .line 4
    aput-byte v1, v0, p1

    .line 5
    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    ushr-int/lit8 p2, p2, 0x8

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
    new-instance p1, Lorg/jboss/netty/buffer/o;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Lorg/jboss/netty/buffer/o;-><init>([B)V

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
    new-instance v0, Lorg/jboss/netty/buffer/o;

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
    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/o;-><init>([BII)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

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
    add-int/lit8 v2, p1, 0x1

    .line 8
    .line 9
    aget-byte v2, v0, v2

    .line 10
    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 12
    .line 13
    shl-int/lit8 v2, v2, 0x8

    .line 14
    .line 15
    or-int/2addr v1, v2

    .line 16
    add-int/lit8 v2, p1, 0x2

    .line 17
    .line 18
    aget-byte v2, v0, v2

    .line 19
    .line 20
    and-int/lit16 v2, v2, 0xff

    .line 21
    .line 22
    shl-int/lit8 v2, v2, 0x10

    .line 23
    .line 24
    or-int/2addr v1, v2

    .line 25
    add-int/lit8 p1, p1, 0x3

    .line 26
    .line 27
    aget-byte p1, v0, p1

    .line 28
    .line 29
    and-int/lit16 p1, p1, 0xff

    .line 30
    .line 31
    shl-int/lit8 p1, p1, 0x18

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
    add-int/lit8 v5, p1, 0x1

    .line 10
    .line 11
    aget-byte v5, v0, v5

    .line 12
    .line 13
    int-to-long v5, v5

    .line 14
    and-long/2addr v5, v3

    .line 15
    const/16 v7, 0x8

    .line 16
    .line 17
    shl-long/2addr v5, v7

    .line 18
    or-long/2addr v1, v5

    .line 19
    add-int/lit8 v5, p1, 0x2

    .line 20
    .line 21
    aget-byte v5, v0, v5

    .line 22
    .line 23
    int-to-long v5, v5

    .line 24
    and-long/2addr v5, v3

    .line 25
    const/16 v7, 0x10

    .line 26
    .line 27
    shl-long/2addr v5, v7

    .line 28
    or-long/2addr v1, v5

    .line 29
    add-int/lit8 v5, p1, 0x3

    .line 30
    .line 31
    aget-byte v5, v0, v5

    .line 32
    .line 33
    int-to-long v5, v5

    .line 34
    and-long/2addr v5, v3

    .line 35
    const/16 v7, 0x18

    .line 36
    .line 37
    shl-long/2addr v5, v7

    .line 38
    or-long/2addr v1, v5

    .line 39
    add-int/lit8 v5, p1, 0x4

    .line 40
    .line 41
    aget-byte v5, v0, v5

    .line 42
    .line 43
    int-to-long v5, v5

    .line 44
    and-long/2addr v5, v3

    .line 45
    const/16 v7, 0x20

    .line 46
    .line 47
    shl-long/2addr v5, v7

    .line 48
    or-long/2addr v1, v5

    .line 49
    add-int/lit8 v5, p1, 0x5

    .line 50
    .line 51
    aget-byte v5, v0, v5

    .line 52
    .line 53
    int-to-long v5, v5

    .line 54
    and-long/2addr v5, v3

    .line 55
    const/16 v7, 0x28

    .line 56
    .line 57
    shl-long/2addr v5, v7

    .line 58
    or-long/2addr v1, v5

    .line 59
    add-int/lit8 v5, p1, 0x6

    .line 60
    .line 61
    aget-byte v5, v0, v5

    .line 62
    .line 63
    int-to-long v5, v5

    .line 64
    and-long/2addr v5, v3

    .line 65
    const/16 v7, 0x30

    .line 66
    .line 67
    shl-long/2addr v5, v7

    .line 68
    or-long/2addr v1, v5

    .line 69
    add-int/lit8 p1, p1, 0x7

    .line 70
    .line 71
    aget-byte p1, v0, p1

    .line 72
    .line 73
    int-to-long v5, p1

    .line 74
    and-long/2addr v3, v5

    .line 75
    const/16 p1, 0x38

    .line 76
    .line 77
    shl-long/2addr v3, p1

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
    and-int/lit16 v1, v1, 0xff

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    aget-byte p1, v0, p1

    .line 10
    .line 11
    shl-int/lit8 p1, p1, 0x8

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
    add-int/lit8 v2, p1, 0x1

    .line 8
    .line 9
    aget-byte v2, v0, v2

    .line 10
    .line 11
    and-int/lit16 v2, v2, 0xff

    .line 12
    .line 13
    shl-int/lit8 v2, v2, 0x8

    .line 14
    .line 15
    or-int/2addr v1, v2

    .line 16
    add-int/lit8 p1, p1, 0x2

    .line 17
    .line 18
    aget-byte p1, v0, p1

    .line 19
    .line 20
    and-int/lit16 p1, p1, 0xff

    .line 21
    .line 22
    shl-int/lit8 p1, p1, 0x10

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
    int-to-byte v1, p2

    .line 4
    aput-byte v1, v0, p1

    .line 5
    .line 6
    add-int/lit8 v1, p1, 0x1

    .line 7
    .line 8
    ushr-int/lit8 v2, p2, 0x8

    .line 9
    .line 10
    int-to-byte v2, v2

    .line 11
    aput-byte v2, v0, v1

    .line 12
    .line 13
    add-int/lit8 p1, p1, 0x2

    .line 14
    .line 15
    ushr-int/lit8 p2, p2, 0x10

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
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

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
    int-to-byte v1, p2

    .line 4
    aput-byte v1, v0, p1

    .line 5
    .line 6
    add-int/lit8 v1, p1, 0x1

    .line 7
    .line 8
    ushr-int/lit8 v2, p2, 0x8

    .line 9
    .line 10
    int-to-byte v2, v2

    .line 11
    aput-byte v2, v0, v1

    .line 12
    .line 13
    add-int/lit8 v1, p1, 0x2

    .line 14
    .line 15
    ushr-int/lit8 v2, p2, 0x10

    .line 16
    .line 17
    int-to-byte v2, v2

    .line 18
    aput-byte v2, v0, v1

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x3

    .line 21
    .line 22
    ushr-int/lit8 p2, p2, 0x18

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
    long-to-int v1, p2

    .line 4
    int-to-byte v1, v1

    .line 5
    aput-byte v1, v0, p1

    .line 6
    .line 7
    add-int/lit8 v1, p1, 0x1

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    ushr-long v2, p2, v2

    .line 12
    .line 13
    long-to-int v3, v2

    .line 14
    int-to-byte v2, v3

    .line 15
    aput-byte v2, v0, v1

    .line 16
    .line 17
    add-int/lit8 v1, p1, 0x2

    .line 18
    .line 19
    const/16 v2, 0x10

    .line 20
    .line 21
    ushr-long v2, p2, v2

    .line 22
    .line 23
    long-to-int v3, v2

    .line 24
    int-to-byte v2, v3

    .line 25
    aput-byte v2, v0, v1

    .line 26
    .line 27
    add-int/lit8 v1, p1, 0x3

    .line 28
    .line 29
    const/16 v2, 0x18

    .line 30
    .line 31
    ushr-long v2, p2, v2

    .line 32
    .line 33
    long-to-int v3, v2

    .line 34
    int-to-byte v2, v3

    .line 35
    aput-byte v2, v0, v1

    .line 36
    .line 37
    add-int/lit8 v1, p1, 0x4

    .line 38
    .line 39
    const/16 v2, 0x20

    .line 40
    .line 41
    ushr-long v2, p2, v2

    .line 42
    .line 43
    long-to-int v3, v2

    .line 44
    int-to-byte v2, v3

    .line 45
    aput-byte v2, v0, v1

    .line 46
    .line 47
    add-int/lit8 v1, p1, 0x5

    .line 48
    .line 49
    const/16 v2, 0x28

    .line 50
    .line 51
    ushr-long v2, p2, v2

    .line 52
    .line 53
    long-to-int v3, v2

    .line 54
    int-to-byte v2, v3

    .line 55
    aput-byte v2, v0, v1

    .line 56
    .line 57
    add-int/lit8 v1, p1, 0x6

    .line 58
    .line 59
    const/16 v2, 0x30

    .line 60
    .line 61
    ushr-long v2, p2, v2

    .line 62
    .line 63
    long-to-int v3, v2

    .line 64
    int-to-byte v2, v3

    .line 65
    aput-byte v2, v0, v1

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x7

    .line 68
    .line 69
    const/16 v1, 0x38

    .line 70
    .line 71
    ushr-long/2addr p2, v1

    .line 72
    long-to-int p3, p2

    .line 73
    int-to-byte p2, p3

    .line 74
    aput-byte p2, v0, p1

    .line 75
    .line 76
    return-void
.end method
