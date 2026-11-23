.class public Lorg/webrtc/haima/HmFrameDelayInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;,
        Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;
    }
.end annotation


# instance fields
.field private audioCaptureDelay:I

.field private audioDecodeDelay:I

.field private audioDeviceState:Ljava/lang/String;

.field private audioEncodeDelay:I

.field private audioLevel:I

.field private audioRenderDelay:I

.field private bitrateAudio:J

.field private bytesAudioReceived:J

.field private bytesVideoReceived:J

.field private codecImplementationName:Ljava/lang/String;

.field private codecName:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private currentRoundTripTime:J

.field private decodeTime:I

.field private decodeVariance:I

.field private delayTime:J

.field private discardFrameCount:J

.field private discardFrameRate:I

.field private fecPackets:J

.field private fecRecovered:J

.field private frameHeightReceived:J

.field private frameRateDecode:J

.field private frameRateEglRender:I

.field private frameRateOutput:J

.field private frameSize:I

.field private frameWidthReceived:J

.field private freezeCount:I

.field private freezeDuration:I

.field private freezeDurationFromJava:I

.field private gameFps:I

.field private gameRealFps:I

.field private haimaCpu:I

.field private intervalFromVideoCaptureToDecoded:I

.field private jankCount:I

.field private jankDuration:I

.field private jankDurationFromJava:I

.field private jitterBuffer:J

.field private jitterDelay:I

.field private lastAudioBytesReceived:J

.field private lastFecPackets:J

.field private lastFramesDecoded:J

.field private lastFreezeDuration:I

.field private lastFreezeDurationFromJava:I

.field private lastJankDuration:I

.field private lastJankDurationFromJava:I

.field private lastPacketsLost:J

.field private lastPacketsReceived:J

.field private lastVideoBytesReceived:J

.field private lastfecRecovered:J

.field private mDiffJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

.field private mJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

.field private mJankInfoFields:[Ljava/lang/reflect/Field;

.field private mStreamerInputFps:J

.field private mStreamerSendFps:J

.field private mStreamerVideoSendKbps:J

.field private nacksSent:J

.field private netTime:J

.field private nowDelayTime:J

.field private operationDelayMs:J

.field private originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

.field private packetsLost:J

.field private packetsReceived:J

.field private pliSent:J

.field private realFrameRateDecode:J

.field private realFrameRateOutput:J

.field private receiveFrameSize:J

.field private reciveFrameCount:I

.field private remoteToLocalClockOffset:I

.field private renderTime:I

.field private renderVariance:I

.field private ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;",
            ">;"
        }
    .end annotation
.end field

.field private systemCpu:I

.field private targetDelay:J

.field private uploadAvgEncodeDelayMs:I

.field private videBitrate:J

.field private videoCaptureDelay:I

.field private videoDecodeDelay:I

.field private videoEncodeDelay:I

.field private videoRenderDelay:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastFreezeDurationFromJava:I

    .line 6
    .line 7
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastJankDurationFromJava:I

    .line 8
    .line 9
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->intervalFromVideoCaptureToDecoded:I

    .line 10
    .line 11
    new-instance v0, Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Lorg/webrtc/haima/HmOriginVideoInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 17
    .line 18
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-direct {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->initValue()V

    .line 33
    .line 34
    .line 35
    new-instance v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 36
    .line 37
    invoke-direct {v0}, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 41
    .line 42
    new-instance v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 43
    .line 44
    invoke-direct {v0}, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mDiffJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 48
    .line 49
    return-void
.end method

.method private getPkgLostRate()D
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->packetsLost:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastPacketsLost:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    long-to-double v0, v0

    .line 7
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->packetsReceived:J

    .line 8
    .line 9
    iget-wide v4, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastPacketsReceived:J

    .line 10
    .line 11
    sub-long/2addr v2, v4

    .line 12
    long-to-double v2, v2

    .line 13
    add-double/2addr v2, v0

    .line 14
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 15
    .line 16
    cmpl-double v6, v2, v4

    .line 17
    .line 18
    if-ltz v6, :cond_0

    .line 19
    .line 20
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 21
    .line 22
    mul-double v0, v0, v4

    .line 23
    .line 24
    div-double/2addr v0, v2

    .line 25
    return-wide v0

    .line 26
    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 27
    .line 28
    return-wide v0
.end method

.method private initValue()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioLevel:I

    .line 3
    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    iput-wide v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->bitrateAudio:J

    .line 7
    .line 8
    iput-wide v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->netTime:J

    .line 9
    .line 10
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->decodeTime:I

    .line 11
    .line 12
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->renderTime:I

    .line 13
    .line 14
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameSize:I

    .line 15
    .line 16
    iput-wide v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->delayTime:J

    .line 17
    .line 18
    iput-wide v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->nowDelayTime:J

    .line 19
    .line 20
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->reciveFrameCount:I

    .line 21
    .line 22
    iput-wide v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->receiveFrameSize:J

    .line 23
    .line 24
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->gameFps:I

    .line 25
    .line 26
    iput-wide v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videBitrate:J

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 7
    .line 8
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, v1, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    iget-object v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    iget-object v4, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;

    .line 44
    .line 45
    if-nez v4, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v5, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;

    .line 49
    .line 50
    invoke-direct {v5}, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-wide v6, v4, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->bitrateSsrc:J

    .line 54
    .line 55
    iput-wide v6, v5, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->bitrateSsrc:J

    .line 56
    .line 57
    iget-wide v6, v4, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->bytesRecved:J

    .line 58
    .line 59
    iput-wide v6, v5, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->bytesRecved:J

    .line 60
    .line 61
    iget-wide v6, v4, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->lastBytesRecved:J

    .line 62
    .line 63
    iput-wide v6, v5, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->lastBytesRecved:J

    .line 64
    .line 65
    iget-object v4, v1, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    new-instance v2, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 72
    .line 73
    invoke-direct {v2}, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 77
    .line 78
    invoke-virtual {v2, v3}, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->copyFrom(Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;)V

    .line 79
    .line 80
    .line 81
    iput-object v2, v1, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 82
    .line 83
    new-instance v2, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 84
    .line 85
    invoke-direct {v2}, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mDiffJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 89
    .line 90
    invoke-virtual {v2, v3}, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->copyFrom(Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;)V

    .line 91
    .line 92
    .line 93
    iput-object v2, v1, Lorg/webrtc/haima/HmFrameDelayInfo;->mDiffJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 94
    .line 95
    return-object v0
.end method

.method public dumpJankInfo()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "[jank] "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-wide v2, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_utcTimeMs:J

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ","

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "render:"

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaSmallJankDuration:J

    .line 41
    .line 42
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getJankDuration()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFreezeDuration()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ",ori :-1,"

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->originJankDurationMs:J

    .line 83
    .line 84
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->originBJankDurationMs:J

    .line 91
    .line 92
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, ",dec :"

    .line 108
    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecSJankDuration:J

    .line 113
    .line 114
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecJankDuration:J

    .line 121
    .line 122
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecBJankDuration:J

    .line 129
    .line 130
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, ",recv:"

    .line 146
    .line 147
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvSJankDuration:J

    .line 151
    .line 152
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvJankDuration:J

    .line 159
    .line 160
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvBJankDuration:J

    .line 167
    .line 168
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v1, ",sent:"

    .line 184
    .line 185
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentSJankDurationMs:J

    .line 189
    .line 190
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentJankDurationMs:J

    .line 197
    .line 198
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentBJankDurationMs:J

    .line 205
    .line 206
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v1, ",enc :"

    .line 222
    .line 223
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeSJankDurationMs:J

    .line 227
    .line 228
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeJankDurationMs:J

    .line 235
    .line 236
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeBJankDurationMs:J

    .line 243
    .line 244
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    .line 252
    .line 253
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v1, ",rtp :"

    .line 260
    .line 261
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpSJankDurationMs:J

    .line 265
    .line 266
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget-wide v4, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpJankDurationMs:J

    .line 273
    .line 274
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    iget-wide v0, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpBJankDurationMs:J

    .line 281
    .line 282
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    return-object v0
.end method

.method public estimateNetLevel()I
    .locals 10

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getPkgLostRate()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 6
    .line 7
    div-double/2addr v0, v2

    .line 8
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    sub-double/2addr v2, v0

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 19
    .line 20
    mul-double v0, v0, v2

    .line 21
    .line 22
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 27
    .line 28
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-wide v6, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->currentRoundTripTime:J

    .line 33
    .line 34
    long-to-double v6, v6

    .line 35
    const-wide/high16 v8, 0x4044000000000000L    # 40.0

    .line 36
    .line 37
    div-double/2addr v6, v8

    .line 38
    sub-double v6, v4, v6

    .line 39
    .line 40
    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    .line 41
    .line 42
    .line 43
    move-result-wide v6

    .line 44
    mul-double v6, v6, v2

    .line 45
    .line 46
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    double-to-int v0, v0

    .line 59
    return v0
.end method

.method public fillJankInfo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    if-eqz p2, :cond_5

    .line 5
    .line 6
    iget-object v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const-string v1, "haima"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "Streamer_"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfoFields:[Ljava/lang/reflect/Field;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    const-class v1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfoFields:[Ljava/lang/reflect/Field;

    .line 39
    .line 40
    :cond_2
    iget-object v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfoFields:[Ljava/lang/reflect/Field;

    .line 41
    .line 42
    array-length v2, v1

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-ge v3, v2, :cond_5

    .line 45
    .line 46
    aget-object v4, v1, v3

    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 62
    .line 63
    .line 64
    move-result-wide p1

    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 70
    .line 71
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 72
    .line 73
    .line 74
    move-result-wide v2

    .line 75
    iget-object v6, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 76
    .line 77
    invoke-virtual {v4, v6, p1, p2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 78
    .line 79
    .line 80
    const-string v6, "Streamer_utcTimeMs"

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_4

    .line 87
    .line 88
    iget-object p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mDiffJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 89
    .line 90
    invoke-virtual {v4, p1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    invoke-static {p1, p2, v2, v3}, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->diffValue(JJ)J

    .line 95
    .line 96
    .line 97
    move-result-wide p1

    .line 98
    iget-object v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mDiffJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 99
    .line 100
    invoke-virtual {v4, v2, p1, p2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    return v1

    .line 107
    :catch_0
    :cond_5
    :goto_2
    return v0
.end method

.method public getAudioCaptureDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioCaptureDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioDecodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioDecodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioDeviceState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioDeviceState:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAudioEncodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioEncodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioLevel:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioRenderDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioRenderDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getBitrateAudio()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->bitrateAudio:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getBytesAudioReceived()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->bytesAudioReceived:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCodecImplementationName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->codecImplementationName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->codecName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentRoundTripTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->currentRoundTripTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDecodeTime()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->decodeTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getDecodeVariance()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->decodeVariance:I

    .line 2
    .line 3
    return v0
.end method

.method public getDelayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->delayTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDiscardFrameCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->discardFrameCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDiscardFrameRate()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->discardFrameRate:I

    .line 2
    .line 3
    return v0
.end method

.method public getFecPacketsPercent()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->packetsReceived:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastPacketsReceived:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    long-to-int v1, v0

    .line 7
    if-gtz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->fecPackets:J

    .line 12
    .line 13
    iget-wide v4, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastFecPackets:J

    .line 14
    .line 15
    sub-long/2addr v2, v4

    .line 16
    long-to-int v0, v2

    .line 17
    mul-int/lit8 v0, v0, 0x64

    .line 18
    .line 19
    div-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public getFecRecoveredPercent()I
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->packetsLost:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastPacketsLost:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    long-to-int v1, v0

    .line 7
    if-gtz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->fecRecovered:J

    .line 12
    .line 13
    iget-wide v4, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastfecRecovered:J

    .line 14
    .line 15
    sub-long/2addr v2, v4

    .line 16
    long-to-int v0, v2

    .line 17
    mul-int/lit8 v0, v0, 0x64

    .line 18
    .line 19
    div-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public getFrameHeightReceived()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameHeightReceived:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFrameRateDecode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameRateDecode:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFrameRateEglRender()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameRateEglRender:I

    .line 2
    .line 3
    return v0
.end method

.method public getFrameRateOutput()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameRateOutput:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFrameSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getFrameWidthReceived()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameWidthReceived:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFreezeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->freezeCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getFreezeDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastFreezeDurationFromJava:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->freezeDurationFromJava:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->freezeDuration:I

    .line 9
    .line 10
    :goto_0
    return v0
.end method

.method public getFreezeDurationDifference()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastFreezeDurationFromJava:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->freezeDurationFromJava:I

    .line 6
    .line 7
    sub-int/2addr v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->freezeDuration:I

    .line 10
    .line 11
    iget v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastFreezeDuration:I

    .line 12
    .line 13
    sub-int v1, v0, v1

    .line 14
    .line 15
    :goto_0
    if-gez v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_1
    return v1
.end method

.method public getGameFps()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->gameFps:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameRealFps()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->gameRealFps:I

    .line 2
    .line 3
    return v0
.end method

.method public getHaimaCpu()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->haimaCpu:I

    .line 2
    .line 3
    return v0
.end method

.method public getIntervalFromVideoCaptureToDecoded()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->intervalFromVideoCaptureToDecoded:I

    .line 2
    .line 3
    return v0
.end method

.method public getJankCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jankCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getJankDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastJankDurationFromJava:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jankDurationFromJava:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jankDuration:I

    .line 9
    .line 10
    :goto_0
    return v0
.end method

.method public getJankDurationDifference()I
    .locals 2

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastJankDurationFromJava:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jankDurationFromJava:I

    .line 6
    .line 7
    sub-int/2addr v1, v0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jankDuration:I

    .line 10
    .line 11
    iget v1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastJankDuration:I

    .line 12
    .line 13
    sub-int v1, v0, v1

    .line 14
    .line 15
    :goto_0
    if-gez v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_1
    return v1
.end method

.method public getJitterBuffer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jitterBuffer:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastAudioBytesReceived()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastAudioBytesReceived:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastVideoBytesReceived()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastVideoBytesReceived:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNacksSent()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->nacksSent:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNetJitterDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jitterDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getNetTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->netTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNowDelayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->nowDelayTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOperationDelayMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->operationDelayMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOriginVideoInfo()Lorg/webrtc/haima/HmOriginVideoInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPacketsLost()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->packetsLost:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPacketsLostRate()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getPkgLostRate()D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-string v4, "0.00"

    .line 8
    .line 9
    cmpg-double v5, v0, v2

    .line 10
    .line 11
    if-gtz v5, :cond_0

    .line 12
    .line 13
    return-object v4

    .line 14
    :cond_0
    new-instance v2, Ljava/text/DecimalFormat;

    .line 15
    .line 16
    new-instance v3, Ljava/text/DecimalFormatSymbols;

    .line 17
    .line 18
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 19
    .line 20
    invoke-direct {v3, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v2, v4, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 24
    .line 25
    .line 26
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v5, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public getPacketsPercentDiff()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->packetsReceived:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastPacketsReceived:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    return-wide v0
.end method

.method public getPliSent()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->pliSent:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRealFrameRateDecode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->realFrameRateDecode:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRealFrameRateOutput()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->realFrameRateOutput:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getReceiveFrameSize()J
    .locals 7

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->bytesVideoReceived:J

    .line 2
    .line 3
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastVideoBytesReceived:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    iget v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->reciveFrameCount:I

    .line 7
    .line 8
    int-to-long v2, v2

    .line 9
    iget-wide v4, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastFramesDecoded:J

    .line 10
    .line 11
    sub-long/2addr v2, v4

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v6, v2, v4

    .line 15
    .line 16
    if-nez v6, :cond_0

    .line 17
    .line 18
    iput-wide v4, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->receiveFrameSize:J

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    div-long/2addr v0, v2

    .line 22
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->receiveFrameSize:J

    .line 23
    .line 24
    :goto_0
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->receiveFrameSize:J

    .line 25
    .line 26
    return-wide v0
.end method

.method public getReciveFrameCount()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->reciveFrameCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getRemoteToLocalClockOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->remoteToLocalClockOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getRenderTime()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->renderTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getRenderVariance()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->renderVariance:I

    .line 2
    .line 3
    return v0
.end method

.method public getStreamerInputFps()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mStreamerInputFps:J

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
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    :cond_0
    return-wide v0
.end method

.method public getStreamerSendFps()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mStreamerSendFps:J

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
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    :cond_0
    return-wide v0
.end method

.method public getStreamerSendKbps()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mStreamerVideoSendKbps:J

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
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    :cond_0
    return-wide v0
.end method

.method public getSystemCpu()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->systemCpu:I

    .line 2
    .line 3
    return v0
.end method

.method public getTargetDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->targetDelay:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTotalBitrate()J
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    return-wide v1

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/String;

    .line 33
    .line 34
    iget-object v4, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;

    .line 41
    .line 42
    if-nez v3, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-wide v3, v3, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->bitrateSsrc:J

    .line 46
    .line 47
    add-long/2addr v1, v3

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-wide v1
.end method

.method public getUploadAvgEncodeDelayMs()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->uploadAvgEncodeDelayMs:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoBitrate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videBitrate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVideoCaptureDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoCaptureDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoDecodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoDecodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoEncodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoEncodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoRenderDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoRenderDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public isValid()Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->nowDelayTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-wide v0, v2

    .line 11
    :goto_0
    iget-wide v4, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->currentRoundTripTime:J

    .line 12
    .line 13
    cmp-long v6, v4, v2

    .line 14
    .line 15
    if-nez v6, :cond_1

    .line 16
    .line 17
    iget v6, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->decodeTime:I

    .line 18
    .line 19
    if-nez v6, :cond_1

    .line 20
    .line 21
    iget v6, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->renderTime:I

    .line 22
    .line 23
    if-eqz v6, :cond_2

    .line 24
    .line 25
    :cond_1
    const-wide/16 v6, 0x2710

    .line 26
    .line 27
    cmp-long v8, v4, v6

    .line 28
    .line 29
    if-gez v8, :cond_2

    .line 30
    .line 31
    cmp-long v6, v4, v2

    .line 32
    .line 33
    if-lez v6, :cond_2

    .line 34
    .line 35
    cmp-long v4, v0, v2

    .line 36
    .line 37
    if-lez v4, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_1
    return v0
.end method

.method public setAudioCaptureDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioCaptureDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setAudioDecodeDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioDecodeDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setAudioDeviceState(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioDeviceState:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAudioEncodeDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioEncodeDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setAudioLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public setAudioRenderDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioRenderDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setBitrateAudio(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->bitrateAudio:J

    .line 2
    .line 3
    return-void
.end method

.method public setBytesAudioReceived(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->bytesAudioReceived:J

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastAudioBytesReceived:J

    .line 4
    .line 5
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->bytesAudioReceived:J

    .line 6
    .line 7
    return-void
.end method

.method public setCodecImplementationName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->codecImplementationName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCodecName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->codecName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->contentType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurrentRoundTripTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->currentRoundTripTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setDecodeTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->decodeTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setDecodeVariance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->decodeVariance:I

    .line 2
    .line 3
    return-void
.end method

.method public setDelayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->delayTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setDiscardFrameCount(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->discardFrameCount:J

    .line 2
    .line 3
    return-void
.end method

.method public setDiscardFrameRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->discardFrameRate:I

    .line 2
    .line 3
    return-void
.end method

.method public setFecPackets(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->fecPackets:J

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastFecPackets:J

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->fecPackets:J

    .line 7
    .line 8
    return-void
.end method

.method public setFecRecovered(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->fecRecovered:J

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastfecRecovered:J

    .line 4
    .line 5
    int-to-long v0, p1

    .line 6
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->fecRecovered:J

    .line 7
    .line 8
    return-void
.end method

.method public setFrameHeightReceived(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameHeightReceived:J

    .line 2
    .line 3
    return-void
.end method

.method public setFrameRateDecode(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameRateDecode:J

    .line 2
    .line 3
    return-void
.end method

.method public setFrameRateEglRender(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameRateEglRender:I

    .line 2
    .line 3
    return-void
.end method

.method public setFrameRateOutput(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameRateOutput:J

    .line 2
    .line 3
    return-void
.end method

.method public setFrameSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setFrameWidthReceived(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameWidthReceived:J

    .line 2
    .line 3
    return-void
.end method

.method public setFreezeCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->freezeCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setFreezeDuration(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->freezeDuration:I

    .line 2
    .line 3
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastFreezeDuration:I

    .line 4
    .line 5
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->freezeDuration:I

    .line 6
    .line 7
    return-void
.end method

.method public setFreezeDurationFromJava(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->freezeDurationFromJava:I

    .line 2
    .line 3
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastFreezeDurationFromJava:I

    .line 4
    .line 5
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->freezeDurationFromJava:I

    .line 6
    .line 7
    return-void
.end method

.method public setGameFps(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->gameFps:I

    .line 2
    .line 3
    return-void
.end method

.method public setGameRealFps(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->gameRealFps:I

    .line 2
    .line 3
    return-void
.end method

.method public setHaimaCpu(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->haimaCpu:I

    .line 2
    .line 3
    return-void
.end method

.method public setIntervalFromVideoCaptureToDecoded(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->intervalFromVideoCaptureToDecoded:I

    .line 2
    .line 3
    return-void
.end method

.method public setJankCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jankCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setJankDuration(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jankDuration:I

    .line 2
    .line 3
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastJankDuration:I

    .line 4
    .line 5
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jankDuration:I

    .line 6
    .line 7
    return-void
.end method

.method public setJankDurationFromJava(I)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jankDurationFromJava:I

    .line 2
    .line 3
    iput v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastJankDurationFromJava:I

    .line 4
    .line 5
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jankDurationFromJava:I

    .line 6
    .line 7
    return-void
.end method

.method public setJitterBuffer(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jitterBuffer:J

    .line 2
    .line 3
    return-void
.end method

.method public setNacksSent(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->nacksSent:J

    .line 2
    .line 3
    return-void
.end method

.method public setNetJitterDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jitterDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setNetTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->netTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setNowDelayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->nowDelayTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setOperationDelayMs(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->operationDelayMs:J

    .line 2
    .line 3
    return-void
.end method

.method public setOriginDecodeVariance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmOriginVideoInfo;->setDecodeVariance(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOriginFrameRateDecode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmOriginVideoInfo;->setFrameRateDecode(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOriginFrameRateReceived(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmOriginVideoInfo;->setFrameRateReceived(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOriginFrameRateRendered(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmOriginVideoInfo;->setFrameRateRendered(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOriginFreezeCount(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmOriginVideoInfo;->setFreezeCount(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOriginFreezeDuration(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmOriginVideoInfo;->setFreezeDuration(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 7
    .line 8
    iput-wide p1, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->originBJankDurationMs:J

    .line 9
    .line 10
    return-void
.end method

.method public setOriginJankCount(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmOriginVideoInfo;->setJankCount(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOriginJankDuration(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmOriginVideoInfo;->setJankDuration(J)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 7
    .line 8
    iput-wide p1, v0, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->originJankDurationMs:J

    .line 9
    .line 10
    return-void
.end method

.method public setOriginRenderVariance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmOriginVideoInfo;->setRenderVariance(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setPacketsLost(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->packetsLost:J

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastPacketsLost:J

    .line 4
    .line 5
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->packetsLost:J

    .line 6
    .line 7
    return-void
.end method

.method public setPacketsReceived(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->packetsReceived:J

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastPacketsReceived:J

    .line 4
    .line 5
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->packetsReceived:J

    .line 6
    .line 7
    return-void
.end method

.method public setPliSent(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->pliSent:J

    .line 2
    .line 3
    return-void
.end method

.method public setRealFrameRateDecode(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->realFrameRateDecode:J

    .line 2
    .line 3
    return-void
.end method

.method public setRealFrameRateOutput(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->realFrameRateOutput:J

    .line 2
    .line 3
    return-void
.end method

.method public setReciveFrameCount(I)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->reciveFrameCount:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastFramesDecoded:J

    .line 5
    .line 6
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->reciveFrameCount:I

    .line 7
    .line 8
    return-void
.end method

.method public setRemoteToLocalClockOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->remoteToLocalClockOffset:I

    .line 2
    .line 3
    return-void
.end method

.method public setRenderTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->renderTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setRenderVariance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->renderVariance:I

    .line 2
    .line 3
    return-void
.end method

.method public setStreamerInputFps(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mStreamerInputFps:J

    .line 2
    .line 3
    return-void
.end method

.method public setStreamerSendFps(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mStreamerSendFps:J

    .line 2
    .line 3
    return-void
.end method

.method public setStreamerSendKbps(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mStreamerVideoSendKbps:J

    .line 2
    .line 3
    return-void
.end method

.method public setSystemCpu(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->systemCpu:I

    .line 2
    .line 3
    return-void
.end method

.method public setTargetDelay(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->targetDelay:J

    .line 2
    .line 3
    return-void
.end method

.method public setUploadAvgEncodeDelayMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->uploadAvgEncodeDelayMs:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoBitrate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videBitrate:J

    .line 2
    .line 3
    return-void
.end method

.method public setVideoBytesReceived(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->bytesVideoReceived:J

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->lastVideoBytesReceived:J

    .line 4
    .line 5
    iput-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->bytesVideoReceived:J

    .line 6
    .line 7
    return-void
.end method

.method public setVideoCaptureDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoCaptureDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoDecodeDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoDecodeDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoEncodeDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoEncodeDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoRenderDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoRenderDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public toReportString(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, "|"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->currentRoundTripTime:J

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->decodeTime:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoRenderDelay:I

    .line 35
    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    iget v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->renderTime:I

    .line 39
    .line 40
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    .line 45
    .line 46
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->delayTime:J

    .line 47
    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    cmp-long v6, v2, v4

    .line 51
    .line 52
    if-lez v6, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-wide v2, v4

    .line 56
    :goto_0
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    .line 61
    .line 62
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->targetDelay:J

    .line 63
    .line 64
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    .line 69
    .line 70
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->receiveFrameSize:J

    .line 71
    .line 72
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .line 77
    .line 78
    iget v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->gameRealFps:I

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    .line 85
    .line 86
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->realFrameRateOutput:J

    .line 87
    .line 88
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    .line 93
    .line 94
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videBitrate:J

    .line 95
    .line 96
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    .line 107
    .line 108
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->targetDelay:J

    .line 109
    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getPacketsLostRate()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    .line 125
    .line 126
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->nacksSent:J

    .line 127
    .line 128
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    .line 133
    .line 134
    iget-wide v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->packetsLost:J

    .line 135
    .line 136
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    .line 141
    .line 142
    const-string p1, "|0|0|0|0|0|0|0"

    .line 143
    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFecPacketsPercent()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFecRecoveredPercent()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    .line 169
    .line 170
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->remoteToLocalClockOffset:I

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getTotalBitrate()J

    .line 179
    .line 180
    .line 181
    move-result-wide p1

    .line 182
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    .line 187
    .line 188
    iget-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->pliSent:J

    .line 189
    .line 190
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    .line 195
    .line 196
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jankCount:I

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    .line 203
    .line 204
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->freezeCount:I

    .line 205
    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    .line 211
    .line 212
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->decodeVariance:I

    .line 213
    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    .line 219
    .line 220
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->renderVariance:I

    .line 221
    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getJankDuration()I

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFreezeDuration()I

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    add-int/2addr p1, p2

    .line 237
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    .line 242
    .line 243
    iget-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->realFrameRateDecode:J

    .line 244
    .line 245
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    .line 250
    .line 251
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->frameRateEglRender:I

    .line 252
    .line 253
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    .line 258
    .line 259
    iget-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->bitrateAudio:J

    .line 260
    .line 261
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    .line 266
    .line 267
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioLevel:I

    .line 268
    .line 269
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getStreamerInputFps()J

    .line 276
    .line 277
    .line 278
    move-result-wide p1

    .line 279
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getStreamerSendFps()J

    .line 286
    .line 287
    .line 288
    move-result-wide p1

    .line 289
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getStreamerSendKbps()J

    .line 296
    .line 297
    .line 298
    move-result-wide p1

    .line 299
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 303
    .line 304
    .line 305
    iget-object p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->audioDeviceState:Ljava/lang/String;

    .line 306
    .line 307
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    .line 312
    .line 313
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoCaptureDelay:I

    .line 314
    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    .line 320
    .line 321
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoEncodeDelay:I

    .line 322
    .line 323
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    .line 328
    .line 329
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoDecodeDelay:I

    .line 330
    .line 331
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    .line 336
    .line 337
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->videoRenderDelay:I

    .line 338
    .line 339
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    .line 344
    .line 345
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->jitterDelay:I

    .line 346
    .line 347
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 348
    .line 349
    .line 350
    iget-object p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->originVideoInfo:Lorg/webrtc/haima/HmOriginVideoInfo;

    .line 351
    .line 352
    invoke-virtual {p1}, Lorg/webrtc/haima/HmOriginVideoInfo;->getReportString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    .line 361
    .line 362
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->haimaCpu:I

    .line 363
    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    .line 369
    .line 370
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->systemCpu:I

    .line 371
    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    .line 377
    .line 378
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getJankDurationDifference()I

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    invoke-virtual {p0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFreezeDurationDifference()I

    .line 383
    .line 384
    .line 385
    move-result p2

    .line 386
    add-int/2addr p1, p2

    .line 387
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    .line 392
    .line 393
    iget p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->intervalFromVideoCaptureToDecoded:I

    .line 394
    .line 395
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 396
    .line 397
    .line 398
    iget-object p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->mDiffJankInfo:Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;

    .line 399
    .line 400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    .line 402
    .line 403
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaSmallJankNum:J

    .line 404
    .line 405
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    .line 410
    .line 411
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaSmallJankDuration:J

    .line 412
    .line 413
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    .line 418
    .line 419
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvSJankDuration:J

    .line 420
    .line 421
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    .line 426
    .line 427
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvJankDuration:J

    .line 428
    .line 429
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    .line 434
    .line 435
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaRecvBJankDuration:J

    .line 436
    .line 437
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    .line 442
    .line 443
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecSJankDuration:J

    .line 444
    .line 445
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 449
    .line 450
    .line 451
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecJankDuration:J

    .line 452
    .line 453
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    .line 458
    .line 459
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->haimaDecBJankDuration:J

    .line 460
    .line 461
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    .line 466
    .line 467
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_utcTimeMs:J

    .line 468
    .line 469
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    .line 474
    .line 475
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureSJankDurationMs:J

    .line 476
    .line 477
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 481
    .line 482
    .line 483
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureJankDurationMs:J

    .line 484
    .line 485
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    .line 490
    .line 491
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_captureBJankDurationMs:J

    .line 492
    .line 493
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    .line 498
    .line 499
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeSJankDurationMs:J

    .line 500
    .line 501
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    .line 506
    .line 507
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeJankDurationMs:J

    .line 508
    .line 509
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    .line 514
    .line 515
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_encodeBJankDurationMs:J

    .line 516
    .line 517
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    .line 522
    .line 523
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentSJankDurationMs:J

    .line 524
    .line 525
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    .line 530
    .line 531
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentJankDurationMs:J

    .line 532
    .line 533
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    .line 538
    .line 539
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_sentBJankDurationMs:J

    .line 540
    .line 541
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    .line 546
    .line 547
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpSJankDurationMs:J

    .line 548
    .line 549
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    .line 554
    .line 555
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpJankDurationMs:J

    .line 556
    .line 557
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    .line 562
    .line 563
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_rtpBJankDurationMs:J

    .line 564
    .line 565
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 569
    .line 570
    .line 571
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realSJankDurationMs:J

    .line 572
    .line 573
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 577
    .line 578
    .line 579
    iget-wide v2, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realJankDurationMs:J

    .line 580
    .line 581
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    .line 586
    .line 587
    iget-wide p1, p1, Lorg/webrtc/haima/HmFrameDelayInfo$JankInfo;->Streamer_realBJankDurationMs:J

    .line 588
    .line 589
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    .line 594
    .line 595
    iget-wide p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->operationDelayMs:J

    .line 596
    .line 597
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object p1

    .line 604
    return-object p1
.end method

.method public updateTotalBitrate(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 12
    iget-object p4, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p4, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;

    if-nez p4, :cond_0

    .line 13
    new-instance p4, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;

    invoke-direct {p4}, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;-><init>()V

    .line 14
    :cond_0
    iget-wide v0, p4, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->bytesRecved:J

    iput-wide v0, p4, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->lastBytesRecved:J

    .line 15
    iput-wide p1, p4, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->bytesRecved:J

    sub-long/2addr p1, v0

    int-to-long v0, p5

    .line 16
    div-long/2addr p1, v0

    iput-wide p1, p4, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->bitrateSsrc:J

    .line 17
    iget-object p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object p1, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateTotalBitrate(Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "bytesReceived"

    .line 1
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localCandidateId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "remoteCandidateId"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;

    invoke-direct {v2}, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;-><init>()V

    .line 6
    :cond_0
    iget-wide v3, v2, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->bytesRecved:J

    iput-wide v3, v2, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->lastBytesRecved:J

    .line 7
    iput-wide v0, v2, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->bytesRecved:J

    sub-long/2addr v0, v3

    int-to-long v3, p2

    .line 8
    div-long/2addr v0, v3

    iput-wide v0, v2, Lorg/webrtc/haima/HmFrameDelayInfo$HmRtcSsrcStats;->bitrateSsrc:J

    .line 9
    iget-object p2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p2, p0, Lorg/webrtc/haima/HmFrameDelayInfo;->ssrcStats:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
