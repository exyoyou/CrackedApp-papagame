.class public final Lorg/jboss/netty/buffer/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/ByteOrder;

.field public static final b:Ljava/nio/ByteOrder;

.field public static final c:Lorg/jboss/netty/buffer/e;

.field private static final d:[C


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    sput-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 4
    .line 5
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 6
    .line 7
    sput-object v0, Lorg/jboss/netty/buffer/h;->b:Ljava/nio/ByteOrder;

    .line 8
    .line 9
    new-instance v0, Lorg/jboss/netty/buffer/c;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/c;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 16
    .line 17
    const/16 v0, 0x400

    .line 18
    .line 19
    new-array v0, v0, [C

    .line 20
    .line 21
    sput-object v0, Lorg/jboss/netty/buffer/h;->d:[C

    .line 22
    .line 23
    const-string v0, "0123456789abcdef"

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :goto_0
    const/16 v2, 0x100

    .line 30
    .line 31
    if-ge v1, v2, :cond_0

    .line 32
    .line 33
    sget-object v2, Lorg/jboss/netty/buffer/h;->d:[C

    .line 34
    .line 35
    shl-int/lit8 v3, v1, 0x1

    .line 36
    .line 37
    ushr-int/lit8 v4, v1, 0x4

    .line 38
    .line 39
    and-int/lit8 v4, v4, 0xf

    .line 40
    .line 41
    aget-char v4, v0, v4

    .line 42
    .line 43
    aput-char v4, v2, v3

    .line 44
    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    and-int/lit8 v4, v1, 0xf

    .line 48
    .line 49
    aget-char v4, v0, v4

    .line 50
    .line 51
    aput-char v4, v2, v3

    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static A(I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static B(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/d;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/d;-><init>(Ljava/nio/ByteBuffer;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->clear()V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 26
    .line 27
    const-string p1, "endianness"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public static C()Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/jboss/netty/buffer/h;->F(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static D(I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->F(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static E(ILorg/jboss/netty/buffer/f;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/jboss/netty/buffer/l;

    .line 4
    .line 5
    invoke-interface {p1}, Lorg/jboss/netty/buffer/f;->e()Ljava/nio/ByteOrder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1, p0, p1}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 14
    .line 15
    const-string p1, "factory"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static F(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static G(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static H(Lorg/jboss/netty/buffer/f;)Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/jboss/netty/buffer/l;

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/buffer/f;->e()Ljava/nio/ByteOrder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/16 v2, 0x100

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, p0}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V

    .line 12
    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 16
    .line 17
    const-string v0, "factory"

    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method static I(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Ljava/nio/ByteBuffer;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/a;->b(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-double v0, v0

    .line 10
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    float-to-double v2, v2

    .line 15
    mul-double v0, v0, v2

    .line 16
    .line 17
    double-to-int v0, v0

    .line 18
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    :try_start_0
    invoke-virtual {p1, p0, v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :catch_0
    move-exception p0

    .line 54
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public static J(Lorg/jboss/netty/buffer/e;Lorg/jboss/netty/buffer/e;)Z
    .locals 10

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    ushr-int/lit8 v1, v0, 0x3

    .line 14
    .line 15
    and-int/lit8 v0, v0, 0x7

    .line 16
    .line 17
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    if-ne v5, v6, :cond_2

    .line 34
    .line 35
    :goto_0
    if-lez v1, :cond_4

    .line 36
    .line 37
    invoke-interface {p0, v3}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    cmp-long v9, v5, v7

    .line 46
    .line 47
    if-eqz v9, :cond_1

    .line 48
    .line 49
    return v2

    .line 50
    :cond_1
    add-int/lit8 v3, v3, 0x8

    .line 51
    .line 52
    add-int/lit8 v4, v4, 0x8

    .line 53
    .line 54
    add-int/lit8 v1, v1, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :goto_1
    if-lez v1, :cond_4

    .line 58
    .line 59
    invoke-interface {p0, v3}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    .line 64
    .line 65
    .line 66
    move-result-wide v7

    .line 67
    invoke-static {v7, v8}, Lorg/jboss/netty/buffer/h;->V(J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v7

    .line 71
    cmp-long v9, v5, v7

    .line 72
    .line 73
    if-eqz v9, :cond_3

    .line 74
    .line 75
    return v2

    .line 76
    :cond_3
    add-int/lit8 v3, v3, 0x8

    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x8

    .line 79
    .line 80
    add-int/lit8 v1, v1, -0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_4
    :goto_2
    if-lez v0, :cond_6

    .line 84
    .line 85
    invoke-interface {p0, v3}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-interface {p1, v4}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eq v1, v5, :cond_5

    .line 94
    .line 95
    return v2

    .line 96
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 97
    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    add-int/lit8 v0, v0, -0x1

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_6
    const/4 p0, 0x1

    .line 104
    return p0
.end method

.method private static K(Lorg/jboss/netty/buffer/e;IIB)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 v0, -0x1

    .line 7
    if-ge p1, p2, :cond_2

    .line 8
    .line 9
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    .line 17
    .line 18
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ne v1, p3, :cond_1

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :goto_1
    return v0
.end method

.method private static L(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    const/4 v0, -0x1

    .line 7
    if-ge p1, p2, :cond_2

    .line 8
    .line 9
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    .line 17
    .line 18
    invoke-interface {p3, p0, p1}, Lorg/jboss/netty/buffer/g;->a(Lorg/jboss/netty/buffer/e;I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    return p1

    .line 25
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    :goto_1
    return v0
.end method

.method public static M(Lorg/jboss/netty/buffer/e;)I
    .locals 6

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    ushr-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x3

    .line 8
    .line 9
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    sget-object v4, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    if-ne v3, v4, :cond_0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    :goto_0
    if-lez v1, :cond_1

    .line 24
    .line 25
    mul-int/lit8 v3, v3, 0x1f

    .line 26
    .line 27
    invoke-interface {p0, v2}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    add-int/2addr v3, v4

    .line 32
    add-int/lit8 v2, v2, 0x4

    .line 33
    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v3, 0x1

    .line 38
    :goto_1
    if-lez v1, :cond_1

    .line 39
    .line 40
    mul-int/lit8 v3, v3, 0x1f

    .line 41
    .line 42
    invoke-interface {p0, v2}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v4}, Lorg/jboss/netty/buffer/h;->U(I)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    add-int/2addr v3, v4

    .line 51
    add-int/lit8 v2, v2, 0x4

    .line 52
    .line 53
    add-int/lit8 v1, v1, -0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_2
    if-lez v0, :cond_2

    .line 57
    .line 58
    mul-int/lit8 v3, v3, 0x1f

    .line 59
    .line 60
    add-int/lit8 v1, v2, 0x1

    .line 61
    .line 62
    invoke-interface {p0, v2}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    add-int/2addr v3, v2

    .line 67
    add-int/lit8 v0, v0, -0x1

    .line 68
    .line 69
    move v2, v1

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    if-nez v3, :cond_3

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    move v5, v3

    .line 75
    :goto_3
    return v5
.end method

.method public static N(Lorg/jboss/netty/buffer/e;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p0, v0, v1}, Lorg/jboss/netty/buffer/h;->O(Lorg/jboss/netty/buffer/e;II)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static O(Lorg/jboss/netty/buffer/e;II)Ljava/lang/String;
    .locals 5

    .line 1
    if-ltz p2, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    add-int v0, p1, p2

    .line 9
    .line 10
    shl-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    new-array p2, p2, [C

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge p1, v0, :cond_1

    .line 16
    .line 17
    sget-object v2, Lorg/jboss/netty/buffer/h;->d:[C

    .line 18
    .line 19
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedByte(I)S

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    shl-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-static {v2, v3, p2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    .line 31
    add-int/2addr v1, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {p0, p2}, Ljava/lang/String;-><init>([C)V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v0, "length: "

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public static P(Ljava/lang/String;)Lorg/jboss/netty/buffer/e;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    div-int/lit8 v1, v0, 0x2

    .line 6
    .line 7
    new-array v1, v1, [B

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    div-int/lit8 v3, v2, 0x2

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/16 v5, 0x10

    .line 19
    .line 20
    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    shl-int/lit8 v4, v4, 0x4

    .line 25
    .line 26
    add-int/lit8 v6, v2, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    add-int/2addr v4, v5

    .line 37
    int-to-byte v4, v4

    .line 38
    aput-byte v4, v1, v3

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v1}, Lorg/jboss/netty/buffer/h;->g0([B)Lorg/jboss/netty/buffer/e;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static Q(Lorg/jboss/netty/buffer/e;IIB)I
    .locals 0

    .line 1
    if-gt p1, p2, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->K(Lorg/jboss/netty/buffer/e;IIB)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->S(Lorg/jboss/netty/buffer/e;IIB)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public static R(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I
    .locals 0

    .line 1
    if-gt p1, p2, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->L(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->T(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method private static S(Lorg/jboss/netty/buffer/e;IIB)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-ltz p1, :cond_2

    .line 11
    .line 12
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    :goto_0
    if-lt p1, p2, :cond_2

    .line 22
    .line 23
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, p3, :cond_1

    .line 28
    .line 29
    return p1

    .line 30
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    return v0
.end method

.method private static T(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-ltz p1, :cond_2

    .line 11
    .line 12
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    :goto_0
    if-lt p1, p2, :cond_2

    .line 22
    .line 23
    invoke-interface {p3, p0, p1}, Lorg/jboss/netty/buffer/g;->a(Lorg/jboss/netty/buffer/e;I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    return p1

    .line 30
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    :goto_1
    return v0
.end method

.method public static U(I)I
    .locals 2

    .line 1
    int-to-short v0, p0

    .line 2
    invoke-static {v0}, Lorg/jboss/netty/buffer/h;->X(S)S

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    shl-int/lit8 v0, v0, 0x10

    .line 7
    .line 8
    ushr-int/lit8 p0, p0, 0x10

    .line 9
    .line 10
    int-to-short p0, p0

    .line 11
    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->X(S)S

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const v1, 0xffff

    .line 16
    .line 17
    .line 18
    and-int/2addr p0, v1

    .line 19
    or-int/2addr p0, v0

    .line 20
    return p0
.end method

.method public static V(J)J
    .locals 4

    .line 1
    long-to-int v0, p0

    .line 2
    invoke-static {v0}, Lorg/jboss/netty/buffer/h;->U(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    int-to-long v0, v0

    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    shl-long/2addr v0, v2

    .line 10
    ushr-long/2addr p0, v2

    .line 11
    long-to-int p1, p0

    .line 12
    invoke-static {p1}, Lorg/jboss/netty/buffer/h;->U(I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    int-to-long p0, p0

    .line 17
    const-wide v2, 0xffffffffL

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    and-long/2addr p0, v2

    .line 23
    or-long/2addr p0, v0

    .line 24
    return-wide p0
.end method

.method public static W(I)I
    .locals 2

    .line 1
    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static X(S)S
    .locals 1

    .line 1
    shl-int/lit8 v0, p0, 0x8

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static Y(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/jboss/netty/buffer/p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/jboss/netty/buffer/p;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/p;->H0()Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/p;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/p;-><init>(Lorg/jboss/netty/buffer/e;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static Z(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/2addr v2, v3

    .line 33
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {v0, v1, v2, p0}, Lorg/jboss/netty/buffer/h;->b0(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    new-instance v0, Lorg/jboss/netty/buffer/d;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/d;-><init>(Ljava/nio/ByteBuffer;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method public static a(I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->b(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    if-ne p0, v0, :cond_1

    .line 4
    .line 5
    array-length p0, p1

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p0, Lorg/jboss/netty/buffer/c;

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/c;-><init>([B)V

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_1
    sget-object v0, Lorg/jboss/netty/buffer/h;->b:Ljava/nio/ByteOrder;

    .line 18
    .line 19
    if-ne p0, v0, :cond_3

    .line 20
    .line 21
    array-length p0, p1

    .line 22
    if-nez p0, :cond_2

    .line 23
    .line 24
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    new-instance p0, Lorg/jboss/netty/buffer/o;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/o;-><init>([B)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 34
    .line 35
    const-string p1, "endianness"

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p0
.end method

.method public static b(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    if-ne p0, v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance p0, Lorg/jboss/netty/buffer/c;

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/c;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    sget-object v0, Lorg/jboss/netty/buffer/h;->b:Ljava/nio/ByteOrder;

    .line 17
    .line 18
    if-ne p0, v0, :cond_3

    .line 19
    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    new-instance p0, Lorg/jboss/netty/buffer/o;

    .line 26
    .line 27
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/o;-><init>(I)V

    .line 28
    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 32
    .line 33
    const-string p1, "endianness"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0
.end method

.method public static b0(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    if-nez p2, :cond_2

    .line 4
    .line 5
    array-length p2, p1

    .line 6
    if-ne p3, p2, :cond_0

    .line 7
    .line 8
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :cond_0
    if-nez p3, :cond_1

    .line 14
    .line 15
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_1
    new-instance p2, Lorg/jboss/netty/buffer/r;

    .line 19
    .line 20
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {p2, p0, p3}, Lorg/jboss/netty/buffer/r;-><init>(Lorg/jboss/netty/buffer/e;I)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_2
    if-nez p3, :cond_3

    .line 29
    .line 30
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_3
    new-instance v0, Lorg/jboss/netty/buffer/q;

    .line 34
    .line 35
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0, p2, p3}, Lorg/jboss/netty/buffer/q;-><init>(Lorg/jboss/netty/buffer/e;II)V

    .line 40
    .line 41
    .line 42
    return-object v0

    .line 43
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 44
    .line 45
    const-string p1, "endianness"

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public static c(Lorg/jboss/netty/buffer/e;Lorg/jboss/netty/buffer/e;)I
    .locals 14

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    ushr-int/lit8 v3, v2, 0x2

    .line 14
    .line 15
    and-int/lit8 v2, v2, 0x3

    .line 16
    .line 17
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    const/4 v8, 0x1

    .line 34
    const/4 v9, -0x1

    .line 35
    if-ne v6, v7, :cond_2

    .line 36
    .line 37
    :goto_0
    if-lez v3, :cond_5

    .line 38
    .line 39
    invoke-interface {p0, v4}, Lorg/jboss/netty/buffer/e;->getUnsignedInt(I)J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    invoke-interface {p1, v5}, Lorg/jboss/netty/buffer/e;->getUnsignedInt(I)J

    .line 44
    .line 45
    .line 46
    move-result-wide v10

    .line 47
    cmp-long v12, v6, v10

    .line 48
    .line 49
    if-lez v12, :cond_0

    .line 50
    .line 51
    return v8

    .line 52
    :cond_0
    if-gez v12, :cond_1

    .line 53
    .line 54
    return v9

    .line 55
    :cond_1
    add-int/lit8 v4, v4, 0x4

    .line 56
    .line 57
    add-int/lit8 v5, v5, 0x4

    .line 58
    .line 59
    add-int/lit8 v3, v3, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    :goto_1
    if-lez v3, :cond_5

    .line 63
    .line 64
    invoke-interface {p0, v4}, Lorg/jboss/netty/buffer/e;->getUnsignedInt(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    invoke-interface {p1, v5}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    .line 69
    .line 70
    .line 71
    move-result v10

    .line 72
    invoke-static {v10}, Lorg/jboss/netty/buffer/h;->U(I)I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    int-to-long v10, v10

    .line 77
    const-wide v12, 0xffffffffL

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    and-long/2addr v10, v12

    .line 83
    cmp-long v12, v6, v10

    .line 84
    .line 85
    if-lez v12, :cond_3

    .line 86
    .line 87
    return v8

    .line 88
    :cond_3
    if-gez v12, :cond_4

    .line 89
    .line 90
    return v9

    .line 91
    :cond_4
    add-int/lit8 v4, v4, 0x4

    .line 92
    .line 93
    add-int/lit8 v5, v5, 0x4

    .line 94
    .line 95
    add-int/lit8 v3, v3, -0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    :goto_2
    if-lez v2, :cond_8

    .line 99
    .line 100
    invoke-interface {p0, v4}, Lorg/jboss/netty/buffer/e;->getUnsignedByte(I)S

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-interface {p1, v5}, Lorg/jboss/netty/buffer/e;->getUnsignedByte(I)S

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-le v3, v6, :cond_6

    .line 109
    .line 110
    return v8

    .line 111
    :cond_6
    if-ge v3, v6, :cond_7

    .line 112
    .line 113
    return v9

    .line 114
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 115
    .line 116
    add-int/lit8 v5, v5, 0x1

    .line 117
    .line 118
    add-int/lit8 v2, v2, -0x1

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_8
    sub-int/2addr v0, v1

    .line 122
    return v0
.end method

.method public static varargs c0(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/e;
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    if-eqz v0, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_3

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    array-length v1, p1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    array-length v1, p1

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v1, :cond_2

    .line 17
    .line 18
    aget-object v4, p1, v3

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    array-length v5, v4

    .line 24
    if-lez v5, :cond_1

    .line 25
    .line 26
    invoke-static {p0, v4}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :goto_1
    invoke-static {p0, v0, v2}, Lorg/jboss/netty/buffer/h;->d(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/e;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0

    .line 41
    :cond_3
    aget-object p1, p1, v2

    .line 42
    .line 43
    array-length v0, p1

    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_4
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 52
    .line 53
    return-object p0
.end method

.method private static d(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteOrder;",
            "Ljava/util/List<",
            "Lorg/jboss/netty/buffer/e;",
            ">;Z)",
            "Lorg/jboss/netty/buffer/e;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    new-instance v0, Lorg/jboss/netty/buffer/i;

    .line 11
    .line 12
    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/i;-><init>(Ljava/nio/ByteOrder;Ljava/util/List;Z)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lorg/jboss/netty/buffer/e;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 25
    .line 26
    return-object p0
.end method

.method public static d0(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->z0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->y0()Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 13
    .line 14
    return-object p0
.end method

.method public static e(Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->i(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static varargs e0(Z[Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    if-eqz v0, :cond_6

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_5

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    array-length v1, p1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    array-length v1, p1

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_4

    .line 17
    .line 18
    aget-object v4, p1, v2

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_3

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string p1, "inconsistent byte order"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :goto_1
    invoke-static {v4}, Lorg/jboss/netty/buffer/h;->Z(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    :goto_2
    invoke-static {v3, v0, p0}, Lorg/jboss/netty/buffer/h;->d(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/e;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :cond_5
    aget-object p0, p1, v2

    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-eqz p0, :cond_6

    .line 76
    .line 77
    aget-object p0, p1, v2

    .line 78
    .line 79
    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->Z(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    return-object p0

    .line 84
    :cond_6
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 85
    .line 86
    return-object p0
.end method

.method public static f(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lorg/jboss/netty/buffer/h;->j(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static varargs f0(Z[Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    if-eqz v0, :cond_7

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_6

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    array-length v1, p1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    array-length v1, p1

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_5

    .line 17
    .line 18
    aget-object v4, p1, v2

    .line 19
    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    goto :goto_3

    .line 23
    :cond_0
    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->z0()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_4

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eqz v5, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string p1, "inconsistent byte order"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    :goto_1
    instance-of v5, v4, Lorg/jboss/netty/buffer/i;

    .line 55
    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    move-object v5, v4

    .line 59
    check-cast v5, Lorg/jboss/netty/buffer/i;

    .line 60
    .line 61
    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v5, v6, v4}, Lorg/jboss/netty/buffer/i;->g(II)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    invoke-interface {v4}, Lorg/jboss/netty/buffer/e;->y0()Lorg/jboss/netty/buffer/e;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_5
    :goto_3
    invoke-static {v3, v0, p0}, Lorg/jboss/netty/buffer/h;->d(Ljava/nio/ByteOrder;Ljava/util/List;Z)Lorg/jboss/netty/buffer/e;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    return-object p0

    .line 92
    :cond_6
    aget-object p0, p1, v2

    .line 93
    .line 94
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->z0()Z

    .line 95
    .line 96
    .line 97
    move-result p0

    .line 98
    if-eqz p0, :cond_7

    .line 99
    .line 100
    aget-object p0, p1, v2

    .line 101
    .line 102
    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->d0(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0

    .line 107
    :cond_7
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 108
    .line 109
    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/buffer/e;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->f(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static g0([B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static h(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-array v0, v0, [B

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    .line 34
    .line 35
    throw v0
.end method

.method public static h0([BII)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/h;->b0(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static i(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p1, Ljava/nio/CharBuffer;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p1, Ljava/nio/CharBuffer;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    add-int/2addr v1, p1

    .line 33
    add-int/2addr v1, p2

    .line 34
    invoke-static {p0, v0, v1, p3, p4}, Lorg/jboss/netty/buffer/h;->o(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->slice()Ljava/nio/CharBuffer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, p3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    .line 48
    .line 49
    invoke-static {p0, p1, p4}, Lorg/jboss/netty/buffer/h;->l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0

    .line 54
    :cond_2
    add-int/2addr p3, p2

    .line 55
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p0, p1, p4}, Lorg/jboss/netty/buffer/h;->l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 65
    .line 66
    const-string p1, "string"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public static varargs i0([Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->e0(Z[Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static j(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Ljava/nio/CharBuffer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Ljava/nio/CharBuffer;

    .line 8
    .line 9
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/buffer/h;->l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/buffer/h;->l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 24
    .line 25
    const-string p1, "string"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static varargs j0([Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->f0(Z[Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static k(Ljava/nio/ByteOrder;Ljava/lang/String;Ljava/lang/String;)Lorg/jboss/netty/buffer/e;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/buffer/h;->j(Ljava/nio/ByteOrder;Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static varargs k0([[B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->c0(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/jboss/netty/buffer/h;->I(Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p0, p2}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->u0(I)V

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public static m(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    if-ne p0, v0, :cond_1

    .line 4
    .line 5
    array-length p0, p1

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p0, Lorg/jboss/netty/buffer/c;

    .line 12
    .line 13
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, [B

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/c;-><init>([B)V

    .line 20
    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    sget-object v0, Lorg/jboss/netty/buffer/h;->b:Ljava/nio/ByteOrder;

    .line 24
    .line 25
    if-ne p0, v0, :cond_3

    .line 26
    .line 27
    array-length p0, p1

    .line 28
    if-nez p0, :cond_2

    .line 29
    .line 30
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_2
    new-instance p0, Lorg/jboss/netty/buffer/o;

    .line 34
    .line 35
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, [B

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/o;-><init>([B)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 46
    .line 47
    const-string p1, "endianness"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public static n(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-array v0, p3, [B

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 20
    .line 21
    const-string p1, "endianness"

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p0
.end method

.method public static o(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p0, p1, p4}, Lorg/jboss/netty/buffer/h;->l(Ljava/nio/ByteOrder;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 18
    .line 19
    const-string p1, "array"

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method

.method public static p(Ljava/nio/ByteOrder;[CLjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, p1, v1, v0, p2}, Lorg/jboss/netty/buffer/h;->o(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static varargs q(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/e;
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    if-eqz v0, :cond_6

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    .line 8
    array-length v0, p1

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    .line 13
    aget-object v4, p1, v1

    .line 14
    .line 15
    const v5, 0x7fffffff

    .line 16
    .line 17
    .line 18
    sub-int/2addr v5, v3

    .line 19
    array-length v6, v4

    .line 20
    if-lt v5, v6, :cond_0

    .line 21
    .line 22
    array-length v4, v4

    .line 23
    add-int/2addr v3, v4

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p1, "The total length of the specified arrays is too big."

    .line 30
    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_1
    if-nez v3, :cond_2

    .line 36
    .line 37
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_2
    new-array v0, v3, [B

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_1
    array-length v4, p1

    .line 45
    if-ge v1, v4, :cond_3

    .line 46
    .line 47
    aget-object v4, p1, v1

    .line 48
    .line 49
    array-length v5, v4

    .line 50
    invoke-static {v4, v2, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    .line 52
    .line 53
    array-length v4, v4

    .line 54
    add-int/2addr v3, v4

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-static {p0, v0}, Lorg/jboss/netty/buffer/h;->a0(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0

    .line 63
    :cond_4
    aget-object p1, p1, v2

    .line 64
    .line 65
    array-length v0, p1

    .line 66
    if-nez v0, :cond_5

    .line 67
    .line 68
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_5
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->m(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_6
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 77
    .line 78
    return-object p0
.end method

.method public static r(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->z0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->copy()Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 13
    .line 14
    return-object p0
.end method

.method public static s([B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->m(Ljava/nio/ByteOrder;[B)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static t([BII)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/h;->n(Ljava/nio/ByteOrder;[BII)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static u([CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->o(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static v([CLjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, p0, v2, v1, p1}, Lorg/jboss/netty/buffer/h;->o(Ljava/nio/ByteOrder;[CIILjava/nio/charset/Charset;)Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static varargs w([Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    if-eqz v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    array-length v0, p0

    .line 9
    new-array v0, v0, [Lorg/jboss/netty/buffer/e;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v3, p0

    .line 13
    if-ge v1, v3, :cond_0

    .line 14
    .line 15
    aget-object v3, p0, v1

    .line 16
    .line 17
    invoke-static {v3}, Lorg/jboss/netty/buffer/h;->h(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    aput-object v3, v0, v1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v2, v0}, Lorg/jboss/netty/buffer/h;->f0(Z[Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    aget-object p0, p0, v2

    .line 32
    .line 33
    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->h(Ljava/nio/ByteBuffer;)Lorg/jboss/netty/buffer/e;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 39
    .line 40
    return-object p0
.end method

.method public static varargs x([Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    if-eqz v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    array-length v0, p0

    .line 9
    new-array v0, v0, [Lorg/jboss/netty/buffer/e;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    array-length v3, p0

    .line 13
    if-ge v1, v3, :cond_0

    .line 14
    .line 15
    aget-object v3, p0, v1

    .line 16
    .line 17
    invoke-static {v3}, Lorg/jboss/netty/buffer/h;->r(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    aput-object v3, v0, v1

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v2, v0}, Lorg/jboss/netty/buffer/h;->f0(Z[Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_1
    aget-object p0, p0, v2

    .line 32
    .line 33
    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->r(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_2
    sget-object p0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 39
    .line 40
    return-object p0
.end method

.method public static varargs y([[B)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    sget-object v0, Lorg/jboss/netty/buffer/h;->a:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lorg/jboss/netty/buffer/h;->q(Ljava/nio/ByteOrder;[[B)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method static z(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/util/a;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetDecoder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    int-to-double v0, v0

    .line 10
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    float-to-double v2, v2

    .line 15
    mul-double v0, v0, v2

    .line 16
    .line 17
    double-to-int v0, v0

    .line 18
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    :try_start_0
    invoke-virtual {p1, p0, v0, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method
