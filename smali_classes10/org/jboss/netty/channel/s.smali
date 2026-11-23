.class public final Lorg/jboss/netty/channel/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static A(Lorg/jboss/netty/channel/m;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static B(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/s$e;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/s$e;-><init>(Lorg/jboss/netty/channel/e;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static C(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/e;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/y;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/y;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/e;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/z;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/z;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static E(Lorg/jboss/netty/channel/m;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/z;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1}, Lorg/jboss/netty/channel/z;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static F(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/s$g;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/s$g;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static G(Lorg/jboss/netty/channel/m;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/s$h;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lorg/jboss/netty/channel/s$h;-><init>(Lorg/jboss/netty/channel/m;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static H(Lorg/jboss/netty/channel/e;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/s;->I(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static I(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/p0;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/p0;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static J(Lorg/jboss/netty/channel/m;Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/p0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, p1, v2}, Lorg/jboss/netty/channel/p0;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static K(Lorg/jboss/netty/channel/m;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/p0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/channel/p0;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static L(Lorg/jboss/netty/channel/e;J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lorg/jboss/netty/channel/b0;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/b0;-><init>(Lorg/jboss/netty/channel/e;J)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static M(Lorg/jboss/netty/channel/m;J)V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/b0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1, p2}, Lorg/jboss/netty/channel/b0;-><init>(Lorg/jboss/netty/channel/e;J)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static N(Lorg/jboss/netty/channel/e;J)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/s$b;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1, p2}, Lorg/jboss/netty/channel/s$b;-><init>(Lorg/jboss/netty/channel/e;J)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/s;->P(Lorg/jboss/netty/channel/e;Z)Lorg/jboss/netty/channel/j;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static P(Lorg/jboss/netty/channel/e;Z)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/w;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/w;-><init>(Lorg/jboss/netty/channel/e;Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static Q()Lorg/jboss/netty/channel/n;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/x;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jboss/netty/channel/x;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static R(Lorg/jboss/netty/channel/n;)Lorg/jboss/netty/channel/n;
    .locals 3

    .line 1
    invoke-static {}, Lorg/jboss/netty/channel/s;->Q()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/channel/n;->toMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/Map$Entry;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lorg/jboss/netty/channel/ChannelHandler;

    .line 40
    .line 41
    invoke-interface {v0, v2, v1}, Lorg/jboss/netty/channel/n;->i(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-object v0
.end method

.method public static varargs S([Lorg/jboss/netty/channel/ChannelHandler;)Lorg/jboss/netty/channel/n;
    .locals 4

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    invoke-static {}, Lorg/jboss/netty/channel/s;->Q()Lorg/jboss/netty/channel/n;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    array-length v2, p0

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    aget-object v2, p0, v1

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-static {v1}, Lorg/jboss/netty/util/internal/b;->c(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v0, v3, v2}, Lorg/jboss/netty/channel/n;->i(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    return-object v0

    .line 27
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 28
    .line 29
    const-string v0, "handlers"

    .line 30
    .line 31
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0
.end method

.method public static T(Lorg/jboss/netty/channel/n;)Lorg/jboss/netty/channel/o;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/s$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/s$a;-><init>(Lorg/jboss/netty/channel/n;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static U(Lorg/jboss/netty/channel/e;I)Lorg/jboss/netty/channel/j;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->Z(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->j(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Lorg/jboss/netty/channel/c0;

    .line 17
    .line 18
    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->b(Lorg/jboss/netty/channel/h;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static V(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;I)V
    .locals 3

    .line 1
    invoke-static {p2}, Lorg/jboss/netty/channel/s;->Z(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lorg/jboss/netty/channel/s;->j(I)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    new-instance v0, Lorg/jboss/netty/channel/c0;

    .line 9
    .line 10
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    .line 15
    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->b(Lorg/jboss/netty/channel/h;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    instance-of v0, p0, Lorg/jboss/netty/channel/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lorg/jboss/netty/channel/a;

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->g()Lorg/jboss/netty/channel/j;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/n0;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lorg/jboss/netty/channel/n0;-><init>(Lorg/jboss/netty/channel/e;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static X(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lorg/jboss/netty/channel/c0;

    .line 10
    .line 11
    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->b(Lorg/jboss/netty/channel/h;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static Y(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/c0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->b(Lorg/jboss/netty/channel/h;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static Z(I)V
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x5

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Invalid interestOps: "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lorg/jboss/netty/channel/c0;

    .line 12
    .line 13
    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    .line 14
    .line 15
    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->b(Lorg/jboss/netty/channel/h;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 23
    .line 24
    const-string p1, "localAddress"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0
.end method

.method public static a0(Lorg/jboss/netty/channel/e;Ljava/lang/Object;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lorg/jboss/netty/channel/s;->b0(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static b(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/jboss/netty/channel/c0;

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->b(Lorg/jboss/netty/channel/h;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string p1, "localAddress"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static b0(Lorg/jboss/netty/channel/e;Ljava/lang/Object;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lorg/jboss/netty/channel/d0;

    .line 10
    .line 11
    invoke-direct {v2, p0, v0, p1, p2}, Lorg/jboss/netty/channel/d0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->b(Lorg/jboss/netty/channel/h;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static c(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 5

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->t0()Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lorg/jboss/netty/channel/c0;

    .line 10
    .line 11
    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    .line 12
    .line 13
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->b(Lorg/jboss/netty/channel/h;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public static c0(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, p2, v0}, Lorg/jboss/netty/channel/s;->d0(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static d(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/c0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->b(Lorg/jboss/netty/channel/h;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static d0(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;Ljava/lang/Object;Ljava/net/SocketAddress;)V
    .locals 2

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/d0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1, p1, p2, p3}, Lorg/jboss/netty/channel/d0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Ljava/lang/Object;Ljava/net/SocketAddress;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->b(Lorg/jboss/netty/channel/h;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static e(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-static {p0, v0}, Lorg/jboss/netty/channel/s;->P(Lorg/jboss/netty/channel/e;Z)Lorg/jboss/netty/channel/j;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Lorg/jboss/netty/channel/c0;

    .line 13
    .line 14
    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    .line 15
    .line 16
    invoke-direct {v2, p0, v0, v3, p1}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->b(Lorg/jboss/netty/channel/h;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 24
    .line 25
    const-string p1, "remoteAddress"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method public static f(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lorg/jboss/netty/channel/c0;

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    .line 10
    .line 11
    invoke-direct {v0, v1, p1, v2, p2}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->b(Lorg/jboss/netty/channel/h;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 19
    .line 20
    const-string p1, "remoteAddress"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static g(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 5

    .line 1
    invoke-static {p0}, Lorg/jboss/netty/channel/s;->O(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lorg/jboss/netty/channel/c0;

    .line 10
    .line 11
    sget-object v3, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-direct {v2, p0, v0, v3, v4}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Lorg/jboss/netty/channel/n;->b(Lorg/jboss/netty/channel/h;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public static h(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/j;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/c0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v1, p1, v2, v3}, Lorg/jboss/netty/channel/c0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->b(Lorg/jboss/netty/channel/h;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static i(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/f0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/f0;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static j(I)I
    .locals 0

    .line 1
    and-int/lit8 p0, p0, -0x5

    return p0
.end method

.method public static k(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/o0;

    .line 6
    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    invoke-direct {v1, p0, v2, p1}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static l(Lorg/jboss/netty/channel/m;Ljava/net/SocketAddress;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p1}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static m(Lorg/jboss/netty/channel/e;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/o0;

    .line 6
    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getParent()Lorg/jboss/netty/channel/e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getParent()Lorg/jboss/netty/channel/e;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p0}, Lorg/jboss/netty/channel/s;->C(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/e;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public static n(Lorg/jboss/netty/channel/m;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static o(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/s$f;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/s$f;-><init>(Lorg/jboss/netty/channel/e;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static p(Lorg/jboss/netty/channel/e;Ljava/net/SocketAddress;)V
    .locals 3

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/o0;

    .line 6
    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    invoke-direct {v1, p0, v2, p1}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static q(Lorg/jboss/netty/channel/m;Ljava/net/SocketAddress;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, p1}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static r(Lorg/jboss/netty/channel/e;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/o0;

    .line 6
    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static s(Lorg/jboss/netty/channel/m;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->CONNECTED:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static t(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/s$d;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/s$d;-><init>(Lorg/jboss/netty/channel/e;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static u(Lorg/jboss/netty/channel/e;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/o0;

    .line 6
    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static v(Lorg/jboss/netty/channel/m;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->INTEREST_OPS:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static w(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/s$c;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/s$c;-><init>(Lorg/jboss/netty/channel/e;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static x(Lorg/jboss/netty/channel/e;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getParent()Lorg/jboss/netty/channel/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getParent()Lorg/jboss/netty/channel/e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p0}, Lorg/jboss/netty/channel/s;->C(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/e;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Lorg/jboss/netty/channel/o0;

    .line 19
    .line 20
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    .line 21
    .line 22
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static y(Lorg/jboss/netty/channel/m;)V
    .locals 4

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/o0;

    .line 2
    .line 3
    invoke-interface {p0}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->OPEN:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/m;->a(Lorg/jboss/netty/channel/h;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static z(Lorg/jboss/netty/channel/e;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lorg/jboss/netty/channel/e;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lorg/jboss/netty/channel/o0;

    .line 6
    .line 7
    sget-object v2, Lorg/jboss/netty/channel/ChannelState;->BOUND:Lorg/jboss/netty/channel/ChannelState;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, p0, v2, v3}, Lorg/jboss/netty/channel/o0;-><init>(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/ChannelState;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->a(Lorg/jboss/netty/channel/h;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
