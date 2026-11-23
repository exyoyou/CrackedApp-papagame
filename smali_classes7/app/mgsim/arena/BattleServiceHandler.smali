.class public Lapp/mgsim/arena/BattleServiceHandler;
.super Lorg/jboss/netty/channel/l0;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArenaService"


# instance fields
.field private final command:Lapp/mgsim/arena/SocketListener;


# direct methods
.method public constructor <init>(Lapp/mgsim/arena/SocketListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jboss/netty/channel/l0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/mgsim/arena/BattleServiceHandler;->command:Lapp/mgsim/arena/SocketListener;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public channelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->channelClosed(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public channelConnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/BattleServiceHandler;->command:Lapp/mgsim/arena/SocketListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lapp/mgsim/arena/SocketListener;->onSocketConnected()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->channelConnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public channelDisconnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/BattleServiceHandler;->command:Lapp/mgsim/arena/SocketListener;

    .line 2
    .line 3
    invoke-interface {v0}, Lapp/mgsim/arena/SocketListener;->onSocketDisconnected()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->channelDisconnected(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/q;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public exceptionCaught(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/l0;->exceptionCaught(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/e0;)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p2}, Lorg/jboss/netty/channel/e;->isOpen()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-interface {p1}, Lorg/jboss/netty/channel/m;->getChannel()Lorg/jboss/netty/channel/e;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->close()Lorg/jboss/netty/channel/j;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public messageReceived(Lorg/jboss/netty/channel/m;Lorg/jboss/netty/channel/i0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-interface {p2}, Lorg/jboss/netty/channel/i0;->getMessage()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of p1, p1, Lcom/papa91/battle/protocol/Response;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lapp/mgsim/arena/BattleServiceHandler;->command:Lapp/mgsim/arena/SocketListener;

    .line 12
    .line 13
    invoke-interface {p2}, Lorg/jboss/netty/channel/i0;->getMessage()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-interface {p1, p2}, Lapp/mgsim/arena/SocketListener;->onServerResponse(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
