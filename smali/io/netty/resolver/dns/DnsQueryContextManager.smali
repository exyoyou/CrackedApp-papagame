.class final Lio/netty/resolver/dns/DnsQueryContextManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetSocketAddress;",
            "Lio/netty/util/collection/IntObjectMap<",
            "Lio/netty/resolver/dns/DnsQueryContext;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/netty/resolver/dns/DnsQueryContextManager;->map:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method private getContextMap(Ljava/net/InetSocketAddress;)Lio/netty/util/collection/IntObjectMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")",
            "Lio/netty/util/collection/IntObjectMap<",
            "Lio/netty/resolver/dns/DnsQueryContext;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsQueryContextManager;->map:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/netty/resolver/dns/DnsQueryContextManager;->map:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lio/netty/util/collection/IntObjectMap;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1
.end method

.method private getOrCreateContextMap(Ljava/net/InetSocketAddress;)Lio/netty/util/collection/IntObjectMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")",
            "Lio/netty/util/collection/IntObjectMap<",
            "Lio/netty/resolver/dns/DnsQueryContext;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/DnsQueryContextManager;->map:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/netty/resolver/dns/DnsQueryContextManager;->map:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lio/netty/util/collection/IntObjectMap;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-object v1

    .line 16
    :cond_0
    new-instance v1, Lio/netty/util/collection/IntObjectHashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Lio/netty/util/collection/IntObjectHashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, p0, Lio/netty/resolver/dns/DnsQueryContextManager;->map:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    instance-of p1, v2, Ljava/net/Inet4Address;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    check-cast v2, Ljava/net/Inet4Address;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lio/netty/resolver/dns/DnsQueryContextManager;->map:Ljava/util/Map;

    .line 47
    .line 48
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 49
    .line 50
    sget-object v4, Lio/netty/util/NetUtil;->LOCALHOST6:Ljava/net/Inet6Address;

    .line 51
    .line 52
    invoke-direct {v2, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lio/netty/resolver/dns/DnsQueryContextManager;->map:Ljava/util/Map;

    .line 60
    .line 61
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 62
    .line 63
    invoke-static {v2}, Lio/netty/resolver/dns/DnsQueryContextManager;->toCompactAddress(Ljava/net/Inet4Address;)Ljava/net/Inet6Address;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-direct {v4, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    instance-of p1, v2, Ljava/net/Inet6Address;

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    check-cast v2, Ljava/net/Inet6Address;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/net/Inet6Address;->isLoopbackAddress()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lio/netty/resolver/dns/DnsQueryContextManager;->map:Ljava/util/Map;

    .line 87
    .line 88
    new-instance v2, Ljava/net/InetSocketAddress;

    .line 89
    .line 90
    sget-object v4, Lio/netty/util/NetUtil;->LOCALHOST4:Ljava/net/Inet4Address;

    .line 91
    .line 92
    invoke-direct {v2, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 93
    .line 94
    .line 95
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {v2}, Ljava/net/Inet6Address;->isIPv4CompatibleAddress()Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_4

    .line 104
    .line 105
    iget-object p1, p0, Lio/netty/resolver/dns/DnsQueryContextManager;->map:Ljava/util/Map;

    .line 106
    .line 107
    new-instance v4, Ljava/net/InetSocketAddress;

    .line 108
    .line 109
    invoke-static {v2}, Lio/netty/resolver/dns/DnsQueryContextManager;->toIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-direct {v4, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 114
    .line 115
    .line 116
    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_0
    monitor-exit v0

    .line 120
    return-object v1

    .line 121
    :catchall_0
    move-exception p1

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p1
.end method

.method private static toCompactAddress(Ljava/net/Inet4Address;)Ljava/net/Inet6Address;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/net/Inet4Address;->getAddress()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    aput-byte v1, v0, v1

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-byte v1, v0, v2

    .line 14
    .line 15
    const/4 v3, 0x2

    .line 16
    aput-byte v1, v0, v3

    .line 17
    .line 18
    const/4 v4, 0x3

    .line 19
    aput-byte v1, v0, v4

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    aput-byte v1, v0, v5

    .line 23
    .line 24
    const/4 v5, 0x5

    .line 25
    aput-byte v1, v0, v5

    .line 26
    .line 27
    const/4 v5, 0x6

    .line 28
    aput-byte v1, v0, v5

    .line 29
    .line 30
    const/4 v5, 0x7

    .line 31
    aput-byte v1, v0, v5

    .line 32
    .line 33
    const/16 v5, 0x8

    .line 34
    .line 35
    aput-byte v1, v0, v5

    .line 36
    .line 37
    const/16 v5, 0x9

    .line 38
    .line 39
    aput-byte v1, v0, v5

    .line 40
    .line 41
    const/16 v5, 0xa

    .line 42
    .line 43
    aput-byte v1, v0, v5

    .line 44
    .line 45
    const/16 v5, 0xb

    .line 46
    .line 47
    aput-byte v1, v0, v5

    .line 48
    .line 49
    aget-byte v1, p0, v1

    .line 50
    .line 51
    const/16 v5, 0xc

    .line 52
    .line 53
    aput-byte v1, v0, v5

    .line 54
    .line 55
    const/16 v1, 0xd

    .line 56
    .line 57
    aget-byte v2, p0, v2

    .line 58
    .line 59
    aput-byte v2, v0, v1

    .line 60
    .line 61
    const/16 v1, 0xe

    .line 62
    .line 63
    aget-byte v2, p0, v3

    .line 64
    .line 65
    aput-byte v2, v0, v1

    .line 66
    .line 67
    const/16 v1, 0xf

    .line 68
    .line 69
    aget-byte p0, p0, v4

    .line 70
    .line 71
    aput-byte p0, v0, v1

    .line 72
    .line 73
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    check-cast p0, Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    return-object p0

    .line 80
    :catch_0
    move-exception p0

    .line 81
    new-instance v0, Ljava/lang/Error;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method private static toIPv4Address(Ljava/net/Inet6Address;)Ljava/net/Inet4Address;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/net/Inet6Address;->getAddress()[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    const/16 v1, 0xc

    .line 9
    .line 10
    aget-byte v1, p0, v1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-byte v1, v0, v2

    .line 14
    .line 15
    const/16 v1, 0xd

    .line 16
    .line 17
    aget-byte v1, p0, v1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    aput-byte v1, v0, v2

    .line 21
    .line 22
    const/16 v1, 0xe

    .line 23
    .line 24
    aget-byte v1, p0, v1

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    aput-byte v1, v0, v2

    .line 28
    .line 29
    const/16 v1, 0xf

    .line 30
    .line 31
    aget-byte p0, p0, v1

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    aput-byte p0, v0, v1

    .line 35
    .line 36
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    return-object p0

    .line 43
    :catch_0
    move-exception p0

    .line 44
    new-instance v0, Ljava/lang/Error;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    throw v0
.end method


# virtual methods
.method add(Lio/netty/resolver/dns/DnsQueryContext;)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsQueryContext;->nameServerAddr()Ljava/net/InetSocketAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lio/netty/resolver/dns/DnsQueryContextManager;->getOrCreateContextMap(Ljava/net/InetSocketAddress;)Lio/netty/util/collection/IntObjectMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0xffff

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    const/4 v3, 0x0

    .line 24
    :goto_0
    :try_start_0
    invoke-interface {v0, v1}, Lio/netty/util/collection/IntObjectMap;->containsKey(I)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    .line 30
    invoke-interface {v0, v1, p1}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return v1

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    and-int/2addr v1, v2

    .line 38
    add-int/lit8 v3, v3, 0x1

    .line 39
    .line 40
    const v4, 0x1fffe

    .line 41
    .line 42
    .line 43
    if-ge v3, v4, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "query ID space exhausted: "

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsQueryContext;->question()Lio/netty/handler/codec/dns/DnsQuestion;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v1

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p1
.end method

.method get(Ljava/net/InetSocketAddress;I)Lio/netty/resolver/dns/DnsQueryContext;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/DnsQueryContextManager;->getContextMap(Ljava/net/InetSocketAddress;)Lio/netty/util/collection/IntObjectMap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    invoke-interface {p1, p2}, Lio/netty/util/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    check-cast p2, Lio/netty/resolver/dns/DnsQueryContext;

    .line 13
    .line 14
    monitor-exit p1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p2

    .line 17
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p2

    .line 19
    :cond_0
    const/4 p2, 0x0

    .line 20
    :goto_0
    return-object p2
.end method

.method remove(Ljava/net/InetSocketAddress;I)Lio/netty/resolver/dns/DnsQueryContext;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/netty/resolver/dns/DnsQueryContextManager;->getContextMap(Ljava/net/InetSocketAddress;)Lio/netty/util/collection/IntObjectMap;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    monitor-enter p1

    .line 10
    :try_start_0
    invoke-interface {p1, p2}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Lio/netty/resolver/dns/DnsQueryContext;

    .line 15
    .line 16
    monitor-exit p1

    .line 17
    return-object p2

    .line 18
    :catchall_0
    move-exception p2

    .line 19
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p2
.end method
