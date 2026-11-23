.class public Lorg/jboss/netty/bootstrap/b;
.super Lorg/jboss/netty/bootstrap/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/bootstrap/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jboss/netty/channel/i;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jboss/netty/bootstrap/a;-><init>(Lorg/jboss/netty/channel/i;)V

    return-void
.end method


# virtual methods
.method public p(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "localAddress"

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/jboss/netty/bootstrap/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/net/SocketAddress;

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/bootstrap/b;->q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 17
    .line 18
    const-string v0, "remoteAddress"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method public q(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/a;->h()Lorg/jboss/netty/channel/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lorg/jboss/netty/channel/o;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/a;->c()Lorg/jboss/netty/channel/i;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, v0}, Lorg/jboss/netty/channel/i;->b(Lorg/jboss/netty/channel/n;)Lorg/jboss/netty/channel/e;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_1
    invoke-interface {v0}, Lorg/jboss/netty/channel/e;->getConfig()Lorg/jboss/netty/channel/f;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lorg/jboss/netty/bootstrap/a;->e()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/f;->setOptions(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-interface {v0, p2}, Lorg/jboss/netty/channel/e;->bind(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {v0, p1}, Lorg/jboss/netty/channel/e;->connect(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    invoke-interface {v0}, Lorg/jboss/netty/channel/e;->close()Lorg/jboss/netty/channel/j;

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :catch_0
    move-exception p1

    .line 46
    new-instance p2, Lorg/jboss/netty/channel/ChannelPipelineException;

    .line 47
    .line 48
    const-string v0, "Failed to initialize a pipeline."

    .line 49
    .line 50
    invoke-direct {p2, v0, p1}, Lorg/jboss/netty/channel/ChannelPipelineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    throw p2

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 55
    .line 56
    const-string p2, "remoteAddress"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method
