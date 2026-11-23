.class public Lorg/jboss/netty/buffer/p;
.super Lorg/jboss/netty/buffer/a;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/buffer/s;


# instance fields
.field private final f:Lorg/jboss/netty/buffer/e;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/buffer/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 3
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    move-result v0

    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->writerIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/a;->r0(II)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "buffer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/jboss/netty/buffer/p;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    .line 6
    iget-object v0, p1, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    iput-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 7
    invoke-virtual {p1}, Lorg/jboss/netty/buffer/a;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/jboss/netty/buffer/a;->r0(II)V

    return-void
.end method


# virtual methods
.method public G0(ILorg/jboss/netty/buffer/e;II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public H0()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public L()V
    .locals 1

    .line 1
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public M0(II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public N0(I[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->N0(I[BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public O(I[BII)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public U0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->U0(ILorg/jboss/netty/buffer/e;II)V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->W(ILjava/io/OutputStream;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public W0(II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/p;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {v0, p1}, Lorg/jboss/netty/buffer/p;-><init>(Lorg/jboss/netty/buffer/e;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 1
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    .line 1
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public c1(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d0(II)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->d0(II)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/p;-><init>(Lorg/jboss/netty/buffer/p;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getByte(I)B

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
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
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getInt(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getShort(I)S

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getUnsignedMedium(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->getUnsignedMedium(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public h0(II)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->h0(II)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

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

.method public j0(II)[Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->j0(II)[Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_0
    array-length v0, p1

    .line 9
    if-ge p2, v0, :cond_0

    .line 10
    .line 11
    aget-object v0, p1, p2

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    aput-object v0, p1, p2

    .line 18
    .line 19
    add-int/lit8 p2, p2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-object p1
.end method

.method public k0(II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p1
.end method

.method public setInt(II)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public setLong(IJ)V
    .locals 0

    .line 1
    new-instance p1, Ljava/nio/ReadOnlyBufferException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method

.method public v0(ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/p;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->v0(ILjava/nio/ByteBuffer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
