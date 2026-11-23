.class public Lapp/mgsim/arena/ArenaSocketThread;
.super Lapp/mgsim/arena/SocketThread;
.source "SourceFile"


# static fields
.field private static final INTERVAL_NEXT_CHECK_HEARTBEAT_TIME:J = 0x2710L

.field private static final REQUESTID_HEARBEAT:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "ArenaService"


# instance fields
.field private bootstrap:Lorg/jboss/netty/bootstrap/b;

.field private host:Ljava/lang/String;

.field public final mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

.field public mLastHeartBeatStartTime:J

.field private final mSocketListener:Lapp/mgsim/arena/SocketListener;

.field private port:I

.field private writeChannel:Lorg/jboss/netty/channel/e;


# direct methods
.method public constructor <init>(Lapp/mgsim/arena/SocketListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lapp/mgsim/arena/SocketThread;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->mLastHeartBeatStartTime:J

    .line 7
    .line 8
    new-instance v0, Lapp/mgsim/arena/ArenaSocketThread$2;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lapp/mgsim/arena/ArenaSocketThread$2;-><init>(Lapp/mgsim/arena/ArenaSocketThread;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->mHeartBeatThread:Lapp/mgsim/arena/CheckThread;

    .line 14
    .line 15
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->mSocketListener:Lapp/mgsim/arena/SocketListener;

    .line 16
    .line 17
    return-void
.end method

.method static synthetic access$000(Lapp/mgsim/arena/ArenaSocketThread;)Lapp/mgsim/arena/SocketListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lapp/mgsim/arena/ArenaSocketThread;->mSocketListener:Lapp/mgsim/arena/SocketListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected execute()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/n;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/channel/socket/nio/n;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lorg/jboss/netty/bootstrap/b;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lorg/jboss/netty/bootstrap/b;-><init>(Lorg/jboss/netty/channel/i;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    .line 20
    .line 21
    const-string v0, "tcpNoDelay"

    .line 22
    .line 23
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-virtual {v1, v0, v2}, Lorg/jboss/netty/bootstrap/a;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    .line 29
    .line 30
    const-string v1, "keepAlive"

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lorg/jboss/netty/bootstrap/a;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    .line 36
    .line 37
    new-instance v1, Lapp/mgsim/arena/ArenaSocketThread$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lapp/mgsim/arena/ArenaSocketThread$1;-><init>(Lapp/mgsim/arena/ArenaSocketThread;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lorg/jboss/netty/bootstrap/a;->o(Lorg/jboss/netty/channel/o;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    .line 46
    .line 47
    new-instance v1, Ljava/net/InetSocketAddress;

    .line 48
    .line 49
    iget-object v2, p0, Lapp/mgsim/arena/ArenaSocketThread;->host:Ljava/lang/String;

    .line 50
    .line 51
    iget v3, p0, Lapp/mgsim/arena/ArenaSocketThread;->port:I

    .line 52
    .line 53
    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lorg/jboss/netty/bootstrap/b;->p(Ljava/net/SocketAddress;)Lorg/jboss/netty/channel/j;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Lorg/jboss/netty/channel/j;->awaitUninterruptibly()Lorg/jboss/netty/channel/j;

    .line 61
    .line 62
    .line 63
    invoke-interface {v0}, Lorg/jboss/netty/channel/j;->getChannel()Lorg/jboss/netty/channel/e;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->writeChannel:Lorg/jboss/netty/channel/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v2, "init socket exception : "

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "ArenaService"

    .line 93
    .line 94
    invoke-virtual {p0, v1, v0}, Lapp/mgsim/arena/SocketThread;->printMessgae(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v0, "\u521d\u59cb\u5316\u5927\u5385\u670d\u52a1\u5668\u5f02\u5e38\uff01"

    .line 98
    .line 99
    invoke-static {v0}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p0, v0}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-void
.end method

.method public handleExit(Lapp/mgsim/arena/SocketError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->mSocketListener:Lapp/mgsim/arena/SocketListener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lapp/mgsim/arena/SocketListener;->onError(Lapp/mgsim/arena/SocketError;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->writeChannel:Lorg/jboss/netty/channel/e;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->close()Lorg/jboss/netty/channel/j;

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->writeChannel:Lorg/jboss/netty/channel/e;

    .line 15
    .line 16
    iget-object v0, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/jboss/netty/bootstrap/a;->shutdown()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->bootstrap:Lorg/jboss/netty/bootstrap/b;

    .line 24
    .line 25
    return-void
.end method

.method public sendDataToServer(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/jboss/netty/buffer/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    array-length v1, v1

    .line 8
    invoke-direct {v0, v1}, Lorg/jboss/netty/buffer/c;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/e;->V([B)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->writeChannel:Lorg/jboss/netty/channel/e;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Lorg/jboss/netty/channel/e;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    const-string v0, "\u6d88\u606f\u53d1\u9001\u5931\u8d25\uff01"

    .line 26
    .line 27
    invoke-static {v0}, Lapp/mgsim/arena/SocketUtils;->createSocketErrorForBadNetwork(Ljava/lang/String;)Lapp/mgsim/arena/SocketError;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lapp/mgsim/arena/ArenaSocketThread;->handleExit(Lapp/mgsim/arena/SocketError;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v1, "writeData IOException :"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "ArenaService"

    .line 56
    .line 57
    invoke-virtual {p0, v1, v0}, Lapp/mgsim/arena/SocketThread;->printMessgae(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method public setLastHeartBeatStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->mLastHeartBeatStartTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setLobbyServer(Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lapp/mgsim/arena/ArenaSocketThread;->host:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lapp/mgsim/arena/ArenaSocketThread;->port:I

    .line 4
    .line 5
    return-void
.end method
