.class Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/JankStatisticsTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeJankCounterHelper"
.end annotation


# instance fields
.field private mJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

.field private mLastJankDurationMs:J

.field private mLastUpdateTimems:J

.field private mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;


# direct methods
.method constructor <init>(Lorg/hmwebrtc/utils/PerfdogJankReport;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    .line 5
    .line 6
    invoke-direct {p2}, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    .line 10
    .line 11
    iput-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mLastJankDurationMs:J

    .line 16
    .line 17
    iput-wide v0, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mLastUpdateTimems:J

    .line 18
    .line 19
    const-string p2, "c_jank"

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 26
    .line 27
    const-string p2, "c_bjank"

    .line 28
    .line 29
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 33
    .line 34
    const-string p2, "c_fps"

    .line 35
    .line 36
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 40
    .line 41
    const-string p2, "c_JT"

    .line 42
    .line 43
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 47
    .line 48
    const-string p2, "c_lsJT"

    .line 49
    .line 50
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 54
    .line 55
    const-string p2, "c_lsJTms"

    .line 56
    .line 57
    invoke-virtual {p1, p2, v0}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addCategory(Ljava/lang/String;Z)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;JJLorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->update(JJLorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->writeSummary()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private update(JJLorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v8, p1

    .line 4
    .line 5
    move-wide/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v0, p5

    .line 8
    .line 9
    iget-wide v2, v0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->bigJankDuration:J

    .line 10
    .line 11
    iget-wide v4, v0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->jankDuration:J

    .line 12
    .line 13
    add-long v12, v2, v4

    .line 14
    .line 15
    iget-object v2, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 16
    .line 17
    const-string v3, "c_jank"

    .line 18
    .line 19
    iget-wide v4, v0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->jankCount:J

    .line 20
    .line 21
    iget-wide v6, v0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->bigJankCount:J

    .line 22
    .line 23
    add-long/2addr v6, v4

    .line 24
    move-wide/from16 v4, p1

    .line 25
    .line 26
    invoke-virtual/range {v2 .. v7}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addAccumulativeValue(Ljava/lang/String;JJ)Z

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 30
    .line 31
    const-string v3, "c_bjank"

    .line 32
    .line 33
    iget-wide v6, v0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->bigJankCount:J

    .line 34
    .line 35
    invoke-virtual/range {v2 .. v7}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addAccumulativeValue(Ljava/lang/String;JJ)Z

    .line 36
    .line 37
    .line 38
    iget-object v2, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 39
    .line 40
    const-string v3, "c_fps"

    .line 41
    .line 42
    iget v4, v0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->fps:I

    .line 43
    .line 44
    invoke-virtual {v2, v3, v8, v9, v4}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JI)Z

    .line 45
    .line 46
    .line 47
    const-wide/16 v14, 0x0

    .line 48
    .line 49
    cmp-long v2, v10, v14

    .line 50
    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    iget-object v2, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 54
    .line 55
    const-string v3, "c_JT"

    .line 56
    .line 57
    long-to-float v4, v12

    .line 58
    long-to-float v5, v10

    .line 59
    div-float/2addr v4, v5

    .line 60
    invoke-virtual {v2, v3, v8, v9, v4}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v2, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 64
    .line 65
    const-string v3, "c_lsJTms"

    .line 66
    .line 67
    move-wide/from16 v4, p1

    .line 68
    .line 69
    move-wide v6, v12

    .line 70
    invoke-virtual/range {v2 .. v7}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addAccumulativeValue(Ljava/lang/String;JJ)Z

    .line 71
    .line 72
    .line 73
    iget-wide v2, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mLastUpdateTimems:J

    .line 74
    .line 75
    cmp-long v4, v2, v14

    .line 76
    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    sub-long v2, v8, v2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move-wide v2, v14

    .line 83
    :goto_0
    iget-wide v4, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mLastJankDurationMs:J

    .line 84
    .line 85
    cmp-long v6, v4, v14

    .line 86
    .line 87
    if-eqz v6, :cond_2

    .line 88
    .line 89
    sub-long v4, v12, v4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_2
    move-wide v4, v14

    .line 93
    :goto_1
    cmp-long v6, v2, v14

    .line 94
    .line 95
    if-eqz v6, :cond_3

    .line 96
    .line 97
    iget-object v6, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 98
    .line 99
    const-string v7, "c_lsJT"

    .line 100
    .line 101
    long-to-float v4, v4

    .line 102
    long-to-float v2, v2

    .line 103
    div-float/2addr v4, v2

    .line 104
    invoke-virtual {v6, v7, v8, v9, v4}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addValue(Ljava/lang/String;JF)Z

    .line 105
    .line 106
    .line 107
    :cond_3
    iput-wide v8, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mLastUpdateTimems:J

    .line 108
    .line 109
    iput-wide v12, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mLastJankDurationMs:J

    .line 110
    .line 111
    iget-object v2, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    .line 112
    .line 113
    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v3, v1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    .line 115
    .line 116
    iput-wide v10, v3, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->duration:J

    .line 117
    .line 118
    iget-wide v4, v0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->jankCount:J

    .line 119
    .line 120
    iput-wide v4, v3, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->jankCount:J

    .line 121
    .line 122
    iget-wide v4, v0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->bigJankCount:J

    .line 123
    .line 124
    iput-wide v4, v3, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->bigJankCount:J

    .line 125
    .line 126
    iget-wide v4, v0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->jankDuration:J

    .line 127
    .line 128
    iput-wide v4, v3, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->jankDuration:J

    .line 129
    .line 130
    iget-wide v4, v0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->bigJankDuration:J

    .line 131
    .line 132
    iput-wide v4, v3, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->bigJankDuration:J

    .line 133
    .line 134
    iput-wide v10, v3, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->duration:J

    .line 135
    .line 136
    monitor-exit v2

    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw v0
.end method

.method private writeSummary()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 8
    .line 9
    const-string v2, "-----------------"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "c \u4e91\u73a9\u65f6\u957f:"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    .line 27
    .line 28
    iget-wide v3, v3, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->duration:J

    .line 29
    .line 30
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "c \u5361\u987f\u65f6\u957f:"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v3, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    .line 53
    .line 54
    iget-wide v4, v3, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->jankDuration:J

    .line 55
    .line 56
    iget-wide v6, v3, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->bigJankDuration:J

    .line 57
    .line 58
    add-long/2addr v4, v6

    .line 59
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "c \u5c0f\u5361\u987f\u4e2a\u6570:"

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    .line 82
    .line 83
    iget-wide v3, v3, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->jankCount:J

    .line 84
    .line 85
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mReport:Lorg/hmwebrtc/utils/PerfdogJankReport;

    .line 96
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v3, "c \u5927\u5361\u987f\u4e2a\u6570:"

    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankCounterHelper;->mJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    .line 108
    .line 109
    iget-wide v3, v3, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->bigJankCount:J

    .line 110
    .line 111
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/utils/PerfdogJankReport;->addSummary(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 123
    :catchall_0
    move-exception v1

    .line 124
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    throw v1
.end method
