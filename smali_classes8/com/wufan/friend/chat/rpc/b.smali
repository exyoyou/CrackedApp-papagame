.class public Lcom/wufan/friend/chat/rpc/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lio/netty/channel/EventLoopGroup;

.field b:Lio/netty/bootstrap/Bootstrap;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lio/netty/channel/Channel;

.field f:Z

.field g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "port"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/netty/channel/nio/NioEventLoopGroup;

    .line 5
    .line 6
    invoke-direct {v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->a:Lio/netty/channel/EventLoopGroup;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/wufan/friend/chat/rpc/b;->f:Z

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/wufan/friend/chat/rpc/b;->g:J

    .line 17
    .line 18
    iput-object p1, p0, Lcom/wufan/friend/chat/rpc/b;->c:Ljava/lang/String;

    .line 19
    .line 20
    iput p2, p0, Lcom/wufan/friend/chat/rpc/b;->d:I

    .line 21
    .line 22
    new-instance p1, Lio/netty/bootstrap/Bootstrap;

    .line 23
    .line 24
    invoke-direct {p1}, Lio/netty/bootstrap/Bootstrap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/wufan/friend/chat/rpc/b;->b:Lio/netty/bootstrap/Bootstrap;

    .line 28
    .line 29
    iget-object p2, p0, Lcom/wufan/friend/chat/rpc/b;->a:Lio/netty/channel/EventLoopGroup;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lio/netty/bootstrap/AbstractBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lio/netty/bootstrap/Bootstrap;

    .line 36
    .line 37
    const-class p2, Lio/netty/channel/socket/nio/NioSocketChannel;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lio/netty/bootstrap/AbstractBootstrap;->channel(Ljava/lang/Class;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lio/netty/bootstrap/Bootstrap;

    .line 44
    .line 45
    new-instance p2, Lcom/wufan/friend/chat/rpc/d;

    .line 46
    .line 47
    invoke-direct {p2}, Lcom/wufan/friend/chat/rpc/d;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lio/netty/bootstrap/AbstractBootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/wufan/friend/chat/rpc/b;->b:Lio/netty/bootstrap/Bootstrap;

    .line 54
    .line 55
    sget-object p2, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    .line 56
    .line 57
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {p1, p2, v0}, Lio/netty/bootstrap/AbstractBootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/wufan/friend/chat/rpc/b;->d()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static synthetic a(Lcom/wufan/friend/chat/rpc/b;Lio/netty/channel/ChannelFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->p(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method private synthetic p(Lio/netty/channel/ChannelFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/wufan/friend/chat/rpc/b;->f:Z

    .line 3
    .line 4
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    .line 15
    .line 16
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lcom/join/mgps/event/w;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, v1}, Lcom/join/mgps/event/w;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->q(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lcom/wufan/friend/chat/rpc/b$a;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/wufan/friend/chat/rpc/b$a;-><init>(Lcom/wufan/friend/chat/rpc/b;)V

    .line 41
    .line 42
    .line 43
    const-wide/16 v1, 0x5

    .line 44
    .line 45
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    invoke-interface {p1, v0, v1, v2, v3}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method private r(Lcom/wufan/friend/chat/protocol/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/wufan/friend/chat/rpc/b;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_1
    return-void
.end method


# virtual methods
.method public b(Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;JI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "roomId",
            "uid"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->BATTLE:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->BAT_CHAT_ROOM:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->setState(Lcom/wufan/friend/chat/protocol/ChatRoomArgs$State;)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p2, p3}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->setLobbyRoomId(J)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p4}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->setAccountId(I)Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ChatRoomArgs$b;->build()Lcom/wufan/friend/chat/protocol/ChatRoomArgs;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setChatRoomArgs(Lcom/wufan/friend/chat/protocol/ChatRoomArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/Request$b;->setArgs(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->BATTLE:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->BAT_CHAT_SEND:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;->setMessage(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/ChatMessageArgs$b;->build()Lcom/wufan/friend/chat/protocol/ChatMessageArgs;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setChatMessageArgs(Lcom/wufan/friend/chat/protocol/ChatMessageArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/Request$b;->setArgs(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/wufan/friend/chat/rpc/b;->f:Z

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-wide v2, p0, Lcom/wufan/friend/chat/rpc/b;->g:J

    .line 21
    .line 22
    sub-long/2addr v0, v2

    .line 23
    const-wide/16 v2, 0x7d0

    .line 24
    .line 25
    cmp-long v4, v0, v2

    .line 26
    .line 27
    if-gez v4, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/wufan/friend/chat/rpc/b;->f:Z

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Lcom/wufan/friend/chat/rpc/b;->g:J

    .line 38
    .line 39
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->b:Lio/netty/bootstrap/Bootstrap;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/wufan/friend/chat/rpc/b;->c:Ljava/lang/String;

    .line 42
    .line 43
    iget v2, p0, Lcom/wufan/friend/chat/rpc/b;->d:I

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/lang/String;I)Lio/netty/channel/ChannelFuture;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lcom/wufan/friend/chat/rpc/a;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/wufan/friend/chat/rpc/a;-><init>(Lcom/wufan/friend/chat/rpc/b;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    .line 12
    .line 13
    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method

.method public f(IILjava/lang/String;ZJZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "roomId",
            "roomPwd",
            "elite",
            "gameId",
            "versus"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->BATTLE:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_GAME_INVITE:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GameInviteArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p5, p6}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->setGameId(J)Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    .line 34
    .line 35
    .line 36
    move-result-object p5

    .line 37
    int-to-long v2, p2

    .line 38
    invoke-virtual {p5, v2, v3}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->setLobbyRoomId(J)Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2, p1}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->setFriendId(I)Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, p3}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->setRoomPasswd(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p4}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->setEliteField(Z)Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, p7}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->setVersus(Z)Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GameInviteArgs$b;->build()Lcom/wufan/friend/chat/protocol/GameInviteArgs;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setGameInviteArgs(Lcom/wufan/friend/chat/protocol/GameInviteArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/Request$b;->setArgs(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public g(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JIIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "type",
            "gameId",
            "roomId",
            "uid",
            "versus"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->BATTLE:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_GAME_PLAY:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setState(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setType(Lcom/wufan/friend/chat/protocol/PlayType;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p3, p4}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setGameId(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    int-to-long p2, p5

    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setLobbyRoomId(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p6}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setAccountId(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, p7}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setVersus(Z)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->build()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setPlayGameArgs(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/Request$b;->setArgs(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public h(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;Lcom/wufan/friend/chat/protocol/PlayType;JIIZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "state",
            "type",
            "gameId",
            "roomId",
            "uid",
            "versus",
            "downloadGameIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;",
            "Lcom/wufan/friend/chat/protocol/PlayType;",
            "JIIZ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->BATTLE:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->BTL_GAME_PLAY:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Lcom/wufan/friend/chat/protocol/PlayGameArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setState(Lcom/wufan/friend/chat/protocol/PlayGameArgs$State;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setType(Lcom/wufan/friend/chat/protocol/PlayType;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p3, p4}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setGameId(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    int-to-long p2, p5

    .line 46
    invoke-virtual {p1, p2, p3}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setLobbyRoomId(J)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p6}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setAccountId(I)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, p7}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->setVersus(Z)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1, p8}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->addAllLocalBattleGameIds(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayGameArgs$b;->build()Lcom/wufan/friend/chat/protocol/PlayGameArgs;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setPlayGameArgs(Lcom/wufan/friend/chat/protocol/PlayGameArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/Request$b;->setArgs(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->FRIEND:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->FRD_GET_ALL_FRIENDS:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public j(IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "gameId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->RECOMMEND:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_LOCAL_BATTLE_GAME:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p2, p3}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;->setGameId(J)Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2, p1}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;->setAccountId(I)Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs$b;->build()Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setLocalBattleGameArgs(Lcom/wufan/friend/chat/protocol/GetLocalBattleGameArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/Request$b;->setArgs(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public k(JLjava/lang/String;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "gameSeries",
            "downloadGameIds",
            "locationPageTypeValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p4}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->addAllLocalDownloadGameIds(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->RECOMMEND:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 21
    .line 22
    invoke-virtual {p4, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_PLAYER:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 27
    .line 28
    invoke-virtual {p4, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->setGameId(J)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, p3}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->setGameSeries(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p5}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->setLocationPageTypeValue(I)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->build()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setRecommendPlayerArgs(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p4, p1}, Lcom/wufan/friend/chat/protocol/Request$b;->setArgs(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide p2

    .line 68
    invoke-virtual {p1, p2, p3}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public l(JLjava/lang/String;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameId",
            "gameSeries",
            "downloadGameIds",
            "locationPageTypeValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p4}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->addAllLocalDownloadGameIds(Ljava/lang/Iterable;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->RECOMMEND:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 21
    .line 22
    invoke-virtual {p4, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->RCM_GET_PLAYER_V2:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 27
    .line 28
    invoke-virtual {p4, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->setGameId(J)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, p3}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->setGameSeries(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, p5}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->setLocationPageTypeValue(I)Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs$b;->build()Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setRecommendPlayerArgs(Lcom/wufan/friend/chat/protocol/RecommendPlayerArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p4, p1}, Lcom/wufan/friend/chat/protocol/Request$b;->setArgs(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide p2

    .line 68
    invoke-virtual {p1, p2, p3}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->SYSTEM:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_HEART:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lcom/wufan/friend/chat/protocol/HeartArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-object v3, Lcom/wufan/friend/chat/protocol/HeartArgs$State;->APP:Lcom/wufan/friend/chat/protocol/HeartArgs$State;

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/wufan/friend/chat/protocol/HeartArgs$b;->setState(Lcom/wufan/friend/chat/protocol/HeartArgs$State;)Lcom/wufan/friend/chat/protocol/HeartArgs$b;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/HeartArgs$b;->build()Lcom/wufan/friend/chat/protocol/HeartArgs;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setHeartArgs(Lcom/wufan/friend/chat/protocol/HeartArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setArgs(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setRequestId(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p0, v0}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufan/friend/chat/rpc/b;->e:Lio/netty/channel/Channel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public o(Ljava/lang/String;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "port"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, ""

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/wufan/friend/chat/rpc/b;->d:I

    .line 10
    .line 11
    if-ne v0, p2, :cond_2

    .line 12
    .line 13
    iget-object p2, p0, Lcom/wufan/friend/chat/rpc/b;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-nez p2, :cond_2

    .line 20
    .line 21
    iget-object p2, p0, Lcom/wufan/friend/chat/rpc/b;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method

.method public q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "token"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->SYSTEM:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_LOGIN:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setRequestId(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {}, Lcom/wufan/friend/chat/protocol/LoginArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/LoginArgs$b;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/LoginArgs$b;->setAccountId(I)Lcom/wufan/friend/chat/protocol/LoginArgs$b;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, p2}, Lcom/wufan/friend/chat/protocol/LoginArgs$b;->setToken(Ljava/lang/String;)Lcom/wufan/friend/chat/protocol/LoginArgs$b;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/LoginArgs$b;->build()Lcom/wufan/friend/chat/protocol/LoginArgs;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setLoginArgs(Lcom/wufan/friend/chat/protocol/LoginArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/Request$b;->setArgs(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public s(Lcom/wufan/friend/chat/protocol/OnlineState;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/protocol/Request;->newBuilder()Lcom/wufan/friend/chat/protocol/Request$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServiceName;->SYSTEM:Lcom/wufan/friend/chat/protocol/ServiceName;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setService(Lcom/wufan/friend/chat/protocol/ServiceName;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/wufan/friend/chat/protocol/ServicePath;->SYS_ONLINE_STATE:Lcom/wufan/friend/chat/protocol/ServicePath;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/protocol/Request$b;->setPath(Lcom/wufan/friend/chat/protocol/ServicePath;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/protocol/Request$b;->setTimestamp(J)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Lcom/wufan/friend/chat/protocol/RequestArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs;->newBuilder()Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {v2, p1}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;->setStateValue(I)Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/OnlineStateArgs$b;->build()Lcom/wufan/friend/chat/protocol/OnlineStateArgs;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->setStateArgs(Lcom/wufan/friend/chat/protocol/OnlineStateArgs;)Lcom/wufan/friend/chat/protocol/RequestArgs$b;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RequestArgs$b;->build()Lcom/wufan/friend/chat/protocol/RequestArgs;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/protocol/Request$b;->setArgs(Lcom/wufan/friend/chat/protocol/RequestArgs;)Lcom/wufan/friend/chat/protocol/Request$b;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Request$b;->build()Lcom/wufan/friend/chat/protocol/Request;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Lcom/wufan/friend/chat/rpc/b;->r(Lcom/wufan/friend/chat/protocol/Request;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
