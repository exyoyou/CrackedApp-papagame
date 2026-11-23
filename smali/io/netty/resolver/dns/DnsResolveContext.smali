.class abstract Lio/netty/resolver/dns/DnsResolveContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServer;,
        Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;,
        Lio/netty/resolver/dns/DnsResolveContext$CombinedDnsServerAddressStream;,
        Lio/netty/resolver/dns/DnsResolveContext$DnsAddressStreamList;,
        Lio/netty/resolver/dns/DnsResolveContext$SearchDomainUnknownHostException;,
        Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CNAME_NOT_FOUND_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

.field private static final NAME_SERVERS_EXHAUSTED_EXCEPTION:Ljava/lang/RuntimeException;

.field private static final NO_MATCHING_RECORD_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

.field private static final NXDOMAIN_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

.field private static final UNRECOGNIZED_TYPE_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;


# instance fields
.field final additionals:[Lio/netty/handler/codec/dns/DnsRecord;

.field private allowedQueries:I

.field private completeEarly:Z

.field private final dnsClass:I

.field private final expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

.field private finalResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final hostname:Ljava/lang/String;

.field private final maxAllowedQueries:I

.field private final nameServerAddrs:Lio/netty/resolver/dns/DnsServerAddressStream;

.field final parent:Lio/netty/resolver/dns/DnsNameResolver;

.field private final queriesInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private triedCNAME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "No answer found and NXDOMAIN response code returned"

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;->newStatic(Ljava/lang/String;)Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lio/netty/resolver/dns/DnsResolveContext;

    .line 8
    .line 9
    const-string v2, "onResponse(..)"

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    sput-object v0, Lio/netty/resolver/dns/DnsResolveContext;->NXDOMAIN_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 18
    .line 19
    const-string v0, "No matching CNAME record found"

    .line 20
    .line 21
    invoke-static {v0}, Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;->newStatic(Ljava/lang/String;)Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v3, "onResponseCNAME(..)"

    .line 26
    .line 27
    invoke-static {v0, v1, v3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/RuntimeException;

    .line 32
    .line 33
    sput-object v0, Lio/netty/resolver/dns/DnsResolveContext;->CNAME_NOT_FOUND_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 34
    .line 35
    const-string v0, "No matching record type found"

    .line 36
    .line 37
    invoke-static {v0}, Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;->newStatic(Ljava/lang/String;)Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v3, "onResponseAorAAAA(..)"

    .line 42
    .line 43
    invoke-static {v0, v1, v3}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/RuntimeException;

    .line 48
    .line 49
    sput-object v0, Lio/netty/resolver/dns/DnsResolveContext;->NO_MATCHING_RECORD_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    .line 52
    .line 53
    const-string v3, "Response type was unrecognized"

    .line 54
    .line 55
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Ljava/lang/RuntimeException;

    .line 63
    .line 64
    sput-object v0, Lio/netty/resolver/dns/DnsResolveContext;->UNRECOGNIZED_TYPE_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 65
    .line 66
    const-string v0, "No name servers returned an answer"

    .line 67
    .line 68
    invoke-static {v0}, Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;->newStatic(Ljava/lang/String;)Lio/netty/resolver/dns/DnsResolveContext$DnsResolveContextException;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v2, "tryToFinishResolve(..)"

    .line 73
    .line 74
    invoke-static {v0, v1, v2}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/RuntimeException;

    .line 79
    .line 80
    sput-object v0, Lio/netty/resolver/dns/DnsResolveContext;->NAME_SERVERS_EXHAUSTED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 81
    .line 82
    return-void
.end method

.method constructor <init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;I[Lio/netty/handler/codec/dns/DnsRecordType;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    .line 14
    .line 15
    iput-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 16
    .line 17
    iput-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 18
    .line 19
    iput p3, p0, Lio/netty/resolver/dns/DnsResolveContext;->dnsClass:I

    .line 20
    .line 21
    iput-object p4, p0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 22
    .line 23
    iput-object p5, p0, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    .line 24
    .line 25
    const-string p2, "nameServerAddrs"

    .line 26
    .line 27
    invoke-static {p6, p2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 32
    .line 33
    iput-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->nameServerAddrs:Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 34
    .line 35
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->maxQueriesPerResolve()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->maxAllowedQueries:I

    .line 40
    .line 41
    iput p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    .line 42
    .line 43
    return-void
.end method

.method static synthetic access$000(Lio/netty/resolver/dns/DnsResolveContext;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lio/netty/resolver/dns/DnsResolveContext;Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/netty/resolver/dns/DnsResolveContext;->internalResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lio/netty/resolver/dns/DnsResolveContext;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lio/netty/resolver/dns/DnsResolveContext;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$400(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/netty/resolver/dns/DnsResolveContext;->onResponse(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/DnsResolveContext;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$600(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lio/netty/resolver/dns/DnsResolveContext;->tryToFinishResolve(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static buildAliasMap(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/resolver/dns/DnsCnameCache;Lio/netty/channel/EventLoop;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Lio/netty/resolver/dns/DnsCnameCache;",
            "Lio/netty/channel/EventLoop;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_5

    .line 10
    .line 11
    sget-object v3, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    .line 12
    .line 13
    invoke-interface {p0, v3, v2}, Lio/netty/handler/codec/dns/DnsMessage;->recordAt(Lio/netty/handler/codec/dns/DnsSection;I)Lio/netty/handler/codec/dns/DnsRecord;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    sget-object v5, Lio/netty/handler/codec/dns/DnsRecordType;->CNAME:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 22
    .line 23
    if-eq v4, v5, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    instance-of v4, v3, Lio/netty/handler/codec/dns/DnsRawRecord;

    .line 27
    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v4, v3

    .line 32
    check-cast v4, Lio/netty/buffer/ByteBufHolder;

    .line 33
    .line 34
    invoke-interface {v4}, Lio/netty/buffer/ByteBufHolder;->content()Lio/netty/buffer/ByteBuf;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {v4}, Lio/netty/resolver/dns/DnsResolveContext;->decodeDomainName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    if-nez v4, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    if-nez v1, :cond_3

    .line 46
    .line 47
    new-instance v1, Ljava/util/HashMap;

    .line 48
    .line 49
    const/16 v5, 0x8

    .line 50
    .line 51
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-interface {v3}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 63
    .line 64
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v5}, Lio/netty/resolver/dns/DnsResolveContext;->hostnameWithDot(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-static {v4}, Lio/netty/resolver/dns/DnsResolveContext;->hostnameWithDot(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_4

    .line 85
    .line 86
    invoke-interface {v3}, Lio/netty/handler/codec/dns/DnsRecord;->timeToLive()J

    .line 87
    .line 88
    .line 89
    move-result-wide v9

    .line 90
    move-object v6, p1

    .line 91
    move-object v11, p2

    .line 92
    invoke-interface/range {v6 .. v11}, Lio/netty/resolver/dns/DnsCnameCache;->cache(Ljava/lang/String;Ljava/lang/String;JLio/netty/channel/EventLoop;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    if-eqz v1, :cond_6

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    :goto_2
    return-object v1
.end method

.method static decodeDomainName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Lio/netty/handler/codec/dns/DefaultDnsRecordDecoder;->decodeName(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catch Lio/netty/handler/codec/CorruptedFrameException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 14
    .line 15
    .line 16
    throw v0

    .line 17
    :catch_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method private static extractAuthoritativeNameServers(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsResponse;)Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;
    .locals 4

    .line 1
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->AUTHORITY:Lio/netty/handler/codec/dns/DnsSection;

    .line 2
    .line 3
    invoke-interface {p1, v0}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance v2, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;

    .line 12
    .line 13
    invoke-direct {v2, p0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    :goto_0
    if-ge p0, v0, :cond_1

    .line 18
    .line 19
    sget-object v3, Lio/netty/handler/codec/dns/DnsSection;->AUTHORITY:Lio/netty/handler/codec/dns/DnsSection;

    .line 20
    .line 21
    invoke-interface {p1, v3, p0}, Lio/netty/handler/codec/dns/DnsMessage;->recordAt(Lio/netty/handler/codec/dns/DnsSection;I)Lio/netty/handler/codec/dns/DnsRecord;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v2, v3}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->add(Lio/netty/handler/codec/dns/DnsRecord;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 p0, p0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v2}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    move-object v1, v2

    .line 39
    :goto_1
    return-object v1
.end method

.method private finishResolve(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->completeEarly:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lio/netty/util/concurrent/Future;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    iget-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    .line 50
    .line 51
    invoke-virtual {p0, p2}, Lio/netty/resolver/dns/DnsResolveContext;->filterResults(Ljava/util/List;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p1, p2}, Lio/netty/resolver/dns/DnsNameResolver;->trySuccess(Lio/netty/util/concurrent/Promise;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void

    .line 59
    :cond_2
    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->maxAllowedQueries:I

    .line 60
    .line 61
    iget v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    .line 62
    .line 63
    sub-int/2addr v0, v1

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const/16 v2, 0x40

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 69
    .line 70
    .line 71
    const-string v2, "failed to resolve \'"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 v2, 0x27

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    if-le v0, v2, :cond_4

    .line 88
    .line 89
    iget v2, p0, Lio/netty/resolver/dns/DnsResolveContext;->maxAllowedQueries:I

    .line 90
    .line 91
    if-ge v0, v2, :cond_3

    .line 92
    .line 93
    const-string v2, " after "

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, " queries "

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    const-string v0, ". Exceeded max queries per resolve "

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->maxAllowedQueries:I

    .line 113
    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const/16 v0, 0x20

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_1
    new-instance v0, Ljava/net/UnknownHostException;

    .line 123
    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    if-nez p2, :cond_5

    .line 132
    .line 133
    iget-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    .line 136
    .line 137
    invoke-virtual {p0, p2, v1, v0}, Lio/netty/resolver/dns/DnsResolveContext;->cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Ljava/net/UnknownHostException;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 142
    .line 143
    .line 144
    :goto_2
    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method private followCname(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/String;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->cnameCache()Lio/netty/resolver/dns/DnsCnameCache;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {p2}, Lio/netty/resolver/dns/DnsResolveContext;->hostnameWithDot(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Lio/netty/resolver/dns/DnsCnameCache;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashSet;

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    :goto_1
    invoke-direct {p0, p2}, Lio/netty/resolver/dns/DnsResolveContext;->getNameServers(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    :try_start_0
    new-instance v6, Lio/netty/handler/codec/dns/DefaultDnsQuestion;

    .line 36
    .line 37
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->dnsClass:I

    .line 42
    .line 43
    invoke-direct {v6, p2, p1, v0}, Lio/netty/handler/codec/dns/DefaultDnsQuestion;-><init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-interface {p3, v6}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCNAMEd(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    const/4 v8, 0x1

    .line 52
    const/4 v10, 0x0

    .line 53
    move-object v3, p0

    .line 54
    move-object v9, p4

    .line 55
    invoke-direct/range {v3 .. v10}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    invoke-interface {p3, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    move-object p2, v1

    .line 68
    goto :goto_0
.end method

.method private getNameServers(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/DnsResolveContext;->getNameServersFromCache(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->nameServerAddrs:Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 8
    .line 9
    invoke-interface {p1}, Lio/netty/resolver/dns/DnsServerAddressStream;->duplicate()Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    return-object p1
.end method

.method private getNameServersFromCache(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v2, 0x2e

    .line 16
    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "."

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    add-int/lit8 v3, v3, -0x1

    .line 45
    .line 46
    if-ne v0, v3, :cond_2

    .line 47
    .line 48
    return-object v1

    .line 49
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-lez v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    add-int/lit8 v3, v3, -0x1

    .line 66
    .line 67
    if-ne v0, v3, :cond_3

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v3, p1}, Lio/netty/resolver/dns/AuthoritativeDnsServerCache;->get(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_2

    .line 79
    .line 80
    return-object v3

    .line 81
    :cond_4
    :goto_0
    return-object v1
.end method

.method private handleRedirect(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lio/netty/handler/codec/dns/DnsResponse;

    .line 6
    .line 7
    sget-object v0, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    .line 8
    .line 9
    invoke-interface {p2, v0}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_4

    .line 15
    .line 16
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0, p2}, Lio/netty/resolver/dns/DnsResolveContext;->extractAuthoritativeNameServers(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsResponse;)Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_4

    .line 25
    .line 26
    sget-object v2, Lio/netty/handler/codec/dns/DnsSection;->ADDITIONAL:Lio/netty/handler/codec/dns/DnsSection;

    .line 27
    .line 28
    invoke-interface {p2, v2}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x0

    .line 37
    :goto_0
    if-ge v4, v2, :cond_3

    .line 38
    .line 39
    sget-object v5, Lio/netty/handler/codec/dns/DnsSection;->ADDITIONAL:Lio/netty/handler/codec/dns/DnsSection;

    .line 40
    .line 41
    invoke-interface {p2, v5, v4}, Lio/netty/handler/codec/dns/DnsMessage;->recordAt(Lio/netty/handler/codec/dns/DnsSection;I)Lio/netty/handler/codec/dns/DnsRecord;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-interface {v5}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    sget-object v7, Lio/netty/handler/codec/dns/DnsRecordType;->A:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 50
    .line 51
    if-ne v6, v7, :cond_0

    .line 52
    .line 53
    iget-object v6, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 54
    .line 55
    invoke-virtual {v6}, Lio/netty/resolver/dns/DnsNameResolver;->supportsARecords()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    :cond_0
    invoke-interface {v5}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    sget-object v7, Lio/netty/handler/codec/dns/DnsRecordType;->AAAA:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 66
    .line 67
    if-ne v6, v7, :cond_1

    .line 68
    .line 69
    iget-object v6, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 70
    .line 71
    invoke-virtual {v6}, Lio/netty/resolver/dns/DnsNameResolver;->supportsAAAARecords()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_1

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    iget-object v6, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 79
    .line 80
    invoke-virtual {v0, v6, v5, v3}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->handleWithAdditional(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iget-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 87
    .line 88
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->resolveCache()Lio/netty/resolver/dns/DnsCache;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v0, p2, v2, v3}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->handleWithoutAdditionals(Lio/netty/resolver/dns/DnsNameResolver;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsResolveContext$AuthoritativeNameServerList;->addressList()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 100
    .line 101
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v0, v2, p2}, Lio/netty/resolver/dns/DnsNameResolver;->newRedirectDnsServerStream(Ljava/lang/String;Ljava/util/List;)Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eqz v4, :cond_4

    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    new-instance p2, Lio/netty/resolver/dns/DnsResolveContext$DnsAddressStreamList;

    .line 113
    .line 114
    invoke-direct {p2, v4}, Lio/netty/resolver/dns/DnsResolveContext$DnsAddressStreamList;-><init>(Lio/netty/resolver/dns/DnsServerAddressStream;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p3, p2}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryRedirected(Ljava/util/List;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    const/4 v8, 0x1

    .line 122
    const/4 v10, 0x0

    .line 123
    move-object v3, p0

    .line 124
    move-object v6, p1

    .line 125
    move-object v9, p4

    .line 126
    invoke-direct/range {v3 .. v10}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    const/4 p1, 0x1

    .line 130
    return p1

    .line 131
    :cond_4
    return v1
.end method

.method private hasNDots()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    :goto_0
    if-ltz v0, :cond_1

    .line 12
    .line 13
    iget-object v4, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/16 v5, 0x2e

    .line 20
    .line 21
    if-ne v4, v5, :cond_0

    .line 22
    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 24
    .line 25
    iget-object v4, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 26
    .line 27
    invoke-virtual {v4}, Lio/netty/resolver/dns/DnsNameResolver;->ndots()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-lt v3, v4, :cond_0

    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    return v2
.end method

.method private static hostnameWithDot(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2e

    .line 2
    .line 3
    invoke-static {p0, v0}, Lio/netty/util/internal/StringUtil;->endsWith(Ljava/lang/CharSequence;C)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method private internalResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->cnameCache()Lio/netty/resolver/dns/DnsCnameCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lio/netty/resolver/dns/DnsResolveContext;->hostnameWithDot(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lio/netty/resolver/dns/DnsCnameCache;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/DnsResolveContext;->getNameServers(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    add-int/lit8 v7, v0, -0x1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    :goto_1
    if-ge v8, v7, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 29
    .line 30
    aget-object v2, v0, v8

    .line 31
    .line 32
    invoke-interface {v6}, Lio/netty/resolver/dns/DnsServerAddressStream;->duplicate()Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const/4 v4, 0x0

    .line 37
    move-object v0, p0

    .line 38
    move-object v1, p1

    .line 39
    move-object v5, p2

    .line 40
    invoke-direct/range {v0 .. v5}, Lio/netty/resolver/dns/DnsResolveContext;->query(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;Lio/netty/resolver/dns/DnsServerAddressStream;ZLio/netty/util/concurrent/Promise;)Z

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 47
    .line 48
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->flushQueries()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 56
    .line 57
    aget-object v2, v0, v7

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    move-object v0, p0

    .line 61
    move-object v1, p1

    .line 62
    move-object v3, v6

    .line 63
    move-object v5, p2

    .line 64
    invoke-direct/range {v0 .. v5}, Lio/netty/resolver/dns/DnsResolveContext;->query(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;Lio/netty/resolver/dns/DnsServerAddressStream;ZLio/netty/util/concurrent/Promise;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 68
    .line 69
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsNameResolver;->flushQueries()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    iget-object p2, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 75
    .line 76
    invoke-virtual {p2}, Lio/netty/resolver/dns/DnsNameResolver;->flushQueries()V

    .line 77
    .line 78
    .line 79
    throw p1

    .line 80
    :cond_2
    move-object p1, v0

    .line 81
    goto :goto_0
.end method

.method private newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->dnsQueryLifecycleObserverFactory()Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserverFactory;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private onExpectedResponse(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-interface/range {p2 .. p2}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    check-cast v1, Lio/netty/handler/codec/dns/DnsResponse;

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->cnameCache()Lio/netty/resolver/dns/DnsCnameCache;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-object v3, v0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 13
    .line 14
    invoke-virtual {v3}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v1, v2, v3}, Lio/netty/resolver/dns/DnsResolveContext;->buildAliasMap(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/resolver/dns/DnsCnameCache;Lio/netty/channel/EventLoop;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget-object v3, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    .line 23
    .line 24
    invoke-interface {v1, v3}, Lio/netty/handler/codec/dns/DnsMessage;->count(Lio/netty/handler/codec/dns/DnsSection;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    iget-boolean v4, v0, Lio/netty/resolver/dns/DnsResolveContext;->completeEarly:Z

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v6, 0x0

    .line 32
    const/4 v7, 0x0

    .line 33
    :goto_0
    const/4 v8, 0x1

    .line 34
    if-ge v6, v3, :cond_c

    .line 35
    .line 36
    sget-object v9, Lio/netty/handler/codec/dns/DnsSection;->ANSWER:Lio/netty/handler/codec/dns/DnsSection;

    .line 37
    .line 38
    invoke-interface {v1, v9, v6}, Lio/netty/handler/codec/dns/DnsMessage;->recordAt(Lio/netty/handler/codec/dns/DnsSection;I)Lio/netty/handler/codec/dns/DnsRecord;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-interface {v9}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    iget-object v11, v0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 47
    .line 48
    array-length v12, v11

    .line 49
    const/4 v13, 0x0

    .line 50
    :goto_1
    if-ge v13, v12, :cond_1

    .line 51
    .line 52
    aget-object v14, v11, v13

    .line 53
    .line 54
    if-ne v10, v14, :cond_0

    .line 55
    .line 56
    const/4 v10, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    add-int/lit8 v13, v13, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v10, 0x0

    .line 62
    :goto_2
    if-nez v10, :cond_2

    .line 63
    .line 64
    goto/16 :goto_7

    .line 65
    .line 66
    :cond_2
    invoke-interface/range {p1 .. p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 71
    .line 72
    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v10

    .line 76
    invoke-interface {v9}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v12

    .line 80
    invoke-virtual {v12, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    if-nez v12, :cond_5

    .line 89
    .line 90
    new-instance v12, Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-direct {v12, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    invoke-interface {v12, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    check-cast v10, Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-eqz v13, :cond_4

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    if-nez v10, :cond_3

    .line 109
    .line 110
    :goto_3
    if-nez v10, :cond_5

    .line 111
    .line 112
    goto :goto_7

    .line 113
    :cond_5
    iget-object v10, v0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 114
    .line 115
    iget-object v11, v0, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    .line 116
    .line 117
    iget-object v12, v0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 118
    .line 119
    invoke-virtual {v12}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-virtual {p0, v9, v10, v11, v12}, Lio/netty/resolver/dns/DnsResolveContext;->convertRecord(Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/channel/EventLoop;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    if-nez v10, :cond_6

    .line 128
    .line 129
    goto :goto_7

    .line 130
    :cond_6
    if-nez v4, :cond_7

    .line 131
    .line 132
    invoke-virtual {p0, v10}, Lio/netty/resolver/dns/DnsResolveContext;->isCompleteEarly(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    :cond_7
    iget-object v7, v0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    .line 137
    .line 138
    if-nez v7, :cond_8

    .line 139
    .line 140
    new-instance v7, Ljava/util/ArrayList;

    .line 141
    .line 142
    const/16 v11, 0x8

    .line 143
    .line 144
    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 145
    .line 146
    .line 147
    iput-object v7, v0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_8
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->isDuplicateAllowed()Z

    .line 154
    .line 155
    .line 156
    move-result v7

    .line 157
    if-nez v7, :cond_a

    .line 158
    .line 159
    iget-object v7, v0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-nez v7, :cond_9

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_9
    const/4 v7, 0x1

    .line 169
    goto :goto_6

    .line 170
    :cond_a
    :goto_4
    iget-object v7, v0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    .line 171
    .line 172
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :goto_5
    const/4 v7, 0x0

    .line 176
    :goto_6
    iget-object v11, v0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 177
    .line 178
    iget-object v12, v0, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    .line 179
    .line 180
    invoke-virtual {p0, v11, v12, v9, v10}, Lio/netty/resolver/dns/DnsResolveContext;->cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    if-eqz v7, :cond_b

    .line 184
    .line 185
    invoke-static {v10}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    :cond_b
    const/4 v7, 0x1

    .line 189
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_c
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_f

    .line 198
    .line 199
    if-eqz v7, :cond_e

    .line 200
    .line 201
    if-eqz v4, :cond_d

    .line 202
    .line 203
    iput-boolean v8, v0, Lio/netty/resolver/dns/DnsResolveContext;->completeEarly:Z

    .line 204
    .line 205
    :cond_d
    invoke-interface/range {p3 .. p3}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->querySucceed()V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :cond_e
    sget-object v1, Lio/netty/resolver/dns/DnsResolveContext;->NO_MATCHING_RECORD_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 210
    .line 211
    move-object/from16 v3, p3

    .line 212
    .line 213
    invoke-interface {v3, v1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_f
    move-object/from16 v3, p3

    .line 218
    .line 219
    invoke-interface/range {p3 .. p3}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->querySucceed()V

    .line 220
    .line 221
    .line 222
    invoke-direct/range {p0 .. p1}, Lio/netty/resolver/dns/DnsResolveContext;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    move-object/from16 v3, p1

    .line 227
    .line 228
    move-object/from16 v4, p4

    .line 229
    .line 230
    invoke-direct {p0, v3, v2, v1, v4}, Lio/netty/resolver/dns/DnsResolveContext;->onResponseCNAME(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/util/Map;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V

    .line 231
    .line 232
    .line 233
    :goto_8
    return-void
.end method

.method private onResponse(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            "I",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/channel/AddressedEnvelope<",
            "Lio/netty/handler/codec/dns/DnsResponse;",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    move-object v9, p0

    .line 2
    move-object v0, p3

    .line 3
    move-object v10, p4

    .line 4
    move-object/from16 v1, p5

    .line 5
    .line 6
    move-object/from16 v7, p6

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p4}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lio/netty/handler/codec/dns/DnsResponse;

    .line 13
    .line 14
    invoke-interface {v2}, Lio/netty/handler/codec/dns/DnsResponse;->code()Lio/netty/handler/codec/dns/DnsResponseCode;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    sget-object v4, Lio/netty/handler/codec/dns/DnsResponseCode;->NOERROR:Lio/netty/handler/codec/dns/DnsResponseCode;

    .line 19
    .line 20
    if-ne v3, v4, :cond_4

    .line 21
    .line 22
    invoke-direct {p0, p3, p4, v1, v7}, Lio/netty/resolver/dns/DnsResolveContext;->handleRedirect(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)Z

    .line 23
    .line 24
    .line 25
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    :try_start_1
    invoke-interface {p3}, Lio/netty/handler/codec/dns/DnsRecord;->type()Lio/netty/handler/codec/dns/DnsRecordType;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Lio/netty/handler/codec/dns/DnsRecordType;->CNAME:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 37
    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    invoke-interface {p4}, Lio/netty/channel/AddressedEnvelope;->content()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lio/netty/handler/codec/dns/DnsResponse;

    .line 45
    .line 46
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->cnameCache()Lio/netty/resolver/dns/DnsCnameCache;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iget-object v4, v9, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 51
    .line 52
    invoke-virtual {v4}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v2, v3, v4}, Lio/netty/resolver/dns/DnsResolveContext;->buildAliasMap(Lio/netty/handler/codec/dns/DnsResponse;Lio/netty/resolver/dns/DnsCnameCache;Lio/netty/channel/EventLoop;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {p0, p3, v2, v1, v7}, Lio/netty/resolver/dns/DnsResolveContext;->onResponseCNAME(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/util/Map;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    :try_start_2
    iget-object v3, v9, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 68
    .line 69
    array-length v4, v3

    .line 70
    const/4 v5, 0x0

    .line 71
    :goto_0
    if-ge v5, v4, :cond_3

    .line 72
    .line 73
    aget-object v6, v3, v5

    .line 74
    .line 75
    if-ne v2, v6, :cond_2

    .line 76
    .line 77
    invoke-direct {p0, p3, p4, v1, v7}, Lio/netty/resolver/dns/DnsResolveContext;->onExpectedResponse(Lio/netty/handler/codec/dns/DnsQuestion;Lio/netty/channel/AddressedEnvelope;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    :try_start_3
    sget-object v0, Lio/netty/resolver/dns/DnsResolveContext;->UNRECOGNIZED_TYPE_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 88
    .line 89
    invoke-interface {v1, v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    .line 91
    .line 92
    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    :try_start_4
    sget-object v4, Lio/netty/handler/codec/dns/DnsResponseCode;->NXDOMAIN:Lio/netty/handler/codec/dns/DnsResponseCode;

    .line 97
    .line 98
    if-eq v3, v4, :cond_5

    .line 99
    .line 100
    add-int/lit8 v4, p2, 0x1

    .line 101
    .line 102
    invoke-interface {v1, v3}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryNoAnswer(Lio/netty/handler/codec/dns/DnsResponseCode;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const/4 v6, 0x1

    .line 107
    const/4 v8, 0x0

    .line 108
    move-object v1, p0

    .line 109
    move-object v2, p1

    .line 110
    move v3, v4

    .line 111
    move-object v4, p3

    .line 112
    move-object/from16 v7, p6

    .line 113
    .line 114
    invoke-direct/range {v1 .. v8}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_5
    sget-object v3, Lio/netty/resolver/dns/DnsResolveContext;->NXDOMAIN_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 119
    .line 120
    invoke-interface {v1, v3}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v2}, Lio/netty/handler/codec/dns/DnsResponse;->isAuthoritativeAnswer()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_6

    .line 128
    .line 129
    add-int/lit8 v3, p2, 0x1

    .line 130
    .line 131
    invoke-direct {p0, p3}, Lio/netty/resolver/dns/DnsResolveContext;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    const/4 v6, 0x1

    .line 136
    const/4 v8, 0x0

    .line 137
    move-object v1, p0

    .line 138
    move-object v2, p1

    .line 139
    move-object v4, p3

    .line 140
    move-object/from16 v7, p6

    .line 141
    .line 142
    invoke-direct/range {v1 .. v8}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    .line 144
    .line 145
    :cond_6
    :goto_1
    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    invoke-static {p4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    throw v0
.end method

.method private onResponseCNAME(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/util/Map;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lio/netty/handler/codec/dns/DnsRecord;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    move-object v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, p1, v0, p3, p4}, Lio/netty/resolver/dns/DnsResolveContext;->followCname(Lio/netty/handler/codec/dns/DnsQuestion;Ljava/lang/String;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget-object p1, Lio/netty/resolver/dns/DnsResolveContext;->CNAME_NOT_FOUND_QUERY_FAILED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 36
    .line 37
    invoke-interface {p3, p1}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-void
.end method

.method private query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            "I",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Z",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    .line 1
    iget-boolean v0, v8, Lio/netty/resolver/dns/DnsResolveContext;->completeEarly:Z

    if-nez v0, :cond_2

    invoke-interface/range {p1 .. p1}, Lio/netty/resolver/dns/DnsServerAddressStream;->size()I

    move-result v0

    move/from16 v5, p2

    if-ge v5, v0, :cond_3

    iget v0, v8, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    if-eqz v0, :cond_3

    .line 2
    invoke-interface/range {p6 .. p6}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget v0, v8, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v8, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    .line 4
    invoke-interface/range {p1 .. p1}, Lio/netty/resolver/dns/DnsServerAddressStream;->next()Ljava/net/InetSocketAddress;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 6
    invoke-direct/range {v0 .. v7}, Lio/netty/resolver/dns/DnsResolveContext;->queryUnresolvedNameserver(Ljava/net/InetSocketAddress;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, v8, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object v0, v0, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/ChannelOutboundInvoker;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 8
    iget-object v2, v8, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object v2, v2, Lio/netty/resolver/dns/DnsNameResolver;->ch:Lio/netty/channel/Channel;

    .line 9
    invoke-interface {v2}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    move-result-object v15

    .line 10
    iget-object v9, v8, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    iget-object v12, v8, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    move-object v10, v1

    move-object/from16 v11, p3

    move/from16 v13, p5

    move-object v14, v0

    .line 11
    invoke-virtual/range {v9 .. v15}, Lio/netty/resolver/dns/DnsNameResolver;->query0(Ljava/net/InetSocketAddress;Lio/netty/handler/codec/dns/DnsQuestion;[Lio/netty/handler/codec/dns/DnsRecord;ZLio/netty/channel/ChannelPromise;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    move-result-object v7

    .line 12
    iget-object v2, v8, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p4

    .line 13
    invoke-interface {v4, v1, v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryWritten(Ljava/net/InetSocketAddress;Lio/netty/channel/ChannelFuture;)V

    .line 14
    new-instance v9, Lio/netty/resolver/dns/DnsResolveContext$2;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lio/netty/resolver/dns/DnsResolveContext$2;-><init>(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;)V

    invoke-interface {v7, v9}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    return-void

    :cond_2
    move/from16 v5, p2

    :cond_3
    :goto_0
    move-object/from16 v4, p4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 15
    invoke-direct/range {v0 .. v6}, Lio/netty/resolver/dns/DnsResolveContext;->tryToFinishResolve(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    return-void
.end method

.method private query(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;Lio/netty/resolver/dns/DnsServerAddressStream;ZLio/netty/util/concurrent/Promise;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/handler/codec/dns/DnsRecordType;",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            "Z",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)Z"
        }
    .end annotation

    .line 16
    :try_start_0
    new-instance v3, Lio/netty/handler/codec/dns/DefaultDnsQuestion;

    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->dnsClass:I

    invoke-direct {v3, p1, p2, v0}, Lio/netty/handler/codec/dns/DefaultDnsQuestion;-><init>(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0, v3}, Lio/netty/resolver/dns/DnsResolveContext;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    move-result-object v4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p3

    .line 18
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create DNS Question for: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x5d

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p5, p4}, Lio/netty/util/concurrent/Promise;->tryFailure(Ljava/lang/Throwable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method private queryUnresolvedNameserver(Ljava/net/InetSocketAddress;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            "I",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x7

    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    move-object v11, v0

    .line 19
    iget-object v0, v10, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 20
    .line 21
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v0, v10, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, v10, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 36
    .line 37
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    new-instance v13, Lio/netty/resolver/dns/DnsResolveContext$3;

    .line 46
    .line 47
    move-object v0, v13

    .line 48
    move-object v1, p0

    .line 49
    move-object v3, p1

    .line 50
    move-object/from16 v4, p2

    .line 51
    .line 52
    move/from16 v5, p3

    .line 53
    .line 54
    move-object/from16 v6, p4

    .line 55
    .line 56
    move-object/from16 v7, p5

    .line 57
    .line 58
    move-object/from16 v8, p6

    .line 59
    .line 60
    move-object/from16 v9, p7

    .line 61
    .line 62
    invoke-direct/range {v0 .. v9}, Lio/netty/resolver/dns/DnsResolveContext$3;-><init>(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/util/concurrent/Future;Ljava/net/InetSocketAddress;Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v12, v13}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 66
    .line 67
    .line 68
    iget-object v0, v10, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    .line 69
    .line 70
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->resolveCache()Lio/netty/resolver/dns/DnsCache;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v2, v10, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 75
    .line 76
    invoke-virtual {v2}, Lio/netty/resolver/dns/DnsNameResolver;->resolvedInternetProtocolFamiliesUnsafe()[Lio/netty/channel/socket/InternetProtocolFamily;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v11, v0, v12, v1, v2}, Lio/netty/resolver/dns/DnsNameResolver;->doResolveAllCached(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/util/concurrent/Promise;Lio/netty/resolver/dns/DnsCache;[Lio/netty/channel/socket/InternetProtocolFamily;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v9, Lio/netty/resolver/dns/DnsAddressResolveContext;

    .line 91
    .line 92
    iget-object v2, v10, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 93
    .line 94
    iget-object v4, v10, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    .line 95
    .line 96
    invoke-virtual {v2, v11}, Lio/netty/resolver/dns/DnsNameResolver;->newNameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {p0}, Lio/netty/resolver/dns/DnsResolveContext;->resolveCache()Lio/netty/resolver/dns/DnsCache;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    new-instance v7, Lio/netty/resolver/dns/DnsResolveContext$4;

    .line 105
    .line 106
    invoke-direct {v7, p0, v0}, Lio/netty/resolver/dns/DnsResolveContext$4;-><init>(Lio/netty/resolver/dns/DnsResolveContext;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;)V

    .line 107
    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    move-object v1, v9

    .line 111
    move-object v3, v11

    .line 112
    invoke-direct/range {v1 .. v8}, Lio/netty/resolver/dns/DnsAddressResolveContext;-><init>(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;Lio/netty/resolver/dns/DnsCache;Lio/netty/resolver/dns/AuthoritativeDnsServerCache;Z)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v9, v12}, Lio/netty/resolver/dns/DnsResolveContext;->resolve(Lio/netty/util/concurrent/Promise;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    return-void
.end method

.method private tryToFinishResolve(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            "I",
            "Lio/netty/handler/codec/dns/DnsQuestion;",
            "Lio/netty/resolver/dns/DnsQueryLifecycleObserver;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-boolean v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->completeEarly:Z

    .line 2
    .line 3
    if-nez v1, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->queriesInProgress:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    .line 14
    .line 15
    invoke-interface {p4, v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCancelled(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->finalResult:Ljava/util/List;

    .line 20
    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Lio/netty/resolver/dns/DnsServerAddressStream;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x1

    .line 28
    if-ge p2, v1, :cond_2

    .line 29
    .line 30
    sget-object v1, Lio/netty/resolver/dns/NoopDnsQueryLifecycleObserver;->INSTANCE:Lio/netty/resolver/dns/NoopDnsQueryLifecycleObserver;

    .line 31
    .line 32
    if-ne p4, v1, :cond_1

    .line 33
    .line 34
    add-int/2addr v2, p2

    .line 35
    invoke-direct {p0, p3}, Lio/netty/resolver/dns/DnsResolveContext;->newDnsQueryLifecycleObserver(Lio/netty/handler/codec/dns/DnsQuestion;)Lio/netty/resolver/dns/DnsQueryLifecycleObserver;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v5, 0x1

    .line 40
    move-object v0, p0

    .line 41
    move-object v1, p1

    .line 42
    move-object v3, p3

    .line 43
    move-object v6, p5

    .line 44
    move-object v7, p6

    .line 45
    invoke-direct/range {v0 .. v7}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    add-int/2addr v2, p2

    .line 50
    const/4 v5, 0x1

    .line 51
    move-object v0, p0

    .line 52
    move-object v1, p1

    .line 53
    move-object v3, p3

    .line 54
    move-object v4, p4

    .line 55
    move-object v6, p5

    .line 56
    move-object v7, p6

    .line 57
    invoke-direct/range {v0 .. v7}, Lio/netty/resolver/dns/DnsResolveContext;->query(Lio/netty/resolver/dns/DnsServerAddressStream;ILio/netty/handler/codec/dns/DnsQuestion;Lio/netty/resolver/dns/DnsQueryLifecycleObserver;ZLio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void

    .line 61
    :cond_2
    sget-object v0, Lio/netty/resolver/dns/DnsResolveContext;->NAME_SERVERS_EXHAUSTED_EXCEPTION:Ljava/lang/RuntimeException;

    .line 62
    .line 63
    invoke-interface {p4, v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryFailed(Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    if-nez p6, :cond_4

    .line 67
    .line 68
    iget-boolean v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->triedCNAME:Z

    .line 69
    .line 70
    if-nez v0, :cond_4

    .line 71
    .line 72
    iput-boolean v2, p0, Lio/netty/resolver/dns/DnsResolveContext;->triedCNAME:Z

    .line 73
    .line 74
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 75
    .line 76
    sget-object v2, Lio/netty/handler/codec/dns/DnsRecordType;->CNAME:Lio/netty/handler/codec/dns/DnsRecordType;

    .line 77
    .line 78
    invoke-direct {p0, v1}, Lio/netty/resolver/dns/DnsResolveContext;->getNameServers(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const/4 v4, 0x1

    .line 83
    move-object v0, p0

    .line 84
    move-object v5, p5

    .line 85
    invoke-direct/range {v0 .. v5}, Lio/netty/resolver/dns/DnsResolveContext;->query(Ljava/lang/String;Lio/netty/handler/codec/dns/DnsRecordType;Lio/netty/resolver/dns/DnsServerAddressStream;ZLio/netty/util/concurrent/Promise;)Z

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    iget v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->allowedQueries:I

    .line 90
    .line 91
    invoke-interface {p4, v0}, Lio/netty/resolver/dns/DnsQueryLifecycleObserver;->queryCancelled(I)V

    .line 92
    .line 93
    .line 94
    :cond_4
    invoke-direct {p0, p5, p6}, Lio/netty/resolver/dns/DnsResolveContext;->finishResolve(Lio/netty/util/concurrent/Promise;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->authoritativeDnsServerCache()Lio/netty/resolver/dns/AuthoritativeDnsServerCache;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method abstract cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract cache(Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Ljava/net/UnknownHostException;)V
.end method

.method cnameCache()Lio/netty/resolver/dns/DnsCnameCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->cnameCache()Lio/netty/resolver/dns/DnsCnameCache;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method abstract convertRecord(Lio/netty/handler/codec/dns/DnsRecord;Ljava/lang/String;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/channel/EventLoop;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Ljava/lang/String;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/channel/EventLoop;",
            ")TT;"
        }
    .end annotation
.end method

.method doSearchDomainQuery(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 2
    .line 3
    iget v3, p0, Lio/netty/resolver/dns/DnsResolveContext;->dnsClass:I

    .line 4
    .line 5
    iget-object v4, p0, Lio/netty/resolver/dns/DnsResolveContext;->expectedTypes:[Lio/netty/handler/codec/dns/DnsRecordType;

    .line 6
    .line 7
    iget-object v5, p0, Lio/netty/resolver/dns/DnsResolveContext;->additionals:[Lio/netty/handler/codec/dns/DnsRecord;

    .line 8
    .line 9
    iget-object v6, p0, Lio/netty/resolver/dns/DnsResolveContext;->nameServerAddrs:Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 10
    .line 11
    move-object v0, p0

    .line 12
    move-object v2, p1

    .line 13
    invoke-virtual/range {v0 .. v6}, Lio/netty/resolver/dns/DnsResolveContext;->newResolverContext(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;I[Lio/netty/handler/codec/dns/DnsRecordType;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;)Lio/netty/resolver/dns/DnsResolveContext;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v0, p1, p2}, Lio/netty/resolver/dns/DnsResolveContext;->internalResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method abstract filterResults(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract isCompleteEarly(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract isDuplicateAllowed()Z
.end method

.method abstract newResolverContext(Lio/netty/resolver/dns/DnsNameResolver;Ljava/lang/String;I[Lio/netty/handler/codec/dns/DnsRecordType;[Lio/netty/handler/codec/dns/DnsRecord;Lio/netty/resolver/dns/DnsServerAddressStream;)Lio/netty/resolver/dns/DnsResolveContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/resolver/dns/DnsNameResolver;",
            "Ljava/lang/String;",
            "I[",
            "Lio/netty/handler/codec/dns/DnsRecordType;",
            "[",
            "Lio/netty/handler/codec/dns/DnsRecord;",
            "Lio/netty/resolver/dns/DnsServerAddressStream;",
            ")",
            "Lio/netty/resolver/dns/DnsResolveContext<",
            "TT;>;"
        }
    .end annotation
.end method

.method resolve(Lio/netty/util/concurrent/Promise;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->searchDomains()[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v5

    .line 7
    array-length v0, v5

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->ndots()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 19
    .line 20
    const/16 v1, 0x2e

    .line 21
    .line 22
    invoke-static {v0, v1}, Lio/netty/util/internal/StringUtil;->endsWith(Ljava/lang/CharSequence;C)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-direct {p0}, Lio/netty/resolver/dns/DnsResolveContext;->hasNDots()Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    aget-object v1, v5, v1

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    :goto_0
    xor-int/lit8 v3, v6, 0x1

    .line 62
    .line 63
    iget-object v1, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 64
    .line 65
    invoke-virtual {v1}, Lio/netty/resolver/dns/DnsNameResolver;->executor()Lio/netty/channel/EventLoop;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->newPromise()Lio/netty/util/concurrent/Promise;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    new-instance v8, Lio/netty/resolver/dns/DnsResolveContext$1;

    .line 74
    .line 75
    move-object v1, v8

    .line 76
    move-object v2, p0

    .line 77
    move-object v4, p1

    .line 78
    invoke-direct/range {v1 .. v6}, Lio/netty/resolver/dns/DnsResolveContext$1;-><init>(Lio/netty/resolver/dns/DnsResolveContext;ILio/netty/util/concurrent/Promise;[Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v7, v8}, Lio/netty/util/concurrent/Promise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v0, v7}, Lio/netty/resolver/dns/DnsResolveContext;->doSearchDomainQuery(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_2
    :goto_1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->hostname:Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {p0, v0, p1}, Lio/netty/resolver/dns/DnsResolveContext;->internalResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V

    .line 91
    .line 92
    .line 93
    :goto_2
    return-void
.end method

.method resolveCache()Lio/netty/resolver/dns/DnsCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsResolveContext;->parent:Lio/netty/resolver/dns/DnsNameResolver;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsNameResolver;->resolveCache()Lio/netty/resolver/dns/DnsCache;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
