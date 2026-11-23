.class public Lcom/haima/hmcp/dns/DnsAsyncParser;
.super Lcom/haima/hmcp/dns/DnsParser;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DnsAsyncParser"


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/dns/DnsParser;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/haima/hmcp/dns/DnsAsyncParser;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    const v4, 0x7fffffff

    .line 19
    .line 20
    .line 21
    const-wide/16 v5, 0x1e

    .line 22
    .line 23
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 24
    .line 25
    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    .line 26
    .line 27
    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 28
    .line 29
    .line 30
    move-object v2, v0

    .line 31
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/haima/hmcp/dns/DnsAsyncParser;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 35
    .line 36
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/dns/DnsAsyncParser;->lambda$getHostAddressListAsync$0(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/dns/DnsAsyncParser;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/dns/DnsAsyncParser;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/dns/DnsAsyncParser;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/dns/DnsAsyncParser;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/dns/DnsAsyncParser;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/dns/interfaces/DnsResultListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/dns/DnsAsyncParser;->getHostAddressList(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/dns/interfaces/DnsResultListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/haima/hmcp/dns/DnsAsyncParser;Lcom/haima/hmcp/dns/DnsCache;Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/dns/DnsAsyncParser;->saveResultToCache(Lcom/haima/hmcp/dns/DnsCache;Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getHostAddressList(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/dns/interfaces/DnsResultListener;)V
    .locals 8
    .param p4    # Lcom/haima/hmcp/dns/interfaces/DnsResultListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/haima/hmcp/dns/interfaces/DnsResultListener;",
            ")V"
        }
    .end annotation

    .line 1
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
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x2

    .line 11
    const-string v3, "DnsAsyncParser"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-array p1, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    aput-object p2, p1, v4

    .line 19
    .line 20
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    aput-object p2, p1, v1

    .line 25
    .line 26
    const-string p2, "[%s] getHostAddressList dnsFunctionEnabled is closed,result is %s"

    .line 27
    .line 28
    invoke-static {v3, p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p4, p3}, Lcom/haima/hmcp/dns/interfaces/DnsResultListener;->dnsAsyncResult(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v6}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {p0, v6, v5}, Lcom/haima/hmcp/dns/DnsParser;->getIpFromCache(Lcom/haima/hmcp/dns/DnsCache;Ljava/lang/String;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_1

    .line 74
    .line 75
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    check-cast v6, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p3, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-direct {p0, p3}, Lcom/haima/hmcp/dns/DnsAsyncParser;->isAllHostHaveIp(Ljava/util/concurrent/ConcurrentHashMap;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    new-array p1, v2, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object p2, p1, v4

    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    aput-object p2, p1, v1

    .line 100
    .line 101
    const-string p2, "[%s] getHostAddressList all host is in cache: %s"

    .line 102
    .line 103
    invoke-static {v3, p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {p4, p3}, Lcom/haima/hmcp/dns/interfaces/DnsResultListener;->dnsAsyncResult(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_3
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    if-eqz v5, :cond_5

    .line 123
    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Ljava/util/Map$Entry;

    .line 129
    .line 130
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    check-cast v6, Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_4

    .line 147
    .line 148
    invoke-static {v6}, Lcom/haima/hmcp/utils/Utils;->isHostName(Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_4

    .line 153
    .line 154
    invoke-direct {p0, v6}, Lcom/haima/hmcp/dns/DnsAsyncParser;->systemParseHost(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-virtual {v5}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {p0, v5, v6}, Lcom/haima/hmcp/dns/DnsParser;->getIpFromCache(Lcom/haima/hmcp/dns/DnsCache;Ljava/lang/String;)Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    if-eqz v5, :cond_4

    .line 170
    .line 171
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-eqz v7, :cond_4

    .line 176
    .line 177
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    check-cast v5, Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {p3, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_5
    invoke-direct {p0, p3}, Lcom/haima/hmcp/dns/DnsAsyncParser;->isAllHostHaveIp(Ljava/util/concurrent/ConcurrentHashMap;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_6

    .line 192
    .line 193
    new-array p1, v2, [Ljava/lang/Object;

    .line 194
    .line 195
    aput-object p2, p1, v4

    .line 196
    .line 197
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    aput-object p2, p1, v1

    .line 202
    .line 203
    const-string p2, "[%s] getHostAddressList all host is in cache after systemParseHost: %s"

    .line 204
    .line 205
    invoke-static {v3, p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p4, p3}, Lcom/haima/hmcp/dns/interfaces/DnsResultListener;->dnsAsyncResult(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 209
    .line 210
    .line 211
    return-void

    .line 212
    :cond_6
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    iget-boolean v0, v0, Lcom/haima/hmcp/dns/DnsManager;->mOpenResolveIp:Z

    .line 217
    .line 218
    if-nez v0, :cond_7

    .line 219
    .line 220
    new-array p1, v2, [Ljava/lang/Object;

    .line 221
    .line 222
    aput-object p2, p1, v4

    .line 223
    .line 224
    aput-object p3, p1, v1

    .line 225
    .line 226
    const-string p2, "[%s] 307 is closed: %s"

    .line 227
    .line 228
    invoke-static {v3, p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p4, p3}, Lcom/haima/hmcp/dns/interfaces/DnsResultListener;->dnsAsyncResult(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {p3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 242
    .line 243
    .line 244
    invoke-static {p1}, Lcom/haima/hmcp/business/HmcpRequest;->getInstance(Landroid/content/Context;)Lcom/haima/hmcp/business/HmcpRequest;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    new-array v2, v2, [Ljava/lang/Object;

    .line 249
    .line 250
    aput-object p2, v2, v4

    .line 251
    .line 252
    aput-object v0, v2, v1

    .line 253
    .line 254
    const-string v1, "[%s] getDnsRequestIp 307 request start with host:%s"

    .line 255
    .line 256
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    new-array v2, v4, [Ljava/lang/Object;

    .line 261
    .line 262
    invoke-static {v3, v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    const-string v2, "12514"

    .line 266
    .line 267
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    new-instance v1, Lcom/haima/hmcp/dns/DnsAsyncParser$2;

    .line 271
    .line 272
    invoke-direct {v1, p0, p3, p2, p4}, Lcom/haima/hmcp/dns/DnsAsyncParser$2;-><init>(Lcom/haima/hmcp/dns/DnsAsyncParser;Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;Lcom/haima/hmcp/dns/interfaces/DnsResultListener;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getDnsRequestIp(Ljava/util/List;Lcom/haima/hmcp/dns/interfaces/OnDnsRequestServiceIpListener;)V

    .line 276
    .line 277
    .line 278
    :goto_2
    return-void
.end method

.method private isAllHostHaveIp(Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-static {v1}, Lcom/haima/hmcp/utils/Utils;->isHostName(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    return p1

    .line 47
    :cond_1
    const/4 p1, 0x1

    .line 48
    return p1
.end method

.method private static synthetic lambda$getHostAddressListAsync$0(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;->dnsAsyncCallback(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private saveResultToCache(Lcom/haima/hmcp/dns/DnsCache;Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;->host:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget v0, p2, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;->code:I

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p2, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;->data:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-object v0, p2, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;->data:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result$Data;

    .line 41
    .line 42
    iget v2, v1, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result$Data;->type:I

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    if-ne v2, v3, :cond_2

    .line 46
    .line 47
    sget-object v2, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV4:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 48
    .line 49
    iget-object v3, p2, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;->host:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result$Data;->ip:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {p1, v2, v3, v1}, Lcom/haima/hmcp/dns/DnsCache;->addIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const/4 v3, 0x2

    .line 58
    if-ne v2, v3, :cond_1

    .line 59
    .line 60
    sget-object v2, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV6:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 61
    .line 62
    iget-object v3, p2, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result;->host:Ljava/lang/String;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/haima/hmcp/dns/entity/DnsRequestIpResult$Result$Data;->ip:Ljava/util/List;

    .line 65
    .line 66
    invoke-virtual {p1, v2, v3, v1}, Lcom/haima/hmcp/dns/DnsCache;->addIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :goto_1
    return-void
.end method

.method private systemParseHost(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    array-length v3, v2

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v3, :cond_3

    .line 25
    .line 26
    aget-object v5, v2, v4

    .line 27
    .line 28
    instance-of v6, v5, Ljava/net/Inet4Address;

    .line 29
    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    instance-of v6, v5, Ljava/net/Inet6Address;

    .line 41
    .line 42
    if-eqz v6, :cond_2

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    :goto_2
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    sget-object v3, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV4:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 63
    .line 64
    invoke-virtual {v2, v3, p1, v0}, Lcom/haima/hmcp/dns/DnsCache;->addIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v2, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV6:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 76
    .line 77
    invoke-virtual {v0, v2, p1, v1}, Lcom/haima/hmcp/dns/DnsCache;->addIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catchall_0
    move-exception v2

    .line 82
    goto :goto_4

    .line 83
    :catch_0
    move-exception v2

    .line 84
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    .line 86
    .line 87
    const-string v3, "DnsAsyncParser"

    .line 88
    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v5, "systemParseHost got error:"

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v3, "systemParseHost got error"

    .line 110
    .line 111
    invoke-virtual {p0, v3, v2}, Lcom/haima/hmcp/dns/DnsParser;->uploadException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :goto_3
    return-void

    .line 116
    :goto_4
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    sget-object v4, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV4:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 125
    .line 126
    invoke-virtual {v3, v4, p1, v0}, Lcom/haima/hmcp/dns/DnsCache;->addIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sget-object v3, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV6:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 138
    .line 139
    invoke-virtual {v0, v3, p1, v1}, Lcom/haima/hmcp/dns/DnsCache;->addIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/util/List;)V

    .line 140
    .line 141
    .line 142
    throw v2
.end method


# virtual methods
.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/DnsAsyncParser;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHostAddressListAsync(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;)V
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    const/4 v10, 0x1

    .line 6
    const-string v11, "DnsAsyncParser"

    .line 7
    .line 8
    const/4 v12, 0x0

    .line 9
    if-eqz p3, :cond_5

    .line 10
    .line 11
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    const/4 v13, 0x2

    .line 20
    new-array v0, v13, [Ljava/lang/Object;

    .line 21
    .line 22
    aput-object v9, v0, v12

    .line 23
    .line 24
    aput-object p3, v0, v10

    .line 25
    .line 26
    const-string v1, "[%s] getHostAddressListAsync enter with hostList:%s"

    .line 27
    .line 28
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-array v1, v12, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-static {v11, v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-string v1, "12502"

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    .line 44
    invoke-direct {v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v14, v1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    invoke-static {v1}, Lcom/haima/hmcp/utils/Utils;->isValidIPV4Address(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    sget-object v3, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV4:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 81
    .line 82
    filled-new-array {v1}, [Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v2, v3, v1, v4}, Lcom/haima/hmcp/dns/DnsCache;->addIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-static {v1}, Lcom/haima/hmcp/utils/Utils;->isIPv6Address(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lcom/haima/hmcp/dns/DnsManager;->getDnsCache()Lcom/haima/hmcp/dns/DnsCache;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    sget-object v3, Lcom/haima/hmcp/dns/DnsManager$DnsIpType;->IPV6:Lcom/haima/hmcp/dns/DnsManager$DnsIpType;

    .line 109
    .line 110
    filled-new-array {v1}, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v2, v3, v1, v4}, Lcom/haima/hmcp/dns/DnsCache;->addIp(Lcom/haima/hmcp/dns/DnsManager$DnsIpType;Ljava/lang/String;Ljava/util/List;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    :try_start_0
    iget-object v0, v8, Lcom/haima/hmcp/dns/DnsAsyncParser;->mExecutorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 123
    .line 124
    new-instance v15, Lcom/haima/hmcp/dns/DnsAsyncParser$1;

    .line 125
    .line 126
    move-object v1, v15

    .line 127
    move-object/from16 v2, p0

    .line 128
    .line 129
    move-object/from16 v3, p2

    .line 130
    .line 131
    move-object/from16 v4, p3

    .line 132
    .line 133
    move-object/from16 v5, p1

    .line 134
    .line 135
    move-object v6, v14

    .line 136
    move-object/from16 v7, p4

    .line 137
    .line 138
    invoke-direct/range {v1 .. v7}, Lcom/haima/hmcp/dns/DnsAsyncParser$1;-><init>(Lcom/haima/hmcp/dns/DnsAsyncParser;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v15}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    new-array v1, v13, [Ljava/lang/Object;

    .line 147
    .line 148
    aput-object v9, v1, v12

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    aput-object v2, v1, v10

    .line 155
    .line 156
    const-string v2, "[%s] call getHostAddressListAsync got exception:%s"

    .line 157
    .line 158
    invoke-static {v11, v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v2, "getHostAddressListAsync"

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v8, v1, v0}, Lcom/haima/hmcp/dns/DnsParser;->uploadException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, v8, Lcom/haima/hmcp/dns/DnsAsyncParser;->mHandler:Landroid/os/Handler;

    .line 182
    .line 183
    if-eqz v0, :cond_4

    .line 184
    .line 185
    new-instance v1, Lcom/haima/hmcp/dns/a;

    .line 186
    .line 187
    move-object/from16 v2, p4

    .line 188
    .line 189
    invoke-direct {v1, v2, v14}, Lcom/haima/hmcp/dns/a;-><init>(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    .line 194
    .line 195
    :cond_4
    :goto_1
    return-void

    .line 196
    :cond_5
    :goto_2
    new-array v0, v10, [Ljava/lang/Object;

    .line 197
    .line 198
    aput-object v9, v0, v12

    .line 199
    .line 200
    const-string v1, "[%s] Parameter not valid"

    .line 201
    .line 202
    invoke-static {v11, v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    const-string v0, "getHostAddressListAsync parameter not valid"

    .line 206
    .line 207
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return-void
.end method
