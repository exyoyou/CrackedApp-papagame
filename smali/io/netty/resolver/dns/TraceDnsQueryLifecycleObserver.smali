.class final Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/resolver/dns/DnsQueryLifecycleObserver;


# instance fields
.field private dnsServerAddress:Ljava/net/InetSocketAddress;

.field private final level:Lio/netty/util/internal/logging/InternalLogLevel;

.field private final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private final question:Lio/netty/handler/codec/dns/DnsQuestion;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/util/internal/logging/InternalLogger;Lio/netty/util/internal/logging/InternalLogLevel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "question"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lio/netty/handler/codec/dns/DnsQuestion;

    .line 11
    .line 12
    iput-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 13
    .line 14
    const-string p1, "logger"

    .line 15
    .line 16
    invoke-static {p2, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lio/netty/util/internal/logging/InternalLogger;

    .line 21
    .line 22
    iput-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 23
    .line 24
    const-string p1, "level"

    .line 25
    .line 26
    invoke-static {p3, p1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lio/netty/util/internal/logging/InternalLogLevel;

    .line 31
    .line 32
    iput-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public queryCNAMEd(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    .line 10
    .line 11
    aput-object v4, v2, v3

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    iget-object v4, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 15
    .line 16
    aput-object v4, v2, v3

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    aput-object p1, v2, v3

    .line 20
    .line 21
    const-string p1, "from {} : {} CNAME question {}"

    .line 22
    .line 23
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public queryCancelled(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 6
    .line 7
    iget-object v2, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v0, v3, v4

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iget-object v4, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 17
    .line 18
    aput-object v4, v3, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v3, v0

    .line 26
    .line 27
    const-string p1, "from {} : {} cancelled with {} queries remaining"

    .line 28
    .line 29
    invoke-interface {v1, v2, p1, v3}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 34
    .line 35
    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 36
    .line 37
    iget-object v2, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v3, "{} query never written and cancelled with {} queries remaining"

    .line 44
    .line 45
    invoke-interface {v0, v1, v3, v2, p1}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public queryFailed(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 6
    .line 7
    iget-object v2, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 8
    .line 9
    const/4 v3, 0x3

    .line 10
    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v0, v3, v4

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iget-object v4, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 17
    .line 18
    aput-object v4, v3, v0

    .line 19
    .line 20
    const/4 v0, 0x2

    .line 21
    aput-object p1, v3, v0

    .line 22
    .line 23
    const-string p1, "from {} : {} failure"

    .line 24
    .line 25
    invoke-interface {v1, v2, p1, v3}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 30
    .line 31
    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 32
    .line 33
    const-string v2, "{} query never written and failed"

    .line 34
    .line 35
    iget-object v3, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 36
    .line 37
    invoke-interface {v0, v1, v2, v3, p1}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public queryNoAnswer(Lio/netty/handler/codec/dns/DnsResponseCode;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    iget-object v4, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    .line 10
    .line 11
    aput-object v4, v2, v3

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    iget-object v4, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 15
    .line 16
    aput-object v4, v2, v3

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    aput-object p1, v2, v3

    .line 20
    .line 21
    const-string p1, "from {} : {} no answer {}"

    .line 22
    .line 23
    invoke-interface {v0, v1, p1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-object p0
.end method

.method public queryRedirected(Ljava/util/List;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 2
    .line 3
    iget-object v0, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 4
    .line 5
    iget-object v1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    .line 6
    .line 7
    iget-object v2, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->question:Lio/netty/handler/codec/dns/DnsQuestion;

    .line 8
    .line 9
    const-string v3, "from {} : {} redirected"

    .line 10
    .line 11
    invoke-interface {p1, v0, v3, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public querySucceed()V
    .locals 0

    return-void
.end method

.method public queryWritten(Ljava/net/InetSocketAddress;Lio/netty/channel/ChannelFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/netty/resolver/dns/TraceDnsQueryLifecycleObserver;->dnsServerAddress:Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    return-void
.end method
