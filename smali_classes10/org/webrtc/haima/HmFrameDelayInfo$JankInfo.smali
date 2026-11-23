.class Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmFrameDelayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JankInfo"
.end annotation


# instance fields
.field public Streamer_captureBJankDurationMs:J

.field public Streamer_captureJankDurationMs:J

.field public Streamer_captureSJankDurationMs:J

.field public Streamer_encodeBJankDurationMs:J

.field public Streamer_encodeJankDurationMs:J

.field public Streamer_encodeSJankDurationMs:J

.field public Streamer_realBJankDurationMs:J

.field public Streamer_realJankDurationMs:J

.field public Streamer_realSJankDurationMs:J

.field public Streamer_rtpBJankDurationMs:J

.field public Streamer_rtpJankDurationMs:J

.field public Streamer_rtpSJankDurationMs:J

.field public Streamer_sentBJankDurationMs:J

.field public Streamer_sentJankDurationMs:J

.field public Streamer_sentSJankDurationMs:J

.field public Streamer_utcTimeMs:J

.field public haimaDecBJankDuration:J

.field public haimaDecJankDuration:J

.field public haimaDecSJankDuration:J

.field public haimaRecvBJankDuration:J

.field public haimaRecvJankDuration:J

.field public haimaRecvSJankDuration:J

.field public haimaSmallJankDuration:J

.field public haimaSmallJankNum:J

.field public originBJankDurationMs:J

.field public originJankDurationMs:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->originJankDurationMs:J

    .line 7
    .line 8
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->originBJankDurationMs:J

    .line 9
    .line 10
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaSmallJankNum:J

    .line 11
    .line 12
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaSmallJankDuration:J

    .line 13
    .line 14
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvSJankDuration:J

    .line 15
    .line 16
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvJankDuration:J

    .line 17
    .line 18
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvBJankDuration:J

    .line 19
    .line 20
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecSJankDuration:J

    .line 21
    .line 22
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecJankDuration:J

    .line 23
    .line 24
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecBJankDuration:J

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    iput-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_utcTimeMs:J

    .line 29
    .line 30
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureSJankDurationMs:J

    .line 31
    .line 32
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureJankDurationMs:J

    .line 33
    .line 34
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureBJankDurationMs:J

    .line 35
    .line 36
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeSJankDurationMs:J

    .line 37
    .line 38
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeJankDurationMs:J

    .line 39
    .line 40
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeBJankDurationMs:J

    .line 41
    .line 42
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentSJankDurationMs:J

    .line 43
    .line 44
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentJankDurationMs:J

    .line 45
    .line 46
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentBJankDurationMs:J

    .line 47
    .line 48
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpSJankDurationMs:J

    .line 49
    .line 50
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpJankDurationMs:J

    .line 51
    .line 52
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpBJankDurationMs:J

    .line 53
    .line 54
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realSJankDurationMs:J

    .line 55
    .line 56
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realJankDurationMs:J

    .line 57
    .line 58
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realBJankDurationMs:J

    .line 59
    .line 60
    return-void
.end method

.method public static diffValue(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, p0, p2

    if-ltz v0, :cond_1

    sub-long/2addr p0, p2

    :cond_1
    :goto_0
    return-wide p0
.end method


# virtual methods
.method public copyFrom(Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;)V
    .locals 2

    .line 1
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->originJankDurationMs:J

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->originJankDurationMs:J

    .line 4
    .line 5
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->originBJankDurationMs:J

    .line 6
    .line 7
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->originBJankDurationMs:J

    .line 8
    .line 9
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaSmallJankNum:J

    .line 10
    .line 11
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaSmallJankNum:J

    .line 12
    .line 13
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaSmallJankDuration:J

    .line 14
    .line 15
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaSmallJankDuration:J

    .line 16
    .line 17
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvSJankDuration:J

    .line 18
    .line 19
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvSJankDuration:J

    .line 20
    .line 21
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvJankDuration:J

    .line 22
    .line 23
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvJankDuration:J

    .line 24
    .line 25
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvBJankDuration:J

    .line 26
    .line 27
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvBJankDuration:J

    .line 28
    .line 29
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecSJankDuration:J

    .line 30
    .line 31
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecSJankDuration:J

    .line 32
    .line 33
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecJankDuration:J

    .line 34
    .line 35
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecJankDuration:J

    .line 36
    .line 37
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecBJankDuration:J

    .line 38
    .line 39
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecBJankDuration:J

    .line 40
    .line 41
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_utcTimeMs:J

    .line 42
    .line 43
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_utcTimeMs:J

    .line 44
    .line 45
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureSJankDurationMs:J

    .line 46
    .line 47
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureSJankDurationMs:J

    .line 48
    .line 49
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureJankDurationMs:J

    .line 50
    .line 51
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureJankDurationMs:J

    .line 52
    .line 53
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureBJankDurationMs:J

    .line 54
    .line 55
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureBJankDurationMs:J

    .line 56
    .line 57
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeSJankDurationMs:J

    .line 58
    .line 59
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeSJankDurationMs:J

    .line 60
    .line 61
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeJankDurationMs:J

    .line 62
    .line 63
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeJankDurationMs:J

    .line 64
    .line 65
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeBJankDurationMs:J

    .line 66
    .line 67
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeBJankDurationMs:J

    .line 68
    .line 69
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentSJankDurationMs:J

    .line 70
    .line 71
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentSJankDurationMs:J

    .line 72
    .line 73
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentJankDurationMs:J

    .line 74
    .line 75
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentJankDurationMs:J

    .line 76
    .line 77
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentBJankDurationMs:J

    .line 78
    .line 79
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentBJankDurationMs:J

    .line 80
    .line 81
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpSJankDurationMs:J

    .line 82
    .line 83
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpSJankDurationMs:J

    .line 84
    .line 85
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpJankDurationMs:J

    .line 86
    .line 87
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpJankDurationMs:J

    .line 88
    .line 89
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpBJankDurationMs:J

    .line 90
    .line 91
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpBJankDurationMs:J

    .line 92
    .line 93
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realSJankDurationMs:J

    .line 94
    .line 95
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realSJankDurationMs:J

    .line 96
    .line 97
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realJankDurationMs:J

    .line 98
    .line 99
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realJankDurationMs:J

    .line 100
    .line 101
    iget-wide v0, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realBJankDurationMs:J

    .line 102
    .line 103
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realBJankDurationMs:J

    .line 104
    .line 105
    return-void
.end method
