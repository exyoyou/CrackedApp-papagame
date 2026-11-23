.class public Lcom/haima/hmcp/input/HMInput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/input/HMInput$PingTask;
    }
.end annotation


# static fields
.field private static final PING_DEFAULT_DELAY:I = 0x64

.field private static final PING_DEFAULT_INTERVAL:I = 0xea60

.field protected static final TAG:Ljava/lang/String; = "HMInput"


# instance fields
.field protected clockDiffTime:J

.field protected intervalUtils:Lcom/haima/hmcp/business/IntervalUtils;

.field protected isClockDiffSuccess:Z

.field protected final mHandler:Landroid/os/Handler;

.field protected mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

.field protected mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

.field protected mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

.field protected mPing2Interval:I

.field private mPingDelay:I

.field protected mPingTask:Lcom/haima/hmcp/input/HMInput$PingTask;

.field protected mSendPing2Time:J

.field protected sendPingTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/input/HMInput;->mPingDelay:I

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/haima/hmcp/input/HMInput;->clockDiffTime:J

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/haima/hmcp/input/HMInput;->sendPingTime:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/haima/hmcp/input/HMInput;->isClockDiffSuccess:Z

    .line 18
    .line 19
    const v0, 0xea60

    .line 20
    .line 21
    .line 22
    iput v0, p0, Lcom/haima/hmcp/input/HMInput;->mPing2Interval:I

    .line 23
    .line 24
    new-instance v0, Landroid/os/Handler;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    return-void
.end method

.method private changeSendPingIntervalByPingpongTime(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput;->intervalUtils:Lcom/haima/hmcp/business/IntervalUtils;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/business/IntervalUtils;->getIntervalTimeByUseTime(J)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/haima/hmcp/input/HMInput;->mPing2Interval:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iput v0, p0, Lcom/haima/hmcp/input/HMInput;->mPing2Interval:I

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "pingpongTime : "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " changeSendPingIntervalByPingpongTime : "

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget p1, p0, Lcom/haima/hmcp/input/HMInput;->mPing2Interval:I

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string p2, "HMInput"

    .line 43
    .line 44
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/haima/hmcp/input/HMInput;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    iget-object p2, p0, Lcom/haima/hmcp/input/HMInput;->mPingTask:Lcom/haima/hmcp/input/HMInput$PingTask;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    new-instance p1, Lcom/haima/hmcp/input/HMInput$PingTask;

    .line 57
    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-direct {p1, p0, p2}, Lcom/haima/hmcp/input/HMInput$PingTask;-><init>(Lcom/haima/hmcp/input/HMInput;Lcom/haima/hmcp/input/HMInput$1;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/haima/hmcp/input/HMInput;->mPingTask:Lcom/haima/hmcp/input/HMInput$PingTask;

    .line 63
    .line 64
    iget-object p2, p0, Lcom/haima/hmcp/input/HMInput;->mHandler:Landroid/os/Handler;

    .line 65
    .line 66
    iget v0, p0, Lcom/haima/hmcp/input/HMInput;->mPing2Interval:I

    .line 67
    .line 68
    int-to-long v0, v0

    .line 69
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .line 1
    const-string v0, "HMInput"

    .line 2
    .line 3
    const-string v1, "connect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/haima/hmcp/input/sender/IHMInputSender;->connect()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public disConnect()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "disConnect mHmInputSender is null? ="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "HMInput"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0}, Lcom/haima/hmcp/input/sender/IHMInputSender;->disConnected()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public isConnected()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "disConnect mHmInputSender is null? ="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "HMInput"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/haima/hmcp/input/sender/IHMInputSender;->isConnected()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v2, 0x0

    .line 44
    :goto_1
    return v2
.end method

.method public parseMsg(Ljava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "parseMsg payload:"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "HMInput"

    .line 23
    .line 24
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_f

    .line 32
    .line 33
    const-string v2, "pong2:"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const-string v4, "10033"

    .line 40
    .line 41
    const-string v5, "10050"

    .line 42
    .line 43
    const-string v6, ":"

    .line 44
    .line 45
    const-string v7, ""

    .line 46
    .line 47
    const/4 v8, 0x1

    .line 48
    if-eqz v2, :cond_b

    .line 49
    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ","

    .line 63
    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    array-length v6, v2

    .line 79
    if-le v6, v8, :cond_f

    .line 80
    .line 81
    aget-object v2, v2, v8

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    array-length v2, v1

    .line 88
    const/4 v6, 0x3

    .line 89
    if-lt v2, v6, :cond_f

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    aget-object v6, v1, v2

    .line 93
    .line 94
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v11

    .line 98
    new-instance v6, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v13, "pong2RecTime :"

    .line 104
    .line 105
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v3, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-wide v13, v0, Lcom/haima/hmcp/input/HMInput;->mSendPing2Time:J

    .line 119
    .line 120
    cmp-long v6, v11, v13

    .line 121
    .line 122
    if-eqz v6, :cond_0

    .line 123
    .line 124
    return-void

    .line 125
    :cond_0
    aget-object v6, v1, v8

    .line 126
    .line 127
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v13

    .line 131
    const/4 v6, 0x2

    .line 132
    aget-object v1, v1, v6

    .line 133
    .line 134
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v6

    .line 138
    if-nez v6, :cond_1

    .line 139
    .line 140
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 145
    .line 146
    .line 147
    move-result-wide v15

    .line 148
    goto :goto_0

    .line 149
    :cond_1
    const-wide/16 v15, -0x1

    .line 150
    .line 151
    :goto_0
    move-wide/from16 v21, v15

    .line 152
    .line 153
    move-object v15, v3

    .line 154
    sub-long v2, v9, v11

    .line 155
    .line 156
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/haima/hmcp/HmcpManager;->isRtcStream()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const-string v6, ">:clockDiffTime "

    .line 165
    .line 166
    move-wide/from16 v17, v9

    .line 167
    .line 168
    const-wide/16 v8, 0x0

    .line 169
    .line 170
    if-eqz v1, :cond_6

    .line 171
    .line 172
    iget-boolean v1, v0, Lcom/haima/hmcp/input/HMInput;->isClockDiffSuccess:Z

    .line 173
    .line 174
    if-nez v1, :cond_4

    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v10, "==clockDiffTime first time hmInputCallback is null?"

    .line 182
    .line 183
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object v10, v0, Lcom/haima/hmcp/input/HMInput;->mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 187
    .line 188
    if-nez v10, :cond_2

    .line 189
    .line 190
    const/4 v10, 0x1

    .line 191
    goto :goto_1

    .line 192
    :cond_2
    const/4 v10, 0x0

    .line 193
    :goto_1
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    move-object v10, v15

    .line 201
    invoke-static {v10, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const/4 v1, 0x1

    .line 205
    iput-boolean v1, v0, Lcom/haima/hmcp/input/HMInput;->isClockDiffSuccess:Z

    .line 206
    .line 207
    iget-object v1, v0, Lcom/haima/hmcp/input/HMInput;->mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 208
    .line 209
    if-eqz v1, :cond_3

    .line 210
    .line 211
    invoke-interface {v1, v8, v9}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onFirstDiffClockSuccess(J)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_3
    const-string v1, "mInputCallback is null"

    .line 216
    .line 217
    invoke-static {v10, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_4
    move-object v10, v15

    .line 222
    :goto_2
    invoke-direct {v0, v2, v3}, Lcom/haima/hmcp/input/HMInput;->changeSendPingIntervalByPingpongTime(J)V

    .line 223
    .line 224
    .line 225
    iget-object v1, v0, Lcom/haima/hmcp/input/HMInput;->mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 226
    .line 227
    if-eqz v1, :cond_5

    .line 228
    .line 229
    long-to-int v11, v2

    .line 230
    invoke-interface {v1, v8, v9, v11}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onClockDiffChange(JI)V

    .line 231
    .line 232
    .line 233
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-wide v8, v0, Lcom/haima/hmcp/input/HMInput;->clockDiffTime:J

    .line 242
    .line 243
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-static {v10, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_3

    .line 254
    .line 255
    :cond_6
    move-object v10, v15

    .line 256
    cmp-long v1, v2, v8

    .line 257
    .line 258
    if-lez v1, :cond_9

    .line 259
    .line 260
    const-wide/16 v19, 0x2710

    .line 261
    .line 262
    cmp-long v1, v2, v19

    .line 263
    .line 264
    if-gez v1, :cond_9

    .line 265
    .line 266
    cmp-long v1, v21, v8

    .line 267
    .line 268
    if-lez v1, :cond_9

    .line 269
    .line 270
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getPingPongTime()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    int-to-long v8, v1

    .line 279
    cmp-long v1, v2, v8

    .line 280
    .line 281
    if-ltz v1, :cond_7

    .line 282
    .line 283
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getPingPongTime()I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-eqz v1, :cond_7

    .line 292
    .line 293
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getScreenStreamStartTime()J

    .line 298
    .line 299
    .line 300
    move-result-wide v8

    .line 301
    cmp-long v1, v8, v21

    .line 302
    .line 303
    if-nez v1, :cond_7

    .line 304
    .line 305
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->isResetDiffTime()Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_8

    .line 314
    .line 315
    :cond_7
    sub-long v13, v13, v21

    .line 316
    .line 317
    add-long v11, v11, v17

    .line 318
    .line 319
    const-wide/16 v8, 0x2

    .line 320
    .line 321
    div-long/2addr v11, v8

    .line 322
    sub-long/2addr v13, v11

    .line 323
    iput-wide v13, v0, Lcom/haima/hmcp/input/HMInput;->clockDiffTime:J

    .line 324
    .line 325
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 326
    .line 327
    .line 328
    move-result-object v17

    .line 329
    iget-wide v8, v0, Lcom/haima/hmcp/input/HMInput;->clockDiffTime:J

    .line 330
    .line 331
    long-to-int v1, v2

    .line 332
    move-wide/from16 v18, v8

    .line 333
    .line 334
    move/from16 v20, v1

    .line 335
    .line 336
    invoke-virtual/range {v17 .. v22}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->setDiffTime(JIJ)V

    .line 337
    .line 338
    .line 339
    invoke-direct {v0, v2, v3}, Lcom/haima/hmcp/input/HMInput;->changeSendPingIntervalByPingpongTime(J)V

    .line 340
    .line 341
    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    iget-wide v8, v0, Lcom/haima/hmcp/input/HMInput;->clockDiffTime:J

    .line 351
    .line 352
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-static {v10, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    :cond_8
    iget-boolean v1, v0, Lcom/haima/hmcp/input/HMInput;->isClockDiffSuccess:Z

    .line 363
    .line 364
    if-nez v1, :cond_a

    .line 365
    .line 366
    const/4 v1, 0x1

    .line 367
    iput-boolean v1, v0, Lcom/haima/hmcp/input/HMInput;->isClockDiffSuccess:Z

    .line 368
    .line 369
    iget-object v1, v0, Lcom/haima/hmcp/input/HMInput;->mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 370
    .line 371
    if-eqz v1, :cond_a

    .line 372
    .line 373
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 374
    .line 375
    .line 376
    move-result-object v6

    .line 377
    invoke-virtual {v6}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getClockDiffTime()J

    .line 378
    .line 379
    .line 380
    move-result-wide v8

    .line 381
    invoke-interface {v1, v8, v9}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onFirstDiffClockSuccess(J)V

    .line 382
    .line 383
    .line 384
    goto :goto_3

    .line 385
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 388
    .line 389
    .line 390
    const-string v6, "clock diff error pingTime"

    .line 391
    .line 392
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v6, " pongTime :"

    .line 399
    .line 400
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    move-wide/from16 v8, v17

    .line 404
    .line 405
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    invoke-static {v10, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    :cond_a
    :goto_3
    new-instance v1, Lcom/haima/hmcp/beans/ReportPingPong;

    .line 416
    .line 417
    new-instance v6, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    invoke-direct {v1, v6}, Lcom/haima/hmcp/beans/ReportPingPong;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    invoke-static {v5, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iget v1, v0, Lcom/haima/hmcp/input/HMInput;->mPingDelay:I

    .line 443
    .line 444
    int-to-long v5, v1

    .line 445
    cmp-long v1, v2, v5

    .line 446
    .line 447
    if-lez v1, :cond_f

    .line 448
    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-static {v4, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    goto/16 :goto_4

    .line 468
    .line 469
    :cond_b
    move-object v10, v3

    .line 470
    const-string v2, "pong:"

    .line 471
    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    if-eqz v2, :cond_d

    .line 477
    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 479
    .line 480
    .line 481
    move-result-wide v2

    .line 482
    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    array-length v6, v1

    .line 487
    const/4 v8, 0x1

    .line 488
    if-le v6, v8, :cond_f

    .line 489
    .line 490
    aget-object v1, v1, v8

    .line 491
    .line 492
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 493
    .line 494
    .line 495
    move-result-wide v8

    .line 496
    iget-wide v11, v0, Lcom/haima/hmcp/input/HMInput;->sendPingTime:J

    .line 497
    .line 498
    cmp-long v1, v8, v11

    .line 499
    .line 500
    if-eqz v1, :cond_c

    .line 501
    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    .line 503
    .line 504
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    .line 506
    .line 507
    const-string v2, "sendPingTime = "

    .line 508
    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    iget-wide v2, v0, Lcom/haima/hmcp/input/HMInput;->sendPingTime:J

    .line 513
    .line 514
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v2, " Pong contain sendPingTime : "

    .line 518
    .line 519
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-static {v10, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    return-void

    .line 533
    :cond_c
    sub-long/2addr v2, v8

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .line 538
    .line 539
    const-string v6, "connectToInstance=>onTextMessage==lagTime===>"

    .line 540
    .line 541
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    invoke-static {v10, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v1

    .line 569
    invoke-static {v5, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    iget v1, v0, Lcom/haima/hmcp/input/HMInput;->mPingDelay:I

    .line 573
    .line 574
    int-to-long v5, v1

    .line 575
    cmp-long v1, v2, v5

    .line 576
    .line 577
    if-ltz v1, :cond_f

    .line 578
    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    .line 580
    .line 581
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v1

    .line 594
    invoke-static {v4, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    goto :goto_4

    .line 598
    :cond_d
    sget-object v2, Lcom/haima/hmcp/business/WebSocketInstanceType;->INPUT:Lcom/haima/hmcp/business/WebSocketInstanceType;

    .line 599
    .line 600
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/Utils;->countlyMessage(Lcom/haima/hmcp/business/WebSocketInstanceType;Ljava/lang/String;)Z

    .line 601
    .line 602
    .line 603
    move-result v2

    .line 604
    if-eqz v2, :cond_e

    .line 605
    .line 606
    return-void

    .line 607
    :cond_e
    iget-object v2, v0, Lcom/haima/hmcp/input/HMInput;->mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 608
    .line 609
    if-eqz v2, :cond_f

    .line 610
    .line 611
    invoke-interface {v2, v1}, Lcom/haima/hmcp/input/listener/HMInputCallback;->onTextMessage(Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    :cond_f
    :goto_4
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/input/HMInput;->sendMessage(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public sendMessage(Ljava/lang/String;Z)Z
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isDiscardable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HMInput"

    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/input/sender/IHMInputSender;->sendMessage(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public sendPing2()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput;->intervalUtils:Lcom/haima/hmcp/business/IntervalUtils;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/haima/hmcp/business/IntervalUtils;->isInitSuccess()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "sendPing2 initSuccess:"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "HMInput"

    .line 33
    .line 34
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/haima/hmcp/input/HMInput;->isClockDiffSuccess:Z

    .line 40
    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    iput-wide v4, p0, Lcom/haima/hmcp/input/HMInput;->clockDiffTime:J

    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v4

    .line 49
    iput-wide v4, p0, Lcom/haima/hmcp/input/HMInput;->mSendPing2Time:J

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v2, "sendPing2 mSendPing2Time:"

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v4, p0, Lcom/haima/hmcp/input/HMInput;->mSendPing2Time:J

    .line 62
    .line 63
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v3, "ping2:"

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-wide v3, p0, Lcom/haima/hmcp/input/HMInput;->mSendPing2Time:J

    .line 86
    .line 87
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-interface {v0, v2, v1}, Lcom/haima/hmcp/input/sender/IHMInputSender;->sendMessage(Ljava/lang/String;Z)Z

    .line 95
    .line 96
    .line 97
    :cond_1
    return-void
.end method

.method public setHMInputCallback(Lcom/haima/hmcp/input/listener/HMInputCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/input/HMInput;->mInputCallback:Lcom/haima/hmcp/input/listener/HMInputCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setHMInputConfig(Lcom/haima/hmcp/input/HMInputConfig;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/haima/hmcp/input/HMInputConfig;

    .line 6
    .line 7
    invoke-direct {p1}, Lcom/haima/hmcp/input/HMInputConfig;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/haima/hmcp/input/HMInputConfig;->pingpongConfig:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    new-instance p1, Lcom/haima/hmcp/business/IntervalUtils;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/haima/hmcp/input/HMInputConfig;->pingpongConfig:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {p1, v0}, Lcom/haima/hmcp/business/IntervalUtils;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/haima/hmcp/input/HMInput;->intervalUtils:Lcom/haima/hmcp/business/IntervalUtils;

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public setSender(Lcom/haima/hmcp/input/sender/IHMInputSender;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputConfig:Lcom/haima/hmcp/input/HMInputConfig;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/haima/hmcp/input/sender/IHMInputSender;->setConfig(Lcom/haima/hmcp/input/HMInputConfig;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/input/HMInput;->mHmInputSender:Lcom/haima/hmcp/input/sender/IHMInputSender;

    .line 9
    .line 10
    new-instance v0, Lcom/haima/hmcp/input/HMInput$1;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lcom/haima/hmcp/input/HMInput$1;-><init>(Lcom/haima/hmcp/input/HMInput;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lcom/haima/hmcp/input/sender/IHMInputSender;->setCallback(Lcom/haima/hmcp/input/listener/HMInputCallback;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public startSendPing()V
    .locals 4

    .line 1
    const-string v0, "HMInput"

    .line 2
    .line 3
    const-string v1, "===startSendPing==="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/input/HMInput;->mPingTask:Lcom/haima/hmcp/input/HMInput$PingTask;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/haima/hmcp/input/HMInput$PingTask;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/input/HMInput$PingTask;-><init>(Lcom/haima/hmcp/input/HMInput;Lcom/haima/hmcp/input/HMInput$1;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mPingTask:Lcom/haima/hmcp/input/HMInput$PingTask;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/haima/hmcp/input/HMInput;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    const-wide/16 v2, 0x0

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public stopSendPing()V
    .locals 2

    .line 1
    const-string v0, "HMInput"

    .line 2
    .line 3
    const-string v1, "stopSendPing"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/input/HMInput;->mPingTask:Lcom/haima/hmcp/input/HMInput$PingTask;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/haima/hmcp/input/HMInput;->mPingTask:Lcom/haima/hmcp/input/HMInput$PingTask;

    .line 21
    .line 22
    :cond_0
    return-void
.end method
