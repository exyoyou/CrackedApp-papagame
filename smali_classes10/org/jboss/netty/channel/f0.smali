.class public Lorg/jboss/netty/channel/f0;
.super Lorg/jboss/netty/channel/u;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/u;-><init>(Lorg/jboss/netty/channel/e;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iput-object p2, p0, Lorg/jboss/netty/channel/f0;->c:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string p2, "cause"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/f0;->c:Ljava/lang/Throwable;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/RuntimeException;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    instance-of v1, v0, Ljava/lang/Error;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Error;

    .line 12
    .line 13
    throw v0

    .line 14
    :cond_0
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/jboss/netty/channel/f0;->c:Ljava/lang/Throwable;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/f0;->c:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lorg/jboss/netty/channel/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/f0;->c:Ljava/lang/Throwable;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/Exception;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    instance-of v1, v0, Ljava/lang/Error;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Error;

    .line 12
    .line 13
    throw v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/jboss/netty/channel/f0;->c:Ljava/lang/Throwable;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    check-cast v0, Ljava/lang/Exception;

    .line 23
    .line 24
    throw v0
.end method

.method public isSuccess()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sync()Lorg/jboss/netty/channel/j;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/channel/f0;->f()V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public syncUninterruptibly()Lorg/jboss/netty/channel/j;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/channel/f0;->f()V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method
