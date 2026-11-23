.class public Lorg/jboss/netty/channel/socket/nio/r;
.super Lorg/jboss/netty/channel/socket/nio/b;
.source "SourceFile"

# interfaces
.implements Led/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/channel/socket/nio/b<",
        "Ljava/nio/channels/SocketChannel;",
        ">;",
        "Led/d;"
    }
.end annotation


# static fields
.field private static final E:I = 0x0

.field private static final F:I = 0x1

.field private static final G:I = 0x2

.field private static final H:I = -0x1

.field static final synthetic I:Z


# instance fields
.field volatile C:I

.field private final D:Lorg/jboss/netty/channel/socket/nio/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Ljava/nio/channels/SocketChannel;Lorg/jboss/netty/channel/socket/nio/t;)V
    .locals 7

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move-object v5, p6

    .line 7
    move-object v6, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/channel/socket/nio/b;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/i;Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/p;Lorg/jboss/netty/channel/socket/nio/e;Ljava/nio/channels/SelectableChannel;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lorg/jboss/netty/channel/socket/nio/r;->C:I

    .line 13
    .line 14
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/i;

    .line 15
    .line 16
    invoke-virtual {p5}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p1, p2}, Lorg/jboss/netty/channel/socket/nio/i;-><init>(Ljava/net/Socket;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/r;->D:Lorg/jboss/netty/channel/socket/nio/s;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic L0()I
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/b;->L0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public Q(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->getRemoteAddress()Ljava/net/InetSocketAddress;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->h()Lorg/jboss/netty/channel/j;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 20
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/a;->Q(Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public bridge synthetic getConfig()Led/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->q()Lorg/jboss/netty/channel/socket/nio/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfig()Lorg/jboss/netty/channel/f;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->q()Lorg/jboss/netty/channel/socket/nio/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/b;->getLocalAddress()Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic getRemoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/b;->getRemoteAddress()Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected i()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/b;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->C:I

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public isBound()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->C:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->C:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->C:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public bridge synthetic k()Lorg/jboss/netty/channel/socket/nio/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->q()Lorg/jboss/netty/channel/socket/nio/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method l()Ljava/net/InetSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 2
    .line 3
    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 14
    .line 15
    return-object v0
.end method

.method n()Ljava/net/InetSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 2
    .line 3
    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/net/InetSocketAddress;

    .line 14
    .line 15
    return-object v0
.end method

.method public bridge synthetic o()Lorg/jboss/netty/channel/socket/nio/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/r;->r()Lorg/jboss/netty/channel/socket/nio/t;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public q()Lorg/jboss/netty/channel/socket/nio/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->D:Lorg/jboss/netty/channel/socket/nio/s;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Lorg/jboss/netty/channel/socket/nio/t;
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/b;->o()Lorg/jboss/netty/channel/socket/nio/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jboss/netty/channel/socket/nio/t;

    .line 6
    .line 7
    return-object v0
.end method

.method final s()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->C:I

    .line 3
    .line 4
    return-void
.end method

.method final t()V
    .locals 2

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->C:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/r;->C:I

    .line 8
    .line 9
    :cond_0
    return-void
.end method
