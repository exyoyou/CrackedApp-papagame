.class public abstract Lorg/jboss/netty/handler/codec/frame/a;
.super Lorg/jboss/netty/channel/m0;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/h0;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_MAX_COMPOSITEBUFFER_COMPONENTS:I = 0x400


# instance fields
.field private copyThreshold:I

.field private volatile ctx:Lorg/jboss/netty/channel/m;

.field protected cumulation:Lorg/jboss/netty/buffer/e;

.field private maxCumulationBufferComponents:I

.field private unfold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/frame/a;-><init>(Z)V

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/jboss/netty/channel/m0;-><init>()V

    const/16 v0, 0x400

    .line 3
    iput v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->maxCumulationBufferComponents:I

    .line 4
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->unfold:Z

    return-void
.end method

.method private a(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;Ljava/net/SocketAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->z0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/a;->decode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    invoke-interface {p3}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eq v0, v2, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, p1, p4, v1}, Lorg/jboss/netty/handler/codec/frame/a;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/m;Ljava/net/SocketAddress;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string p3, "decode() method must read at least one byte if it returned a frame (caused by: "

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 p3, 0x29

    .line 54
    .line 55
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p1

    .line 66
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected actualReadableBytes()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/frame/a;->internalBuffer()Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public afterAdd(Lorg/jboss/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public afterRemove(Lorg/jboss/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected appendToCumulation(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    instance-of v1, v0, Lorg/jboss/netty/buffer/i;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lorg/jboss/netty/buffer/i;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/jboss/netty/buffer/i;->i()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget v3, p0, Lorg/jboss/netty/handler/codec/frame/a;->maxCumulationBufferComponents:I

    .line 15
    .line 16
    if-lt v2, v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/jboss/netty/buffer/a;->copy()Lorg/jboss/netty/buffer/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [Lorg/jboss/netty/buffer/e;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    aput-object v0, v1, v2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    aput-object p1, v1, v0

    .line 30
    .line 31
    invoke-static {v1}, Lorg/jboss/netty/buffer/h;->j0([Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 36
    .line 37
    return-object p1
.end method

.method public beforeAdd(Lorg/jboss/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    .line 2
    .line 3
    return-void
.end method

.method public beforeRemove(Lorg/jboss/netty/channel/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public channelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/a;->cleanup(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/handler/codec/frame/a;->cleanup(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected cleanup(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :try_start_1
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 11
    .line 12
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->z0()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {p0, p1, v2, v0, v1}, Lorg/jboss/netty/handler/codec/frame/a;->a(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;Ljava/net/SocketAddress;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, p1, v2, v0}, Lorg/jboss/netty/handler/codec/frame/a;->decodeLast(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0, p1, v1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/m;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    :cond_2
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method protected abstract decode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected decodeLast(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jboss/netty/handler/codec/frame/a;->decode(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected extractFrame(Lorg/jboss/netty/buffer/e;II)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/e;->factory()Lorg/jboss/netty/buffer/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p3}, Lorg/jboss/netty/buffer/f;->b(I)Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/e;->K0(Lorg/jboss/netty/buffer/e;II)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getMaxCumulationBufferCapacity()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->copyThreshold:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxCumulationBufferComponents()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->maxCumulationBufferComponents:I

    .line 2
    .line 3
    return v0
.end method

.method protected internalBuffer()Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/jboss/netty/buffer/h;->c:Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public final isUnfold()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->unfold:Z

    .line 2
    .line 3
    return v0
.end method

.method public messageReceived(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/i0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/channel/i0;->getMessage()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lorg/jboss/netty/buffer/e;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1, p2}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    check-cast v0, Lorg/jboss/netty/buffer/e;

    .line 14
    .line 15
    invoke-interface {v0}, Lorg/jboss/netty/buffer/e;->z0()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    :try_start_0
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {p2}, Lorg/jboss/netty/channel/i0;->getRemoteAddress()Ljava/net/SocketAddress;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p0, p1, v1, v0, p2}, Lorg/jboss/netty/handler/codec/frame/a;->a(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;Ljava/net/SocketAddress;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->updateCumulation(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p2

    .line 42
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->updateCumulation(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 43
    .line 44
    .line 45
    throw p2

    .line 46
    :cond_2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/frame/a;->appendToCumulation(Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :try_start_1
    invoke-interface {p2}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {p2}, Lorg/jboss/netty/channel/i0;->getRemoteAddress()Ljava/net/SocketAddress;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-direct {p0, p1, v1, v0, p2}, Lorg/jboss/netty/handler/codec/frame/a;->a(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e;Lorg/jboss/netty/buffer/e;Ljava/net/SocketAddress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->updateCumulation(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void

    .line 65
    :catchall_1
    move-exception p2

    .line 66
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->updateCumulation(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;

    .line 67
    .line 68
    .line 69
    throw p2
.end method

.method protected newCumulationBuffer(Lorg/jboss/netty/channel/m;I)Lorg/jboss/netty/buffer/e;
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->getConfig()Lorg/jboss/netty/channel/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Lorg/jboss/netty/channel/f;->d()Lorg/jboss/netty/buffer/f;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/16 v0, 0x100

    .line 14
    .line 15
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/f;->b(I)Lorg/jboss/netty/buffer/e;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public replace(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/jboss/netty/channel/m;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    .line 12
    .line 13
    invoke-interface {v1}, Lorg/jboss/netty/channel/m;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, v1, p1, p2}, Lorg/jboss/netty/channel/n;->d(Ljava/lang/String;Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    .line 25
    .line 26
    iget-object p2, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 27
    .line 28
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/frame/a;->actualReadableBytes()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-interface {p2, v1}, Lorg/jboss/netty/buffer/e;->N(I)Lorg/jboss/netty/buffer/e;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/s;->J(Lorg/jboss/netty/channel/m;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/n;->c(Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    invoke-interface {v0, p0}, Lorg/jboss/netty/channel/n;->c(Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "Replace cann only be called once the FrameDecoder is added to the ChannelPipeline"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1
.end method

.method public final setMaxCumulationBufferCapacity(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->copyThreshold:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "decoder properties cannot be changed once the decoder is added to a pipeline."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string v0, "maxCumulationBufferCapacity must be >= 0"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final setMaxCumulationBufferComponents(I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iput p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->maxCumulationBufferComponents:I

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v0, "decoder properties cannot be changed once the decoder is added to a pipeline."

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "maxCumulationBufferComponents: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, " (expected: >= 2)"

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method public final setUnfold(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->ctx:Lorg/jboss/netty/channel/m;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->unfold:Z

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "decoder properties cannot be changed once the decoder is added to a pipeline."

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method protected final unfoldAndFireMessageReceived(Lorg/jboss/netty/channel/m;Ljava/net/SocketAddress;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->unfold:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    instance-of v0, p3, [Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p3, [Ljava/lang/Object;

    .line 10
    .line 11
    array-length v0, p3

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_3

    .line 14
    .line 15
    aget-object v2, p3, v1

    .line 16
    .line 17
    invoke-static {p1, v2, p2}, Lorg/jboss/netty/channel/s;->K(Lorg/jboss/netty/channel/m;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    instance-of v0, p3, Ljava/lang/Iterable;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p3, Ljava/lang/Iterable;

    .line 28
    .line 29
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p1, v0, p2}, Lorg/jboss/netty/channel/s;->K(Lorg/jboss/netty/channel/m;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-static {p1, p3, p2}, Lorg/jboss/netty/channel/s;->K(Lorg/jboss/netty/channel/m;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-static {p1, p3, p2}, Lorg/jboss/netty/channel/s;->K(Lorg/jboss/netty/channel/m;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    :goto_2
    return-void
.end method

.method protected updateCumulation(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/buffer/e;)Lorg/jboss/netty/buffer/e;
    .locals 2

    .line 1
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->capacity()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lorg/jboss/netty/handler/codec/frame/a;->copyThreshold:I

    .line 14
    .line 15
    if-le v1, v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readableBytes()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/handler/codec/frame/a;->newCumulationBuffer(Lorg/jboss/netty/channel/m;I)Lorg/jboss/netty/buffer/e;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 26
    .line 27
    invoke-interface {p1, p2}, Lorg/jboss/netty/buffer/e;->E0(Lorg/jboss/netty/buffer/e;)V

    .line 28
    .line 29
    .line 30
    move-object p2, p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->readerIndex()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-interface {p2}, Lorg/jboss/netty/buffer/e;->y0()Lorg/jboss/netty/buffer/e;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 p2, 0x0

    .line 49
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/frame/a;->cumulation:Lorg/jboss/netty/buffer/e;

    .line 50
    .line 51
    :goto_0
    return-object p2
.end method
