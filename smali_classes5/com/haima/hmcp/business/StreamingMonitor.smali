.class public Lcom/haima/hmcp/business/StreamingMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;
    }
.end annotation


# static fields
.field private static final LAST_RECEIVE_FRAMES_BUFFER:[J

.field public static final TAG:Ljava/lang/String; = "StreamingMonitor"


# instance fields
.field private enable:Z

.field private frameInsertIndex:I

.field private freezeCount:I

.field private mHandler:Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mStreamingCallback:Lcom/haima/hmcp/listeners/StreamingCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    sput-object v0, Lcom/haima/hmcp/business/StreamingMonitor;->LAST_RECEIVE_FRAMES_BUFFER:[J

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->enable:Z

    .line 6
    .line 7
    sget-object v1, Lcom/haima/hmcp/business/StreamingMonitor;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "create instance..."

    .line 10
    .line 11
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->freezeCount:I

    .line 15
    .line 16
    iput v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->frameInsertIndex:I

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/business/StreamingMonitor;Lcom/haima/hmcp/beans/VideoDelayInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/StreamingMonitor;->handleData(Lcom/haima/hmcp/beans/VideoDelayInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private checkReceiveFramesValid()Z
    .locals 9

    .line 1
    sget-object v0, Lcom/haima/hmcp/business/StreamingMonitor;->LAST_RECEIVE_FRAMES_BUFFER:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 7
    .line 8
    aget-wide v4, v0, v3

    .line 9
    .line 10
    const-wide/16 v6, 0x0

    .line 11
    .line 12
    cmp-long v8, v4, v6

    .line 13
    .line 14
    if-nez v8, :cond_0

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method private handleData(Lcom/haima/hmcp/beans/VideoDelayInfo;)V
    .locals 10

    .line 1
    instance-of v0, p1, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->getFrameRateOutput()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->getFrameRateDecode()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;

    .line 17
    .line 18
    if-eqz v0, :cond_8

    .line 19
    .line 20
    check-cast p1, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->getReceiveFrames()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v0, v0

    .line 27
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->getDecodeFrames()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    :goto_0
    iget p1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->frameInsertIndex:I

    .line 32
    .line 33
    sget-object v4, Lcom/haima/hmcp/business/StreamingMonitor;->LAST_RECEIVE_FRAMES_BUFFER:[J

    .line 34
    .line 35
    array-length v5, v4

    .line 36
    const/4 v6, 0x0

    .line 37
    if-lt p1, v5, :cond_1

    .line 38
    .line 39
    iput v6, p0, Lcom/haima/hmcp/business/StreamingMonitor;->frameInsertIndex:I

    .line 40
    .line 41
    :cond_1
    iget p1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->frameInsertIndex:I

    .line 42
    .line 43
    add-int/lit8 v5, p1, 0x1

    .line 44
    .line 45
    iput v5, p0, Lcom/haima/hmcp/business/StreamingMonitor;->frameInsertIndex:I

    .line 46
    .line 47
    aput-wide v0, v4, p1

    .line 48
    .line 49
    const-wide/16 v7, 0x0

    .line 50
    .line 51
    cmp-long p1, v2, v7

    .line 52
    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    iget p1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->freezeCount:I

    .line 56
    .line 57
    add-int/lit8 p1, p1, 0x1

    .line 58
    .line 59
    iput p1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->freezeCount:I

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iput v6, p0, Lcom/haima/hmcp/business/StreamingMonitor;->freezeCount:I

    .line 63
    .line 64
    :goto_1
    sget-boolean p1, Lcom/haima/hmcp/Constants;->IS_DEBUG:Z

    .line 65
    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    array-length v5, v4

    .line 74
    const/4 v7, 0x0

    .line 75
    :goto_2
    if-ge v7, v5, :cond_3

    .line 76
    .line 77
    aget-wide v8, v4, v7

    .line 78
    .line 79
    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v8, ","

    .line 83
    .line 84
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    add-int/lit8 v7, v7, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    add-int/lit8 v4, v4, -0x1

    .line 99
    .line 100
    invoke-virtual {p1, v6, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget-object v4, Lcom/haima/hmcp/business/StreamingMonitor;->TAG:Ljava/lang/String;

    .line 105
    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v6, "freezeCount: "

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    iget v6, p0, Lcom/haima/hmcp/business/StreamingMonitor;->freezeCount:I

    .line 117
    .line 118
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v6, "; receive frames: "

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v0, "; decode frames: "

    .line 130
    .line 131
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, "; frames buffer["

    .line 138
    .line 139
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, "] "

    .line 146
    .line 147
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {v4, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    iget p1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->freezeCount:I

    .line 158
    .line 159
    const/16 v0, 0x14

    .line 160
    .line 161
    if-ge p1, v0, :cond_5

    .line 162
    .line 163
    return-void

    .line 164
    :cond_5
    invoke-direct {p0}, Lcom/haima/hmcp/business/StreamingMonitor;->checkReceiveFramesValid()Z

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    if-nez p1, :cond_6

    .line 169
    .line 170
    return-void

    .line 171
    :cond_6
    iget-object p1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mStreamingCallback:Lcom/haima/hmcp/listeners/StreamingCallback;

    .line 172
    .line 173
    if-nez p1, :cond_7

    .line 174
    .line 175
    return-void

    .line 176
    :cond_7
    const-string p1, "12802"

    .line 177
    .line 178
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mStreamingCallback:Lcom/haima/hmcp/listeners/StreamingCallback;

    .line 182
    .line 183
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/StreamingCallback;->onFreeze()V

    .line 184
    .line 185
    .line 186
    invoke-direct {p0}, Lcom/haima/hmcp/business/StreamingMonitor;->reset()V

    .line 187
    .line 188
    .line 189
    return-void

    .line 190
    :cond_8
    sget-object p1, Lcom/haima/hmcp/business/StreamingMonitor;->TAG:Ljava/lang/String;

    .line 191
    .line 192
    const-string v0, "unknown delay info"

    .line 193
    .line 194
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method private releaseHandler()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandler:Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iput-object v1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandler:Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object v1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 19
    .line 20
    return-void
.end method

.method private reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->freezeCount:I

    .line 3
    .line 4
    iput v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->frameInsertIndex:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->enable:Z

    .line 2
    .line 3
    return v0
.end method

.method public prepare()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/haima/hmcp/business/StreamingMonitor;->releaseHandler()V

    .line 23
    .line 24
    .line 25
    :cond_1
    sget-object v0, Lcom/haima/hmcp/business/StreamingMonitor;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "prepare..."

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    .line 33
    .line 34
    const-string v1, "streaming-monitor"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;-><init>(Lcom/haima/hmcp/business/StreamingMonitor;Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandler:Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;

    .line 56
    .line 57
    return-void
.end method

.method public put(Lcom/haima/hmcp/beans/VideoDelayInfo;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->enable:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/business/StreamingMonitor;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "is not enable, can not work"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mStreamingCallback:Lcom/haima/hmcp/listeners/StreamingCallback;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    if-nez p1, :cond_2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandler:Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    return-void

    .line 26
    :cond_3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandler:Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mStreamingCallback:Lcom/haima/hmcp/listeners/StreamingCallback;

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/business/StreamingMonitor;->releaseHandler()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setConfig(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string v0, "streaming_monitor_enable"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-lez p1, :cond_2

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    :goto_0
    iput-boolean p1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->enable:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_0
    iput-boolean v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->enable:Z

    .line 39
    .line 40
    :cond_3
    :goto_1
    return-void
.end method

.method public setStreamingCallback(Lcom/haima/hmcp/listeners/StreamingCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mStreamingCallback:Lcom/haima/hmcp/listeners/StreamingCallback;

    .line 2
    .line 3
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/StreamingMonitor;->mHandler:Lcom/haima/hmcp/business/StreamingMonitor$MonitorHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
