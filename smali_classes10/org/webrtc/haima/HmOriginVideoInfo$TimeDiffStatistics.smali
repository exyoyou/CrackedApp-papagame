.class Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmOriginVideoInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeDiffStatistics"
.end annotation


# instance fields
.field private lastUpdateTime:J

.field private lastValue:J

.field private value:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->lastUpdateTime:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/haima/HmOriginVideoInfo$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;-><init>()V

    return-void
.end method


# virtual methods
.method public getDiff()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->value:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->lastValue:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public getDiffValuePerSec()J
    .locals 8

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->value:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gez v4, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->lastUpdateTime:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    const-wide/16 v2, 0x3e8

    .line 20
    .line 21
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    iget-wide v4, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->value:J

    .line 26
    .line 27
    iget-wide v6, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->lastValue:J

    .line 28
    .line 29
    sub-long/2addr v4, v6

    .line 30
    mul-long v4, v4, v2

    .line 31
    .line 32
    div-long/2addr v4, v0

    .line 33
    return-wide v4
.end method

.method public getLastUpdateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->lastUpdateTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->value:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setValue(J)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->lastUpdateTime:J

    .line 6
    .line 7
    iget-wide v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->value:J

    .line 8
    .line 9
    iput-wide v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->lastValue:J

    .line 10
    .line 11
    iput-wide p1, p0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->value:J

    .line 12
    .line 13
    return-void
.end method
