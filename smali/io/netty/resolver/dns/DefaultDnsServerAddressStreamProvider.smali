.class public final Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/resolver/dns/DnsServerAddressStreamProvider;


# static fields
.field private static final DEFAULT_NAME_SERVERS:Lio/netty/resolver/dns/DnsServerAddresses;

.field private static final DEFAULT_NAME_SERVER_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field static final DNS_PORT:I = 0x35

.field public static final INSTANCE:Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 8
    .line 9
    new-instance v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;

    .line 10
    .line 11
    invoke-direct {v0}, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->INSTANCE:Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x35

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-static {v0, v3}, Lio/netty/resolver/dns/DirContextUtils;->addNameServers(Ljava/util/List;I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const/16 v4, 0x9

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    if-ge v2, v4, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    :try_start_0
    const-string v2, "sun.net.dns.ResolverConfiguration"

    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v4, "open"

    .line 55
    .line 56
    new-array v6, v5, [Ljava/lang/Class;

    .line 57
    .line 58
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const-string v6, "nameservers"

    .line 63
    .line 64
    new-array v7, v5, [Ljava/lang/Class;

    .line 65
    .line 66
    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    new-array v6, v5, [Ljava/lang/Object;

    .line 71
    .line 72
    const/4 v7, 0x0

    .line 73
    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    new-array v6, v5, [Ljava/lang/Object;

    .line 78
    .line 79
    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_2

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v4, :cond_1

    .line 102
    .line 103
    new-instance v6, Ljava/net/InetSocketAddress;

    .line 104
    .line 105
    invoke-static {v4}, Lio/netty/util/internal/SocketUtils;->addressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-direct {v6, v4, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    nop

    .line 117
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-nez v2, :cond_3

    .line 122
    .line 123
    sget-object v1, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 124
    .line 125
    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_6

    .line 130
    .line 131
    const-string v2, "Default DNS servers: {} (sun.net.dns.ResolverConfiguration)"

    .line 132
    .line 133
    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_3
    invoke-static {}, Lio/netty/util/NetUtil;->isIpV6AddressesPreferred()Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    const/4 v4, 0x1

    .line 142
    if-nez v2, :cond_5

    .line 143
    .line 144
    sget-object v2, Lio/netty/util/NetUtil;->LOCALHOST:Ljava/net/InetAddress;

    .line 145
    .line 146
    instance-of v2, v2, Ljava/net/Inet6Address;

    .line 147
    .line 148
    if-eqz v2, :cond_4

    .line 149
    .line 150
    invoke-static {}, Lio/netty/util/NetUtil;->isIpV4StackPreferred()Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_4

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :cond_4
    new-array v1, v1, [Ljava/net/InetSocketAddress;

    .line 158
    .line 159
    const-string v2, "8.8.8.8"

    .line 160
    .line 161
    invoke-static {v2, v3}, Lio/netty/util/internal/SocketUtils;->socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    aput-object v2, v1, v5

    .line 166
    .line 167
    const-string v2, "8.8.4.4"

    .line 168
    .line 169
    invoke-static {v2, v3}, Lio/netty/util/internal/SocketUtils;->socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    aput-object v2, v1, v4

    .line 174
    .line 175
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_5
    :goto_1
    new-array v1, v1, [Ljava/net/InetSocketAddress;

    .line 180
    .line 181
    const-string v2, "2001:4860:4860::8888"

    .line 182
    .line 183
    invoke-static {v2, v3}, Lio/netty/util/internal/SocketUtils;->socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    aput-object v2, v1, v5

    .line 188
    .line 189
    const-string v2, "2001:4860:4860::8844"

    .line 190
    .line 191
    invoke-static {v2, v3}, Lio/netty/util/internal/SocketUtils;->socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    aput-object v2, v1, v4

    .line 196
    .line 197
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    :goto_2
    sget-object v1, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 201
    .line 202
    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_6

    .line 207
    .line 208
    const-string v2, "Default DNS servers: {} (Google Public DNS as a fallback)"

    .line 209
    .line 210
    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_6
    :goto_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    sput-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->DEFAULT_NAME_SERVER_LIST:Ljava/util/List;

    .line 218
    .line 219
    invoke-static {v0}, Lio/netty/resolver/dns/DnsServerAddresses;->sequential(Ljava/lang/Iterable;)Lio/netty/resolver/dns/DnsServerAddresses;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    sput-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->DEFAULT_NAME_SERVERS:Lio/netty/resolver/dns/DnsServerAddresses;

    .line 224
    .line 225
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static defaultAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->DEFAULT_NAME_SERVER_LIST:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public static defaultAddresses()Lio/netty/resolver/dns/DnsServerAddresses;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->DEFAULT_NAME_SERVERS:Lio/netty/resolver/dns/DnsServerAddresses;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 0

    .line 1
    sget-object p1, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->DEFAULT_NAME_SERVERS:Lio/netty/resolver/dns/DnsServerAddresses;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsServerAddresses;->stream()Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
