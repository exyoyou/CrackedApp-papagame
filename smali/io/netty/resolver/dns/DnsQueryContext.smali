.class abstract Lio/netty/resolver/dns/DnsQueryContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Lio/netty/channel/AddressedEnvelope<",
        "Lio/netty/handler/codec/dns/DnsResponse;",
        "Ljava/net/InetSocketAddress;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final additionals:[Lio/netty/handler/codec/dns/DnsRecord;

.field private final id:I

.field private final nameServerAddr:Ljava/net/InetSocketAddress;

.field private final optResource:Lio/netty/handler/codec/dns/DnsRecord;

.field private final parent:Lio/netty/resolver/dns/DnsNameResolver;

.field private final promise:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;"
        }
    .end annotation
.end field

.field private final question:Lio/netty/handler/codec/dns/DnsQuestion;

.field private final recursionDesired:Z

.field private volatile timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/resolver/dns/DnsQueryContext;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/netty/resolver/dns/DnsQueryContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/dns/DnsNameResolver;",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/util/concurrent/Promise<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "parent"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lio/netty/resolver/dns/DnsNameResolver;

    .line 11
    .line 12
    iput-object v0, p0, Lio/netty/resolver/dns/DnsQueryContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 13
    .line 14
    const-string v0, "nameServerAddr"

    .line 15
    .line 16
    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    check-cast p2, Ljava/net/InetSocketAddress;

    .line 21
    .line 22
    iput-object p2, p0, Lio/netty/resolver/dns/DnsQueryContext;->nameServerAddr:Ljava/net/InetSocketAddress;

    .line 23
    .line 24
    const-string p2, "question"

    .line 25
    .line 26
    invoke-static {p3, p2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    check-cast p2, Lio/netty/handler/codec/dns/DnsQuestion;

    .line 31
    .line 32
    iput-object p2, p0, Lio/netty/resolver/dns/DnsQueryContext;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 33
    .line 34
    const-string p2, "additionals"

    .line 35
    .line 36
    invoke-static {p4, p2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, [Lio/netty/handler/codec/dns/DnsRecord;

    .line 41
    .line 42
    iput-object p2, p0, Lio/netty/resolver/dns/DnsQueryContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    .line 43
    .line 44
    const-string p2, "promise"

    .line 45
    .line 46
    invoke-static {p5, p2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lio/netty/util/concurrent/Promise;

    .line 51
    .line 52
    iput-object p2, p0, Lio/netty/resolver/dns/DnsQueryContext;->promise:Lio/netty/util/concurrent/Promise;

    .line 53
    .line 54
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->isRecursionDesired()Z

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    iput-boolean p2, p0, Lio/netty/resolver/dns/DnsQueryContext;->recursionDesired:Z

    .line 59
    .line 60
    iget-object p2, p1, Lio/netty/resolver/dns/DnsNameResolver;->queryContextManager:Lio/netty/resolver/dns/DnsQueryContextManager;

    .line 61
    .line 62
    invoke-virtual {p2, p0}, Lio/netty/resolver/dns/DnsQueryContextManager;->add(Lio/netty/resolver/dns/DnsQueryContext;)I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    iput p2, p0, Lio/netty/resolver/dns/DnsQueryContext;->id:I

    .line 67
    .line 68
    invoke-interface {p5, p0}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->isOptResourceEnabled()Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-eqz p2, :cond_0

    .line 76
    .line 77
    new-instance p2, Lio/netty/resolver/dns/DnsQueryContext$1;

    .line 78
    .line 79
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->maxPayloadSize()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    const/4 p3, 0x0

    .line 84
    invoke-direct {p2, p0, p1, p3, p3}, Lio/netty/resolver/dns/DnsQueryContext$1;-><init>(Lio/netty/resolver/dns/DnsQueryContext;III)V

    .line 85
    .line 86
    .line 87
    iput-object p2, p0, Lio/netty/resolver/dns/DnsQueryContext;->optResource:Lio/netty/handler/codec/dns/DnsRecord;

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lio/netty/resolver/dns/DnsQueryContext;->optResource:Lio/netty/handler/codec/dns/DnsRecord;

    .line 92
    .line 93
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lio/netty/resolver/dns/DnsQueryContext;Lio/netty/handler/codec/dns/DnsQuery;ZLio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/netty/resolver/dns/DnsQueryContext;->writeQuery(Lio/netty/handler/codec/dns/DnsQuery;ZLio/netty/channel/ChannelPromise;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lio/netty/resolver/dns/DnsQueryContext;)Lio/netty/util/concurrent/Promise;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/resolver/dns/DnsQueryContext;->promise:Lio/netty/util/concurrent/Promise;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lio/netty/resolver/dns/DnsQueryContext;Lio/netty/channel/ChannelFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/DnsQueryContext;->onQueryWriteCompletion(Lio/netty/channel/ChannelFuture;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private onQueryWriteCompletion(Lio/netty/channel/ChannelFuture;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "failed to send a query via "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->protocol()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v0, p1, v1}, Lio/netty/resolver/dns/DnsQueryContext;->tryFailure(Ljava/lang/String;Ljava/lang/Throwable;Z)Z

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object p1, p0, Lio/netty/resolver/dns/DnsQueryContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 38
    .line 39
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->queryTimeoutMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    cmp-long p1, v0, v2

    .line 46
    .line 47
    if-lez p1, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lio/netty/resolver/dns/DnsQueryContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 50
    .line 51
    iget-object p1, p1, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    .line 52
    .line 53
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance v2, Lio/netty/resolver/dns/DnsQueryContext$4;

    .line 58
    .line 59
    invoke-direct {v2, p0, v0, v1}, Lio/netty/resolver/dns/DnsQueryContext$4;-><init>(Lio/netty/resolver/dns/DnsQueryContext;J)V

    .line 60
    .line 61
    .line 62
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 63
    .line 64
    invoke-interface {p1, v2, v0, v1, v3}, Lio/netty/util/concurrent/EventExecutorGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lio/netty/resolver/dns/DnsQueryContext;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 69
    .line 70
    :cond_1
    return-void
.end method

.method private sendQuery(Lio/netty/handler/codec/dns/DnsQuery;ZLio/netty/channel/ChannelPromise;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsQueryContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 2
    .line 3
    iget-object v0, v0, Lio/netty/resolver/dns/DnsNameResolver;->channelFuture:Lio/netty/util/concurrent/Future;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lio/netty/resolver/dns/DnsQueryContext;->writeQuery(Lio/netty/handler/codec/dns/DnsQuery;ZLio/netty/channel/ChannelPromise;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Lio/netty/resolver/dns/DnsQueryContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 16
    .line 17
    iget-object p2, p2, Lio/netty/resolver/dns/DnsNameResolver;->channelFuture:Lio/netty/util/concurrent/Future;

    .line 18
    .line 19
    new-instance v0, Lio/netty/resolver/dns/DnsQueryContext$2;

    .line 20
    .line 21
    invoke-direct {v0, p0, p1, p3}, Lio/netty/resolver/dns/DnsQueryContext$2;-><init>(Lio/netty/resolver/dns/DnsQueryContext;Lio/netty/handler/codec/dns/DnsQuery;Lio/netty/channel/ChannelPromise;)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2, v0}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private trySuccess(Lio/netty/channel/AddressedEnvelope;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/AddressedEnvelope<",
            "+",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsQueryContext;->promise:Lio/netty/util/concurrent/Promise;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method private writeQuery(Lio/netty/handler/codec/dns/DnsQuery;ZLio/netty/channel/ChannelPromise;)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->channel()Lio/netty/channel/Channel;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2, p1, p3}, Lio/netty/channel/ChannelOutboundInvoker;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->channel()Lio/netty/channel/Channel;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2, p1, p3}, Lio/netty/channel/ChannelOutboundInvoker;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/DnsQueryContext;->onQueryWriteCompletion(Lio/netty/channel/ChannelFuture;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance p2, Lio/netty/resolver/dns/DnsQueryContext$3;

    .line 31
    .line 32
    invoke-direct {p2, p0, p1}, Lio/netty/resolver/dns/DnsQueryContext$3;-><init>(Lio/netty/resolver/dns/DnsQueryContext;Lio/netty/channel/ChannelFuture;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 36
    .line 37
    .line 38
    :goto_1
    return-void
.end method


# virtual methods
.method protected abstract channel()Lio/netty/channel/Channel;
.end method

.method finish(Lio/netty/channel/AddressedEnvelope;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/AddressedEnvelope<",
            "+",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lio/netty/handler/codec/dns/DnsResponse;

    .line 6
    .line 7
    sget-object v1, Lio/netty/handler/codec/dns/DnsSection;->QUESTION:Lio/netty/handler/codec/dns/DnsSection;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-eq v2, v3, :cond_0

    .line 15
    .line 16
    sget-object v0, Lio/netty/resolver/dns/DnsQueryContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 17
    .line 18
    const-string v1, "Received a DNS response with invalid number of questions: {}"

    .line 19
    .line 20
    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->question()Lio/netty/handler/codec/dns/DnsQuestion;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v0, v1}, Lio/netty/handler/codec/dns/DnsMessage;->recordAt(Lio/netty/handler/codec/dns/DnsSection;)Lio/netty/handler/codec/dns/DnsRecord;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lio/netty/resolver/dns/DnsQueryContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 39
    .line 40
    const-string v1, "Received a mismatching DNS response: {}"

    .line 41
    .line 42
    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/DnsQueryContext;->trySuccess(Lio/netty/channel/AddressedEnvelope;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    :goto_0
    invoke-interface {p1}, Lio/netty/util/ReferenceCounted;->release()Z

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method nameServerAddr()Ljava/net/InetSocketAddress;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsQueryContext;->nameServerAddr:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract newQuery(I)Lio/netty/handler/codec/dns/DnsQuery;
.end method

.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/netty/resolver/dns/DnsQueryContext;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/netty/resolver/dns/DnsQueryContext;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lio/netty/resolver/dns/DnsQueryContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 13
    .line 14
    iget-object p1, p1, Lio/netty/resolver/dns/DnsNameResolver;->queryContextManager:Lio/netty/resolver/dns/DnsQueryContextManager;

    .line 15
    .line 16
    iget-object v0, p0, Lio/netty/resolver/dns/DnsQueryContext;->nameServerAddr:Ljava/net/InetSocketAddress;

    .line 17
    .line 18
    iget v1, p0, Lio/netty/resolver/dns/DnsQueryContext;->id:I

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lio/netty/resolver/dns/DnsQueryContextManager;->remove(Ljava/net/InetSocketAddress;I)Lio/netty/resolver/dns/DnsQueryContext;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method parent()Lio/netty/resolver/dns/DnsNameResolver;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsQueryContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract protocol()Ljava/lang/String;
.end method

.method query(ZLio/netty/channel/ChannelPromise;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->question()Lio/netty/handler/codec/dns/DnsQuestion;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->nameServerAddr()Ljava/net/InetSocketAddress;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lio/netty/resolver/dns/DnsQueryContext;->id:I

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Lio/netty/resolver/dns/DnsQueryContext;->newQuery(I)Lio/netty/handler/codec/dns/DnsQuery;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-boolean v3, p0, Lio/netty/resolver/dns/DnsQueryContext;->recursionDesired:Z

    .line 16
    .line 17
    invoke-interface {v2, v3}, Lio/netty/handler/codec/dns/DnsQuery;->setRecursionDesired(Z)Lio/netty/handler/codec/dns/DnsQuery;

    .line 18
    .line 19
    .line 20
    sget-object v3, Lio/netty/handler/codec/dns/DnsSection;->QUESTION:Lio/netty/handler/codec/dns/DnsSection;

    .line 21
    .line 22
    invoke-interface {v2, v3, v0}, Lio/netty/handler/codec/dns/DnsQuery;->addRecord(Lio/netty/handler/codec/dns/DnsSection;Lio/netty/handler/codec/dns/DnsRecord;)Lio/netty/handler/codec/dns/DnsQuery;

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lio/netty/resolver/dns/DnsQueryContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    .line 26
    .line 27
    array-length v4, v3

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    :goto_0
    if-ge v6, v4, :cond_0

    .line 31
    .line 32
    aget-object v7, v3, v6

    .line 33
    .line 34
    sget-object v8, Lio/netty/handler/codec/dns/DnsSection;->ADDITIONAL:Lio/netty/handler/codec/dns/DnsSection;

    .line 35
    .line 36
    invoke-interface {v2, v8, v7}, Lio/netty/handler/codec/dns/DnsQuery;->addRecord(Lio/netty/handler/codec/dns/DnsSection;Lio/netty/handler/codec/dns/DnsRecord;)Lio/netty/handler/codec/dns/DnsQuery;

    .line 37
    .line 38
    .line 39
    add-int/lit8 v6, v6, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v3, p0, Lio/netty/resolver/dns/DnsQueryContext;->optResource:Lio/netty/handler/codec/dns/DnsRecord;

    .line 43
    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    sget-object v4, Lio/netty/handler/codec/dns/DnsSection;->ADDITIONAL:Lio/netty/handler/codec/dns/DnsSection;

    .line 47
    .line 48
    invoke-interface {v2, v4, v3}, Lio/netty/handler/codec/dns/DnsQuery;->addRecord(Lio/netty/handler/codec/dns/DnsSection;Lio/netty/handler/codec/dns/DnsRecord;)Lio/netty/handler/codec/dns/DnsQuery;

    .line 49
    .line 50
    .line 51
    :cond_1
    sget-object v3, Lio/netty/resolver/dns/DnsQueryContext;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 52
    .line 53
    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    const/4 v4, 0x5

    .line 60
    new-array v4, v4, [Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->channel()Lio/netty/channel/Channel;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    aput-object v6, v4, v5

    .line 67
    .line 68
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->protocol()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    const/4 v6, 0x1

    .line 73
    aput-object v5, v4, v6

    .line 74
    .line 75
    iget v5, p0, Lio/netty/resolver/dns/DnsQueryContext;->id:I

    .line 76
    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    const/4 v6, 0x2

    .line 82
    aput-object v5, v4, v6

    .line 83
    .line 84
    const/4 v5, 0x3

    .line 85
    aput-object v1, v4, v5

    .line 86
    .line 87
    const/4 v1, 0x4

    .line 88
    aput-object v0, v4, v1

    .line 89
    .line 90
    const-string v0, "{} WRITE: {}, [{}: {}], {}"

    .line 91
    .line 92
    invoke-interface {v3, v0, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-direct {p0, v2, p1, p2}, Lio/netty/resolver/dns/DnsQueryContext;->sendQuery(Lio/netty/handler/codec/dns/DnsQuery;ZLio/netty/channel/ChannelPromise;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method question()Lio/netty/handler/codec/dns/DnsQuestion;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsQueryContext;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 2
    .line 3
    return-object v0
.end method

.method tryFailure(Ljava/lang/String;Ljava/lang/Throwable;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsQueryContext;->promise:Lio/netty/util/concurrent/Promise;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->nameServerAddr()Ljava/net/InetSocketAddress;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/lit8 v2, v2, 0x40

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x5b

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "] "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " (no stack trace available)"

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    new-instance p1, Lio/netty/resolver/dns/DnsNameResolverTimeoutException;

    .line 50
    .line 51
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->question()Lio/netty/handler/codec/dns/DnsQuestion;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    invoke-direct {p1, v0, p2, p3}, Lio/netty/resolver/dns/DnsNameResolverTimeoutException;-><init>(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    new-instance p1, Lio/netty/resolver/dns/DnsNameResolverException;

    .line 64
    .line 65
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsQueryContext;->question()Lio/netty/handler/codec/dns/DnsQuestion;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {p1, v0, p3, v1, p2}, Lio/netty/resolver/dns/DnsNameResolverException;-><init>(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object p2, p0, Lio/netty/resolver/dns/DnsQueryContext;->promise:Lio/netty/util/concurrent/Promise;

    .line 77
    .line 78
    invoke-interface {p2, p1}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    return p1
.end method
