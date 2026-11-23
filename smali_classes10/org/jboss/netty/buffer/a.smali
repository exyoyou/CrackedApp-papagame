.class public abstract Lorg/jboss/netty/buffer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/buffer/e;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A0(Lorg/jboss/netty/buffer/g;)Lorg/jboss/netty/buffer/e;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->Z(IILorg/jboss/netty/buffer/g;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 12
    .line 13
    sub-int/2addr p1, v0

    .line 14
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->e0(I)Lorg/jboss/netty/buffer/e;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public B0(Lorg/jboss/netty/buffer/g;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->Z(IILorg/jboss/netty/buffer/g;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->f0(I)V

    .line 12
    .line 13
    .line 14
    sub-int/2addr p1, v0

    .line 15
    return p1

    .line 16
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public C0(Ljava/lang/String;Lorg/jboss/netty/buffer/g;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/jboss/netty/buffer/a;->c0(IILjava/lang/String;Lorg/jboss/netty/buffer/g;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public D0(I[B)V
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, p1, p2, v1, v0}, Lorg/jboss/netty/buffer/e;->N0(I[BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public E0(Lorg/jboss/netty/buffer/e;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/a;->a0(Lorg/jboss/netty/buffer/e;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public F0([B)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/buffer/a;->s0([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public I0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

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

.method public J0(ILorg/jboss/netty/buffer/e;I)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt p3, v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p0, p1, p2, v0, p3}, Lorg/jboss/netty/buffer/e;->G0(ILorg/jboss/netty/buffer/e;II)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    add-int/2addr p1, p3

    .line 19
    invoke-interface {p2, p1}, Lorg/jboss/netty/buffer/e;->f0(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "Too many bytes to write: Need "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p3, ", maximum is "

    .line 39
    .line 40
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public K0(Lorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 2
    .line 3
    invoke-interface {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->G0(ILorg/jboss/netty/buffer/e;II)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 7
    .line 8
    add-int/2addr p1, p3

    .line 9
    iput p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 10
    .line 11
    return-void
.end method

.method public L()V
    .locals 3

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 7
    .line 8
    sub-int/2addr v1, v0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {p0, v2, p0, v0, v1}, Lorg/jboss/netty/buffer/e;->G0(ILorg/jboss/netty/buffer/e;II)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 14
    .line 15
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 16
    .line 17
    sub-int/2addr v0, v1

    .line 18
    iput v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 19
    .line 20
    iget v0, p0, Lorg/jboss/netty/buffer/a;->d:I

    .line 21
    .line 22
    sub-int/2addr v0, v1

    .line 23
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lorg/jboss/netty/buffer/a;->d:I

    .line 28
    .line 29
    iget v0, p0, Lorg/jboss/netty/buffer/a;->e:I

    .line 30
    .line 31
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 32
    .line 33
    sub-int/2addr v0, v1

    .line 34
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lorg/jboss/netty/buffer/a;->e:I

    .line 39
    .line 40
    iput v2, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 41
    .line 42
    return-void
.end method

.method public M(Lorg/jboss/netty/buffer/g;)Lorg/jboss/netty/buffer/e;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->Z(IILorg/jboss/netty/buffer/g;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 12
    .line 13
    sub-int/2addr p1, v0

    .line 14
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->N(I)Lorg/jboss/netty/buffer/e;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public N(I)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->factory()Lorg/jboss/netty/buffer/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1, p1}, Lorg/jboss/netty/buffer/f;->a(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 22
    .line 23
    invoke-interface {v0, p0, v1, p1}, Lorg/jboss/netty/buffer/e;->K0(Lorg/jboss/netty/buffer/e;II)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 27
    .line 28
    add-int/2addr v1, p1

    .line 29
    iput v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 30
    .line 31
    return-object v0
.end method

.method public O0([BII)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 2
    .line 3
    invoke-interface {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->O(I[BII)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 7
    .line 8
    add-int/2addr p1, p3

    .line 9
    iput p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 10
    .line 11
    return-void
.end method

.method public P0(Lorg/jboss/netty/buffer/g;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->g0(IILorg/jboss/netty/buffer/g;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public Q0()Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/buffer/e;->h0(II)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public R0(Lorg/jboss/netty/buffer/e;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->c(Lorg/jboss/netty/buffer/e;Lorg/jboss/netty/buffer/e;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public T(Lorg/jboss/netty/buffer/e;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/buffer/a;->w0(Lorg/jboss/netty/buffer/e;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public T0(ILorg/jboss/netty/buffer/g;)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/a;->g0(IILorg/jboss/netty/buffer/g;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public U(ILorg/jboss/netty/buffer/e;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/a;->X(ILorg/jboss/netty/buffer/e;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public V([B)V
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/buffer/a;->O0([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public V0(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 2
    .line 3
    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/e;->k0(II)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x3

    .line 9
    .line 10
    iput p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 11
    .line 12
    return-void
.end method

.method public X(ILorg/jboss/netty/buffer/e;I)V
    .locals 2

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt p3, v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->writerIndex()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p0, p1, p2, v0, p3}, Lorg/jboss/netty/buffer/e;->U0(ILorg/jboss/netty/buffer/e;II)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->writerIndex()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    add-int/2addr p1, p3

    .line 19
    invoke-interface {p2, p1}, Lorg/jboss/netty/buffer/e;->u0(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "Too many bytes to be read: Need "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p3, ", maximum is "

    .line 39
    .line 40
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method

.method public X0()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 2
    .line 3
    iput v0, p0, Lorg/jboss/netty/buffer/a;->e:I

    .line 4
    .line 5
    return-void
.end method

.method public Y(IILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public Y0(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 6
    .line 7
    invoke-interface {p0, v1, p1}, Lorg/jboss/netty/buffer/e;->c1(ILjava/nio/ByteBuffer;)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 11
    .line 12
    add-int/2addr p1, v0

    .line 13
    iput p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 14
    .line 15
    return-void
.end method

.method public Z(IILorg/jboss/netty/buffer/g;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->R(Lorg/jboss/netty/buffer/e;IILorg/jboss/netty/buffer/g;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public Z0(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "Writable bytes exceeded: Got "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ", maximum is "

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writableBytes()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public a0(Lorg/jboss/netty/buffer/e;I)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt p2, v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/buffer/a;->K0(Lorg/jboss/netty/buffer/e;II)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v0, p2

    .line 19
    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/e;->f0(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "Too many bytes to write - Need "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, ", maximum is "

    .line 39
    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public a1(II)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-ltz p2, :cond_5

    .line 5
    .line 6
    ushr-int/lit8 v0, p2, 0x3

    .line 7
    .line 8
    and-int/lit8 p2, p2, 0x7

    .line 9
    .line 10
    :goto_0
    if-lez v0, :cond_1

    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    invoke-interface {p0, p1, v1, v2}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x8

    .line 18
    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    const/4 v1, 0x4

    .line 24
    if-ne p2, v1, :cond_2

    .line 25
    .line 26
    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    .line 27
    .line 28
    .line 29
    goto :goto_3

    .line 30
    :cond_2
    if-ge p2, v1, :cond_3

    .line 31
    .line 32
    :goto_1
    if-lez p2, :cond_4

    .line 33
    .line 34
    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/buffer/e;->M0(II)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    add-int/lit8 p2, p2, -0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    .line 43
    .line 44
    .line 45
    add-int/2addr p1, v1

    .line 46
    sub-int/2addr p2, v1

    .line 47
    :goto_2
    if-lez p2, :cond_4

    .line 48
    .line 49
    invoke-interface {p0, p1, v0}, Lorg/jboss/netty/buffer/e;->M0(II)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 p1, p1, 0x1

    .line 53
    .line 54
    add-int/lit8 p2, p2, -0x1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    :goto_3
    return-void

    .line 58
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string p2, "length must be 0 or greater than 0."

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1
.end method

.method public b(II)V
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/buffer/e;->W0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b0()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->e:I

    .line 2
    .line 3
    iput v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 4
    .line 5
    return-void
.end method

.method public b1(Ljava/io/OutputStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 5
    .line 6
    invoke-interface {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/e;->W(ILjava/io/OutputStream;I)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 10
    .line 11
    add-int/2addr p1, p2

    .line 12
    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 13
    .line 14
    return-void
.end method

.method public bytesBefore(B)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->bytesBefore(IIB)I

    move-result p1

    return p1
.end method

.method public bytesBefore(IB)I
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/a;->bytesBefore(IIB)I

    move-result p1

    return p1
.end method

.method public bytesBefore(IIB)I
    .locals 0

    add-int/2addr p2, p1

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->indexOf(IIB)I

    move-result p2

    if-gez p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    sub-int/2addr p2, p1

    return p2
.end method

.method protected c(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lt v0, p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "Not enough readable bytes - Need "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ", maximum is "

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method public c0(IILjava/lang/String;Lorg/jboss/netty/buffer/g;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->Y(IILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    add-int v0, p1, p2

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0, p4}, Lorg/jboss/netty/buffer/a;->Z(IILorg/jboss/netty/buffer/g;)I

    .line 11
    .line 12
    .line 13
    move-result p4

    .line 14
    if-gez p4, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->Y(IILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    sub-int/2addr p4, p1

    .line 22
    invoke-virtual {p0, p1, p4, p3}, Lorg/jboss/netty/buffer/a;->Y(IILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 3
    .line 4
    iput v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->R0(Lorg/jboss/netty/buffer/e;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public copy()Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/buffer/e;->d0(II)Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public e0(I)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 8
    .line 9
    add-int/2addr v1, p1

    .line 10
    iput v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 11
    .line 12
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    check-cast p1, Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    invoke-static {p0, p1}, Lorg/jboss/netty/buffer/h;->J(Lorg/jboss/netty/buffer/e;Lorg/jboss/netty/buffer/e;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public f0(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public g0(IILorg/jboss/netty/buffer/g;)I
    .locals 0

    .line 1
    add-int/2addr p2, p1

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->Z(IILorg/jboss/netty/buffer/g;)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    if-gez p2, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    return p1

    .line 10
    :cond_0
    sub-int/2addr p2, p1

    .line 11
    return p2
.end method

.method public getChar(I)C
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-char p1, p1

    .line 6
    return p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getFloat(I)F
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getMedium(I)I
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/high16 v0, 0x800000

    .line 6
    .line 7
    and-int/2addr v0, p1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/high16 v0, -0x1000000

    .line 11
    .line 12
    or-int/2addr p1, v0

    .line 13
    :cond_0
    return p1
.end method

.method public getUnsignedByte(I)S
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    and-int/lit16 p1, p1, 0xff

    .line 6
    .line 7
    int-to-short p1, p1

    .line 8
    return p1
.end method

.method public getUnsignedInt(I)J
    .locals 4

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    int-to-long v0, p1

    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public getUnsignedShort(I)I
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0xffff

    .line 6
    .line 7
    .line 8
    and-int/2addr p1, v0

    .line 9
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/buffer/h;->M(Lorg/jboss/netty/buffer/e;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public i0(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 9
    .line 10
    invoke-interface {p0, v1, p1}, Lorg/jboss/netty/buffer/e;->v0(ILjava/nio/ByteBuffer;)V

    .line 11
    .line 12
    .line 13
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 14
    .line 15
    add-int/2addr p1, v0

    .line 16
    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 17
    .line 18
    return-void
.end method

.method public indexOf(IIB)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/h;->Q(Lorg/jboss/netty/buffer/e;IIB)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public j0(II)[Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/buffer/e;->h0(II)Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    return-object v0
.end method

.method public l0()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    iput v0, p0, Lorg/jboss/netty/buffer/a;->d:I

    .line 4
    .line 5
    return-void
.end method

.method public m0(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-ltz p1, :cond_5

    .line 5
    .line 6
    ushr-int/lit8 v0, p1, 0x3

    .line 7
    .line 8
    and-int/lit8 p1, p1, 0x7

    .line 9
    .line 10
    :goto_0
    if-lez v0, :cond_1

    .line 11
    .line 12
    const-wide/16 v1, 0x0

    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/jboss/netty/buffer/a;->writeLong(J)V

    .line 15
    .line 16
    .line 17
    add-int/lit8 v0, v0, -0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x4

    .line 21
    const/4 v1, 0x0

    .line 22
    if-ne p1, v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/a;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_3

    .line 28
    :cond_2
    if-ge p1, v0, :cond_3

    .line 29
    .line 30
    :goto_1
    if-lez p1, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/a;->writeByte(I)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p1, p1, -0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/a;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    sub-int/2addr p1, v0

    .line 42
    :goto_2
    if-lez p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Lorg/jboss/netty/buffer/a;->writeByte(I)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 p1, p1, -0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    :goto_3
    return-void

    .line 51
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string v0, "length must be 0 or greater than 0."

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public n0(I[B)V
    .locals 2

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-interface {p0, p1, p2, v1, v0}, Lorg/jboss/netty/buffer/e;->O(I[BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public o0(ILorg/jboss/netty/buffer/e;)V
    .locals 1

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/a;->J0(ILorg/jboss/netty/buffer/e;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public p0()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->d:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->f0(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q0(Lorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 5
    .line 6
    invoke-interface {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->U0(ILorg/jboss/netty/buffer/e;II)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 10
    .line 11
    add-int/2addr p1, p3

    .line 12
    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 13
    .line 14
    return-void
.end method

.method public r0(II)V
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    if-gt p1, p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gt p2, v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 12
    .line 13
    iput p2, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Invalid writerIndex: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, " - Maximum is "

    .line 32
    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, " or "

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 45
    .line 46
    .line 47
    move-result p1

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

.method public readByte()B
    .locals 3

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    iput v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 10
    .line 11
    invoke-interface {p0, v0}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Readable byte limit exceeded: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v2, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 5
    .line 6
    invoke-interface {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/e;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget p2, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 11
    .line 12
    add-int/2addr p2, p1

    .line 13
    iput p2, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 14
    .line 15
    return p1
.end method

.method public readChar()C
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-char v0, v0

    .line 6
    return v0
.end method

.method public readDouble()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public readInt()I
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 6
    .line 7
    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 12
    .line 13
    add-int/2addr v2, v0

    .line 14
    iput v2, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 15
    .line 16
    return v1
.end method

.method public readLong()J
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 7
    .line 8
    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iget v3, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 13
    .line 14
    add-int/2addr v3, v0

    .line 15
    iput v3, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 16
    .line 17
    return-wide v1
.end method

.method public readMedium()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readUnsignedMedium()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x800000

    .line 6
    .line 7
    and-int/2addr v1, v0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/high16 v1, -0x1000000

    .line 11
    .line 12
    or-int/2addr v0, v1

    .line 13
    :cond_0
    return v0
.end method

.method public readShort()S
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 6
    .line 7
    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 12
    .line 13
    add-int/2addr v2, v0

    .line 14
    iput v2, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 15
    .line 16
    return v1
.end method

.method public readUnsignedByte()S
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    int-to-short v0, v0

    .line 8
    return v0
.end method

.method public readUnsignedInt()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide v2, 0xffffffffL

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public readUnsignedMedium()I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 6
    .line 7
    invoke-interface {p0, v1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v2, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 12
    .line 13
    add-int/2addr v2, v0

    .line 14
    iput v2, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 15
    .line 16
    return v1
.end method

.method public readUnsignedShort()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xffff

    .line 6
    .line 7
    .line 8
    and-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public readableBytes()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 2
    .line 3
    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public readerIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public s0([BII)V
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/a;->c(I)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 5
    .line 6
    invoke-interface {p0, v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->N0(I[BII)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 10
    .line 11
    add-int/2addr p1, p3

    .line 12
    iput p1, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 13
    .line 14
    return-void
.end method

.method public setDouble(ID)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    invoke-interface {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFloat(IF)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public skipBytes(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    iget p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 5
    .line 6
    if-gt v0, p1, :cond_0

    .line 7
    .line 8
    iput v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "Readable bytes exceeded - Need "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ", maximum is "

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "ridx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "widx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/jboss/netty/buffer/a;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    const-string p1, ""

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p0, p1, p2}, Lorg/jboss/netty/buffer/e;->h0(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, p3}, Lorg/jboss/netty/buffer/h;->z(Ljava/nio/ByteBuffer;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/jboss/netty/buffer/a;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u0(I)V
    .locals 3

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gt p1, v0, :cond_0

    .line 10
    .line 11
    iput p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "Invalid readerIndex: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, " - Maximum is "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public w0(Lorg/jboss/netty/buffer/e;I)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt p2, v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writerIndex()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, p1, v0, p2}, Lorg/jboss/netty/buffer/a;->q0(Lorg/jboss/netty/buffer/e;II)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writerIndex()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v0, p2

    .line 19
    invoke-interface {p1, v0}, Lorg/jboss/netty/buffer/e;->u0(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "Too many bytes to be read: Need "

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, ", maximum is "

    .line 39
    .line 40
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writableBytes()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

.method public writableBytes()I
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 6
    .line 7
    sub-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public writeByte(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 6
    .line 7
    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/e;->M0(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    invoke-interface {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/io/InputStream;I)I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget p2, p0, Lorg/jboss/netty/buffer/a;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/jboss/netty/buffer/a;->c:I

    :cond_0
    return p1
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    invoke-interface {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget p2, p0, Lorg/jboss/netty/buffer/a;->c:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/jboss/netty/buffer/a;->c:I

    :cond_0
    return p1
.end method

.method public writeChar(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->writeShort(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public writeDouble(D)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/buffer/a;->writeLong(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public writeFloat(F)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/a;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public writeInt(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 2
    .line 3
    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    iput p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 11
    .line 12
    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 2
    .line 3
    invoke-interface {p0, v0, p1, p2}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x8

    .line 9
    .line 10
    iput p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 11
    .line 12
    return-void
.end method

.method public writeShort(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 2
    .line 3
    invoke-interface {p0, v0, p1}, Lorg/jboss/netty/buffer/e;->W0(II)V

    .line 4
    .line 5
    .line 6
    iget p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x2

    .line 9
    .line 10
    iput p1, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 11
    .line 12
    return-void
.end method

.method public writerIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public x0()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/buffer/a;->j0(II)[Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public y0()Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/buffer/a;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {p0, v0, v1}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public z0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

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
