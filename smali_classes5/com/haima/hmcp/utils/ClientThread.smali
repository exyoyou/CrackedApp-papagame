.class public Lcom/haima/hmcp/utils/ClientThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final PACKET_SIZE_KILOBYTES:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ClientThread"


# instance fields
.field private b:[B

.field private con:Ljava/net/URLConnection;

.field private volatile toExit:Z

.field private totalDownloadLen:J

.field private totalDownloadTime:J

.field private tracker:Lcom/haima/hmcp/utils/ThreadProgressTracker;


# direct methods
.method public constructor <init>(Ljava/net/URLConnection;Lcom/haima/hmcp/utils/ThreadProgressTracker;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/ClientThread;->toExit:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/haima/hmcp/utils/ClientThread;->con:Ljava/net/URLConnection;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/haima/hmcp/utils/ClientThread;->tracker:Lcom/haima/hmcp/utils/ThreadProgressTracker;

    .line 10
    .line 11
    const-wide/16 p1, 0x0

    .line 12
    .line 13
    iput-wide p1, p0, Lcom/haima/hmcp/utils/ClientThread;->totalDownloadTime:J

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/haima/hmcp/utils/ClientThread;->totalDownloadLen:J

    .line 16
    .line 17
    const/16 p1, 0x400

    .line 18
    .line 19
    new-array p1, p1, [B

    .line 20
    .line 21
    iput-object p1, p0, Lcom/haima/hmcp/utils/ClientThread;->b:[B

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public getTotalDownloadLen()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/utils/ClientThread;->totalDownloadLen:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTotalDownloadTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/utils/ClientThread;->totalDownloadTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public requestExit()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/utils/ClientThread;->toExit:Z

    .line 3
    .line 4
    return-void
.end method

.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/haima/hmcp/utils/ClientThread;->con:Ljava/net/URLConnection;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 13
    .line 14
    .line 15
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    :cond_0
    iget-object v4, p0, Lcom/haima/hmcp/utils/ClientThread;->b:[B

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I

    .line 23
    .line 24
    .line 25
    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    const/4 v5, -0x1

    .line 27
    const-string v6, "speed test->"

    .line 28
    .line 29
    const-string v7, "ClientThread"

    .line 30
    .line 31
    if-eq v4, v5, :cond_1

    .line 32
    .line 33
    :try_start_2
    iget-wide v8, p0, Lcom/haima/hmcp/utils/ClientThread;->totalDownloadLen:J

    .line 34
    .line 35
    int-to-long v4, v4

    .line 36
    add-long/2addr v8, v4

    .line 37
    iput-wide v8, p0, Lcom/haima/hmcp/utils/ClientThread;->totalDownloadLen:J

    .line 38
    .line 39
    iget-boolean v4, p0, Lcom/haima/hmcp/utils/ClientThread;->toExit:Z

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v5, " downloading stop"

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-static {v7, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    iget-wide v8, p0, Lcom/haima/hmcp/utils/ClientThread;->totalDownloadTime:J

    .line 71
    .line 72
    sub-long/2addr v4, v2

    .line 73
    add-long/2addr v8, v4

    .line 74
    iput-wide v8, p0, Lcom/haima/hmcp/utils/ClientThread;->totalDownloadTime:J

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, " speed: use "

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-wide v3, p0, Lcom/haima/hmcp/utils/ClientThread;->totalDownloadTime:J

    .line 93
    .line 94
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, "ms to download: "

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-wide v3, p0, Lcom/haima/hmcp/utils/ClientThread;->totalDownloadLen:J

    .line 103
    .line 104
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v7, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/haima/hmcp/utils/ClientThread;->tracker:Lcom/haima/hmcp/utils/ThreadProgressTracker;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ThreadProgressTracker;->notifyDone()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, "ClientThread::read::"

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .line 147
    .line 148
    :goto_0
    if-eqz v1, :cond_2

    .line 149
    .line 150
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 151
    .line 152
    .line 153
    :catch_1
    :cond_2
    return-void

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    goto :goto_1

    .line 156
    :catch_2
    move-exception v0

    .line 157
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v3, "ClientThread::getInputStream::"

    .line 163
    .line 164
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :goto_1
    if-eqz v1, :cond_3

    .line 183
    .line 184
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 185
    .line 186
    .line 187
    :catch_3
    :cond_3
    throw v0
.end method
