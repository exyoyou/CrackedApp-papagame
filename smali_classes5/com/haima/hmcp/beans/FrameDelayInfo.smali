.class public Lcom/haima/hmcp/beans/FrameDelayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private decodeTime:I

.field private decodedFrameCount:I

.field private delayTime:J

.field private frameSize:I

.field private gameFps:I

.field private maxDelayTime:J

.field private nowDelayTime:J

.field private receiveFrameSize:J

.field private reciveFrameCount:I

.field private renderTime:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->decodeTime:I

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->maxDelayTime:J

    .line 10
    .line 11
    iput v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->renderTime:I

    .line 12
    .line 13
    iput v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->frameSize:I

    .line 14
    .line 15
    iput-wide v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->delayTime:J

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->nowDelayTime:J

    .line 18
    .line 19
    iput v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->reciveFrameCount:I

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->receiveFrameSize:J

    .line 22
    .line 23
    iput v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->gameFps:I

    .line 24
    .line 25
    iput v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->decodedFrameCount:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public getDecodeTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->decodeTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getDecodedFrameCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->decodedFrameCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getDelayTime(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->delayTime:J

    .line 9
    .line 10
    sub-long/2addr p1, v0

    .line 11
    long-to-int p2, p1

    .line 12
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    int-to-long p1, p1

    .line 17
    return-wide p1
.end method

.method public getFrameSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->frameSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getGameFps()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->gameFps:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxDelayTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->maxDelayTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNowDelayTime(J)I
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-wide v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->nowDelayTime:J

    .line 10
    .line 11
    sub-long/2addr p1, v0

    .line 12
    long-to-int p2, p1

    .line 13
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public getReceiveFrameSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->receiveFrameSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getReciveFrameCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->reciveFrameCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getRenderTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->renderTime:I

    .line 2
    .line 3
    return v0
.end method

.method public setDecodeTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->decodeTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setDecodedFrameCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->decodedFrameCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setDelayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->delayTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setFrameSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->frameSize:I

    .line 2
    .line 3
    return-void
.end method

.method public setGameFps(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->gameFps:I

    .line 2
    .line 3
    return-void
.end method

.method public setHmFrameDelayInfo(Lorg/webrtc/haima/HmFrameDelayInfo;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getDecodeTime()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->decodeTime:I

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getRenderTime()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->renderTime:I

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFrameSize()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->frameSize:I

    .line 18
    .line 19
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getDelayTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->delayTime:J

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getNowDelayTime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->nowDelayTime:J

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getReciveFrameCount()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->reciveFrameCount:I

    .line 36
    .line 37
    invoke-virtual {p1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getReceiveFrameSize()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->receiveFrameSize:J

    .line 42
    .line 43
    return-void
.end method

.method public setNowDelayTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->nowDelayTime:J

    .line 2
    .line 3
    return-void
.end method

.method public setReceiveFrameSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->receiveFrameSize:J

    .line 2
    .line 3
    return-void
.end method

.method public setReciveFrameCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->reciveFrameCount:I

    .line 2
    .line 3
    return-void
.end method

.method public setRenderTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->renderTime:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, " decodeTime : "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->decodeTime:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " maxDelayTime : "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->maxDelayTime:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " renderTime :"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->renderTime:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " delayTime : "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->delayTime:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, " nowDelayTime : "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->nowDelayTime:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, " frameSize : "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->frameSize:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "reciveFrameCount : "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->reciveFrameCount:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, " receiveFrameSize : "

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-wide v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->receiveFrameSize:J

    .line 82
    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, "gameFps : "

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/haima/hmcp/beans/FrameDelayInfo;->gameFps:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    return-object v0
.end method
