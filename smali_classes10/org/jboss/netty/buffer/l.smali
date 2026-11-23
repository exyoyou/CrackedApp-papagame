.class public Lorg/jboss/netty/buffer/l;
.super Lorg/jboss/netty/buffer/a;
.source "SourceFile"


# instance fields
.field private final f:Lorg/jboss/netty/buffer/f;

.field private final g:Ljava/nio/ByteOrder;

.field private h:Lorg/jboss/netty/buffer/e;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0, p1}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;I)V
    .locals 1

    .line 2
    invoke-static {p1}, Lorg/jboss/netty/buffer/n;->h(Ljava/nio/ByteOrder;)Lorg/jboss/netty/buffer/f;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    if-ltz p2, :cond_2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 4
    iput-object p3, p0, Lorg/jboss/netty/buffer/l;->f:Lorg/jboss/netty/buffer/f;

    .line 5
    iput-object p1, p0, Lorg/jboss/netty/buffer/l;->g:Ljava/nio/ByteOrder;

    .line 6
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->order()Ljava/nio/ByteOrder;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lorg/jboss/netty/buffer/f;->a(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    move-result-object p1

    iput-object p1, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "factory"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "endianness"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "estimatedLength: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public G0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->G0(ILorg/jboss/netty/buffer/e;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public K0(Lorg/jboss/netty/buffer/e;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/l;->Z0(I)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->K0(Lorg/jboss/netty/buffer/e;II)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public M0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->O(I[BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public O0([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3}, Lorg/jboss/netty/buffer/l;->Z0(I)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Lorg/jboss/netty/buffer/a;->O0([BII)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public U0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/e;->U0(ILorg/jboss/netty/buffer/e;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public V0(I)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->Z0(I)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->V0(I)V

    .line 6
    .line 7
    .line 8
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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->W0(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Y0(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->Z0(I)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->Y0(Ljava/nio/ByteBuffer;)V

    .line 9
    .line 10
    .line 11
    return-void
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
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->capacity()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->capacity()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    :goto_0
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v1, p1

    .line 25
    :goto_1
    if-ge v0, v1, :cond_3

    .line 26
    .line 27
    shl-int/lit8 v0, v0, 0x1

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "Maximum size of 2gb exceeded"

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->factory()Lorg/jboss/netty/buffer/f;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->order()Ljava/nio/ByteOrder;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {p1, v1, v0}, Lorg/jboss/netty/buffer/f;->a(Ljava/nio/ByteOrder;I)Lorg/jboss/netty/buffer/e;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/a;->writerIndex()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-interface {p1, v0, v1, v2}, Lorg/jboss/netty/buffer/e;->K0(Lorg/jboss/netty/buffer/e;II)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    .line 63
    .line 64
    return-void
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p1, Lorg/jboss/netty/buffer/r;

    .line 9
    .line 10
    invoke-direct {p1, p0, p2}, Lorg/jboss/netty/buffer/r;-><init>(Lorg/jboss/netty/buffer/e;I)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_1
    if-nez p2, :cond_2

    .line 15
    .line 16
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_2
    new-instance v0, Lorg/jboss/netty/buffer/q;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/q;-><init>(Lorg/jboss/netty/buffer/e;II)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/l;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->order()Ljava/nio/ByteOrder;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0x40

    .line 8
    .line 9
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/l;->factory()Lorg/jboss/netty/buffer/f;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/buffer/l;-><init>(Ljava/nio/ByteOrder;ILorg/jboss/netty/buffer/f;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    .line 21
    .line 22
    invoke-interface {v1, p1, p2}, Lorg/jboss/netty/buffer/e;->d0(II)Lorg/jboss/netty/buffer/e;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, v0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {v0, p1, p2}, Lorg/jboss/netty/buffer/a;->r0(II)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public duplicate()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/buffer/k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/jboss/netty/buffer/k;-><init>(Lorg/jboss/netty/buffer/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public factory()Lorg/jboss/netty/buffer/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->f:Lorg/jboss/netty/buffer/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public getByte(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->k0(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m0(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/jboss/netty/buffer/l;->Z0(I)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->m0(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->g:Ljava/nio/ByteOrder;

    .line 2
    .line 3
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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public setInt(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/l;->h:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/e;->v0(ILjava/nio/ByteBuffer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public writeByte(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->Z0(I)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->writeByte(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/l;->Z0(I)V

    .line 2
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/buffer/a;->writeBytes(Ljava/io/InputStream;I)I

    move-result p1

    return p1
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p2}, Lorg/jboss/netty/buffer/l;->Z0(I)V

    .line 4
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/buffer/a;->writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I

    move-result p1

    return p1
.end method

.method public writeInt(I)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->Z0(I)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public writeLong(J)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->Z0(I)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/buffer/a;->writeLong(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public writeShort(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/buffer/l;->Z0(I)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Lorg/jboss/netty/buffer/a;->writeShort(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
