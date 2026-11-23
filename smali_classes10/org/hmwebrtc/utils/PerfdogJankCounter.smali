.class public Lorg/hmwebrtc/utils/PerfdogJankCounter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;,
        Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;,
        Lorg/hmwebrtc/utils/PerfdogJankCounter$Interval;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerfdogJankCounter"

.field private static final kLastFrameMaxCount:I = 0x3


# instance fields
.field private jankIntervalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/hmwebrtc/utils/PerfdogJankCounter$Interval;",
            ">;"
        }
    .end annotation
.end field

.field private mBigJankCount:I

.field private mBigJankTimeMs:J

.field private mDataLock:Ljava/lang/Object;

.field private mDurationMs:J

.field private mEnableLog:Z

.field private mFrameIndex:I

.field private mFrameTimeStandardDeviationMs:J

.field private mJankCount:I

.field private mJankLog:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;

.field private mJankTimeMs:J

.field private mLastFrameCount:I

.field private mLastFrameNextIndex:I

.field private mLastFrameTimeMs:J

.field private mLastFrames:[J

.field private mName:Ljava/lang/String;

.field private mSkipSampleCount:I

.field private mSkipStartDurationMs:J


# direct methods
.method public constructor <init>()V
    .locals 7

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x8

    const/4 v5, 0x0

    const-string v6, ""

    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v6}, Lorg/hmwebrtc/utils/PerfdogJankCounter;-><init>(JJZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JJZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mDataLock:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->jankIntervalList:Ljava/util/ArrayList;

    .line 4
    iput-boolean p5, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mEnableLog:Z

    .line 5
    iput-wide p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mSkipStartDurationMs:J

    .line 6
    iput-wide p3, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameTimeStandardDeviationMs:J

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameCount:I

    .line 8
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameNextIndex:I

    const-wide/16 p1, 0x0

    .line 9
    iput-wide p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameTimeMs:J

    const/4 p1, 0x3

    new-array p1, p1, [J

    .line 10
    iput-object p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrames:[J

    .line 11
    iput-object p6, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mName:Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 12
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mName:Ljava/lang/String;

    .line 14
    :cond_1
    iput-wide p3, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameTimeStandardDeviationMs:J

    .line 15
    invoke-virtual {p0}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->reset()V

    return-void
.end method

.method static synthetic access$100(Lorg/hmwebrtc/utils/PerfdogJankCounter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private getAvgFrameTimeMs()J
    .locals 10

    .line 1
    iget v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameCount:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    return-wide v0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrames:[J

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    move-wide v6, v3

    .line 16
    const/4 v5, 0x0

    .line 17
    :goto_0
    if-ge v5, v1, :cond_1

    .line 18
    .line 19
    aget-wide v8, v0, v5

    .line 20
    .line 21
    add-long/2addr v6, v8

    .line 22
    add-int/lit8 v5, v5, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-wide/16 v0, 0x3

    .line 26
    .line 27
    div-long v8, v6, v0

    .line 28
    .line 29
    rem-long/2addr v6, v0

    .line 30
    cmp-long v0, v6, v3

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    :cond_2
    int-to-long v0, v2

    .line 36
    add-long/2addr v8, v0

    .line 37
    return-wide v8
.end method

.method private isBigJank(JJ)Z
    .locals 4

    .line 1
    const-wide/16 v0, 0x7d

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameTimeStandardDeviationMs:J

    .line 4
    .line 5
    add-long/2addr v2, v0

    .line 6
    cmp-long v0, p1, v2

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const-wide/16 v0, 0x2

    .line 11
    .line 12
    mul-long p3, p3, v0

    .line 13
    .line 14
    cmp-long v0, p1, p3

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method private isJank(JJ)Z
    .locals 4

    .line 1
    const-wide/16 v0, 0x54

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameTimeStandardDeviationMs:J

    .line 4
    .line 5
    add-long/2addr v2, v0

    .line 6
    cmp-long v0, p1, v2

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    const-wide/16 v0, 0x2

    .line 11
    .line 12
    mul-long p3, p3, v0

    .line 13
    .line 14
    cmp-long v0, p1, p3

    .line 15
    .line 16
    if-lez v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method private skipJankCalc()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mSkipStartDurationMs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    const/4 v4, 0x1

    .line 6
    cmp-long v5, v0, v2

    .line 7
    .line 8
    if-lez v5, :cond_0

    .line 9
    .line 10
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mDurationMs:J

    .line 11
    .line 12
    cmp-long v5, v2, v0

    .line 13
    .line 14
    if-gez v5, :cond_0

    .line 15
    .line 16
    return v4

    .line 17
    :cond_0
    iget v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mSkipSampleCount:I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    sub-int/2addr v0, v4

    .line 24
    iput v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mSkipSampleCount:I

    .line 25
    .line 26
    if-lez v0, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 v4, 0x0

    .line 30
    :goto_0
    return v4
.end method

.method private updateAvgFrameTimeMs(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrames:[J

    .line 2
    .line 3
    iget v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameNextIndex:I

    .line 4
    .line 5
    aput-wide p1, v0, v1

    .line 6
    .line 7
    iget p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameCount:I

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    if-ge p1, p2, :cond_0

    .line 11
    .line 12
    add-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameCount:I

    .line 15
    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    iput v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameNextIndex:I

    .line 19
    .line 20
    if-lt v1, p2, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameNextIndex:I

    .line 24
    .line 25
    :cond_1
    return-void
.end method


# virtual methods
.method public getJankInfo(Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;)Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;
    .locals 11

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    .line 4
    .line 5
    invoke-direct {p1}, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->timestampMs:J

    .line 13
    .line 14
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mDataLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-wide v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mDurationMs:J

    .line 18
    .line 19
    iget-wide v3, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mSkipStartDurationMs:J

    .line 20
    .line 21
    sub-long v5, v1, v3

    .line 22
    .line 23
    iput-wide v5, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->duration:J

    .line 24
    .line 25
    iget-wide v5, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankTimeMs:J

    .line 26
    .line 27
    iput-wide v5, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankDuration:J

    .line 28
    .line 29
    iget-wide v7, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mBigJankTimeMs:J

    .line 30
    .line 31
    iput-wide v7, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->bigJankDuration:J

    .line 32
    .line 33
    iget v9, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankCount:I

    .line 34
    .line 35
    int-to-long v9, v9

    .line 36
    iput-wide v9, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankCount:J

    .line 37
    .line 38
    iget v9, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mBigJankCount:I

    .line 39
    .line 40
    int-to-long v9, v9

    .line 41
    iput-wide v9, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->bigJankCount:J

    .line 42
    .line 43
    iget v9, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameIndex:I

    .line 44
    .line 45
    int-to-long v9, v9

    .line 46
    iput-wide v9, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->frameCount:J

    .line 47
    .line 48
    sub-long/2addr v1, v3

    .line 49
    const-wide/16 v3, 0x0

    .line 50
    .line 51
    cmp-long v9, v1, v3

    .line 52
    .line 53
    if-gtz v9, :cond_1

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput v1, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->stutter:F

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    add-long/2addr v5, v7

    .line 60
    long-to-float v3, v5

    .line 61
    long-to-float v1, v1

    .line 62
    div-float/2addr v3, v1

    .line 63
    iput v3, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->stutter:F

    .line 64
    .line 65
    :goto_0
    const-string v1, ""

    .line 66
    .line 67
    iget-object v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->jankIntervalList:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-lez v2, :cond_3

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuffer;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->jankIntervalList:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lorg/hmwebrtc/utils/PerfdogJankCounter$Interval;

    .line 97
    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    .line 100
    .line 101
    iget-wide v5, v4, Lorg/hmwebrtc/utils/PerfdogJankCounter$Interval;->start:J

    .line 102
    .line 103
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 104
    .line 105
    .line 106
    const-string v1, ";"

    .line 107
    .line 108
    const-string v5, ":"

    .line 109
    .line 110
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    iget-wide v4, v4, Lorg/hmwebrtc/utils/PerfdogJankCounter$Interval;->end:J

    .line 114
    .line 115
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iput-object v4, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankIntervals:Ljava/lang/String;

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    iget-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->jankIntervalList:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    const-string v1, "-1:-1"

    .line 132
    .line 133
    iput-object v1, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankIntervals:Ljava/lang/String;

    .line 134
    .line 135
    :goto_2
    monitor-exit v0

    .line 136
    return-object p1

    .line 137
    :catchall_0
    move-exception p1

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    throw p1
.end method

.method public log()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankLog:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->access$000(Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "PerfdogJankCounter-"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "durationMs:"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mDurationMs:J

    .line 39
    .line 40
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ",skipStartTimeMs:"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mSkipStartDurationMs:J

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, ",jankTimeMs:"

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankTimeMs:J

    .line 59
    .line 60
    iget-wide v4, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mBigJankTimeMs:J

    .line 61
    .line 62
    add-long/2addr v2, v4

    .line 63
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ",jankCount:"

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankCount:I

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, ",bigJankCount:"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mBigJankCount:I

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, ",sampleCount:"

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameIndex:I

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public onRenderFrame()V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 3
    iput-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameTimeMs:J

    .line 4
    :cond_0
    iget-wide v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameTimeMs:J

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->onRenderFrame(J)V

    .line 5
    iput-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameTimeMs:J

    return-void
.end method

.method public onRenderFrame(J)V
    .locals 7

    .line 6
    iget-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-wide v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mDurationMs:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mDurationMs:J

    .line 8
    iget v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameIndex:I

    .line 9
    invoke-direct {p0}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->getAvgFrameTimeMs()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    .line 10
    invoke-direct {p0}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->skipJankCalc()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->isJank(JJ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->isBigJank(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mBigJankCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mBigJankCount:I

    .line 14
    iget-wide v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mBigJankTimeMs:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mBigJankTimeMs:J

    .line 15
    iget-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankLog:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;

    if-eqz v1, :cond_2

    .line 16
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameIndex:I

    invoke-virtual {v1, v2, p1, p2}, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->onBigJank(IJ)V

    goto :goto_0

    .line 17
    :cond_1
    iget v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankCount:I

    .line 18
    iget-wide v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankTimeMs:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankTimeMs:J

    .line 19
    iget-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankLog:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;

    if-eqz v1, :cond_2

    .line 20
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameIndex:I

    invoke-virtual {v1, v2, p1, p2}, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->onJank(IJ)V

    .line 21
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 22
    iget-object v3, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->jankIntervalList:Ljava/util/ArrayList;

    new-instance v4, Lorg/hmwebrtc/utils/PerfdogJankCounter$Interval;

    sub-long v5, v1, p1

    invoke-direct {v4, v5, v6, v1, v2}, Lorg/hmwebrtc/utils/PerfdogJankCounter$Interval;-><init>(JJ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 23
    iput v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mSkipSampleCount:I

    .line 24
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->updateAvgFrameTimeMs(J)V

    .line 25
    iget-object v1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankLog:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;

    if-eqz v1, :cond_4

    .line 26
    iget v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameIndex:I

    invoke-virtual {v1, v2, p1, p2}, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;->onRenderFrame(IJ)V

    .line 27
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onRenderFrameTimestamp(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameTimeMs:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    iput-wide p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameTimeMs:J

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameTimeMs:J

    .line 12
    .line 13
    sub-long v0, p1, v0

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->onRenderFrame(J)V

    .line 16
    .line 17
    .line 18
    iput-wide p1, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mLastFrameTimeMs:J

    .line 19
    .line 20
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mDurationMs:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankCount:I

    .line 7
    .line 8
    iput v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mBigJankCount:I

    .line 9
    .line 10
    iput-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankTimeMs:J

    .line 11
    .line 12
    iput-wide v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mBigJankTimeMs:J

    .line 13
    .line 14
    iput v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mSkipSampleCount:I

    .line 15
    .line 16
    iput v2, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mFrameIndex:I

    .line 17
    .line 18
    iget-boolean v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mEnableLog:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;-><init>(Lorg/hmwebrtc/utils/PerfdogJankCounter;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lorg/hmwebrtc/utils/PerfdogJankCounter;->mJankLog:Lorg/hmwebrtc/utils/PerfdogJankCounter$JankLog;

    .line 28
    .line 29
    :cond_0
    return-void
.end method
