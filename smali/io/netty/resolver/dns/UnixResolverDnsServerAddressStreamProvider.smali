.class public final Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/resolver/dns/DnsServerAddressStreamProvider;


# static fields
.field static final DEFAULT_NDOTS:I = 0x1

.field private static final DOMAIN_ROW_LABEL:Ljava/lang/String; = "domain"

.field private static final ETC_RESOLVER_DIR:Ljava/lang/String; = "/etc/resolver"

.field private static final ETC_RESOLV_CONF_FILE:Ljava/lang/String; = "/etc/resolv.conf"

.field private static final NAMESERVER_ROW_LABEL:Ljava/lang/String; = "nameserver"

.field private static final NDOTS_LABEL:Ljava/lang/String; = "ndots:"

.field private static final OPTIONS_ROW_LABEL:Ljava/lang/String; = "options"

.field private static final PORT_ROW_LABEL:Ljava/lang/String; = "port"

.field private static final SEARCH_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEARCH_ROW_LABEL:Ljava/lang/String; = "search"

.field private static final SORTLIST_ROW_LABEL:Ljava/lang/String; = "sortlist"

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final defaultNameServerAddresses:Lio/netty/resolver/dns/DnsServerAddresses;

.field private final domainToNameServerStreamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;

    .line 2
    .line 3
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 8
    .line 9
    const-string v0, "\\s+"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->SEARCH_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public varargs constructor <init>(Ljava/io/File;[Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/io/File;

    const-string v2, "etcResolvConf"

    .line 2
    invoke-static {p1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->parse([Ljava/io/File;)Ljava/util/Map;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 3
    array-length v2, p2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    invoke-static {p2}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->parse([Ljava/io/File;)Ljava/util/Map;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    iput-object p2, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->domainToNameServerStreamMap:Ljava/util/Map;

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/resolver/dns/DnsServerAddresses;

    if-nez v2, :cond_3

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/netty/resolver/dns/DnsServerAddresses;

    iput-object p1, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->defaultNameServerAddresses:Lio/netty/resolver/dns/DnsServerAddresses;

    goto :goto_2

    .line 9
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " didn\'t provide any name servers"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_3
    iput-object v2, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->defaultNameServerAddresses:Lio/netty/resolver/dns/DnsServerAddresses;

    :goto_2
    if-eqz v0, :cond_4

    .line 11
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 14
    :goto_1
    invoke-direct {p0, v1, v0}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;-><init>(Ljava/io/File;[Ljava/io/File;)V

    return-void
.end method

.method private mayOverrideNameServers()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->domainToNameServerStreamMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->defaultNameServerAddresses:Lio/netty/resolver/dns/DnsServerAddresses;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/netty/resolver/dns/DnsServerAddresses;->stream()Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lio/netty/resolver/dns/DnsServerAddressStream;->next()Ljava/net/InetSocketAddress;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method

.method private static varargs parse([Ljava/io/File;)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "sortlist"

    .line 4
    .line 5
    new-instance v3, Ljava/util/HashMap;

    .line 6
    .line 7
    array-length v0, v1

    .line 8
    shl-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 11
    .line 12
    .line 13
    array-length v4, v1

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v6, 0x0

    .line 16
    :goto_0
    if-ge v6, v4, :cond_12

    .line 17
    .line 18
    aget-object v7, v1, v6

    .line 19
    .line 20
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    move/from16 v16, v4

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    goto/16 :goto_c

    .line 30
    .line 31
    :cond_0
    new-instance v8, Ljava/io/FileReader;

    .line 32
    .line 33
    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    .line 38
    .line 39
    invoke-direct {v10, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    const/4 v9, 0x2

    .line 45
    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    const/16 v12, 0x35

    .line 53
    .line 54
    move-object v12, v11

    .line 55
    const/16 v13, 0x35

    .line 56
    .line 57
    move-object v11, v0

    .line 58
    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_f

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_d

    .line 73
    .line 74
    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    const/16 v15, 0x23

    .line 79
    .line 80
    if-eq v0, v15, :cond_d

    .line 81
    .line 82
    const/16 v9, 0x3b

    .line 83
    .line 84
    if-ne v0, v9, :cond_1

    .line 85
    .line 86
    goto/16 :goto_6

    .line 87
    .line 88
    :cond_1
    const-string v0, "nameserver"

    .line 89
    .line 90
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    const/16 v0, 0xa

    .line 97
    .line 98
    invoke-static {v14, v0}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    .line 99
    .line 100
    .line 101
    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    const-string v9, ". value: "

    .line 103
    .line 104
    const-string v5, "error parsing label nameserver in file "

    .line 105
    .line 106
    if-ltz v0, :cond_6

    .line 107
    .line 108
    :try_start_3
    invoke-static {v14, v0}, Lio/netty/util/internal/StringUtil;->indexOfWhiteSpace(Ljava/lang/CharSequence;I)I

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    const/4 v1, -0x1

    .line 113
    if-ne v15, v1, :cond_2

    .line 114
    .line 115
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    move/from16 v16, v4

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_2
    move/from16 v16, v4

    .line 123
    .line 124
    :try_start_4
    invoke-static {v14, v15}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-eq v4, v1, :cond_5

    .line 129
    .line 130
    invoke-virtual {v14, v4}, Ljava/lang/String;->charAt(I)C

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    const/16 v4, 0x23

    .line 135
    .line 136
    if-ne v1, v4, :cond_5

    .line 137
    .line 138
    invoke-virtual {v14, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    :goto_2
    invoke-static {v0}, Lio/netty/util/NetUtil;->isValidIpV4Address(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_4

    .line 147
    .line 148
    invoke-static {v0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_4

    .line 153
    .line 154
    const/16 v1, 0x2e

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    add-int/lit8 v4, v1, 0x1

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    if-ge v4, v9, :cond_3

    .line 167
    .line 168
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v13
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    const/4 v4, 0x0

    .line 177
    :try_start_5
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    goto :goto_3

    .line 182
    :cond_3
    const/4 v4, 0x0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 184
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v5, ". invalid IP value: "

    .line 197
    .line 198
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw v0

    .line 212
    :cond_4
    const/4 v4, 0x0

    .line 213
    :goto_3
    invoke-static {v0, v13}, Lio/netty/util/internal/SocketUtils;->socketAddress(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    goto/16 :goto_7

    .line 221
    .line 222
    :cond_5
    const/4 v4, 0x0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 224
    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw v0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    goto/16 :goto_9

    .line 252
    .line 253
    :cond_6
    move/from16 v16, v4

    .line 254
    .line 255
    const/4 v4, 0x0

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 257
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :cond_7
    move/from16 v16, v4

    .line 284
    .line 285
    const/4 v4, 0x0

    .line 286
    const-string v0, "domain"

    .line 287
    .line 288
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 289
    .line 290
    .line 291
    move-result v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 292
    const-string v1, " value: "

    .line 293
    .line 294
    if-eqz v0, :cond_a

    .line 295
    .line 296
    const/4 v0, 0x6

    .line 297
    :try_start_6
    invoke-static {v14, v0}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    .line 298
    .line 299
    .line 300
    move-result v0

    .line 301
    if-ltz v0, :cond_9

    .line 302
    .line 303
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 307
    :try_start_7
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 308
    .line 309
    .line 310
    move-result v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 311
    if-nez v0, :cond_8

    .line 312
    .line 313
    :try_start_8
    invoke-static {v3, v1, v11}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 314
    .line 315
    .line 316
    goto :goto_4

    .line 317
    :catch_1
    move-exception v0

    .line 318
    move-object v12, v1

    .line 319
    goto/16 :goto_a

    .line 320
    .line 321
    :cond_8
    :goto_4
    :try_start_9
    new-instance v0, Ljava/util/ArrayList;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 322
    .line 323
    const/4 v5, 0x2

    .line 324
    :try_start_a
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 325
    .line 326
    .line 327
    move-object v11, v0

    .line 328
    move-object v12, v1

    .line 329
    goto/16 :goto_8

    .line 330
    .line 331
    :catch_2
    move-exception v0

    .line 332
    goto :goto_5

    .line 333
    :catch_3
    move-exception v0

    .line 334
    const/4 v5, 0x2

    .line 335
    :goto_5
    move-object v12, v1

    .line 336
    goto/16 :goto_b

    .line 337
    .line 338
    :cond_9
    const/4 v5, 0x2

    .line 339
    :try_start_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 340
    .line 341
    new-instance v9, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .line 345
    .line 346
    const-string v15, "error parsing label domain in file "

    .line 347
    .line 348
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw v0

    .line 368
    :cond_a
    const/4 v5, 0x2

    .line 369
    const-string v0, "port"

    .line 370
    .line 371
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_c

    .line 376
    .line 377
    const/4 v0, 0x4

    .line 378
    invoke-static {v14, v0}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-ltz v0, :cond_b

    .line 383
    .line 384
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    move v13, v0

    .line 393
    goto :goto_8

    .line 394
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 395
    .line 396
    new-instance v9, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .line 400
    .line 401
    const-string v15, "error parsing label port in file "

    .line 402
    .line 403
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw v0

    .line 423
    :cond_c
    invoke-virtual {v14, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 424
    .line 425
    .line 426
    move-result v0

    .line 427
    if-eqz v0, :cond_e

    .line 428
    .line 429
    sget-object v0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 430
    .line 431
    const-string v1, "row type {} not supported. Ignoring line: {}"

    .line 432
    .line 433
    invoke-interface {v0, v1, v2, v14}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 434
    .line 435
    .line 436
    goto :goto_8

    .line 437
    :catch_4
    move-exception v0

    .line 438
    goto :goto_b

    .line 439
    :catch_5
    move-exception v0

    .line 440
    goto :goto_a

    .line 441
    :cond_d
    :goto_6
    move/from16 v16, v4

    .line 442
    .line 443
    const/4 v4, 0x0

    .line 444
    :goto_7
    const/4 v5, 0x2

    .line 445
    :cond_e
    :goto_8
    move-object/from16 v1, p0

    .line 446
    .line 447
    move/from16 v4, v16

    .line 448
    .line 449
    const/4 v5, 0x0

    .line 450
    const/4 v9, 0x2

    .line 451
    goto/16 :goto_1

    .line 452
    .line 453
    :catch_6
    move-exception v0

    .line 454
    move/from16 v16, v4

    .line 455
    .line 456
    :goto_9
    const/4 v4, 0x0

    .line 457
    :goto_a
    const/4 v5, 0x2

    .line 458
    :goto_b
    :try_start_c
    sget-object v1, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 459
    .line 460
    const-string v9, "Could not parse entry. Ignoring line: {}"

    .line 461
    .line 462
    invoke-interface {v1, v9, v14, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 463
    .line 464
    .line 465
    goto :goto_8

    .line 466
    :cond_f
    move/from16 v16, v4

    .line 467
    .line 468
    const/4 v4, 0x0

    .line 469
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 470
    .line 471
    .line 472
    move-result v0

    .line 473
    if-nez v0, :cond_10

    .line 474
    .line 475
    invoke-static {v3, v12, v11}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 476
    .line 477
    .line 478
    :cond_10
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 479
    .line 480
    .line 481
    :goto_c
    add-int/lit8 v6, v6, 0x1

    .line 482
    .line 483
    move-object/from16 v1, p0

    .line 484
    .line 485
    move/from16 v4, v16

    .line 486
    .line 487
    const/4 v5, 0x0

    .line 488
    goto/16 :goto_0

    .line 489
    .line 490
    :catchall_0
    move-exception v0

    .line 491
    move-object v9, v10

    .line 492
    goto :goto_d

    .line 493
    :catchall_1
    move-exception v0

    .line 494
    :goto_d
    if-nez v9, :cond_11

    .line 495
    .line 496
    invoke-virtual {v8}, Ljava/io/Reader;->close()V

    .line 497
    .line 498
    .line 499
    goto :goto_e

    .line 500
    :cond_11
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 501
    .line 502
    .line 503
    :goto_e
    throw v0

    .line 504
    :cond_12
    return-object v3
.end method

.method static parseEtcResolverFirstNdots()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/resolv.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->parseEtcResolverFirstNdots(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method static parseEtcResolverFirstNdots(Ljava/io/File;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v2, "options"

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ndots:"

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    add-int/lit8 v2, v2, 0x6

    const/16 v3, 0x20

    .line 7
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gez v3, :cond_1

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return p0

    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    :goto_0
    if-nez v1, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 12
    :goto_1
    throw p0
.end method

.method static parseEtcResolverSearchDomains()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/etc/resolv.conf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->parseEtcResolverSearchDomains(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static parseEtcResolverSearchDomains(Ljava/io/File;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/4 p0, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x6

    if-nez p0, :cond_1

    const-string v5, "domain"

    .line 6
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-static {v3, v4}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string v5, "search"

    .line 9
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    invoke-static {v3, v4}, Lio/netty/util/internal/StringUtil;->indexOfNonWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 11
    sget-object v5, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->SEARCH_DOMAIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    if-eqz p0, :cond_3

    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 15
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :cond_3
    return-object v0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, p0

    move-object p0, v0

    :goto_1
    if-nez v2, :cond_4

    .line 16
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 18
    :goto_2
    throw p0
.end method

.method static parseSilently()Lio/netty/resolver/dns/DnsServerAddressStreamProvider;
    .locals 6

    .line 1
    const-string v0, "/etc/resolver"

    .line 2
    .line 3
    const-string v1, "/etc/resolv.conf"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;

    .line 6
    .line 7
    invoke-direct {v2, v1, v0}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v2}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->mayOverrideNameServers()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v2, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->INSTANCE:Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :goto_0
    return-object v2

    .line 20
    :catch_0
    move-exception v2

    .line 21
    sget-object v3, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 22
    .line 23
    const/4 v4, 0x3

    .line 24
    new-array v4, v4, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v5, 0x0

    .line 27
    aput-object v1, v4, v5

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    aput-object v0, v4, v1

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    aput-object v2, v4, v0

    .line 34
    .line 35
    const-string v0, "failed to parse {} and/or {}"

    .line 36
    .line 37
    invoke-interface {v3, v0, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;->INSTANCE:Lio/netty/resolver/dns/DefaultDnsServerAddressStreamProvider;

    .line 41
    .line 42
    return-object v0
.end method

.method private static putIfAbsent(Ljava/util/Map;Ljava/lang/String;Lio/netty/resolver/dns/DnsServerAddresses;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ">;",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/resolver/dns/DnsServerAddresses;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const-string p1, "Domain name {} already maps to addresses {} so new addresses {} will be discarded"

    invoke-interface {p0, p1, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static putIfAbsent(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/netty/resolver/dns/DnsServerAddresses;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetSocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lio/netty/resolver/dns/DnsServerAddresses;->sequential(Ljava/lang/Iterable;)Lio/netty/resolver/dns/DnsServerAddresses;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->putIfAbsent(Ljava/util/Map;Ljava/lang/String;Lio/netty/resolver/dns/DnsServerAddresses;)V

    return-void
.end method


# virtual methods
.method public nameServerAddressStream(Ljava/lang/String;)Lio/netty/resolver/dns/DnsServerAddressStream;
    .locals 3

    .line 1
    :goto_0
    const/16 v0, 0x2e

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ltz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sub-int/2addr v2, v1

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-object v1, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->domainToNameServerStreamMap:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lio/netty/resolver/dns/DnsServerAddresses;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Lio/netty/resolver/dns/DnsServerAddresses;->stream()Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    iget-object p1, p0, Lio/netty/resolver/dns/UnixResolverDnsServerAddressStreamProvider;->defaultNameServerAddresses:Lio/netty/resolver/dns/DnsServerAddresses;

    .line 41
    .line 42
    invoke-virtual {p1}, Lio/netty/resolver/dns/DnsServerAddresses;->stream()Lio/netty/resolver/dns/DnsServerAddressStream;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method
