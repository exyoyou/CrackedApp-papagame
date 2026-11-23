.class public Lio/netty/handler/traffic/GlobalTrafficShapingHandler;
.super Lio/netty/handler/traffic/AbstractTrafficShapingHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;,
        Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final channelQueues:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;",
            ">;"
        }
    .end annotation
.end field

.field maxGlobalWriteSize:J

.field private final queuesSize:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>()V

    .line 22
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v0, 0x19000000

    .line 24
    iput-wide v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;J)V
    .locals 0

    .line 16
    invoke-direct {p0, p2, p3}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(J)V

    .line 17
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 18
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 p2, 0x19000000

    .line 19
    iput-wide p2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 20
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JJ)V
    .locals 0

    .line 11
    invoke-direct {p0, p2, p3, p4, p5}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJ)V

    .line 12
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 13
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 p2, 0x19000000

    .line 14
    iput-wide p2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 15
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JJJ)V
    .locals 7

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    .line 6
    invoke-direct/range {v0 .. v6}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJ)V

    .line 7
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p2

    iput-object p2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 8
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 p2, 0x19000000

    .line 9
    iput-wide p2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 10
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JJJJ)V
    .locals 10

    move-object v9, p0

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    .line 1
    invoke-direct/range {v0 .. v8}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;-><init>(JJJJ)V

    .line 2
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, v9, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, v9, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v0, 0x19000000

    .line 4
    iput-wide v0, v9, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 5
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/traffic/GlobalTrafficShapingHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->sendAllValid(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getOrSetPerChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;-><init>(Lio/netty/handler/traffic/GlobalTrafficShapingHandler$1;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayDeque;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 35
    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    iput-wide v1, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 39
    .line 40
    invoke-static {}, Lio/netty/handler/traffic/TrafficCounter;->milliSecondFromNano()J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    iput-wide v1, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastReadTimestamp:J

    .line 45
    .line 46
    iput-wide v1, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    .line 47
    .line 48
    iget-object v1, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 49
    .line 50
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_0
    return-object v0
.end method

.method private sendAllValid(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;J)V
    .locals 5

    .line 1
    monitor-enter p2

    .line 2
    :try_start_0
    iget-object v0, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;

    .line 9
    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-wide v1, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->relativeTimeAction:J

    .line 13
    .line 14
    cmp-long v3, v1, p3

    .line 15
    .line 16
    if-gtz v3, :cond_0

    .line 17
    .line 18
    iget-wide v1, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->size:J

    .line 19
    .line 20
    iget-object v3, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    .line 21
    .line 22
    invoke-virtual {v3, v1, v2}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    .line 23
    .line 24
    .line 25
    iget-wide v3, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 26
    .line 27
    sub-long/2addr v3, v1

    .line 28
    iput-wide v3, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 29
    .line 30
    iget-object v3, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    .line 32
    neg-long v1, v1

    .line 33
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    .line 37
    .line 38
    iget-object v0, v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->promise:Lio/netty/channel/ChannelPromise;

    .line 39
    .line 40
    invoke-interface {p1, v1, v0}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 41
    .line 42
    .line 43
    iput-wide p3, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    .line 44
    .line 45
    iget-object v0, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p3, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 55
    .line 56
    invoke-virtual {p3, v0}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object p3, p2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 60
    .line 61
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    if-eqz p3, :cond_2

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->releaseWriteSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw p1
.end method


# virtual methods
.method checkWaitReadTime(Lio/netty/channel/ChannelHandlerContext;JJ)J
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    .line 24
    .line 25
    cmp-long v2, p2, v0

    .line 26
    .line 27
    if-lez v2, :cond_0

    .line 28
    .line 29
    add-long/2addr p4, p2

    .line 30
    iget-wide v0, p1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastReadTimestamp:J

    .line 31
    .line 32
    sub-long/2addr p4, v0

    .line 33
    iget-wide v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    .line 34
    .line 35
    cmp-long p1, p4, v0

    .line 36
    .line 37
    if-lez p1, :cond_0

    .line 38
    .line 39
    iget-wide p2, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    .line 40
    .line 41
    :cond_0
    return-wide p2
.end method

.method createGlobalTrafficCounter(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 7

    .line 1
    new-instance v6, Lio/netty/handler/traffic/TrafficCounter;

    .line 2
    .line 3
    const-string v0, "executor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    move-object v2, p1

    .line 10
    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    const-string v3, "GlobalTC"

    .line 13
    .line 14
    iget-wide v4, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkInterval:J

    .line 15
    .line 16
    move-object v0, v6

    .line 17
    move-object v1, p0

    .line 18
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/traffic/TrafficCounter;-><init>(Lio/netty/handler/traffic/AbstractTrafficShapingHandler;Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/String;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v6}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->setTrafficCounter(Lio/netty/handler/traffic/TrafficCounter;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v6}, Lio/netty/handler/traffic/TrafficCounter;->start()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public getMaxGlobalWriteSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->getOrSetPerChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    .line 15
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 20
    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;

    .line 47
    .line 48
    iget-object v3, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    .line 49
    .line 50
    invoke-virtual {p0, v3}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->calculateSize(Ljava/lang/Object;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    iget-object v5, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    .line 55
    .line 56
    invoke-virtual {v5, v3, v4}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    .line 57
    .line 58
    .line 59
    iget-wide v5, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 60
    .line 61
    sub-long/2addr v5, v3

    .line 62
    iput-wide v5, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 63
    .line 64
    iget-object v5, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 65
    .line 66
    neg-long v3, v3

    .line 67
    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 68
    .line 69
    .line 70
    iget-object v3, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    .line 71
    .line 72
    iget-object v2, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->promise:Lio/netty/channel/ChannelPromise;

    .line 73
    .line 74
    invoke-interface {p1, v3, v2}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 79
    .line 80
    iget-wide v2, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 81
    .line 82
    neg-long v2, v2

    .line 83
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 84
    .line 85
    .line 86
    iget-object v0, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_2

    .line 97
    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;

    .line 103
    .line 104
    iget-object v2, v2, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->toSend:Ljava/lang/Object;

    .line 105
    .line 106
    instance-of v3, v2, Lio/netty/buffer/ByteBuf;

    .line 107
    .line 108
    if-eqz v3, :cond_1

    .line 109
    .line 110
    check-cast v2, Lio/netty/buffer/ByteBuf;

    .line 111
    .line 112
    invoke-interface {v2}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    iget-object v0, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 119
    .line 120
    .line 121
    monitor-exit v1

    .line 122
    goto :goto_2

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw p1

    .line 126
    :cond_3
    :goto_2
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->releaseWriteSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->releaseReadSuspended(Lio/netty/channel/ChannelHandlerContext;)V

    .line 130
    .line 131
    .line 132
    invoke-super {p0, p1}, Lio/netty/channel/ChannelHandlerAdapter;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method informReadOperation(Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iput-wide p2, p1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastReadTimestamp:J

    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public queuesSize()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/handler/traffic/TrafficCounter;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaxGlobalWriteSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 2
    .line 3
    return-void
.end method

.method submitWrite(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JJJLio/netty/channel/ChannelPromise;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v10, p3

    .line 6
    .line 7
    move-wide/from16 v2, p7

    .line 8
    .line 9
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v5, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->channelQueues:Ljava/util/concurrent/ConcurrentMap;

    .line 22
    .line 23
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 28
    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    invoke-direct/range {p0 .. p1}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->getOrSetPerChannel(Lio/netty/channel/ChannelHandlerContext;)Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :cond_0
    move-object v12, v4

    .line 36
    monitor-enter v12

    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    cmp-long v6, p5, v4

    .line 40
    .line 41
    if-nez v6, :cond_1

    .line 42
    .line 43
    :try_start_0
    iget-object v4, v12, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    iget-object v4, v1, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->trafficCounter:Lio/netty/handler/traffic/TrafficCounter;

    .line 52
    .line 53
    invoke-virtual {v4, v10, v11}, Lio/netty/handler/traffic/TrafficCounter;->bytesRealWriteFlowControl(J)V

    .line 54
    .line 55
    .line 56
    move-object/from16 v5, p2

    .line 57
    .line 58
    move-object/from16 v8, p9

    .line 59
    .line 60
    invoke-interface {v0, v5, v8}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 61
    .line 62
    .line 63
    iput-wide v2, v12, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    .line 64
    .line 65
    monitor-exit v12

    .line 66
    return-void

    .line 67
    :cond_1
    move-object/from16 v5, p2

    .line 68
    .line 69
    move-object/from16 v8, p9

    .line 70
    .line 71
    iget-wide v6, v1, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    .line 72
    .line 73
    cmp-long v4, p5, v6

    .line 74
    .line 75
    if-lez v4, :cond_2

    .line 76
    .line 77
    add-long v6, v2, p5

    .line 78
    .line 79
    iget-wide v13, v12, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->lastWriteTimestamp:J

    .line 80
    .line 81
    sub-long/2addr v6, v13

    .line 82
    iget-wide v13, v1, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    .line 83
    .line 84
    cmp-long v4, v6, v13

    .line 85
    .line 86
    if-lez v4, :cond_2

    .line 87
    .line 88
    iget-wide v6, v1, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->maxTime:J

    .line 89
    .line 90
    move-wide v13, v6

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move-wide/from16 v13, p5

    .line 93
    .line 94
    :goto_0
    new-instance v15, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;

    .line 95
    .line 96
    add-long v3, v13, v2

    .line 97
    .line 98
    const/4 v9, 0x0

    .line 99
    move-object v2, v15

    .line 100
    move-object/from16 v5, p2

    .line 101
    .line 102
    move-wide/from16 v6, p3

    .line 103
    .line 104
    move-object/from16 v8, p9

    .line 105
    .line 106
    invoke-direct/range {v2 .. v9}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;-><init>(JLjava/lang/Object;JLio/netty/channel/ChannelPromise;Lio/netty/handler/traffic/GlobalTrafficShapingHandler$1;)V

    .line 107
    .line 108
    .line 109
    iget-object v2, v12, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->messagesQueue:Ljava/util/ArrayDeque;

    .line 110
    .line 111
    invoke-virtual {v2, v15}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-wide v2, v12, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 115
    .line 116
    add-long/2addr v2, v10

    .line 117
    iput-wide v2, v12, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 118
    .line 119
    iget-object v2, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 120
    .line 121
    invoke-virtual {v2, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 122
    .line 123
    .line 124
    iget-wide v2, v12, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;->queueSize:J

    .line 125
    .line 126
    move-object/from16 p2, p0

    .line 127
    .line 128
    move-object/from16 p3, p1

    .line 129
    .line 130
    move-wide/from16 p4, v13

    .line 131
    .line 132
    move-wide/from16 p6, v2

    .line 133
    .line 134
    invoke-virtual/range {p2 .. p7}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->checkWriteSuspend(Lio/netty/channel/ChannelHandlerContext;JJ)V

    .line 135
    .line 136
    .line 137
    iget-object v2, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->queuesSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 140
    .line 141
    .line 142
    move-result-wide v2

    .line 143
    iget-wide v4, v1, Lio/netty/handler/traffic/GlobalTrafficShapingHandler;->maxGlobalWriteSize:J

    .line 144
    .line 145
    const/4 v6, 0x0

    .line 146
    cmp-long v7, v2, v4

    .line 147
    .line 148
    if-lez v7, :cond_3

    .line 149
    .line 150
    const/4 v2, 0x1

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    const/4 v2, 0x0

    .line 153
    :goto_1
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    if-eqz v2, :cond_4

    .line 155
    .line 156
    invoke-virtual {v1, v0, v6}, Lio/netty/handler/traffic/AbstractTrafficShapingHandler;->setUserDefinedWritability(Lio/netty/channel/ChannelHandlerContext;Z)V

    .line 157
    .line 158
    .line 159
    :cond_4
    iget-wide v2, v15, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$ToSend;->relativeTimeAction:J

    .line 160
    .line 161
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    new-instance v5, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$1;

    .line 166
    .line 167
    move-object/from16 p2, v5

    .line 168
    .line 169
    move-object/from16 p3, p0

    .line 170
    .line 171
    move-object/from16 p4, p1

    .line 172
    .line 173
    move-object/from16 p5, v12

    .line 174
    .line 175
    move-wide/from16 p6, v2

    .line 176
    .line 177
    invoke-direct/range {p2 .. p7}, Lio/netty/handler/traffic/GlobalTrafficShapingHandler$1;-><init>(Lio/netty/handler/traffic/GlobalTrafficShapingHandler;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/traffic/GlobalTrafficShapingHandler$PerChannel;J)V

    .line 178
    .line 179
    .line 180
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 181
    .line 182
    invoke-interface {v4, v5, v13, v14, v0}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :catchall_0
    move-exception v0

    .line 187
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    throw v0
.end method

.method protected userDefinedWritabilityIndex()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
