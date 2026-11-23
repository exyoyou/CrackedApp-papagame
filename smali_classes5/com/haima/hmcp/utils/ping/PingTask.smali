.class Lcom/haima/hmcp/utils/ping/PingTask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/ping/PingTask$PingHandler;
    }
.end annotation


# static fields
.field private static final LINE_SEP:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "NetPingTask"

.field private static final TO_PING:I = 0x1

.field private static final UNKNOW_HOST_RETRY:I = 0x2


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private handler:Landroid/os/Handler;

.field private isRunning:Z

.field private mContext:Landroid/content/Context;

.field private mIpAddress:Ljava/lang/String;

.field private mPingCallback:Lcom/haima/hmcp/utils/ping/PingCallback;

.field private mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

.field private mPingResult:Lcom/haima/hmcp/utils/ping/PingResult;

.field private unknowHostRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "line.separator"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/haima/hmcp/utils/ping/PingTask;->LINE_SEP:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->unknowHostRetryCount:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->isRunning:Z

    .line 9
    .line 10
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/utils/ping/PingTask;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/utils/ping/PingTask;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mIpAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/haima/hmcp/utils/ping/PingTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mIpAddress:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/haima/hmcp/utils/ping/PingTask;)Lcom/haima/hmcp/utils/ping/PingPara;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/utils/ping/PingTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/utils/ping/PingTask;->resolveHost(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/utils/ping/PingTask;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/utils/ping/PingTask;->ping(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/haima/hmcp/utils/ping/PingTask;)Lcom/haima/hmcp/utils/ping/PingResult;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mPingResult:Lcom/haima/hmcp/utils/ping/PingResult;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/haima/hmcp/utils/ping/PingTask;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lcom/haima/hmcp/utils/ping/PingTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/utils/ping/PingTask;->retry()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lcom/haima/hmcp/utils/ping/PingTask;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/utils/ping/PingTask;->toPing()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkHandler()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/haima/hmcp/utils/ping/PingTask$PingHandler;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->handler:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/os/HandlerThread;

    .line 13
    .line 14
    const-string v2, "NetPingTask"

    .line 15
    .line 16
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/haima/hmcp/utils/ping/PingTask$PingHandler;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v2, p0, v1}, Lcom/haima/hmcp/utils/ping/PingTask$PingHandler;-><init>(Lcom/haima/hmcp/utils/ping/PingTask;Landroid/os/Looper;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/haima/hmcp/utils/ping/PingTask;->handler:Landroid/os/Handler;

    .line 32
    .line 33
    :cond_0
    monitor-exit v0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v1

    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private checkThreadPool()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Ljava/util/concurrent/Executors;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->executor:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->executor:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    :cond_0
    monitor-exit v0

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1

    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method private varargs closeIO([Ljava/io/Closeable;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catch_0
    move-exception v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    return-void
.end method

.method private ping(Ljava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    const-string v1, "NetPingTask"

    .line 4
    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_4

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    new-array v3, v2, [Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v4, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 15
    .line 16
    iget-wide v4, v4, Lcom/haima/hmcp/utils/ping/PingPara;->pingCount:J

    .line 17
    .line 18
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v4, v3, v5

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object p1, v3, v4

    .line 27
    .line 28
    const-string p1, "ping -c %s %s"

    .line 29
    .line 30
    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const/4 v3, 0x3

    .line 35
    const/4 v6, 0x0

    .line 36
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const-string v8, "sh"

    .line 41
    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 43
    .line 44
    .line 45
    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 46
    :try_start_1
    new-instance v8, Ljava/io/DataOutputStream;

    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 53
    .line 54
    .line 55
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v8, p1}, Ljava/io/OutputStream;->write([B)V

    .line 60
    .line 61
    .line 62
    sget-object p1, Lcom/haima/hmcp/utils/ping/PingTask;->LINE_SEP:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v8, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 68
    .line 69
    .line 70
    new-instance v9, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v10, "exit"

    .line 76
    .line 77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v8, p1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 91
    .line 92
    .line 93
    new-instance p1, Ljava/io/BufferedReader;

    .line 94
    .line 95
    new-instance v9, Ljava/io/InputStreamReader;

    .line 96
    .line 97
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    invoke-direct {v9, v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    .line 106
    .line 107
    :try_start_3
    new-instance v9, Ljava/io/BufferedReader;

    .line 108
    .line 109
    new-instance v10, Ljava/io/InputStreamReader;

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    .line 112
    .line 113
    .line 114
    move-result-object v11

    .line 115
    invoke-direct {v10, v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    .line 120
    .line 121
    :try_start_4
    new-instance v0, Lcom/haima/hmcp/utils/ping/PingResult;

    .line 122
    .line 123
    invoke-direct {v0}, Lcom/haima/hmcp/utils/ping/PingResult;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    if-eqz v6, :cond_0

    .line 131
    .line 132
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    if-eqz v6, :cond_0

    .line 137
    .line 138
    invoke-virtual {v0, v6}, Lcom/haima/hmcp/utils/ping/PingResult;->successAppend(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v10, "ping success info: "

    .line 148
    .line 149
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ping/PingResult;->getSuccessMsg()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-static {v1, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    if-eqz v6, :cond_1

    .line 171
    .line 172
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    if-eqz v6, :cond_1

    .line 177
    .line 178
    invoke-virtual {v0, v6}, Lcom/haima/hmcp/utils/ping/PingResult;->errorAppend(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v10, "ping error info: "

    .line 188
    .line 189
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ping/PingResult;->getErrorMsg()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    invoke-static {v1, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ping/PingResult;->clone()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Lcom/haima/hmcp/utils/ping/PingResult;

    .line 211
    .line 212
    iput-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mPingResult:Lcom/haima/hmcp/utils/ping/PingResult;

    .line 213
    .line 214
    invoke-direct {p0, v0}, Lcom/haima/hmcp/utils/ping/PingTask;->toReport(Lcom/haima/hmcp/utils/ping/PingResult;)V

    .line 215
    .line 216
    .line 217
    const-string v0, "new ping delay get."

    .line 218
    .line 219
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    .line 221
    .line 222
    new-array v0, v3, [Ljava/io/Closeable;

    .line 223
    .line 224
    aput-object v8, v0, v5

    .line 225
    .line 226
    aput-object p1, v0, v4

    .line 227
    .line 228
    aput-object v9, v0, v2

    .line 229
    .line 230
    invoke-direct {p0, v0}, Lcom/haima/hmcp/utils/ping/PingTask;->closeIO([Ljava/io/Closeable;)V

    .line 231
    .line 232
    .line 233
    goto :goto_5

    .line 234
    :catchall_0
    move-exception v0

    .line 235
    goto :goto_2

    .line 236
    :catch_0
    move-exception v0

    .line 237
    goto :goto_3

    .line 238
    :catchall_1
    move-exception v0

    .line 239
    move-object v9, v6

    .line 240
    goto :goto_2

    .line 241
    :catch_1
    move-exception v0

    .line 242
    move-object v9, v6

    .line 243
    goto :goto_3

    .line 244
    :catchall_2
    move-exception v0

    .line 245
    move-object p1, v6

    .line 246
    move-object v9, p1

    .line 247
    :goto_2
    move-object v6, v8

    .line 248
    goto :goto_6

    .line 249
    :catch_2
    move-exception v0

    .line 250
    move-object p1, v6

    .line 251
    move-object v9, p1

    .line 252
    :goto_3
    move-object v6, v8

    .line 253
    goto :goto_4

    .line 254
    :catchall_3
    move-exception v0

    .line 255
    move-object p1, v6

    .line 256
    move-object v9, p1

    .line 257
    goto :goto_6

    .line 258
    :catch_3
    move-exception v0

    .line 259
    move-object p1, v6

    .line 260
    move-object v9, p1

    .line 261
    goto :goto_4

    .line 262
    :catchall_4
    move-exception v0

    .line 263
    move-object p1, v6

    .line 264
    move-object v7, p1

    .line 265
    move-object v9, v7

    .line 266
    goto :goto_6

    .line 267
    :catch_4
    move-exception v0

    .line 268
    move-object p1, v6

    .line 269
    move-object v7, p1

    .line 270
    move-object v9, v7

    .line 271
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 272
    .line 273
    .line 274
    new-array v0, v3, [Ljava/io/Closeable;

    .line 275
    .line 276
    aput-object v6, v0, v5

    .line 277
    .line 278
    aput-object p1, v0, v4

    .line 279
    .line 280
    aput-object v9, v0, v2

    .line 281
    .line 282
    invoke-direct {p0, v0}, Lcom/haima/hmcp/utils/ping/PingTask;->closeIO([Ljava/io/Closeable;)V

    .line 283
    .line 284
    .line 285
    if-eqz v7, :cond_2

    .line 286
    .line 287
    :goto_5
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 288
    .line 289
    .line 290
    :cond_2
    return-void

    .line 291
    :catchall_5
    move-exception v0

    .line 292
    :goto_6
    new-array v1, v3, [Ljava/io/Closeable;

    .line 293
    .line 294
    aput-object v6, v1, v5

    .line 295
    .line 296
    aput-object p1, v1, v4

    .line 297
    .line 298
    aput-object v9, v1, v2

    .line 299
    .line 300
    invoke-direct {p0, v1}, Lcom/haima/hmcp/utils/ping/PingTask;->closeIO([Ljava/io/Closeable;)V

    .line 301
    .line 302
    .line 303
    if-eqz v7, :cond_3

    .line 304
    .line 305
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 306
    .line 307
    .line 308
    :cond_3
    throw v0

    .line 309
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 310
    .line 311
    const-string v0, "address is null"

    .line 312
    .line 313
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    throw p1
.end method

.method private resolveHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private retry()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->unknowHostRetryCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->unknowHostRetryCount:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "retry count: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->unknowHostRetryCount:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "NetPingTask"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->unknowHostRetryCount:I

    .line 32
    .line 33
    iget-object v2, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/haima/hmcp/utils/ping/PingPara;->UNKNOW_HOST_RETRY_INTERVALS:[I

    .line 36
    .line 37
    array-length v3, v2

    .line 38
    if-ge v0, v3, :cond_0

    .line 39
    .line 40
    iget-object v3, p0, Lcom/haima/hmcp/utils/ping/PingTask;->handler:Landroid/os/Handler;

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    aget v0, v2, v0

    .line 45
    .line 46
    int-to-long v2, v0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v4, "retry delay time: "

    .line 53
    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->handler:Landroid/os/Handler;

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const-string v0, "retry failed"

    .line 75
    .line 76
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mPingCallback:Lcom/haima/hmcp/utils/ping/PingCallback;

    .line 80
    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    iget-object v1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 84
    .line 85
    invoke-interface {v0, v1}, Lcom/haima/hmcp/utils/ping/PingCallback;->pingFailed(Lcom/haima/hmcp/utils/ping/PingPara;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/ping/PingTask;->stop()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/ping/PingTask;->release()V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    return-void
.end method

.method private toPing()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "NetPingTask"

    .line 6
    .line 7
    const-string v1, "Ping ExecutorServicePool is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lcom/haima/hmcp/utils/ping/PingTask$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/haima/hmcp/utils/ping/PingTask$1;-><init>(Lcom/haima/hmcp/utils/ping/PingTask;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private toReport(Lcom/haima/hmcp/utils/ping/PingResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ping/PingResult;->isTimeout()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "ping time out: "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ping/PingResult;->getTimeOutMsg()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ping/PingResult;->isValidate()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "ping error: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ping/PingResult;->getDelayMsg()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string v0, "13501"

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ping/PingResult;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method


# virtual methods
.method public getPingResult()Lcom/haima/hmcp/utils/ping/PingResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mPingResult:Lcom/haima/hmcp/utils/ping/PingResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->isRunning:Z

    .line 2
    .line 3
    return v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->executor:Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->executor:Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public setPingCallback(Lcom/haima/hmcp/utils/ping/PingCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mPingCallback:Lcom/haima/hmcp/utils/ping/PingCallback;

    .line 2
    .line 3
    return-void
.end method

.method public start(Lcom/haima/hmcp/utils/ping/PingPara;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Lcom/haima/hmcp/utils/ping/PingPara;->pingHost:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ping/PingPara;->clone()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/haima/hmcp/utils/ping/PingPara;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    new-instance p1, Lcom/haima/hmcp/utils/ping/PingPara;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/haima/hmcp/utils/ping/PingPara;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mPingPara:Lcom/haima/hmcp/utils/ping/PingPara;

    .line 26
    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/ping/PingTask;->stop()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/haima/hmcp/utils/ping/PingTask;->checkThreadPool()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/haima/hmcp/utils/ping/PingTask;->checkHandler()V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->mIpAddress:Ljava/lang/String;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/haima/hmcp/utils/ping/PingTask;->isRunning:Z

    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->handler:Landroid/os/Handler;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 49
    .line 50
    const-string v0, "host is not null"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    const-string v0, "pingPara is not null"

    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1
.end method

.method public stop()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->isRunning:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/utils/ping/PingTask;->handler:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
