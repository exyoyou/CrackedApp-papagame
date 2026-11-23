.class Lorg/webrtc/haima/StreamerStatsCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/DataChannel$Observer;


# static fields
.field private static final MAX_STAT_COUNT:I = 0x4

.field private static final kAvailableBandWidth_kbps:Ljava/lang/String; = "available_bw_kbps"


# instance fields
.field private mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

.field private mStatsDataChannel:Lorg/hmwebrtc/DataChannel;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/DataChannel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lorg/hmwebrtc/StatsReport$Value;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 8
    .line 9
    new-instance v1, Lorg/hmwebrtc/StatsReport$Value;

    .line 10
    .line 11
    const-string v2, "inputFps"

    .line 12
    .line 13
    const-string v3, "0"

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object v1, v0, v2

    .line 20
    .line 21
    iget-object v0, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 22
    .line 23
    new-instance v1, Lorg/hmwebrtc/StatsReport$Value;

    .line 24
    .line 25
    const-string v2, "sendFps"

    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    aput-object v1, v0, v2

    .line 32
    .line 33
    iget-object v0, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 34
    .line 35
    new-instance v1, Lorg/hmwebrtc/StatsReport$Value;

    .line 36
    .line 37
    const-string v2, "sendKbps"

    .line 38
    .line 39
    invoke-direct {v1, v2, v3}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    iget-object v0, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 46
    .line 47
    new-instance v1, Lorg/hmwebrtc/StatsReport$Value;

    .line 48
    .line 49
    const-string v2, "available_bw_kbps"

    .line 50
    .line 51
    const-string v3, "-1"

    .line 52
    .line 53
    invoke-direct {v1, v2, v3}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    aput-object v1, v0, v2

    .line 58
    .line 59
    iput-object p1, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mStatsDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 60
    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method private getSendKbps(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    const-wide/16 v4, 0x3e8

    .line 12
    .line 13
    div-long v6, v0, v4

    .line 14
    .line 15
    cmp-long p2, v6, v2

    .line 16
    .line 17
    if-lez p2, :cond_0

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, ""

    .line 25
    .line 26
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    div-long/2addr v0, v4

    .line 30
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    :cond_0
    return-object p1
.end method

.method private parseStats(Ljava/lang/String;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "stats_chn"

    .line 5
    .line 6
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "\\|"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_4

    .line 16
    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x3

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 23
    .line 24
    monitor-enter v0

    .line 25
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 26
    .line 27
    new-instance v3, Lorg/hmwebrtc/StatsReport$Value;

    .line 28
    .line 29
    const-string v4, "inputFps"

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    aget-object v6, p1, v5

    .line 33
    .line 34
    invoke-direct {v3, v4, v6}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    aput-object v3, v2, v5

    .line 38
    .line 39
    iget-object v2, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 40
    .line 41
    new-instance v3, Lorg/hmwebrtc/StatsReport$Value;

    .line 42
    .line 43
    const-string v4, "sendFps"

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    aget-object v6, p1, v5

    .line 47
    .line 48
    invoke-direct {v3, v4, v6}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    aput-object v3, v2, v5

    .line 52
    .line 53
    array-length v2, p1

    .line 54
    const/4 v3, 0x2

    .line 55
    if-le v2, v1, :cond_2

    .line 56
    .line 57
    iget-object v2, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 58
    .line 59
    new-instance v4, Lorg/hmwebrtc/StatsReport$Value;

    .line 60
    .line 61
    const-string v5, "sendKbps"

    .line 62
    .line 63
    aget-object v6, p1, v3

    .line 64
    .line 65
    aget-object v7, p1, v1

    .line 66
    .line 67
    invoke-direct {p0, v6, v7}, Lorg/webrtc/haima/StreamerStatsCollector;->getSendKbps(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-direct {v4, v5, v6}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    aput-object v4, v2, v3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 78
    .line 79
    new-instance v4, Lorg/hmwebrtc/StatsReport$Value;

    .line 80
    .line 81
    const-string v5, "sendKbps"

    .line 82
    .line 83
    aget-object v6, p1, v3

    .line 84
    .line 85
    invoke-direct {v4, v5, v6}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    aput-object v4, v2, v3

    .line 89
    .line 90
    :goto_0
    array-length v2, p1

    .line 91
    const/4 v3, 0x4

    .line 92
    if-le v2, v3, :cond_3

    .line 93
    .line 94
    iget-object v2, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 95
    .line 96
    new-instance v4, Lorg/hmwebrtc/StatsReport$Value;

    .line 97
    .line 98
    const-string v5, "available_bw_kbps"

    .line 99
    .line 100
    aget-object p1, p1, v3

    .line 101
    .line 102
    invoke-direct {v4, v5, p1}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    aput-object v4, v2, v1

    .line 106
    .line 107
    :cond_3
    monitor-exit v0

    .line 108
    return-void

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw p1

    .line 112
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getStats()[Lorg/hmwebrtc/StatsReport$Value;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 5
    .line 6
    invoke-virtual {v1}, [Lorg/hmwebrtc/StatsReport$Value;->clone()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, [Lorg/hmwebrtc/StatsReport$Value;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public onBufferedAmountChange(J)V
    .locals 0

    return-void
.end method

.method public onMessage(Lorg/hmwebrtc/DataChannel$Buffer;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->binary:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    iget-object p1, p1, Lorg/hmwebrtc/DataChannel$Buffer;->data:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "UTF-8"

    .line 32
    .line 33
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0, p1}, Lorg/webrtc/haima/StreamerStatsCollector;->parseStats(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    :goto_0
    const-string p1, "stats_chn:"

    .line 45
    .line 46
    const-string v0, "DataChannel data is null!"

    .line 47
    .line 48
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onStateChange()V
    .locals 0

    return-void
.end method

.method public synthetic onWritableState(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/hmwebrtc/g;->a(Lorg/hmwebrtc/DataChannel$Observer;Z)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/StreamerStatsCollector;->mStatsDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/DataChannel;->unregisterObserver()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
