.class public Lorg/webrtc/haima/HmOriginVideoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;
    }
.end annotation


# instance fields
.field private decodeVariance:I

.field private frameRateDecode:I

.field private frameRateReceived:I

.field private frameRateRendered:I

.field private final freezeCount:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

.field private final freezeDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

.field private final jankCount:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

.field private final jankDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

.field private renderVariance:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;-><init>(Lorg/webrtc/haima/HmOriginVideoInfo$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->freezeCount:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 11
    .line 12
    new-instance v0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;-><init>(Lorg/webrtc/haima/HmOriginVideoInfo$1;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->jankCount:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 18
    .line 19
    new-instance v0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;-><init>(Lorg/webrtc/haima/HmOriginVideoInfo$1;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->freezeDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 25
    .line 26
    new-instance v0, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;-><init>(Lorg/webrtc/haima/HmOriginVideoInfo$1;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->jankDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public getFreezeCountPerSec()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->freezeCount:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->getDiffValuePerSec()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getJankCountPerSec()J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->jankCount:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->getDiffValuePerSec()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getJankDurationPerSec()J
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->jankDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->getDiffValuePerSec()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v4, v0, v2

    .line 10
    .line 11
    if-ltz v4, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->freezeDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->getDiffValuePerSec()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    cmp-long v4, v0, v2

    .line 20
    .line 21
    if-gez v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->jankDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->getDiffValuePerSec()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-object v2, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->freezeDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 31
    .line 32
    invoke-virtual {v2}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->getDiffValuePerSec()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    add-long/2addr v0, v2

    .line 37
    return-wide v0

    .line 38
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    .line 39
    .line 40
    return-wide v0
.end method

.method public getReportString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->freezeDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->getValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->jankDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 8
    .line 9
    invoke-virtual {v2}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->getValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr v0, v2

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-gez v4, :cond_0

    .line 19
    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "|"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v4, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->frameRateReceived:I

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v4, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->frameRateDecode:I

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v4, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->frameRateRendered:I

    .line 49
    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->freezeCount:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 57
    .line 58
    invoke-virtual {v4}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->getValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v4, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->jankCount:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 69
    .line 70
    invoke-virtual {v4}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->getValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->decodeVariance:I

    .line 87
    .line 88
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->renderVariance:I

    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lorg/webrtc/haima/HmOriginVideoInfo;->getFreezeCountPerSec()J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lorg/webrtc/haima/HmOriginVideoInfo;->getJankCountPerSec()J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lorg/webrtc/haima/HmOriginVideoInfo;->getJankDurationPerSec()J

    .line 123
    .line 124
    .line 125
    move-result-wide v0

    .line 126
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    return-object v0
.end method

.method public setDecodeVariance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->decodeVariance:I

    .line 2
    .line 3
    return-void
.end method

.method public setFrameRateDecode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->frameRateDecode:I

    .line 2
    .line 3
    return-void
.end method

.method public setFrameRateReceived(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->frameRateReceived:I

    .line 2
    .line 3
    return-void
.end method

.method public setFrameRateRendered(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->frameRateRendered:I

    .line 2
    .line 3
    return-void
.end method

.method public setFreezeCount(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->freezeCount:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->setValue(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setFreezeDuration(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->freezeDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->setValue(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setJankCount(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->jankCount:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->setValue(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setJankDuration(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->jankDuration:Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmOriginVideoInfo$TimeDiffStatistics;->setValue(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRenderVariance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmOriginVideoInfo;->renderVariance:I

    .line 2
    .line 3
    return-void
.end method
