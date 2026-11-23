.class public abstract Lorg/jboss/netty/buffer/m;
.super Lorg/jboss/netty/buffer/a;
.source "SourceFile"


# instance fields
.field protected final f:[B


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .line 1
    new-array p1, p1, [B

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/jboss/netty/buffer/m;-><init>([BII)V

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/jboss/netty/buffer/m;-><init>([BII)V

    return-void
.end method

.method protected constructor <init>([BII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/jboss/netty/buffer/a;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    iput-object p1, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 5
    invoke-virtual {p0, p2, p3}, Lorg/jboss/netty/buffer/a;->r0(II)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "array"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public G0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    instance-of v0, p2, Lorg/jboss/netty/buffer/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lorg/jboss/netty/buffer/m;

    .line 6
    .line 7
    iget-object p2, p2, Lorg/jboss/netty/buffer/m;->f:[B

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/m;->O(I[BII)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 14
    .line 15
    invoke-interface {p2, p3, v0, p1, p4}, Lorg/jboss/netty/buffer/e;->N0(I[BII)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public M0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    int-to-byte p2, p2

    .line 4
    aput-byte p2, v0, p1

    .line 5
    .line 6
    return-void
.end method

.method public N0(I[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public O(I[BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public U0(ILorg/jboss/netty/buffer/e;II)V
    .locals 1

    .line 1
    instance-of v0, p2, Lorg/jboss/netty/buffer/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Lorg/jboss/netty/buffer/m;

    .line 6
    .line 7
    iget-object p2, p2, Lorg/jboss/netty/buffer/m;->f:[B

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/m;->N0(I[BII)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 14
    .line 15
    invoke-interface {p2, p3, v0, p1, p4}, Lorg/jboss/netty/buffer/e;->O(I[BII)V

    .line 16
    .line 17
    .line 18
    :goto_0
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
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a(II)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    if-nez p1, :cond_2

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
    iget-object p1, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 9
    .line 10
    array-length p1, p1

    .line 11
    if-ne p2, p1, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->duplicate()Lorg/jboss/netty/buffer/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, v0, p2}, Lorg/jboss/netty/buffer/e;->r0(II)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    new-instance p1, Lorg/jboss/netty/buffer/r;

    .line 23
    .line 24
    invoke-direct {p1, p0, p2}, Lorg/jboss/netty/buffer/r;-><init>(Lorg/jboss/netty/buffer/e;I)V

    .line 25
    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    if-nez p2, :cond_3

    .line 29
    .line 30
    sget-object p1, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_3
    new-instance v0, Lorg/jboss/netty/buffer/q;

    .line 34
    .line 35
    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/buffer/q;-><init>(Lorg/jboss/netty/buffer/e;II)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public array()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c1(ILjava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public capacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public getByte(I)B
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    aget-byte p1, v0, p1

    .line 4
    .line 5
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
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    invoke-static {v0, p1, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p2, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

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
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0}, Lorg/jboss/netty/buffer/e;->order()Ljava/nio/ByteOrder;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public hasArray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isDirect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/buffer/m;->f:[B

    invoke-virtual {p2, v1, p1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_1

    if-nez v0, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_1
    add-int/2addr v0, v1

    add-int/2addr p1, v1

    sub-int/2addr p3, v1

    if-gtz p3, :cond_0

    :cond_2
    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    invoke-static {v0, p1, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    const/4 v1, -0x1

    .line 3
    :try_start_0
    invoke-interface {p2, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    const/4 v2, -0x1

    :goto_0
    if-gez v2, :cond_1

    if-nez v0, :cond_3

    return v1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v0, v2

    if-lt v0, p3, :cond_0

    :cond_3
    :goto_1
    return v0
.end method

.method public v0(ILjava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/buffer/m;->f:[B

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/buffer/m;->capacity()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int/2addr v1, p1

    .line 8
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    .line 19
    return-void
.end method
