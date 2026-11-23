.class public Lorg/jboss/netty/buffer/r;
.super Lorg/jboss/netty/buffer/a;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/buffer/s;


# instance fields
.field private final f:Lorg/jboss/netty/buffer/e;

.field private final g:I


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/e;I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gt p2, v0, :cond_0

    .line 9
    .line 10
    iput-object p1, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 11
    .line 12
    iput p2, p0, Lorg/jboss/netty/buffer/r;->g:I

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/a;->u0(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Length is too large, got "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p2, " but can\'t go higher than "

    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method

.method private e(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/r;->capacity()I

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
    const-string v2, "Invalid index of "

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
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/r;->capacity()I

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
    if-ltz p2, :cond_1

    .line 2
    .line 3
    add-int/2addr p1, p2

    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/r;->capacity()I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    if-gt p1, p2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "Invalid index of "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, ", maximum is "

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/r;->capacity()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p2

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "length is negative: "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1
.end method


# virtual methods
.method public G0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->G0(ILorg/jboss/netty/buffer/e;II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public H0()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public M0(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/r;->e(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->M0(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public N0(I[BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->N0(I[BII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public O(I[BII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->O(I[BII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public U0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->U0(ILorg/jboss/netty/buffer/e;II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public W(ILjava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->W(ILjava/io/OutputStream;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public W0(II)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->W0(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/r;->f(II)V

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 10
    .line 11
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public array()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->arrayOffset()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public c1(ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->c1(ILjava/nio/ByteBuffer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/r;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public d0(II)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->d0(II)Lorg/jboss/netty/buffer/e;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/r;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    iget v2, p0, Lorg/jboss/netty/buffer/r;->g:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/buffer/r;-><init>(Lorg/jboss/netty/buffer/e;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/buffer/e;->r0(II)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

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
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/buffer/r;->e(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public h0(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->h0(II)Ljava/nio/ByteBuffer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public hasArray()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

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
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->k0(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/io/InputStream;I)I

    move-result p1

    return p1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 4
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public setInt(II)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setLong(IJ)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public v0(ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/buffer/r;->f(II)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/jboss/netty/buffer/r;->f:Lorg/jboss/netty/buffer/e;

    .line 9
    .line 10
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->v0(ILjava/nio/ByteBuffer;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
