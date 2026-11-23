.class public Lorg/jboss/netty/buffer/q;
.super Lorg/jboss/netty/buffer/a;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/buffer/s;


# instance fields
.field private final f:Lorg/jboss/netty/buffer/e;

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/e;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ", maximum is "

    .line 5
    .line 6
    if-ltz p2, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-gt p2, v1, :cond_1

    .line 13
    .line 14
    add-int v1, p2, p3

    .line 15
    .line 16
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-gt v1, v2, :cond_0

    .line 21
    .line 22
    iput-object p1, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 23
    .line 24
    iput p2, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 25
    .line 26
    iput p3, p0, Lorg/jboss/netty/buffer/q;->h:I

    .line 27
    .line 28
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/a;->u0(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 33
    .line 34
    new-instance p3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "Invalid combined index of "

    .line 40
    .line 41
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p2

    .line 65
    :cond_1
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v2, "Invalid index of "

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p3
.end method

.method private e(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/q;->capacity()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "Invalid index: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", maximum is "

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/q;->capacity()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method private f(II)V
    .locals 2

    .line 1
    if-ltz p2, :cond_2

    .line 2
    .line 3
    if-ltz p1, :cond_1

    .line 4
    .line 5
    add-int/2addr p1, p2

    .line 6
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/q;->capacity()I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-gt p1, p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "Index too big - Bytes needed: "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ", maximum is "

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/q;->capacity()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p2

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 49
    .line 50
    const-string p2, "startIndex cannot be negative"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v1, "length is negative: "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method


# virtual methods
.method public G0(ILorg/jboss/netty/buffer/e;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->G0(ILorg/jboss/netty/buffer/e;II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public H0()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public M0(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/q;->e(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->M0(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public N0(I[BII)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->N0(I[BII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public O(I[BII)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->O(I[BII)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public U0(ILorg/jboss/netty/buffer/e;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->U0(ILorg/jboss/netty/buffer/e;II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public W(ILjava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->W(ILjava/io/OutputStream;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public W0(II)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 8
    .line 9
    add-int/2addr p1, v1

    .line 10
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->W0(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance v0, Lorg/jboss/netty/buffer/q;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 12
    .line 13
    iget v2, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 14
    .line 15
    add-int/2addr p1, v2

    .line 16
    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/buffer/q;-><init>(Lorg/jboss/netty/buffer/e;II)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->array()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public arrayOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->arrayOffset()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public c1(ILjava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 9
    .line 10
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 11
    .line 12
    add-int/2addr p1, v1

    .line 13
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->c1(ILjava/nio/ByteBuffer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/q;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public d0(II)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->d0(II)Lorg/jboss/netty/buffer/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/q;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    iget v2, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 6
    .line 7
    iget v3, p0, Lorg/jboss/netty/buffer/q;->h:I

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/q;-><init>(Lorg/jboss/netty/buffer/e;II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/e;->r0(II)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->factory()Lorg/jboss/netty/buffer/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getByte(I)B
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/q;->e(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getInt(I)I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 8
    .line 9
    add-int/2addr p1, v1

    .line 10
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 7
    .line 8
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 9
    .line 10
    add-int/2addr p1, v1

    .line 11
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    return-wide v0
.end method

.method public getShort(I)S
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 8
    .line 9
    add-int/2addr p1, v1

    .line 10
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 8
    .line 9
    add-int/2addr p1, v1

    .line 10
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public h0(II)Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 7
    .line 8
    add-int/2addr p1, v1

    .line 9
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->h0(II)Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public hasArray()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->hasArray()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->isDirect()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public k0(II)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 8
    .line 9
    add-int/2addr p1, v1

    .line 10
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->k0(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/io/InputStream;I)I

    move-result p1

    return p1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public setInt(II)V
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 8
    .line 9
    add-int/2addr p1, v1

    .line 10
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setLong(IJ)V
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 7
    .line 8
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 9
    .line 10
    add-int/2addr p1, v1

    .line 11
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public v0(ILjava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/q;->f(II)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/jboss/netty/buffer/q;->f:Lorg/jboss/netty/buffer/e;

    .line 9
    .line 10
    iget v1, p0, Lorg/jboss/netty/buffer/q;->g:I

    .line 11
    .line 12
    add-int/2addr p1, v1

    .line 13
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->v0(ILjava/nio/ByteBuffer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
