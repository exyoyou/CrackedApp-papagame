.class Lcom/haima/hmcp/dns/DnsAsyncParser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/dns/DnsAsyncParser;->getHostAddressListAsync(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

.field final synthetic val$callBack:Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

.field final synthetic val$hostLst:Ljava/util/List;

.field final synthetic val$tagName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/dns/DnsAsyncParser;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$tagName:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$hostLst:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$context:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$callBack:Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/dns/DnsAsyncParser$1;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->lambda$run$1(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->lambda$null$0(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method public static synthetic c(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->lambda$run$2(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method private static synthetic lambda$null$0(Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private synthetic lambda$run$1(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 2
    .line 3
    new-instance v1, Lcom/haima/hmcp/dns/b;

    .line 4
    .line 5
    invoke-direct {v1, p4}, Lcom/haima/hmcp/dns/b;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1, p2, p3, v1}, Lcom/haima/hmcp/dns/DnsAsyncParser;->access$200(Lcom/haima/hmcp/dns/DnsAsyncParser;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Lcom/haima/hmcp/dns/interfaces/DnsResultListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static synthetic lambda$run$2(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;->dnsAsyncCallback(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    const-string v8, "12507"

    .line 4
    .line 5
    const-string v9, "[%s] getHostAddressListAsync timeOut,then call result:%s,usedTime: %d"

    .line 6
    .line 7
    const-string v10, "DnsAsyncParser"

    .line 8
    .line 9
    const/4 v11, 0x2

    .line 10
    new-array v0, v11, [Ljava/lang/Object;

    .line 11
    .line 12
    iget-object v1, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$tagName:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v12, 0x0

    .line 15
    aput-object v1, v0, v12

    .line 16
    .line 17
    iget-object v1, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$hostLst:Ljava/util/List;

    .line 18
    .line 19
    const/4 v13, 0x1

    .line 20
    aput-object v1, v0, v13

    .line 21
    .line 22
    const-string v1, "[%s] getHostAddressListAsync start with hostList:%s"

    .line 23
    .line 24
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "12506"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 34
    .line 35
    invoke-direct {v0, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 36
    .line 37
    .line 38
    sget-wide v14, Lcom/haima/hmcp/dns/DnsManager;->mGetTimeOut:J

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v16

    .line 44
    const/4 v6, 0x3

    .line 45
    :try_start_0
    iget-object v1, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/haima/hmcp/dns/DnsAsyncParser;->access$000(Lcom/haima/hmcp/dns/DnsAsyncParser;)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    iget-object v3, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$context:Landroid/content/Context;

    .line 52
    .line 53
    iget-object v4, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$tagName:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v2, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    new-instance v1, Lcom/haima/hmcp/dns/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    move-object/from16 v18, v1

    .line 60
    .line 61
    move-object/from16 v1, v18

    .line 62
    .line 63
    move-object/from16 v19, v2

    .line 64
    .line 65
    move-object/from16 v2, p0

    .line 66
    .line 67
    move-object v11, v5

    .line 68
    move-object/from16 v5, v19

    .line 69
    .line 70
    const/4 v13, 0x3

    .line 71
    move-object v6, v0

    .line 72
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/dns/c;-><init>(Lcom/haima/hmcp/dns/DnsAsyncParser$1;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/CountDownLatch;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v11, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 76
    .line 77
    .line 78
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 79
    .line 80
    invoke-virtual {v0, v14, v15, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 81
    .line 82
    .line 83
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 85
    .line 86
    .line 87
    move-result-wide v1

    .line 88
    sub-long v1, v1, v16

    .line 89
    .line 90
    if-nez v0, :cond_0

    .line 91
    .line 92
    new-array v0, v13, [Ljava/lang/Object;

    .line 93
    .line 94
    iget-object v3, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$tagName:Ljava/lang/String;

    .line 95
    .line 96
    aput-object v3, v0, v12

    .line 97
    .line 98
    iget-object v3, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    .line 100
    const/4 v4, 0x1

    .line 101
    aput-object v3, v0, v4

    .line 102
    .line 103
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const/4 v3, 0x2

    .line 108
    aput-object v1, v0, v3

    .line 109
    .line 110
    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    const/4 v3, 0x2

    .line 116
    const/4 v4, 0x1

    .line 117
    new-array v0, v13, [Ljava/lang/Object;

    .line 118
    .line 119
    iget-object v5, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$tagName:Ljava/lang/String;

    .line 120
    .line 121
    aput-object v5, v0, v12

    .line 122
    .line 123
    iget-object v5, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 124
    .line 125
    aput-object v5, v0, v4

    .line 126
    .line 127
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    aput-object v1, v0, v3

    .line 132
    .line 133
    const-string v1, "[%s] getHostAddressListAsync success with result:%s,usedTime: %d"

    .line 134
    .line 135
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :goto_0
    new-array v1, v12, [Ljava/lang/Object;

    .line 140
    .line 141
    invoke-static {v10, v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 145
    .line 146
    invoke-static {v1}, Lcom/haima/hmcp/dns/DnsAsyncParser;->access$100(Lcom/haima/hmcp/dns/DnsAsyncParser;)Landroid/os/Handler;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eqz v1, :cond_1

    .line 151
    .line 152
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v8, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 160
    .line 161
    invoke-static {v0}, Lcom/haima/hmcp/dns/DnsAsyncParser;->access$100(Lcom/haima/hmcp/dns/DnsAsyncParser;)Landroid/os/Handler;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget-object v1, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$callBack:Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;

    .line 166
    .line 167
    iget-object v2, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 168
    .line 169
    new-instance v3, Lcom/haima/hmcp/dns/d;

    .line 170
    .line 171
    invoke-direct {v3, v1, v2}, Lcom/haima/hmcp/dns/d;-><init>(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 172
    .line 173
    .line 174
    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :catch_0
    move-exception v0

    .line 179
    goto :goto_2

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    const/4 v13, 0x3

    .line 182
    goto :goto_4

    .line 183
    :catch_1
    move-exception v0

    .line 184
    const/4 v13, 0x3

    .line 185
    :goto_2
    :try_start_2
    const-string v1, "[%s] call getHostAddressList got exception:%s"

    .line 186
    .line 187
    const/4 v2, 0x2

    .line 188
    new-array v3, v2, [Ljava/lang/Object;

    .line 189
    .line 190
    iget-object v2, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$tagName:Ljava/lang/String;

    .line 191
    .line 192
    aput-object v2, v3, v12

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    const/4 v4, 0x1

    .line 199
    aput-object v2, v3, v4

    .line 200
    .line 201
    invoke-static {v10, v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 205
    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    iget-object v3, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$tagName:Ljava/lang/String;

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v3, " getHostAddressListAsync:"

    .line 217
    .line 218
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1, v2, v0}, Lcom/haima/hmcp/dns/DnsParser;->uploadException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 226
    .line 227
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 229
    .line 230
    .line 231
    move-result-wide v0

    .line 232
    sub-long v0, v0, v16

    .line 233
    .line 234
    new-array v2, v13, [Ljava/lang/Object;

    .line 235
    .line 236
    iget-object v3, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$tagName:Ljava/lang/String;

    .line 237
    .line 238
    aput-object v3, v2, v12

    .line 239
    .line 240
    iget-object v3, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 241
    .line 242
    const/4 v4, 0x1

    .line 243
    aput-object v3, v2, v4

    .line 244
    .line 245
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    const/4 v1, 0x2

    .line 250
    aput-object v0, v2, v1

    .line 251
    .line 252
    invoke-static {v9, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    new-array v1, v12, [Ljava/lang/Object;

    .line 257
    .line 258
    invoke-static {v10, v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    iget-object v1, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 262
    .line 263
    invoke-static {v1}, Lcom/haima/hmcp/dns/DnsAsyncParser;->access$100(Lcom/haima/hmcp/dns/DnsAsyncParser;)Landroid/os/Handler;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    if-eqz v1, :cond_1

    .line 268
    .line 269
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-static {v8, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v0, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 277
    .line 278
    invoke-static {v0}, Lcom/haima/hmcp/dns/DnsAsyncParser;->access$100(Lcom/haima/hmcp/dns/DnsAsyncParser;)Landroid/os/Handler;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iget-object v1, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$callBack:Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;

    .line 283
    .line 284
    iget-object v2, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 285
    .line 286
    new-instance v3, Lcom/haima/hmcp/dns/d;

    .line 287
    .line 288
    invoke-direct {v3, v1, v2}, Lcom/haima/hmcp/dns/d;-><init>(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 289
    .line 290
    .line 291
    goto :goto_1

    .line 292
    :cond_1
    :goto_3
    return-void

    .line 293
    :catchall_1
    move-exception v0

    .line 294
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 295
    .line 296
    .line 297
    move-result-wide v1

    .line 298
    sub-long v1, v1, v16

    .line 299
    .line 300
    new-array v3, v13, [Ljava/lang/Object;

    .line 301
    .line 302
    iget-object v4, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$tagName:Ljava/lang/String;

    .line 303
    .line 304
    aput-object v4, v3, v12

    .line 305
    .line 306
    iget-object v4, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 307
    .line 308
    const/4 v5, 0x1

    .line 309
    aput-object v4, v3, v5

    .line 310
    .line 311
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    const/4 v2, 0x2

    .line 316
    aput-object v1, v3, v2

    .line 317
    .line 318
    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    new-array v2, v12, [Ljava/lang/Object;

    .line 323
    .line 324
    invoke-static {v10, v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    iget-object v2, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 328
    .line 329
    invoke-static {v2}, Lcom/haima/hmcp/dns/DnsAsyncParser;->access$100(Lcom/haima/hmcp/dns/DnsAsyncParser;)Landroid/os/Handler;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    if-eqz v2, :cond_2

    .line 334
    .line 335
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-static {v8, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget-object v1, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->this$0:Lcom/haima/hmcp/dns/DnsAsyncParser;

    .line 343
    .line 344
    invoke-static {v1}, Lcom/haima/hmcp/dns/DnsAsyncParser;->access$100(Lcom/haima/hmcp/dns/DnsAsyncParser;)Landroid/os/Handler;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    iget-object v2, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$callBack:Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;

    .line 349
    .line 350
    iget-object v3, v7, Lcom/haima/hmcp/dns/DnsAsyncParser$1;->val$hashResult:Ljava/util/concurrent/ConcurrentHashMap;

    .line 351
    .line 352
    new-instance v4, Lcom/haima/hmcp/dns/d;

    .line 353
    .line 354
    invoke-direct {v4, v2, v3}, Lcom/haima/hmcp/dns/d;-><init>(Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    .line 359
    .line 360
    :cond_2
    throw v0
.end method
