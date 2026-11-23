.class public final Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lreactor/blockhound/integration/BlockHoundIntegration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/Hidden;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NettyBlockHoundIntegration"
.end annotation

.annotation build Lio/netty/util/internal/SuppressJava6Requirement;
    reason = "BlockHound is Java 8+, but this class is only loaded by it\'s SPI"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public applyTo(Lreactor/blockhound/BlockHound$Builder;)V
    .locals 3

    .line 1
    const-string v0, "io.netty.channel.nio.NioEventLoop"

    .line 2
    .line 3
    const-string v1, "handleLoopException"

    .line 4
    .line 5
    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 6
    .line 7
    .line 8
    const-string v0, "io.netty.channel.kqueue.KQueueEventLoop"

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 11
    .line 12
    .line 13
    const-string v0, "io.netty.channel.epoll.EpollEventLoop"

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 16
    .line 17
    .line 18
    const-string v0, "io.netty.util.HashedWheelTimer$Worker"

    .line 19
    .line 20
    const-string v1, "waitForNextTick"

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 23
    .line 24
    .line 25
    const-string v0, "confirmShutdown"

    .line 26
    .line 27
    const-string v1, "io.netty.util.concurrent.SingleThreadEventExecutor"

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 30
    .line 31
    .line 32
    const-string v0, "handshake"

    .line 33
    .line 34
    const-string v2, "io.netty.handler.ssl.SslHandler"

    .line 35
    .line 36
    invoke-virtual {p1, v2, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 37
    .line 38
    .line 39
    const-string v0, "runAllDelegatedTasks"

    .line 40
    .line 41
    invoke-virtual {p1, v2, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 42
    .line 43
    .line 44
    const-string v0, "io.netty.util.concurrent.GlobalEventExecutor"

    .line 45
    .line 46
    const-string v2, "takeTask"

    .line 47
    .line 48
    invoke-virtual {p1, v0, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 52
    .line 53
    .line 54
    new-instance v0, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;-><init>(Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lreactor/blockhound/BlockHound$Builder;->nonBlockingThreadPredicate(Ljava/util/function/Function;)Lreactor/blockhound/BlockHound$Builder;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lreactor/blockhound/integration/BlockHoundIntegration;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;->compareTo(Lreactor/blockhound/integration/BlockHoundIntegration;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lreactor/blockhound/integration/BlockHoundIntegration;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method
