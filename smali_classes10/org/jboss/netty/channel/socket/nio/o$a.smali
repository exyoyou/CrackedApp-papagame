.class Lorg/jboss/netty/channel/socket/nio/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/socket/nio/o;->f(Lorg/jboss/netty/channel/socket/nio/m;Lorg/jboss/netty/channel/j;Ljava/net/SocketAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/jboss/netty/channel/j;

.field final synthetic c:Lorg/jboss/netty/channel/socket/nio/o;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/o;Lorg/jboss/netty/channel/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/o$a;->c:Lorg/jboss/netty/channel/socket/nio/o;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/o$a;->b:Lorg/jboss/netty/channel/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lorg/jboss/netty/channel/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/o$a;->b:Lorg/jboss/netty/channel/j;

    .line 2
    .line 3
    invoke-interface {p1}, Lorg/jboss/netty/channel/j;->isDone()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/o$a;->b:Lorg/jboss/netty/channel/j;

    .line 10
    .line 11
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
