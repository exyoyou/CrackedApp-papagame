.class public final Lio/netty/handler/codec/http2/UniformStreamByteDistributor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/StreamByteDistributor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
    }
.end annotation


# instance fields
.field private minAllocationChunk:I

.field private final queue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;",
            ">;"
        }
    .end annotation
.end field

.field private final stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

.field private totalStreamableBytes:J


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    .line 11
    .line 12
    const/16 v0, 0x400

    .line 13
    .line 14
    iput v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->minAllocationChunk:I

    .line 15
    .line 16
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 21
    .line 22
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Connection;->connectionStream()Lio/netty/handler/codec/http2/Http2Stream;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    .line 27
    .line 28
    invoke-direct {v2, p0, v1}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;-><init>(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v1, v0, v2}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$1;-><init>(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$202(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)Ljava/util/Deque;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    .line 2
    .line 3
    return-object p0
.end method

.method private state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
    .locals 1

    .line 1
    const-string v0, "stream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/netty/handler/codec/http2/Http2Stream;

    .line 8
    .line 9
    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->stateKey:Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Stream;->getProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    .line 16
    .line 17
    return-object p1
.end method


# virtual methods
.method public distribute(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-wide p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    .line 14
    .line 15
    cmp-long v0, p1, v1

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    :goto_0
    return v3

    .line 22
    :cond_1
    iget v5, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->minAllocationChunk:I

    .line 23
    .line 24
    div-int v0, p1, v0

    .line 25
    .line 26
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v5, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    .line 31
    .line 32
    invoke-interface {v5}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    .line 37
    .line 38
    :cond_2
    iput-boolean v4, v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    .line 39
    .line 40
    iget-boolean v6, v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->windowNegative:Z

    .line 41
    .line 42
    if-eqz v6, :cond_3

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_3
    if-nez p1, :cond_4

    .line 46
    .line 47
    iget v6, v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->streamableBytes:I

    .line 48
    .line 49
    if-lez v6, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    .line 52
    .line 53
    invoke-interface {p1, v5}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-boolean v3, v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    iget v6, v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->streamableBytes:I

    .line 60
    .line 61
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    sub-int/2addr p1, v6

    .line 70
    invoke-virtual {v5, v6, p2}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->write(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;)V

    .line 71
    .line 72
    .line 73
    :goto_1
    iget-object v5, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->queue:Ljava/util/Deque;

    .line 74
    .line 75
    invoke-interface {v5}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    .line 80
    .line 81
    if-nez v5, :cond_2

    .line 82
    .line 83
    :goto_2
    iget-wide p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->totalStreamableBytes:J

    .line 84
    .line 85
    cmp-long v0, p1, v1

    .line 86
    .line 87
    if-lez v0, :cond_5

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    const/4 v3, 0x0

    .line 91
    :goto_3
    return v3
.end method

.method public minAllocationChunk(I)V
    .locals 1

    .line 1
    const-string v0, "minAllocationChunk"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    iput p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->minAllocationChunk:I

    .line 7
    .line 8
    return-void
.end method

.method public updateDependencyTree(IISZ)V
    .locals 0

    return-void
.end method

.method public updateStreamableBytes(Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->stream()Lio/netty/handler/codec/http2/Http2Stream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->state(Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2CodecUtil;->streamableBytes(Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->hasFrame()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-interface {p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$StreamState;->windowSize()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, v1, v2, p1}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->updateStreamableBytes(IZI)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
