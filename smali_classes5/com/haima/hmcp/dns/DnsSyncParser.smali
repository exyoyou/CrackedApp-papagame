.class public Lcom/haima/hmcp/dns/DnsSyncParser;
.super Lcom/haima/hmcp/dns/DnsParser;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DnsSyncParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/dns/DnsParser;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/dns/DnsSyncParser;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/dns/DnsSyncParser;->lambda$resolveHost$0(Ljava/lang/String;)V

    return-void
.end method

.method private doResloveHost(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    const-string v0, "DnsSyncParser"

    .line 2
    .line 3
    const-string v1, "doResloveHost start for host: %s"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aput-object p1, v3, v4

    .line 10
    .line 11
    invoke-static {v0, v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "12506"

    .line 15
    .line 16
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    new-instance v5, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    array-length v7, v6

    .line 38
    const/4 v8, 0x0

    .line 39
    :goto_0
    if-ge v8, v7, :cond_2

    .line 40
    .line 41
    aget-object v9, v6, v8

    .line 42
    .line 43
    instance-of v10, v9, Ljava/net/Inet4Address;

    .line 44
    .line 45
    if-eqz v10, :cond_0

    .line 46
    .line 47
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    instance-of v10, v9, Ljava/net/Inet6Address;

    .line 56
    .line 57
    if-eqz v10, :cond_1

    .line 58
    .line 59
    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    const-string v6, ""

    .line 70
    .line 71
    const-string v7, ""

    .line 72
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-lez v8, :cond_3

    .line 79
    .line 80
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    sget-object v8, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV4:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 89
    .line 90
    invoke-virtual {v6, v8, p1, v3}, Lcom/haima/hmcp/dns/DnsCache;->addIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Ljava/lang/String;

    .line 98
    .line 99
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-lez v8, :cond_4

    .line 104
    .line 105
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    sget-object v8, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV6:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 114
    .line 115
    invoke-virtual {v7, v8, p1, v3}, Lcom/haima/hmcp/dns/DnsCache;->addIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/util/List;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    move-object v7, v3

    .line 123
    check-cast v7, Ljava/lang/String;

    .line 124
    .line 125
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    sub-long/2addr v8, v0

    .line 131
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 132
    .line 133
    const-string v1, "host: %s, ipv4Address: %s, ipv6: %s, usedTime: %d"

    .line 134
    .line 135
    const/4 v3, 0x4

    .line 136
    new-array v5, v3, [Ljava/lang/Object;

    .line 137
    .line 138
    aput-object p1, v5, v4

    .line 139
    .line 140
    aput-object v6, v5, v2

    .line 141
    .line 142
    const/4 v10, 0x2

    .line 143
    aput-object v7, v5, v10

    .line 144
    .line 145
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    const/4 v12, 0x3

    .line 150
    aput-object v11, v5, v12

    .line 151
    .line 152
    invoke-static {v0, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v5, "12507"

    .line 157
    .line 158
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-static {v5, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v1, "12507"

    .line 166
    .line 167
    const-string v5, "host: %s, ipv4: %s, ipv6: %s, usedTime: %d"

    .line 168
    .line 169
    new-array v11, v3, [Ljava/lang/Object;

    .line 170
    .line 171
    aput-object p1, v11, v4

    .line 172
    .line 173
    aput-object v6, v11, v2

    .line 174
    .line 175
    aput-object v7, v11, v10

    .line 176
    .line 177
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    aput-object v13, v11, v12

    .line 182
    .line 183
    invoke-static {v0, v5, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v0, "DnsSyncParser"

    .line 191
    .line 192
    const-string v1, "doResloveHost done host: %s, ipv4: %s, ipv6: %s, usedTime: %d"

    .line 193
    .line 194
    new-array v3, v3, [Ljava/lang/Object;

    .line 195
    .line 196
    aput-object p1, v3, v4

    .line 197
    .line 198
    aput-object v6, v3, v2

    .line 199
    .line 200
    aput-object v7, v3, v10

    .line 201
    .line 202
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    aput-object p1, v3, v12

    .line 207
    .line 208
    invoke-static {v0, v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :catchall_0
    move-exception p1

    .line 213
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    throw p1
.end method

.method private getHostAddress(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 6
    .line 7
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isInMainThread()Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x1

    .line 16
    aput-object v3, v1, v4

    .line 17
    .line 18
    const-string v3, "DnsSyncParser"

    .line 19
    .line 20
    const-string v5, "getHostAddress start for hosts: %s, isInMainThread: %s"

    .line 21
    .line 22
    invoke-static {v3, v5, v1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-array v1, v0, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    aput-object v5, v1, v2

    .line 32
    .line 33
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isInMainThread()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    aput-object v5, v1, v4

    .line 42
    .line 43
    const-string v5, "hosts: %s, isInMainThread: %s"

    .line 44
    .line 45
    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v5, "12502"

    .line 50
    .line 51
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v5, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Ljava/util/HashSet;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    new-instance v7, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    const/4 v9, 0x1

    .line 74
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    if-ge v8, v10, :cond_3

    .line 79
    .line 80
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v10

    .line 84
    check-cast v10, Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 87
    .line 88
    .line 89
    move-result-object v11

    .line 90
    invoke-virtual {v11}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    invoke-virtual {p0, v11, v10}, Lcom/haima/hmcp/dns/DnsParser;->getIpFromCache(Lcom/haima/hmcp/dns/DnsCache;Ljava/lang/String;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v11

    .line 98
    if-eqz v11, :cond_1

    .line 99
    .line 100
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result v12

    .line 104
    if-nez v12, :cond_0

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_0
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    :goto_1
    const/4 v9, 0x0

    .line 116
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    if-nez v9, :cond_2

    .line 124
    .line 125
    invoke-interface {v1, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v10}, Lcom/haima/hmcp/dns/DnsSyncParser;->resolveHost(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    const/4 v9, 0x0

    .line 132
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_3
    if-nez v9, :cond_9

    .line 136
    .line 137
    :cond_4
    sget-wide v8, Lcom/haima/hmcp/dns/DnsManager;->mGetTimeOut:J

    .line 138
    .line 139
    add-long/2addr v8, v5

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    .line 142
    .line 143
    move-result-wide v10

    .line 144
    cmp-long v1, v8, v10

    .line 145
    .line 146
    if-lez v1, :cond_9

    .line 147
    .line 148
    sget-wide v8, Lcom/haima/hmcp/dns/DnsManager;->mCheckInterval:J

    .line 149
    .line 150
    invoke-direct {p0, v8, v9}, Lcom/haima/hmcp/dns/DnsSyncParser;->sleepInterval(J)V

    .line 151
    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    const/4 v8, 0x1

    .line 155
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    if-ge v1, v9, :cond_8

    .line 160
    .line 161
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    check-cast v9, Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    invoke-virtual {v10}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    invoke-virtual {p0, v10, v9}, Lcom/haima/hmcp/dns/DnsParser;->getIpFromCache(Lcom/haima/hmcp/dns/DnsCache;Ljava/lang/String;)Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v9

    .line 179
    if-eqz v9, :cond_6

    .line 180
    .line 181
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-nez v10, :cond_5

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_5
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v9

    .line 192
    invoke-interface {v7, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_6
    :goto_4
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    if-nez v9, :cond_7

    .line 201
    .line 202
    const/4 v8, 0x0

    .line 203
    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_8
    if-eqz v8, :cond_4

    .line 207
    .line 208
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 209
    .line 210
    .line 211
    move-result-wide v8

    .line 212
    sub-long/2addr v8, v5

    .line 213
    const/4 v1, 0x0

    .line 214
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    const/4 v6, 0x3

    .line 219
    if-ge v1, v5, :cond_c

    .line 220
    .line 221
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    check-cast v5, Ljava/lang/String;

    .line 226
    .line 227
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    check-cast v10, Ljava/lang/CharSequence;

    .line 232
    .line 233
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    .line 235
    .line 236
    move-result v10

    .line 237
    if-eqz v10, :cond_a

    .line 238
    .line 239
    invoke-interface {v7, v1, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 243
    .line 244
    new-array v10, v0, [Ljava/lang/Object;

    .line 245
    .line 246
    aput-object v5, v10, v2

    .line 247
    .line 248
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 249
    .line 250
    .line 251
    move-result-object v5

    .line 252
    aput-object v5, v10, v4

    .line 253
    .line 254
    const-string v5, "host: %s, usedTime: %d"

    .line 255
    .line 256
    invoke-static {v6, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    const-string v6, "12505"

    .line 261
    .line 262
    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-static {v6, v5}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_7

    .line 270
    :cond_a
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    check-cast v10, Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v10}, Lcom/haima/hmcp/utils/Utils;->isIpv4Address(Ljava/lang/String;)Z

    .line 277
    .line 278
    .line 279
    move-result v10

    .line 280
    const-string v11, "host: %s -> ip: %s, usedTime: %d"

    .line 281
    .line 282
    if-nez v10, :cond_b

    .line 283
    .line 284
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 285
    .line 286
    new-array v6, v6, [Ljava/lang/Object;

    .line 287
    .line 288
    aput-object v5, v6, v2

    .line 289
    .line 290
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    aput-object v5, v6, v4

    .line 295
    .line 296
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    aput-object v5, v6, v0

    .line 301
    .line 302
    invoke-static {v10, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v5

    .line 306
    const-string v6, "12504"

    .line 307
    .line 308
    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-static {v6, v5}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    goto :goto_7

    .line 316
    :cond_b
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 317
    .line 318
    new-array v6, v6, [Ljava/lang/Object;

    .line 319
    .line 320
    aput-object v5, v6, v2

    .line 321
    .line 322
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    aput-object v5, v6, v4

    .line 327
    .line 328
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    aput-object v5, v6, v0

    .line 333
    .line 334
    invoke-static {v10, v11, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    const-string v6, "12503"

    .line 339
    .line 340
    invoke-static {v6, v5}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    :goto_7
    add-int/lit8 v1, v1, 0x1

    .line 344
    .line 345
    goto/16 :goto_6

    .line 346
    .line 347
    :cond_c
    new-array v1, v6, [Ljava/lang/Object;

    .line 348
    .line 349
    aput-object p1, v1, v2

    .line 350
    .line 351
    aput-object v7, v1, v4

    .line 352
    .line 353
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    aput-object p1, v1, v0

    .line 358
    .line 359
    const-string p1, "getHostAddress DONE for hosts: %s, resultList: %s, usedTime: %d"

    .line 360
    .line 361
    invoke-static {v3, p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    .line 363
    .line 364
    return-object v7
.end method

.method private synthetic lambda$resolveHost$0(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/dns/DnsSyncParser;->doResloveHost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object p1, v2, v3

    .line 13
    .line 14
    const-string p1, "resolveHost %s"

    .line 15
    .line 16
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/dns/DnsParser;->uploadException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private resolveHost(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/dns/e;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/dns/e;-><init>(Lcom/haima/hmcp/dns/DnsSyncParser;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private sleepInterval(J)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const-string p2, "DnsMainThread sleep"

    .line 7
    .line 8
    invoke-virtual {p0, p2, p1}, Lcom/haima/hmcp/dns/DnsParser;->uploadException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 9
    .line 10
    .line 11
    :goto_0
    return-void
.end method


# virtual methods
.method public getHostAddressListSync(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/dns/DnsManager;->dnsFunctionEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/dns/DnsSyncParser;->getHostAddress(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    const-string v1, "12513"

    .line 27
    .line 28
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 29
    .line 30
    const-string v3, "getHostAddress bad ret: %s, %s"

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    new-array v4, v4, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    aput-object p1, v4, v5

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    aput-object v0, v4, v5

    .line 40
    .line 41
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_1
    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v1, "getHostAddressListSync"

    .line 52
    .line 53
    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/dns/DnsParser;->uploadException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    return-object p1
.end method

.method public getHostAddressSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/dns/DnsManager;->dnsFunctionEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/haima/hmcp/dns/DnsSyncParser;->getHostAddress(Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eq v1, v3, :cond_1

    .line 31
    .line 32
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 33
    .line 34
    const-string v4, "getHostAddress bad ret: %s, %s"

    .line 35
    .line 36
    const/4 v5, 0x2

    .line 37
    new-array v5, v5, [Ljava/lang/Object;

    .line 38
    .line 39
    aput-object p1, v5, v2

    .line 40
    .line 41
    aput-object v0, v5, v3

    .line 42
    .line 43
    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "12513"

    .line 48
    .line 49
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    return-object v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "getHostAddressSync"

    .line 66
    .line 67
    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/dns/DnsParser;->uploadException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 68
    .line 69
    .line 70
    return-object p1
.end method
