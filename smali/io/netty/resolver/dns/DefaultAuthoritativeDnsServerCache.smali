.class public Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/resolver/dns/AuthoritativeDnsServerCache;


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final maxTtl:I

.field private final minTtl:I

.field private final resolveCache:Lio/netty/resolver/dns/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/resolver/dns/Cache<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lio/netty/resolver/dns/Cache;->MAX_SUPPORTED_TTL_SECS:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;-><init>(IILjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(IILjava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Comparator<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache$1;

    invoke-direct {v0, p0}, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache$1;-><init>(Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;)V

    iput-object v0, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    .line 4
    sget v0, Lio/netty/resolver/dns/Cache;->MAX_SUPPORTED_TTL_SECS:I

    const-string v1, "minTtl"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->minTtl:I

    const-string v1, "maxTtl"

    .line 5
    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->maxTtl:I

    if-gt p1, p2, :cond_0

    .line 6
    iput-object p3, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->comparator:Ljava/util/Comparator;

    return-void

    .line 7
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minTtl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxTtl: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (expected: 0 <= minTtl <= maxTtl)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method static synthetic access$000(Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;)Ljava/util/Comparator;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->comparator:Ljava/util/Comparator;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public cache(Ljava/lang/String;Ljava/net/InetSocketAddress;JLio/netty/channel/EventLoop;)V
    .locals 4

    .line 1
    const-string v0, "hostname"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const-string v0, "address"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const-string v0, "loop"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x7

    .line 21
    if-lt v0, v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    .line 31
    .line 32
    iget v1, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->minTtl:I

    .line 33
    .line 34
    iget v2, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->maxTtl:I

    .line 35
    .line 36
    int-to-long v2, v2

    .line 37
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 38
    .line 39
    .line 40
    move-result-wide p3

    .line 41
    long-to-int p4, p3

    .line 42
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    invoke-virtual {v0, p1, p2, p3, p5}, Lio/netty/resolver/dns/Cache;->cache(Ljava/lang/String;Ljava/lang/Object;ILio/netty/channel/EventLoop;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    invoke-virtual {v0}, Lio/netty/resolver/dns/Cache;->clear()V

    return-void
.end method

.method public clear(Ljava/lang/String;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    const-string v1, "hostname"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lio/netty/resolver/dns/Cache;->clear(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 2

    .line 1
    const-string v0, "hostname"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lio/netty/resolver/dns/Cache;->get(Ljava/lang/String;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lio/netty/resolver/dns/SequentialDnsServerAddressStream;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, p1, v1}, Lio/netty/resolver/dns/SequentialDnsServerAddressStream;-><init>(Ljava/util/List;I)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DefaultAuthoritativeDnsServerCache(minTtl="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->minTtl:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", maxTtl="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->maxTtl:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", cached nameservers="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/netty/resolver/dns/DefaultAuthoritativeDnsServerCache;->resolveCache:Lio/netty/resolver/dns/Cache;

    .line 32
    .line 33
    invoke-virtual {v1}, Lio/netty/resolver/dns/Cache;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x29

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
