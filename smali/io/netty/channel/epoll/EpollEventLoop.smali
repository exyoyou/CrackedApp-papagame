.class Lio/netty/channel/epoll/EpollEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AWAKE:J = -0x1L

.field private static final MAX_SCHEDULED_TIMERFD_NS:J = 0x3b9ac9ffL

.field private static final NONE:J = 0x7fffffffffffffffL

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final allowGrowing:Z

.field private final channels:Lio/netty/util/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/IntObjectMap<",
            "Lio/netty/channel/epoll/AbstractEpollChannel;",
            ">;"
        }
    .end annotation
.end field

.field private datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

.field private final epollFd:Lio/netty/channel/unix/FileDescriptor;

.field private final eventFd:Lio/netty/channel/unix/FileDescriptor;

.field private final events:Lio/netty/channel/epoll/EpollEventArray;

.field private volatile ioRatio:I

.field private iovArray:Lio/netty/channel/unix/IovArray;

.field private final nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

.field private pendingWakeup:Z

.field private final selectNowSupplier:Lio/netty/util/IntSupplier;

.field private final selectStrategy:Lio/netty/channel/SelectStrategy;

.field private final timerFd:Lio/netty/channel/unix/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/channel/epoll/EpollEventLoop;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 8
    .line 9
    invoke-static {}, Lio/netty/channel/epoll/Epoll;->ensureAvailability()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method constructor <init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;ILio/netty/channel/SelectStrategy;Lio/netty/util/concurrent/RejectedExecutionHandler;Lio/netty/channel/EventLoopTaskQueueFactory;)V
    .locals 8

    .line 1
    const/4 v3, 0x0

    .line 2
    invoke-static {p6}, Lio/netty/channel/epoll/EpollEventLoop;->newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;

    .line 3
    .line 4
    .line 5
    move-result-object v4

    .line 6
    invoke-static {p6}, Lio/netty/channel/epoll/EpollEventLoop;->newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v6, p5

    .line 14
    invoke-direct/range {v0 .. v6}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/Executor;ZLjava/util/Queue;Ljava/util/Queue;Lio/netty/util/concurrent/RejectedExecutionHandler;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lio/netty/util/collection/IntObjectHashMap;

    .line 18
    .line 19
    const/16 p2, 0x1000

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lio/netty/util/collection/IntObjectHashMap;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 25
    .line 26
    new-instance p1, Lio/netty/channel/epoll/EpollEventLoop$1;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lio/netty/channel/epoll/EpollEventLoop$1;-><init>(Lio/netty/channel/epoll/EpollEventLoop;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    .line 32
    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 34
    .line 35
    const-wide/16 p5, -0x1

    .line 36
    .line 37
    invoke-direct {p1, p5, p6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    .line 42
    const/16 p1, 0x32

    .line 43
    .line 44
    iput p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I

    .line 45
    .line 46
    const-string p1, "strategy"

    .line 47
    .line 48
    invoke-static {p4, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Lio/netty/channel/SelectStrategy;

    .line 53
    .line 54
    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    .line 55
    .line 56
    if-nez p3, :cond_0

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->allowGrowing:Z

    .line 60
    .line 61
    new-instance p1, Lio/netty/channel/epoll/EpollEventArray;

    .line 62
    .line 63
    invoke-direct {p1, p2}, Lio/netty/channel/epoll/EpollEventArray;-><init>(I)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->allowGrowing:Z

    .line 71
    .line 72
    new-instance p1, Lio/netty/channel/epoll/EpollEventArray;

    .line 73
    .line 74
    invoke-direct {p1, p3}, Lio/netty/channel/epoll/EpollEventArray;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 78
    .line 79
    :goto_0
    const/4 p1, 0x0

    .line 80
    :try_start_0
    invoke-static {}, Lio/netty/channel/epoll/Native;->newEpollCreate()Lio/netty/channel/unix/FileDescriptor;

    .line 81
    .line 82
    .line 83
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 84
    :try_start_1
    iput-object p2, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 85
    .line 86
    invoke-static {}, Lio/netty/channel/epoll/Native;->newEventFd()Lio/netty/channel/unix/FileDescriptor;

    .line 87
    .line 88
    .line 89
    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    :try_start_2
    iput-object p3, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .line 92
    :try_start_3
    invoke-virtual {p2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result p4

    .line 96
    invoke-virtual {p3}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result p5

    .line 100
    sget p6, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    .line 101
    .line 102
    sget v0, Lio/netty/channel/epoll/Native;->EPOLLET:I

    .line 103
    .line 104
    or-int v1, p6, v0

    .line 105
    .line 106
    invoke-static {p4, p5, v1}, Lio/netty/channel/epoll/Native;->epollCtlAdd(III)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    .line 108
    .line 109
    :try_start_4
    invoke-static {}, Lio/netty/channel/epoll/Native;->newTimerFd()Lio/netty/channel/unix/FileDescriptor;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    .line 115
    :try_start_5
    invoke-virtual {p2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result p4

    .line 119
    invoke-virtual {p1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result p5

    .line 123
    or-int/2addr p6, v0

    .line 124
    invoke-static {p4, p5, p6}, Lio/netty/channel/epoll/Native;->epollCtlAdd(III)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :catch_0
    move-exception p4

    .line 129
    :try_start_6
    new-instance p5, Ljava/lang/IllegalStateException;

    .line 130
    .line 131
    const-string p6, "Unable to add timerFd filedescriptor to epoll"

    .line 132
    .line 133
    invoke-direct {p5, p6, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    throw p5

    .line 137
    :catch_1
    move-exception p4

    .line 138
    new-instance p5, Ljava/lang/IllegalStateException;

    .line 139
    .line 140
    const-string p6, "Unable to add eventFd filedescriptor to epoll"

    .line 141
    .line 142
    invoke-direct {p5, p6, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    throw p5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    :catchall_0
    move-exception p4

    .line 147
    move-object v7, p2

    .line 148
    move-object p2, p1

    .line 149
    move-object p1, v7

    .line 150
    goto :goto_1

    .line 151
    :catchall_1
    move-exception p4

    .line 152
    move-object p3, p1

    .line 153
    move-object p1, p2

    .line 154
    move-object p2, p3

    .line 155
    goto :goto_1

    .line 156
    :catchall_2
    move-exception p4

    .line 157
    move-object p2, p1

    .line 158
    move-object p3, p2

    .line 159
    :goto_1
    if-eqz p1, :cond_1

    .line 160
    .line 161
    :try_start_7
    invoke-virtual {p1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :catch_2
    nop

    .line 166
    :cond_1
    :goto_2
    if-eqz p3, :cond_2

    .line 167
    .line 168
    :try_start_8
    invoke-virtual {p3}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 169
    .line 170
    .line 171
    goto :goto_3

    .line 172
    :catch_3
    nop

    .line 173
    :cond_2
    :goto_3
    if-eqz p2, :cond_3

    .line 174
    .line 175
    :try_start_9
    invoke-virtual {p2}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 176
    .line 177
    .line 178
    :catch_4
    :cond_3
    throw p4
.end method

.method static synthetic access$000(Lio/netty/channel/epoll/EpollEventLoop;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollWaitNow()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private closeAll()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 9
    .line 10
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, [Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 15
    .line 16
    array-length v2, v0

    .line 17
    :goto_0
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    aget-object v3, v0, v1

    .line 20
    .line 21
    invoke-virtual {v3}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v3}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-interface {v3}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v4, v3}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method private epollBusyWait()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/netty/channel/epoll/Native;->epollBusyWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private epollWait(J)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    cmp-long v2, p1, v0

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 11
    .line 12
    iget-object p2, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 13
    .line 14
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    .line 15
    .line 16
    const v1, 0x7fffffff

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {p1, p2, v0, v1, v2}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Lio/netty/channel/unix/FileDescriptor;II)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_0
    invoke-static {p1, p2}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->deadlineToDelayNanos(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    const-wide/32 v0, 0x3b9aca00

    .line 30
    .line 31
    .line 32
    div-long v2, p1, v0

    .line 33
    .line 34
    const-wide/32 v4, 0x7fffffff

    .line 35
    .line 36
    .line 37
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    long-to-int v3, v2

    .line 42
    int-to-long v4, v3

    .line 43
    mul-long v4, v4, v0

    .line 44
    .line 45
    sub-long/2addr p1, v4

    .line 46
    const-wide/32 v0, 0x3b9ac9ff

    .line 47
    .line 48
    .line 49
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    long-to-int p2, p1

    .line 54
    iget-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 55
    .line 56
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 57
    .line 58
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    .line 59
    .line 60
    invoke-static {p1, v0, v1, v3, p2}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Lio/netty/channel/unix/FileDescriptor;II)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    return p1
.end method

.method private epollWaitNoTimerChange()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {v0, v1, v2}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Z)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method private epollWaitNow()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Z)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method private epollWaitTimeboxed()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 4
    .line 5
    const/16 v2, 0x3e8

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private static newTaskQueue(Lio/netty/channel/EventLoopTaskQueueFactory;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/EventLoopTaskQueueFactory;",
            ")",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget p0, Lio/netty/channel/SingleThreadEventLoop;->DEFAULT_MAX_PENDING_TASKS:I

    invoke-static {p0}, Lio/netty/channel/epoll/EpollEventLoop;->newTaskQueue0(I)Ljava/util/Queue;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    sget v0, Lio/netty/channel/SingleThreadEventLoop;->DEFAULT_MAX_PENDING_TASKS:I

    invoke-interface {p0, v0}, Lio/netty/channel/EventLoopTaskQueueFactory;->newTaskQueue(I)Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method private static newTaskQueue0(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue()Ljava/util/Queue;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->newMpscQueue(I)Ljava/util/Queue;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :goto_0
    return-object p0
.end method

.method private processReady(Lio/netty/channel/epoll/EpollEventArray;I)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v1, p2, :cond_6

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Lio/netty/channel/epoll/EpollEventArray;->fd(I)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    iget-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    .line 11
    .line 12
    invoke-virtual {v4}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    iput-boolean v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    .line 22
    .line 23
    invoke-virtual {v4}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-ne v3, v4, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p1, v1}, Lio/netty/channel/epoll/EpollEventArray;->events(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    int-to-long v4, v4

    .line 36
    iget-object v6, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 37
    .line 38
    invoke-interface {v6, v3}, Lio/netty/util/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 43
    .line 44
    if-eqz v6, :cond_4

    .line 45
    .line 46
    invoke-virtual {v6}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;

    .line 51
    .line 52
    sget v6, Lio/netty/channel/epoll/Native;->EPOLLERR:I

    .line 53
    .line 54
    sget v7, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    .line 55
    .line 56
    or-int/2addr v7, v6

    .line 57
    int-to-long v7, v7

    .line 58
    and-long/2addr v7, v4

    .line 59
    const-wide/16 v9, 0x0

    .line 60
    .line 61
    cmp-long v11, v7, v9

    .line 62
    .line 63
    if-eqz v11, :cond_2

    .line 64
    .line 65
    invoke-virtual {v3}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollOutReady()V

    .line 66
    .line 67
    .line 68
    :cond_2
    sget v7, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    .line 69
    .line 70
    or-int/2addr v6, v7

    .line 71
    int-to-long v6, v6

    .line 72
    and-long/2addr v6, v4

    .line 73
    cmp-long v8, v6, v9

    .line 74
    .line 75
    if-eqz v8, :cond_3

    .line 76
    .line 77
    invoke-virtual {v3}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollInReady()V

    .line 78
    .line 79
    .line 80
    :cond_3
    sget v6, Lio/netty/channel/epoll/Native;->EPOLLRDHUP:I

    .line 81
    .line 82
    int-to-long v6, v6

    .line 83
    and-long/2addr v4, v6

    .line 84
    cmp-long v6, v4, v9

    .line 85
    .line 86
    if-eqz v6, :cond_5

    .line 87
    .line 88
    invoke-virtual {v3}, Lio/netty/channel/epoll/AbstractEpollChannel$AbstractEpollUnsafe;->epollRdHupReady()V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    :try_start_0
    iget-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 93
    .line 94
    invoke-virtual {v4}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    invoke-static {v4, v3}, Lio/netty/channel/epoll/Native;->epollCtlDel(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    .line 101
    :catch_0
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    return v2
.end method


# virtual methods
.method add(Lio/netty/channel/epoll/AbstractEpollChannel;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 8
    .line 9
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget v2, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Lio/netty/channel/epoll/Native;->epollCtlAdd(III)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 19
    .line 20
    invoke-interface {v1, v0, p1}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 25
    .line 26
    return-void
.end method

.method protected afterScheduledTaskSubmitted(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method protected beforeScheduledTaskSubmitted(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-gez v2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method cleanDatagramPacketArray()Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 6
    .line 7
    invoke-direct {v0}, Lio/netty/channel/epoll/NativeDatagramPacketArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->clear()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 17
    .line 18
    return-object v0
.end method

.method cleanIovArray()Lio/netty/channel/unix/IovArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/netty/channel/unix/IovArray;

    .line 6
    .line 7
    invoke-direct {v0}, Lio/netty/channel/unix/IovArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Lio/netty/channel/unix/IovArray;->clear()V

    .line 14
    .line 15
    .line 16
    :goto_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 17
    .line 18
    return-object v0
.end method

.method protected cleanup()V
    .locals 6

    .line 1
    :catch_0
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v1, :cond_3

    .line 5
    .line 6
    :try_start_1
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollWaitTimeboxed()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_1
    if-ge v3, v1, :cond_0

    .line 16
    .line 17
    iget-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 18
    .line 19
    invoke-virtual {v4, v3}, Lio/netty/channel/epoll/EpollEventArray;->fd(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget-object v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    .line 24
    .line 25
    invoke-virtual {v5}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-ne v4, v5, :cond_2

    .line 30
    .line 31
    iput-boolean v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    :goto_2
    :try_start_2
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    .line 38
    .line 39
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_3

    .line 43
    :catch_1
    move-exception v1

    .line 44
    :try_start_3
    sget-object v2, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 45
    .line 46
    const-string v3, "Failed to close the event fd."

    .line 47
    .line 48
    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    .line 50
    .line 51
    :goto_3
    :try_start_4
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->timerFd:Lio/netty/channel/unix/FileDescriptor;

    .line 52
    .line 53
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_4

    .line 57
    :catch_2
    move-exception v1

    .line 58
    :try_start_5
    sget-object v2, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 59
    .line 60
    const-string v3, "Failed to close the timer fd."

    .line 61
    .line 62
    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 63
    .line 64
    .line 65
    :goto_4
    :try_start_6
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 66
    .line 67
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 68
    .line 69
    .line 70
    goto :goto_5

    .line 71
    :catch_3
    move-exception v1

    .line 72
    :try_start_7
    sget-object v2, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 73
    .line 74
    const-string v3, "Failed to close the epoll fd."

    .line 75
    .line 76
    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 77
    .line 78
    .line 79
    :goto_5
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 80
    .line 81
    if-eqz v1, :cond_4

    .line 82
    .line 83
    invoke-virtual {v1}, Lio/netty/channel/unix/IovArray;->release()V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 87
    .line 88
    :cond_4
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    invoke-virtual {v1}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->release()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 96
    .line 97
    :cond_5
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 98
    .line 99
    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollEventArray;->free()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v1

    .line 104
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 105
    .line 106
    if-eqz v2, :cond_6

    .line 107
    .line 108
    invoke-virtual {v2}, Lio/netty/channel/unix/IovArray;->release()V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->iovArray:Lio/netty/channel/unix/IovArray;

    .line 112
    .line 113
    :cond_6
    iget-object v2, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 114
    .line 115
    if-eqz v2, :cond_7

    .line 116
    .line 117
    invoke-virtual {v2}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->release()V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->datagramPacketArray:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    .line 121
    .line 122
    :cond_7
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 123
    .line 124
    invoke-virtual {v0}, Lio/netty/channel/epoll/EpollEventArray;->free()V

    .line 125
    .line 126
    .line 127
    throw v1
.end method

.method public getIoRatio()I
    .locals 1

    .line 1
    iget v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I

    .line 2
    .line 3
    return v0
.end method

.method handleLoopException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 2
    .line 3
    const-string v1, "Unexpected exception in the selector loop."

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x3e8

    .line 9
    .line 10
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method

.method modify(Lio/netty/channel/epoll/AbstractEpollChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    .line 8
    .line 9
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget p1, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->flags:I

    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lio/netty/channel/epoll/Native;->epollCtlMod(III)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected newTaskQueue(I)Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lio/netty/channel/epoll/EpollEventLoop;->newTaskQueue0(I)Ljava/util/Queue;

    move-result-object p1

    return-object p1
.end method

.method public registeredChannels()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method remove(Lio/netty/channel/epoll/AbstractEpollChannel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lio/netty/channel/epoll/AbstractEpollChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lio/netty/channel/epoll/AbstractEpollChannel;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    if-eq v1, p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->channels:Lio/netty/util/collection/IntObjectMap;

    .line 20
    .line 21
    invoke-interface {p1, v0, v1}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lio/netty/channel/epoll/AbstractEpollChannel;->isOpen()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->epollFd:Lio/netty/channel/unix/FileDescriptor;

    .line 32
    .line 33
    invoke-virtual {p1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-static {p1, v0}, Lio/netty/channel/epoll/Native;->epollCtlDel(II)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method protected run()V
    .locals 11

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    move-wide v2, v0

    .line 7
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectStrategy:Lio/netty/channel/SelectStrategy;

    .line 8
    .line 9
    iget-object v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->selectNowSupplier:Lio/netty/util/IntSupplier;

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/netty/channel/SingleThreadEventLoop;->hasTasks()Z

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    invoke-interface {v4, v5, v6}, Lio/netty/channel/SelectStrategy;->calculateStrategy(Lio/netty/util/IntSupplier;Z)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, -0x3

    .line 20
    if-eq v4, v5, :cond_a

    .line 21
    .line 22
    const/4 v5, -0x2

    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    const/4 v5, -0x1

    .line 26
    if-eq v4, v5, :cond_1

    .line 27
    .line 28
    goto/16 :goto_3

    .line 29
    .line 30
    :cond_1
    iget-boolean v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z

    .line 31
    .line 32
    if-eqz v5, :cond_3

    .line 33
    .line 34
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollWaitTimeboxed()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    goto/16 :goto_3

    .line 41
    .line 42
    :cond_2
    sget-object v5, Lio/netty/channel/epoll/EpollEventLoop;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 43
    .line 44
    const-string v6, "Missed eventfd write (not seen after > 1 second)"

    .line 45
    .line 46
    invoke-interface {v5, v6}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    iput-boolean v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z

    .line 51
    .line 52
    invoke-virtual {p0}, Lio/netty/channel/SingleThreadEventLoop;->hasTasks()Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractScheduledEventExecutor;->nextScheduledTaskDeadlineNanos()J

    .line 60
    .line 61
    .line 62
    move-result-wide v5

    .line 63
    const-wide/16 v7, -0x1

    .line 64
    .line 65
    cmp-long v9, v5, v7

    .line 66
    .line 67
    if-nez v9, :cond_4

    .line 68
    .line 69
    move-wide v5, v0

    .line 70
    :cond_4
    iget-object v9, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 71
    .line 72
    invoke-virtual {v9, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 73
    .line 74
    .line 75
    const/4 v9, 0x1

    .line 76
    :try_start_1
    invoke-virtual {p0}, Lio/netty/channel/SingleThreadEventLoop;->hasTasks()Z

    .line 77
    .line 78
    .line 79
    move-result v10

    .line 80
    if-nez v10, :cond_6

    .line 81
    .line 82
    cmp-long v4, v5, v2

    .line 83
    .line 84
    if-nez v4, :cond_5

    .line 85
    .line 86
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollWaitNoTimerChange()I

    .line 87
    .line 88
    .line 89
    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    :try_start_2
    invoke-direct {p0, v5, v6}, Lio/netty/channel/epoll/EpollEventLoop;->epollWait(J)I

    .line 92
    .line 93
    .line 94
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    move v4, v2

    .line 96
    move-wide v2, v5

    .line 97
    goto :goto_1

    .line 98
    :catchall_0
    move-exception v4

    .line 99
    move-wide v2, v5

    .line 100
    goto :goto_2

    .line 101
    :cond_6
    :goto_1
    :try_start_3
    iget-object v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    cmp-long v10, v5, v7

    .line 108
    .line 109
    if-eqz v10, :cond_7

    .line 110
    .line 111
    iget-object v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 112
    .line 113
    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v5

    .line 117
    cmp-long v10, v5, v7

    .line 118
    .line 119
    if-nez v10, :cond_b

    .line 120
    .line 121
    :cond_7
    iput-boolean v9, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catchall_1
    move-exception v4

    .line 125
    :goto_2
    iget-object v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 126
    .line 127
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 128
    .line 129
    .line 130
    move-result-wide v5

    .line 131
    cmp-long v10, v5, v7

    .line 132
    .line 133
    if-eqz v10, :cond_8

    .line 134
    .line 135
    iget-object v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 136
    .line 137
    invoke-virtual {v5, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 138
    .line 139
    .line 140
    move-result-wide v5

    .line 141
    cmp-long v10, v5, v7

    .line 142
    .line 143
    if-nez v10, :cond_9

    .line 144
    .line 145
    :cond_8
    iput-boolean v9, p0, Lio/netty/channel/epoll/EpollEventLoop;->pendingWakeup:Z

    .line 146
    .line 147
    :cond_9
    throw v4

    .line 148
    :cond_a
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->epollBusyWait()I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    :cond_b
    :goto_3
    iget v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 153
    .line 154
    const/16 v6, 0x64

    .line 155
    .line 156
    if-ne v5, v6, :cond_d

    .line 157
    .line 158
    if-lez v4, :cond_c

    .line 159
    .line 160
    :try_start_4
    iget-object v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 161
    .line 162
    invoke-direct {p0, v5, v4}, Lio/netty/channel/epoll/EpollEventLoop;->processReady(Lio/netty/channel/epoll/EpollEventArray;I)Z

    .line 163
    .line 164
    .line 165
    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 166
    if-eqz v5, :cond_c

    .line 167
    .line 168
    move-wide v2, v0

    .line 169
    goto :goto_4

    .line 170
    :catchall_2
    move-exception v4

    .line 171
    :try_start_5
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasks()Z

    .line 172
    .line 173
    .line 174
    throw v4

    .line 175
    :cond_c
    :goto_4
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasks()Z

    .line 176
    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_d
    if-lez v4, :cond_f

    .line 180
    .line 181
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 182
    .line 183
    .line 184
    move-result-wide v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 185
    :try_start_6
    iget-object v8, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 186
    .line 187
    invoke-direct {p0, v8, v4}, Lio/netty/channel/epoll/EpollEventLoop;->processReady(Lio/netty/channel/epoll/EpollEventArray;I)Z

    .line 188
    .line 189
    .line 190
    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 191
    if-eqz v8, :cond_e

    .line 192
    .line 193
    move-wide v2, v0

    .line 194
    :cond_e
    :try_start_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 195
    .line 196
    .line 197
    move-result-wide v8

    .line 198
    sub-long/2addr v8, v6

    .line 199
    rsub-int/lit8 v6, v5, 0x64

    .line 200
    .line 201
    int-to-long v6, v6

    .line 202
    mul-long v8, v8, v6

    .line 203
    .line 204
    int-to-long v5, v5

    .line 205
    div-long/2addr v8, v5

    .line 206
    invoke-virtual {p0, v8, v9}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasks(J)Z

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :catchall_3
    move-exception v4

    .line 211
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 212
    .line 213
    .line 214
    move-result-wide v8

    .line 215
    sub-long/2addr v8, v6

    .line 216
    rsub-int/lit8 v6, v5, 0x64

    .line 217
    .line 218
    int-to-long v6, v6

    .line 219
    mul-long v8, v8, v6

    .line 220
    .line 221
    int-to-long v5, v5

    .line 222
    div-long/2addr v8, v5

    .line 223
    invoke-virtual {p0, v8, v9}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasks(J)Z

    .line 224
    .line 225
    .line 226
    throw v4

    .line 227
    :cond_f
    const-wide/16 v5, 0x0

    .line 228
    .line 229
    invoke-virtual {p0, v5, v6}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->runAllTasks(J)Z

    .line 230
    .line 231
    .line 232
    :goto_5
    iget-boolean v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->allowGrowing:Z

    .line 233
    .line 234
    if-eqz v5, :cond_10

    .line 235
    .line 236
    iget-object v5, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 237
    .line 238
    invoke-virtual {v5}, Lio/netty/channel/epoll/EpollEventArray;->length()I

    .line 239
    .line 240
    .line 241
    move-result v5

    .line 242
    if-ne v4, v5, :cond_10

    .line 243
    .line 244
    iget-object v4, p0, Lio/netty/channel/epoll/EpollEventLoop;->events:Lio/netty/channel/epoll/EpollEventArray;

    .line 245
    .line 246
    invoke-virtual {v4}, Lio/netty/channel/epoll/EpollEventArray;->increase()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 247
    .line 248
    .line 249
    goto :goto_6

    .line 250
    :catchall_4
    move-exception v4

    .line 251
    invoke-virtual {p0, v4}, Lio/netty/channel/epoll/EpollEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    :cond_10
    :goto_6
    :try_start_8
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->isShuttingDown()Z

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_0

    .line 259
    .line 260
    invoke-direct {p0}, Lio/netty/channel/epoll/EpollEventLoop;->closeAll()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Lio/netty/util/concurrent/SingleThreadEventExecutor;->confirmShutdown()Z

    .line 264
    .line 265
    .line 266
    move-result v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 267
    if-eqz v4, :cond_0

    .line 268
    .line 269
    return-void

    .line 270
    :catchall_5
    move-exception v4

    .line 271
    invoke-virtual {p0, v4}, Lio/netty/channel/epoll/EpollEventLoop;->handleLoopException(Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_0
.end method

.method public setIoRatio(I)V
    .locals 3

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->ioRatio:I

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "ioRatio: "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " (expected: 0 < ioRatio <= 100)"

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method protected wakeup(Z)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->nextWakeupNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    const-wide/16 v0, -0x1

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    cmp-long p1, v2, v0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lio/netty/channel/epoll/EpollEventLoop;->eventFd:Lio/netty/channel/unix/FileDescriptor;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const-wide/16 v0, 0x1

    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Lio/netty/channel/epoll/Native;->eventFdWrite(IJ)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
