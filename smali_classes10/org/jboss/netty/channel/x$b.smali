.class final Lorg/jboss/netty/channel/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/channel/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;Lorg/jboss/netty/channel/ChannelPipelineException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    throw p3
.end method

.method public b(Lorg/jboss/netty/channel/n;Lorg/jboss/netty/channel/h;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lorg/jboss/netty/channel/n;Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/n;->getChannel()Lorg/jboss/netty/channel/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Ljava/util/concurrent/RejectedExecutionException;

    .line 6
    .line 7
    const-string v0, "Not attached yet"

    .line 8
    .line 9
    invoke-direct {p2, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Lorg/jboss/netty/channel/s;->i(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
