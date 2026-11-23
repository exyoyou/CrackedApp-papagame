.class public Lorg/webrtc/haima/HmOperationDelayReport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DELAY_LIST_MAX_LENGTH:I = 0xa

.field private static final REPORT_INTERVAL_MS_MIN:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HmOperationDelayReport"


# instance fields
.field private debugLog:Z

.field private operationDelayEvent:Lorg/webrtc/haima/IOperationDelayEvent;

.field private operationDelayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private reportTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/HmOperationDelayReport;->operationDelayList:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Timer;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/webrtc/haima/HmOperationDelayReport;->reportTimer:Ljava/util/Timer;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/HmOperationDelayReport;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmOperationDelayReport;->operationDelayList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/webrtc/haima/HmOperationDelayReport;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmOperationDelayReport;->outputDebugLog(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/haima/HmOperationDelayReport;)Lorg/webrtc/haima/IOperationDelayEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmOperationDelayReport;->operationDelayEvent:Lorg/webrtc/haima/IOperationDelayEvent;

    .line 2
    .line 3
    return-object p0
.end method

.method private outputDebugLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/HmOperationDelayReport;->debugLog:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "HmOperationDelayReport"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public addOperationDelay(J)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v3, "addOperationDelay - inputTime:"

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, "ms, delay:"

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "ms"

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmOperationDelayReport;->outputDebugLog(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-wide/16 p1, 0x0

    .line 40
    .line 41
    cmp-long v2, v0, p1

    .line 42
    .line 43
    if-gtz v2, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget-object p1, p0, Lorg/webrtc/haima/HmOperationDelayReport;->operationDelayList:Ljava/util/List;

    .line 47
    .line 48
    monitor-enter p1

    .line 49
    :try_start_0
    iget-object p2, p0, Lorg/webrtc/haima/HmOperationDelayReport;->operationDelayList:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lorg/webrtc/haima/HmOperationDelayReport;->operationDelayList:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    const/16 v0, 0xa

    .line 65
    .line 66
    if-le p2, v0, :cond_1

    .line 67
    .line 68
    iget-object p2, p0, Lorg/webrtc/haima/HmOperationDelayReport;->operationDelayList:Ljava/util/List;

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    const-string p2, "operation delay list size > 10, remove the first data"

    .line 75
    .line 76
    invoke-direct {p0, p2}, Lorg/webrtc/haima/HmOperationDelayReport;->outputDebugLog(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    monitor-exit p1

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception p2

    .line 82
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p2
.end method

.method public setOperationDelayEvent(Lorg/webrtc/haima/IOperationDelayEvent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setOperationDelayEvent"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string v1, ":null."

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "."

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "HmOperationDelayReport"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lorg/webrtc/haima/HmOperationDelayReport;->operationDelayEvent:Lorg/webrtc/haima/IOperationDelayEvent;

    .line 31
    .line 32
    return-void
.end method

.method public startReport(IZJJLorg/webrtc/haima/HmRtcAdapterImpl;)V
    .locals 12

    .line 1
    move-object v8, p0

    .line 2
    move v0, p1

    .line 3
    move v1, p2

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v3, "StartReport - interval:"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, "ms, debugLog:"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ", maxDelay:"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    move-wide v3, p3

    .line 31
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v5, "ms, salt:"

    .line 35
    .line 36
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-wide/from16 v5, p5

    .line 40
    .line 41
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v9, "HmOperationDelayReport"

    .line 49
    .line 50
    invoke-static {v9, v2}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/16 v2, 0x64

    .line 54
    .line 55
    if-ge v0, v2, :cond_0

    .line 56
    .line 57
    const-string v0, "StartReport - interval < 100ms, stop."

    .line 58
    .line 59
    invoke-static {v9, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_0
    iput-boolean v1, v8, Lorg/webrtc/haima/HmOperationDelayReport;->debugLog:Z

    .line 64
    .line 65
    :try_start_0
    iget-object v10, v8, Lorg/webrtc/haima/HmOperationDelayReport;->reportTimer:Ljava/util/Timer;

    .line 66
    .line 67
    new-instance v11, Lorg/webrtc/haima/HmOperationDelayReport$1;

    .line 68
    .line 69
    move-object v1, v11

    .line 70
    move-object v2, p0

    .line 71
    move-wide v3, p3

    .line 72
    move-wide/from16 v5, p5

    .line 73
    .line 74
    move-object/from16 v7, p7

    .line 75
    .line 76
    invoke-direct/range {v1 .. v7}, Lorg/webrtc/haima/HmOperationDelayReport$1;-><init>(Lorg/webrtc/haima/HmOperationDelayReport;JJLorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 77
    .line 78
    .line 79
    const-wide/16 v1, 0x0

    .line 80
    .line 81
    int-to-long v3, v0

    .line 82
    move-object p1, v10

    .line 83
    move-object p2, v11

    .line 84
    move-wide p3, v1

    .line 85
    move-wide/from16 p5, v3

    .line 86
    .line 87
    invoke-virtual/range {p1 .. p6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "StartReport - failed to start report timer"

    .line 93
    .line 94
    invoke-static {v9, v1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method

.method public stopReport()V
    .locals 3

    .line 1
    const-string v0, "HmOperationDelayReport"

    .line 2
    .line 3
    const-string v1, "stopReport"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/HmOperationDelayReport;->reportTimer:Ljava/util/Timer;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/webrtc/haima/HmOperationDelayReport;->reportTimer:Ljava/util/Timer;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/webrtc/haima/HmOperationDelayReport;->operationDelayList:Ljava/util/List;

    .line 17
    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/haima/HmOperationDelayReport;->operationDelayList:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 22
    .line 23
    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iput-object v0, p0, Lorg/webrtc/haima/HmOperationDelayReport;->operationDelayEvent:Lorg/webrtc/haima/IOperationDelayEvent;

    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0
.end method
