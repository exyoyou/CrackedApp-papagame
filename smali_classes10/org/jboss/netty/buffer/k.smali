.class public Lorg/jboss/netty/buffer/k;
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
    iput-object p1, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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

.method private constructor <init>(Lorg/jboss/netty/buffer/k;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    .line 6
    iget-object v0, p1, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    iput-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->G0(ILorg/jboss/netty/buffer/e;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public H0()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public M0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->M0(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public N0(I[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->N0(I[BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public O(I[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->O(I[BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public U0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->W(ILjava/io/OutputStream;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public W0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->W0(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->a(II)Lorg/jboss/netty/buffer/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public array()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->c1(ILjava/nio/ByteBuffer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    new-instance v0, Lorg/jboss/netty/buffer/k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/k;-><init>(Lorg/jboss/netty/buffer/k;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->h0(II)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public hasArray()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->k0(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

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

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public setInt(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->setInt(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLong(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setLong(IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public v0(ILjava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/k;->f:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->v0(ILjava/nio/ByteBuffer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
