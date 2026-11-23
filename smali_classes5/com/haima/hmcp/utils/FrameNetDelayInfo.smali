.class public Lcom/haima/hmcp/utils/FrameNetDelayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile netDelayInfo:Lcom/haima/hmcp/utils/FrameNetDelayInfo;


# instance fields
.field private avgNetMs:J

.field private gamePtsFps:I

.field private lastPts:J

.field private mClockDiffTime:J

.field private pingPongTime:I

.field private ptsStartMs:J

.field private receivePtsCount:I

.field private resetDiffTime:Z

.field private screenStreamStartTime:J

.field private totalNetMs:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->totalNetMs:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->avgNetMs:J

    .line 9
    .line 10
    return-void
.end method

.method public static getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->netDelayInfo:Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->netDelayInfo:Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->netDelayInfo:Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public getAvgNetMs()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->avgNetMs:J

    .line 2
    .line 3
    long-to-int v1, v0

    .line 4
    return v1
.end method

.method public getClockDiffTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->mClockDiffTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGamePtsFps()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->gamePtsFps:I

    .line 2
    .line 3
    return v0
.end method

.method public getPingPongTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->pingPongTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getScreenStreamStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->screenStreamStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isResetDiffTime()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->resetDiffTime:Z

    .line 2
    .line 3
    return v0
.end method

.method public resetDiffTime(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->resetDiffTime:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDiffTime(JIJ)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->resetDiffTime:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->mClockDiffTime:J

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-ltz v2, :cond_0

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    iget-wide v0, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->screenStreamStartTime:J

    .line 18
    .line 19
    cmp-long v2, v0, p4

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "\u5f53\u524d Update diffTime ="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " & pingPongDelay = "

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "DebugDelayReport"

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-wide p1, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->mClockDiffTime:J

    .line 54
    .line 55
    iput p3, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->pingPongTime:I

    .line 56
    .line 57
    iput-wide p4, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->screenStreamStartTime:J

    .line 58
    .line 59
    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->resetDiffTime:Z

    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public updateNetPts(JJ)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v3, p3

    .line 6
    .line 7
    iget-wide v5, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->lastPts:J

    .line 8
    .line 9
    sub-long v5, v1, v5

    .line 10
    .line 11
    iget-wide v7, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->mClockDiffTime:J

    .line 12
    .line 13
    const-wide/16 v9, 0x0

    .line 14
    .line 15
    cmp-long v11, v7, v9

    .line 16
    .line 17
    if-nez v11, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v11, 0x1

    .line 21
    cmp-long v12, v1, v9

    .line 22
    .line 23
    if-nez v12, :cond_1

    .line 24
    .line 25
    iput-boolean v11, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->resetDiffTime:Z

    .line 26
    .line 27
    :cond_1
    sub-long v12, v1, v3

    .line 28
    .line 29
    sub-long/2addr v12, v7

    .line 30
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v7

    .line 34
    long-to-int v8, v7

    .line 35
    new-instance v7, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v12, "T1 pst = "

    .line 41
    .line 42
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v12, " & time = "

    .line 49
    .line 50
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, " & \u7f51\u7edc\u5ef6\u65f6\uff1a"

    .line 57
    .line 58
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, "  & Count = "

    .line 65
    .line 66
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget v3, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->receivePtsCount:I

    .line 70
    .line 71
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v3, " & diffTime = "

    .line 75
    .line 76
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-wide v3, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->mClockDiffTime:J

    .line 80
    .line 81
    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, " & pingPongTime\uff1a"

    .line 85
    .line 86
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget v3, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->pingPongTime:I

    .line 90
    .line 91
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const-string v4, "DebugDelayReport"

    .line 99
    .line 100
    invoke-static {v4, v3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget v3, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->pingPongTime:I

    .line 104
    .line 105
    div-int/lit8 v7, v3, 0x2

    .line 106
    .line 107
    if-ge v8, v7, :cond_2

    .line 108
    .line 109
    div-int/lit8 v8, v3, 0x2

    .line 110
    .line 111
    :cond_2
    iput-wide v1, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->lastPts:J

    .line 112
    .line 113
    const-wide/16 v12, 0x64

    .line 114
    .line 115
    const-wide/16 v14, -0x1

    .line 116
    .line 117
    cmp-long v3, v5, v12

    .line 118
    .line 119
    if-gtz v3, :cond_3

    .line 120
    .line 121
    cmp-long v3, v5, v9

    .line 122
    .line 123
    if-gez v3, :cond_4

    .line 124
    .line 125
    :cond_3
    iput-wide v14, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->ptsStartMs:J

    .line 126
    .line 127
    :cond_4
    iget-wide v5, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->ptsStartMs:J

    .line 128
    .line 129
    cmp-long v3, v5, v14

    .line 130
    .line 131
    if-nez v3, :cond_5

    .line 132
    .line 133
    iput v11, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->receivePtsCount:I

    .line 134
    .line 135
    iput-wide v1, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->ptsStartMs:J

    .line 136
    .line 137
    int-to-long v1, v8

    .line 138
    iput-wide v1, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->totalNetMs:J

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_5
    sub-long v12, v1, v5

    .line 142
    .line 143
    const-wide/16 v16, 0x3e8

    .line 144
    .line 145
    cmp-long v3, v12, v16

    .line 146
    .line 147
    if-ltz v3, :cond_8

    .line 148
    .line 149
    sub-long v12, v1, v5

    .line 150
    .line 151
    const-wide/16 v18, 0xbb8

    .line 152
    .line 153
    const/4 v3, 0x0

    .line 154
    cmp-long v7, v12, v18

    .line 155
    .line 156
    if-lez v7, :cond_6

    .line 157
    .line 158
    iput-wide v9, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->totalNetMs:J

    .line 159
    .line 160
    iput v3, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->receivePtsCount:I

    .line 161
    .line 162
    iput-wide v14, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->ptsStartMs:J

    .line 163
    .line 164
    return-void

    .line 165
    :cond_6
    iget v7, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->receivePtsCount:I

    .line 166
    .line 167
    int-to-long v12, v7

    .line 168
    sub-long/2addr v1, v5

    .line 169
    mul-long v12, v12, v1

    .line 170
    .line 171
    div-long v12, v12, v16

    .line 172
    .line 173
    long-to-int v1, v12

    .line 174
    iput v1, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->gamePtsFps:I

    .line 175
    .line 176
    add-int/2addr v7, v11

    .line 177
    iput v7, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->receivePtsCount:I

    .line 178
    .line 179
    iget-wide v1, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->totalNetMs:J

    .line 180
    .line 181
    int-to-long v5, v8

    .line 182
    add-long/2addr v1, v5

    .line 183
    iput-wide v1, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->totalNetMs:J

    .line 184
    .line 185
    if-lez v7, :cond_7

    .line 186
    .line 187
    int-to-long v5, v7

    .line 188
    div-long/2addr v1, v5

    .line 189
    iput-wide v1, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->avgNetMs:J

    .line 190
    .line 191
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v2, " diff.time \u5e73\u5747\u5ef6\u65f6 = "

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-wide v5, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->avgNetMs:J

    .line 202
    .line 203
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v2, " & gamePtsFps = "

    .line 207
    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget v2, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->gamePtsFps:I

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-static {v4, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iput-wide v9, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->totalNetMs:J

    .line 224
    .line 225
    iput v3, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->receivePtsCount:I

    .line 226
    .line 227
    iput-wide v14, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->ptsStartMs:J

    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_8
    iget v1, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->receivePtsCount:I

    .line 231
    .line 232
    add-int/2addr v1, v11

    .line 233
    iput v1, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->receivePtsCount:I

    .line 234
    .line 235
    iget-wide v1, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->totalNetMs:J

    .line 236
    .line 237
    int-to-long v3, v8

    .line 238
    add-long/2addr v1, v3

    .line 239
    iput-wide v1, v0, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->totalNetMs:J

    .line 240
    .line 241
    :goto_0
    return-void
.end method
