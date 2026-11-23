.class public abstract Lorg/jboss/netty/channel/socket/nio/c;
.super Lorg/jboss/netty/channel/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/channel/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lorg/jboss/netty/channel/n;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/n;->getChannel()Lorg/jboss/netty/channel/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lorg/jboss/netty/channel/socket/nio/b;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lorg/jboss/netty/channel/socket/nio/b;

    .line 10
    .line 11
    new-instance v1, Led/a;

    .line 12
    .line 13
    invoke-interface {p1}, Lorg/jboss/netty/channel/n;->getChannel()Lorg/jboss/netty/channel/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v1, p1, p2}, Led/a;-><init>(Lorg/jboss/netty/channel/e;Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, v0, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/e;->S0(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/b;->c(Lorg/jboss/netty/channel/n;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method protected d(Lorg/jboss/netty/channel/h;Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/h;->getChannel()Lorg/jboss/netty/channel/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    instance-of p2, p1, Lorg/jboss/netty/channel/socket/nio/b;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    check-cast p1, Lorg/jboss/netty/channel/socket/nio/b;

    .line 10
    .line 11
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/e;->q(Lorg/jboss/netty/channel/socket/nio/b;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    xor-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return p1
.end method
