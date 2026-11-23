.class public Lcom/haima/hmcp/beans/VideoDelayInfo;
.super Lcom/haima/hmcp/beans/AbsVideoDelayInfo;
.source "SourceFile"


# instance fields
.field protected audioCaptureDelay:I

.field protected audioDecodeDelay:I

.field protected audioEncodeDelay:I

.field protected audioRenderDelay:I

.field protected bitRate:J

.field protected clockDiffUse:J

.field protected decodeDelay:I

.field protected delayFromVideoCapToDecoded:I

.field protected delayTime:J

.field protected frameRateEglRender:I

.field protected frameSize:I

.field protected gameFps:I

.field protected gameRealFps:I

.field protected haimaCpu:I

.field protected jankAndFreezeDuration:I

.field protected jitterDelay:I

.field protected netDelay:I

.field protected nowDelayTime:J

.field protected realFrameRateOutput:J

.field protected receiveFrameCount:I

.field protected receiveFrameSize:J

.field protected renderDelay:I

.field protected serverEncodeDelay:I

.field protected systemCpu:I

.field protected timeStamp:J

.field protected videoCaptureDelay:I

.field protected videoDecodeDelay:I

.field protected videoEncodeDelay:I

.field protected videoFps:J

.field protected videoRenderDelay:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/AbsVideoDelayInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayTime:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->nowDelayTime:J

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->receiveFrameCount:I

    .line 12
    .line 13
    iput-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->receiveFrameSize:J

    .line 14
    .line 15
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->gameFps:I

    .line 16
    .line 17
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->gameRealFps:I

    .line 18
    .line 19
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->frameRateEglRender:I

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->serverEncodeDelay:I

    .line 23
    .line 24
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoCaptureDelay:I

    .line 25
    .line 26
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoEncodeDelay:I

    .line 27
    .line 28
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoDecodeDelay:I

    .line 29
    .line 30
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoRenderDelay:I

    .line 31
    .line 32
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioCaptureDelay:I

    .line 33
    .line 34
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioEncodeDelay:I

    .line 35
    .line 36
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioDecodeDelay:I

    .line 37
    .line 38
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioRenderDelay:I

    .line 39
    .line 40
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->jitterDelay:I

    .line 41
    .line 42
    iput v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->haimaCpu:I

    .line 43
    .line 44
    iput v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->systemCpu:I

    .line 45
    .line 46
    iput v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayFromVideoCapToDecoded:I

    .line 47
    .line 48
    return-void
.end method

.method public static formatedSize(J)Ljava/lang/String;
    .locals 6

    .line 1
    const-wide/32 v0, 0x186a0

    .line 2
    .line 3
    .line 4
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    cmp-long v5, p0, v0

    .line 9
    .line 10
    if-ltz v5, :cond_0

    .line 11
    .line 12
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 13
    .line 14
    new-array v1, v4, [Ljava/lang/Object;

    .line 15
    .line 16
    long-to-float p0, p0

    .line 17
    div-float/2addr p0, v2

    .line 18
    div-float/2addr p0, v2

    .line 19
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    aput-object p0, v1, v3

    .line 24
    .line 25
    const-string p0, "%.2f MB"

    .line 26
    .line 27
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_0
    const-wide/16 v0, 0x64

    .line 33
    .line 34
    cmp-long v5, p0, v0

    .line 35
    .line 36
    if-ltz v5, :cond_1

    .line 37
    .line 38
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 39
    .line 40
    new-array v1, v4, [Ljava/lang/Object;

    .line 41
    .line 42
    long-to-float p0, p0

    .line 43
    div-float/2addr p0, v2

    .line 44
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    aput-object p0, v1, v3

    .line 49
    .line 50
    const-string p0, "%.1f KB"

    .line 51
    .line 52
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 58
    .line 59
    new-array v1, v4, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    aput-object p0, v1, v3

    .line 66
    .line 67
    const-string p0, "%d B"

    .line 68
    .line 69
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method private getFrameSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->frameSize:I

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public getAudioBitrate()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAudioCaptureDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioCaptureDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioDecodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioDecodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioEncodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioEncodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioRenderDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioRenderDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getBitRate()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->bitRate:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 1

    const-string v0, "H264"

    return-object v0
.end method

.method public getDecodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->decodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getDelayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFrameRateOutput()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getGameFps()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->gameFps:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameRealFps()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->gameRealFps:I

    .line 2
    .line 3
    return v0
.end method

.method public getJankAndFreezeDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->jankAndFreezeDuration:I

    .line 2
    .line 3
    return v0
.end method

.method public getJitterBuffer()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getJitterDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->jitterDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getNetDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->netDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getPacketsLostRate()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPingPongDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->clockDiffUse:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRealFrameRateOutput()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->realFrameRateOutput:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getReceiveFrameCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->receiveFrameCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getReceiveFrameSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->receiveFrameSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getReceivedBitrate()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRenderDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->renderDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getRoundTrip()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getServerEncodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->serverEncodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->timeStamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVideoCaptureDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoCaptureDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoDecodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoDecodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoEncodeDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoEncodeDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoFps()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoFps:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getVideoInputFps()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getVideoRenderDelay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoRenderDelay:I

    .line 2
    .line 3
    return v0
.end method

.method public getVideoSendBitrate()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getVideoSendFps()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isVaild()Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->netDelay:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->decodeDelay:I

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->renderDelay:I

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    :cond_0
    const/16 v1, 0x2710

    .line 14
    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    iget-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoFps:J

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    cmp-long v5, v1, v3

    .line 22
    .line 23
    if-lez v5, :cond_1

    .line 24
    .line 25
    if-lez v0, :cond_1

    .line 26
    .line 27
    iget-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->nowDelayTime:J

    .line 28
    .line 29
    cmp-long v2, v0, v3

    .line 30
    .line 31
    if-lez v2, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method

.method public setAudioCaptureDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioCaptureDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setAudioDecodeDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioDecodeDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setAudioEncodeDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioEncodeDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setAudioRenderDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->audioRenderDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setBitRate(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->bitRate:J

    .line 2
    .line 3
    return-void
.end method

.method public setDelayFromVideoCapToDecoded(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayFromVideoCapToDecoded:I

    .line 2
    .line 3
    return-void
.end method

.method public setDelayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setHaimaCpu(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->haimaCpu:I

    .line 2
    .line 3
    return-void
.end method

.method public setJitterDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->jitterDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setSystemCpu(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->systemCpu:I

    .line 2
    .line 3
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->timeStamp:J

    .line 2
    .line 3
    return-void
.end method

.method public setVideoCaptureDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoCaptureDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoDecodeDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoDecodeDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoEncodeDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoEncodeDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public setVideoFps(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoFps:J

    .line 2
    .line 3
    return-void
.end method

.method public setVideoRenderDelay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoRenderDelay:I

    .line 2
    .line 3
    return-void
.end method

.method public toReportString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->timeStamp:J

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "|"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->netDelay:I

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->decodeDelay:I

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->renderDelay:I

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-wide v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayTime:J

    .line 41
    .line 42
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->nowDelayTime:J

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->frameSize:I

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-wide v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoFps:J

    .line 65
    .line 66
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->gameFps:I

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-wide v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->bitRate:J

    .line 81
    .line 82
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->clockDiffUse:J

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method
