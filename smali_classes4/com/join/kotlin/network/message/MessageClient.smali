.class public final Lcom/join/kotlin/network/message/MessageClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u00100\u001a\u000201J\u0006\u00102\u001a\u000201J\u0006\u00103\u001a\u00020&J\u0016\u00104\u001a\u00020&2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u00105\u001a\u0002012\u0006\u00106\u001a\u000207R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\u0003X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\tR\u001b\u0010\u0013\u001a\u00020\u00148FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001c\u0010\u001f\u001a\u0004\u0018\u00010 X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010*\u001a\u00020+X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00068"
    }
    d2 = {
        "Lcom/join/kotlin/network/message/MessageClient;",
        "",
        "host",
        "",
        "port",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "getHost",
        "()Ljava/lang/String;",
        "setHost",
        "(Ljava/lang/String;)V",
        "getPort",
        "()Ljava/lang/Integer;",
        "setPort",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "TAG",
        "getTAG",
        "work",
        "Lio/netty/channel/EventLoopGroup;",
        "getWork",
        "()Lio/netty/channel/EventLoopGroup;",
        "work$delegate",
        "Lkotlin/Lazy;",
        "bootstrap",
        "Lio/netty/bootstrap/Bootstrap;",
        "getBootstrap",
        "()Lio/netty/bootstrap/Bootstrap;",
        "setBootstrap",
        "(Lio/netty/bootstrap/Bootstrap;)V",
        "channel",
        "Lio/netty/channel/Channel;",
        "getChannel",
        "()Lio/netty/channel/Channel;",
        "setChannel",
        "(Lio/netty/channel/Channel;)V",
        "isConnecting",
        "",
        "()Z",
        "setConnecting",
        "(Z)V",
        "lastConnectTime",
        "",
        "getLastConnectTime",
        "()J",
        "setLastConnectTime",
        "(J)V",
        "connect",
        "",
        "disconnect",
        "isAlive",
        "isCfgChanged",
        "send",
        "request",
        "Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bootstrap:Lio/netty/bootstrap/Bootstrap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private channel:Lio/netty/channel/Channel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isConnecting:Z

.field private lastConnectTime:J

.field private port:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final work$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/kotlin/network/message/MessageClient;->host:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/kotlin/network/message/MessageClient;->port:Ljava/lang/Integer;

    .line 7
    .line 8
    const-string p1, "HMCloudMessage:  send"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/kotlin/network/message/MessageClient;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p1, Lcom/join/kotlin/network/message/b;

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/join/kotlin/network/message/b;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/join/kotlin/network/message/MessageClient;->work$delegate:Lkotlin/Lazy;

    .line 22
    .line 23
    new-instance p1, Lio/netty/bootstrap/Bootstrap;

    .line 24
    .line 25
    invoke-direct {p1}, Lio/netty/bootstrap/Bootstrap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/join/kotlin/network/message/MessageClient;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/network/message/MessageClient;->getWork()Lio/netty/channel/EventLoopGroup;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Lio/netty/bootstrap/AbstractBootstrap;->group(Lio/netty/channel/EventLoopGroup;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lio/netty/bootstrap/Bootstrap;

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    const-class p2, Lio/netty/channel/socket/nio/NioSocketChannel;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Lio/netty/bootstrap/AbstractBootstrap;->channel(Ljava/lang/Class;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lio/netty/bootstrap/Bootstrap;

    .line 49
    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    new-instance p2, Lcom/join/kotlin/network/message/MessageClientInitializer;

    .line 53
    .line 54
    invoke-direct {p2}, Lcom/join/kotlin/network/message/MessageClientInitializer;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lio/netty/bootstrap/AbstractBootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lio/netty/bootstrap/Bootstrap;

    .line 62
    .line 63
    :cond_0
    iget-object p1, p0, Lcom/join/kotlin/network/message/MessageClient;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    .line 64
    .line 65
    if-eqz p1, :cond_1

    .line 66
    .line 67
    sget-object p2, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    .line 68
    .line 69
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {p1, p2, v0}, Lio/netty/bootstrap/AbstractBootstrap;->option(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Lio/netty/bootstrap/AbstractBootstrap;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lio/netty/bootstrap/Bootstrap;

    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/network/message/MessageClient;Lio/netty/channel/ChannelFuture;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/network/message/MessageClient;->connect$lambda$2(Lcom/join/kotlin/network/message/MessageClient;Lio/netty/channel/ChannelFuture;)V

    return-void
.end method

.method public static synthetic b()Lio/netty/channel/nio/NioEventLoopGroup;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/network/message/MessageClient;->work_delegate$lambda$0()Lio/netty/channel/nio/NioEventLoopGroup;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/join/kotlin/network/message/MessageClient;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/network/message/MessageClient;->connect$lambda$2$lambda$1(Lcom/join/kotlin/network/message/MessageClient;)V

    return-void
.end method

.method private static final connect$lambda$2(Lcom/join/kotlin/network/message/MessageClient;Lio/netty/channel/ChannelFuture;)V
    .locals 3

    .line 1
    const-string v0, "future"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/join/kotlin/network/message/MessageClient;->isConnecting:Z

    .line 8
    .line 9
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/join/kotlin/network/message/MessageClient;->channel:Lio/netty/channel/Channel;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lcom/join/kotlin/network/message/a;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/join/kotlin/network/message/a;-><init>(Lcom/join/kotlin/network/message/MessageClient;)V

    .line 33
    .line 34
    .line 35
    const-wide/16 v1, 0x5

    .line 36
    .line 37
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    .line 39
    invoke-interface {p1, v0, v1, v2, p0}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method private static final connect$lambda$2$lambda$1(Lcom/join/kotlin/network/message/MessageClient;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/network/message/MessageClient;->connect()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final work_delegate$lambda$0()Lio/netty/channel/nio/NioEventLoopGroup;
    .locals 1

    .line 1
    new-instance v0, Lio/netty/channel/nio/NioEventLoopGroup;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final connect()V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/join/kotlin/network/message/MessageClient;->isAlive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/join/kotlin/network/message/MessageClient;->isConnecting:Z

    .line 9
    .line 10
    if-nez v0, :cond_4

    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/join/kotlin/network/message/MessageClient;->lastConnectTime:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    const-wide/16 v2, 0x7d0

    .line 20
    .line 21
    cmp-long v4, v0, v2

    .line 22
    .line 23
    if-gez v4, :cond_1

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_1
    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/join/kotlin/network/message/MessageClient;->isConnecting:Z

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Lcom/join/kotlin/network/message/MessageClient;->lastConnectTime:J

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/kotlin/network/message/MessageClient;->host:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/kotlin/network/message/MessageClient;->port:Ljava/lang/Integer;

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/16 v2, 0x50

    .line 51
    .line 52
    :goto_0
    invoke-virtual {v0, v1, v2}, Lio/netty/bootstrap/Bootstrap;->connect(Ljava/lang/String;I)Lio/netty/channel/ChannelFuture;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const/4 v0, 0x0

    .line 58
    :goto_1
    if-eqz v0, :cond_5

    .line 59
    .line 60
    new-instance v1, Lcom/join/kotlin/network/message/c;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/join/kotlin/network/message/c;-><init>(Lcom/join/kotlin/network/message/MessageClient;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_4
    :goto_2
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_3
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->channel:Lio/netty/channel/Channel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->channel:Lio/netty/channel/Channel;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->disconnect()Lio/netty/channel/ChannelFuture;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->channel:Lio/netty/channel/Channel;

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->close()Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-void
.end method

.method public final getBootstrap()Lio/netty/bootstrap/Bootstrap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getChannel()Lio/netty/channel/Channel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->channel:Lio/netty/channel/Channel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLastConnectTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/network/message/MessageClient;->lastConnectTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPort()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->port:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWork()Lio/netty/channel/EventLoopGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->work$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/netty/channel/EventLoopGroup;

    .line 8
    .line 9
    return-object v0
.end method

.method public final isAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->channel:Lio/netty/channel/Channel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final isCfgChanged(Ljava/lang/String;I)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->port:Ljava/lang/Integer;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, p2, :cond_3

    .line 24
    .line 25
    iget-object p2, p0, Lcom/join/kotlin/network/message/MessageClient;->host:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_3

    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/kotlin/network/message/MessageClient;->host:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 45
    :goto_1
    return p1
.end method

.method public final isConnecting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/network/message/MessageClient;->isConnecting:Z

    .line 2
    .line 3
    return v0
.end method

.method public final send(Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;)V
    .locals 2
    .param p1    # Lcom/wufan/user/service/protobuf/MessageProto$MessageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/protobuf/AbstractMessage;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lcom/papa91/arc/ext/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->channel:Lio/netty/channel/Channel;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/network/message/MessageClient;->channel:Lio/netty/channel/Channel;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/kotlin/network/message/MessageClient;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_1
    return-void
.end method

.method public final setBootstrap(Lio/netty/bootstrap/Bootstrap;)V
    .locals 0
    .param p1    # Lio/netty/bootstrap/Bootstrap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/network/message/MessageClient;->bootstrap:Lio/netty/bootstrap/Bootstrap;

    .line 2
    .line 3
    return-void
.end method

.method public final setChannel(Lio/netty/channel/Channel;)V
    .locals 0
    .param p1    # Lio/netty/channel/Channel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/network/message/MessageClient;->channel:Lio/netty/channel/Channel;

    .line 2
    .line 3
    return-void
.end method

.method public final setConnecting(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/network/message/MessageClient;->isConnecting:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/network/message/MessageClient;->host:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLastConnectTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/network/message/MessageClient;->lastConnectTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setPort(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/network/message/MessageClient;->port:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
