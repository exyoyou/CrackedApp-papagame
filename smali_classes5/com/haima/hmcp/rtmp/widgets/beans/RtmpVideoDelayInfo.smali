.class public Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;
.super Lcom/haima/hmcp/beans/VideoDelayInfo;
.source "SourceFile"


# instance fields
.field private decodeFrames:J

.field private decodeFramesCount:J

.field protected decodeType:I

.field private receiveFrames:I


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/beans/FrameDelayInfo;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/beans/VideoDelayInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->decodeType:I

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->timeStamp:J

    .line 12
    .line 13
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getAvgNetMs()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->netDelay:I

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/FrameDelayInfo;->getDecodeTime()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->decodeDelay:I

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/FrameDelayInfo;->getRenderTime()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->renderDelay:I

    .line 34
    .line 35
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getClockDiffTime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/beans/FrameDelayInfo;->getDelayTime(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    const-wide/16 v2, 0xa

    .line 48
    .line 49
    const-string v4, " & \u6821\u51c6\u540e = "

    .line 50
    .line 51
    const-string v5, " \u611f\u77e5\u5ef6\u8fdf delayMs = "

    .line 52
    .line 53
    const-string v6, "DebugDelayReport"

    .line 54
    .line 55
    cmp-long v7, v0, v2

    .line 56
    .line 57
    if-gez v7, :cond_0

    .line 58
    .line 59
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getPingPongTime()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    div-int/lit8 v2, v2, 0x2

    .line 68
    .line 69
    int-to-long v2, v2

    .line 70
    add-long/2addr v2, v0

    .line 71
    iput-wide v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayTime:J

    .line 72
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayTime:J

    .line 88
    .line 89
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v6, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    iput-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayTime:J

    .line 101
    .line 102
    :goto_0
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getClockDiffTime()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/beans/FrameDelayInfo;->getNowDelayTime(J)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    const/16 v1, 0xa

    .line 115
    .line 116
    if-ge v0, v1, :cond_1

    .line 117
    .line 118
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getPingPongTime()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    div-int/lit8 v1, v1, 0x2

    .line 127
    .line 128
    add-int/2addr v1, v0

    .line 129
    int-to-long v1, v1

    .line 130
    iput-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->nowDelayTime:J

    .line 131
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-wide v2, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->nowDelayTime:J

    .line 147
    .line 148
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v6, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_1
    int-to-long v0, v0

    .line 160
    iput-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->nowDelayTime:J

    .line 161
    .line 162
    :goto_1
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/FrameDelayInfo;->getFrameSize()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iput v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->frameSize:I

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/FrameDelayInfo;->getReceiveFrameSize()J

    .line 169
    .line 170
    .line 171
    move-result-wide v0

    .line 172
    iput-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->receiveFrameSize:J

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/FrameDelayInfo;->getReciveFrameCount()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    iput v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->receiveFrameCount:I

    .line 179
    .line 180
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getGamePtsFps()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    iput v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->gameFps:I

    .line 189
    .line 190
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getPingPongTime()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    int-to-long v0, v0

    .line 199
    iput-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->clockDiffUse:J

    .line 200
    .line 201
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/FrameDelayInfo;->getDecodedFrameCount()I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    int-to-long v0, v0

    .line 206
    iput-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->decodeFrames:J

    .line 207
    .line 208
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/FrameDelayInfo;->getReceiveFrameSize()J

    .line 209
    .line 210
    .line 211
    move-result-wide v0

    .line 212
    iput-wide v0, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->receiveFrameSize:J

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/FrameDelayInfo;->getDecodedFrameCount()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    int-to-long v0, p1

    .line 219
    iput-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->decodeFramesCount:J

    .line 220
    .line 221
    return-void
.end method


# virtual methods
.method public getDecodeFrames()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->decodeFrames:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDecodeFramesCount()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->decodeFramesCount:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDecodeType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->decodeType:I

    .line 2
    .line 3
    return v0
.end method

.method public getPacketsLostRate()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getReceiveFrames()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->receiveFrames:I

    .line 2
    .line 3
    return v0
.end method

.method public setDecodeFrames(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->decodeFrames:J

    .line 2
    .line 3
    return-void
.end method

.method public setDecodeType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->decodeType:I

    .line 2
    .line 3
    return-void
.end method

.method public setReceiveFrames(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->receiveFrames:I

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
    const-string v1, "\n\u7f51\u7edc\u8017\u65f6 \uff1a"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->netDelay:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "ms\n\u5ba2\u6237\u7aef\u5e27\u7387 \uff1a"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->videoFps:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "\u5e27\n\u5355\u5e27\u5ef6\u8fdf \uff1a"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->delayTime:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, "ms\n\u89e3\u7801\u7c7b\u578b(1\u786c\u89e30\u8f6f\u89e3) \uff1a"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->decodeType:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "\n\u5ba2\u6237\u7aef\u5e26\u5bbd \uff1a"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/haima/hmcp/beans/VideoDelayInfo;->bitRate:J

    .line 52
    .line 53
    invoke-static {v1, v2}, Lcom/haima/hmcp/beans/VideoDelayInfo;->formatedSize(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, "\n\u7f16\u7801\u7c7b\u578b \uff1a"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getCodecName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method
