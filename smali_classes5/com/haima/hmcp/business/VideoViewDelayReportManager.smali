.class public Lcom/haima/hmcp/business/VideoViewDelayReportManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COLECTION_INTEVAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VideoViewDelayReport"


# instance fields
.field private collectTime:J

.field private delayInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/beans/VideoDelayInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isReportCodec:Z

.field private isReportedDivideTimeLessMin:Z

.field private isReportedInvalid:Z

.field private mLastFrameFrozenTime:J

.field private mLastVideoDelayInfo:Lcom/haima/hmcp/beans/VideoDelayInfo;

.field private mLastVideoDelaySendTime:J

.field private mReportDivideTime:I

.field private mStreamingMonitor:Lcom/haima/hmcp/business/StreamingMonitor;

.field private mVideoView:Lcom/haima/hmcp/IHmcpVideoView;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/IHmcpVideoView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mReportDivideTime:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->delayInfos:Ljava/util/ArrayList;

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->collectTime:J

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    iput-boolean v2, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->isReportCodec:Z

    .line 20
    .line 21
    iput-boolean v2, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->isReportedInvalid:Z

    .line 22
    .line 23
    iput-boolean v2, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->isReportedDivideTimeLessMin:Z

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-object v2, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastVideoDelayInfo:Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastVideoDelaySendTime:J

    .line 29
    .line 30
    iput-object p1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mVideoView:Lcom/haima/hmcp/IHmcpVideoView;

    .line 31
    .line 32
    return-void
.end method

.method private countRtmpFrames(Lcom/haima/hmcp/beans/VideoDelayInfo;Lcom/haima/hmcp/beans/VideoDelayInfo;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    check-cast p1, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;

    .line 11
    .line 12
    check-cast p2, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getReceiveFrameCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getReceiveFrameCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sub-int/2addr v0, v1

    .line 23
    invoke-virtual {p2, v0}, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->setReceiveFrames(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->getDecodeFramesCount()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->getDecodeFramesCount()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    sub-long/2addr v0, v2

    .line 35
    invoke-virtual {p2, v0, v1}, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->setDecodeFrames(J)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized report()V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->delayInfos:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    const-string v0, ""

    .line 13
    .line 14
    iget-object v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->delayInfos:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->delayInfos:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    array-length v2, v1

    .line 26
    array-length v3, v1

    .line 27
    const/4 v4, -0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_0
    if-ge v5, v3, :cond_4

    .line 30
    .line 31
    aget-object v6, v1, v5

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x1

    .line 34
    .line 35
    if-nez v6, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    instance-of v7, v6, Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 39
    .line 40
    if-eqz v7, :cond_3

    .line 41
    .line 42
    add-int/lit8 v7, v2, -0x1

    .line 43
    .line 44
    if-ne v4, v7, :cond_2

    .line 45
    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    check-cast v6, Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 55
    .line 56
    invoke-virtual {v6}, Lcom/haima/hmcp/beans/VideoDelayInfo;->toReportString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    check-cast v6, Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 77
    .line 78
    invoke-virtual {v6}, Lcom/haima/hmcp/beans/VideoDelayInfo;->toReportString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v0, ","

    .line 86
    .line 87
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    const-string v1, "VideoViewDelayReport"

    .line 98
    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v3, "=OperationStream===16003 hashcode="

    .line 105
    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    const-string v1, "16003"

    .line 124
    .line 125
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    monitor-exit p0

    .line 132
    throw v0
.end method

.method private reportRtcCodec(Lcom/haima/hmcp/beans/VideoDelayInfo;)V
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mVideoView:Lcom/haima/hmcp/IHmcpVideoView;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    check-cast v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getGameArchitectureType()Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lcom/haima/hmcp/beans/GameArchitectureType;->X86:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 19
    .line 20
    if-ne v1, v2, :cond_3

    .line 21
    .line 22
    instance-of v1, p1, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;

    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    move-object v1, p1

    .line 27
    check-cast v1, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "videoDelayInfo:"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "VideoViewDelayReport"

    .line 51
    .line 52
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->getFrameRateOutput()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    const-wide/16 v4, 0x0

    .line 60
    .line 61
    cmp-long v6, v1, v4

    .line 62
    .line 63
    if-nez v6, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getVideoFps()J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    cmp-long v6, v1, v4

    .line 70
    .line 71
    if-nez v6, :cond_2

    .line 72
    .line 73
    iget-wide v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastFrameFrozenTime:J

    .line 74
    .line 75
    cmp-long v6, v1, v4

    .line 76
    .line 77
    if-nez v6, :cond_1

    .line 78
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    iput-wide v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastFrameFrozenTime:J

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    iget-wide v4, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastFrameFrozenTime:J

    .line 91
    .line 92
    sub-long/2addr v1, v4

    .line 93
    sget v4, Lcom/haima/hmcp/Constants;->WEBRTC_FPS_TIMEOUT:I

    .line 94
    .line 95
    int-to-long v4, v4

    .line 96
    cmp-long v6, v1, v4

    .line 97
    .line 98
    if-lez v6, :cond_3

    .line 99
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v1

    .line 104
    iput-wide v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastFrameFrozenTime:J

    .line 105
    .line 106
    const-string v1, "reconnect()"

    .line 107
    .line 108
    invoke-static {v3, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v1, Lcom/haima/hmcp/business/VideoViewDelayReportManager$1;

    .line 112
    .line 113
    invoke-direct {v1, p0, v0}, Lcom/haima/hmcp/business/VideoViewDelayReportManager$1;-><init>(Lcom/haima/hmcp/business/VideoViewDelayReportManager;Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    iput-wide v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastFrameFrozenTime:J

    .line 125
    .line 126
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->isReportCodec:Z

    .line 127
    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    check-cast p1, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->getCodecName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->getCodecImplementationName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_5

    .line 146
    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-nez v1, :cond_5

    .line 152
    .line 153
    const/4 v1, 0x1

    .line 154
    iput-boolean v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->isReportCodec:Z

    .line 155
    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v0, ","

    .line 165
    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    const-string v0, "13246"

    .line 177
    .line 178
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_5
    return-void
.end method

.method private streamingMonitorHandleDelayInfo(Lcom/haima/hmcp/beans/VideoDelayInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mStreamingMonitor:Lcom/haima/hmcp/business/StreamingMonitor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/business/StreamingMonitor;->put(Lcom/haima/hmcp/beans/VideoDelayInfo;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getReportDelayInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastVideoDelayInfo:Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public registerStreamingMonitor(Lcom/haima/hmcp/business/StreamingMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mStreamingMonitor:Lcom/haima/hmcp/business/StreamingMonitor;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/haima/hmcp/business/StreamingMonitor;->prepare()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sendDelayInfo(Lcom/haima/hmcp/beans/VideoDelayInfo;)V
    .locals 13

    .line 1
    const-string v0, "VideoViewDelayReport"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "==CollectDelayInfoTask VideoDelayInfo is null"

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-boolean v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->isReportedInvalid:Z

    .line 12
    .line 13
    const-string v2, "12234"

    .line 14
    .line 15
    const-string v3, ""

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/VideoDelayInfo;->isVaild()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    iput-boolean v4, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->isReportedInvalid:Z

    .line 27
    .line 28
    new-instance v1, Lcom/haima/hmcp/beans/ReportBaseError;

    .line 29
    .line 30
    const-string v5, "videoDelayInfo.isVaild() is false"

    .line 31
    .line 32
    invoke-direct {v1, v3, v5}, Lcom/haima/hmcp/beans/ReportBaseError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/VideoDelayInfo;->isVaild()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_6

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->reportRtcCodec(Lcom/haima/hmcp/beans/VideoDelayInfo;)V

    .line 49
    .line 50
    .line 51
    instance-of v1, p1, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;

    .line 52
    .line 53
    const-wide/16 v5, 0x0

    .line 54
    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    .line 59
    .line 60
    move-result-wide v7

    .line 61
    iget-object v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastVideoDelayInfo:Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 62
    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1, v5, v6}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setBitRate(J)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v5, v6}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setVideoFps(J)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getReceiveFrameSize()J

    .line 73
    .line 74
    .line 75
    move-result-wide v9

    .line 76
    iget-object v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastVideoDelayInfo:Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getReceiveFrameSize()J

    .line 79
    .line 80
    .line 81
    move-result-wide v11

    .line 82
    sub-long/2addr v9, v11

    .line 83
    invoke-virtual {p1, v9, v10}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setBitRate(J)V

    .line 84
    .line 85
    .line 86
    :try_start_0
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getReceiveFrameCount()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget-object v9, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastVideoDelayInfo:Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 91
    .line 92
    invoke-virtual {v9}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getReceiveFrameCount()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    sub-int/2addr v1, v9

    .line 97
    mul-int/lit16 v1, v1, 0x3e8

    .line 98
    .line 99
    int-to-long v9, v1

    .line 100
    iget-wide v11, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastVideoDelaySendTime:J

    .line 101
    .line 102
    sub-long v11, v7, v11

    .line 103
    .line 104
    div-long/2addr v9, v11

    .line 105
    invoke-virtual {p1, v9, v10}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setVideoFps(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastVideoDelayInfo:Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 118
    .line 119
    invoke-direct {p0, v1, p1}, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->countRtmpFrames(Lcom/haima/hmcp/beans/VideoDelayInfo;Lcom/haima/hmcp/beans/VideoDelayInfo;)V

    .line 120
    .line 121
    .line 122
    iput-wide v7, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastVideoDelaySendTime:J

    .line 123
    .line 124
    :cond_3
    iput-object p1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastVideoDelayInfo:Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 125
    .line 126
    iget-wide v7, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->collectTime:J

    .line 127
    .line 128
    const-wide/16 v9, 0x1

    .line 129
    .line 130
    add-long/2addr v7, v9

    .line 131
    iput-wide v7, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->collectTime:J

    .line 132
    .line 133
    iget v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mReportDivideTime:I

    .line 134
    .line 135
    const/4 v7, 0x5

    .line 136
    if-lt v1, v7, :cond_4

    .line 137
    .line 138
    iget-object v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->delayInfos:Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    invoke-direct {p0, p1}, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->streamingMonitorHandleDelayInfo(Lcom/haima/hmcp/beans/VideoDelayInfo;)V

    .line 144
    .line 145
    .line 146
    iget-wide v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->collectTime:J

    .line 147
    .line 148
    iget v3, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mReportDivideTime:I

    .line 149
    .line 150
    int-to-long v3, v3

    .line 151
    rem-long/2addr v1, v3

    .line 152
    cmp-long v3, v1, v5

    .line 153
    .line 154
    if-nez v3, :cond_5

    .line 155
    .line 156
    invoke-direct {p0}, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->report()V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    iget-boolean v1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->isReportedDivideTimeLessMin:Z

    .line 161
    .line 162
    if-nez v1, :cond_5

    .line 163
    .line 164
    iput-boolean v4, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->isReportedDivideTimeLessMin:Z

    .line 165
    .line 166
    new-instance v1, Lcom/haima/hmcp/beans/ReportBaseError;

    .line 167
    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    const-string v5, "mReportDivideTime  <HmcpRequestManager.REPORT_INTERVAL_MIN,mReportDivideTime"

    .line 174
    .line 175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    iget v5, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mReportDivideTime:I

    .line 179
    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-direct {v1, v3, v4}, Lcom/haima/hmcp/beans/ReportBaseError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v2, "collect :"

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/VideoDelayInfo;->toReportString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_6
    return-void
.end method

.method public startCollectionReport(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->stopCollectionReport()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mReportDivideTime:I

    .line 5
    .line 6
    iget-object p1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mVideoView:Lcom/haima/hmcp/IHmcpVideoView;

    .line 7
    .line 8
    const-string v0, "VideoViewDelayReport"

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "==delay report start fail!"

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/haima/hmcp/beans/ReportBaseError;

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    const-string v1, "mVideoView is null"

    .line 22
    .line 23
    invoke-direct {p1, v0, v1}, Lcom/haima/hmcp/beans/ReportBaseError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "12234"

    .line 27
    .line 28
    invoke-static {p1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mLastVideoDelayInfo:Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 38
    .line 39
    const-string p1, "==startCollectionReportV2"

    .line 40
    .line 41
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method public stopCollectionReport()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->report()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public unregisterStreamingMonitor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mStreamingMonitor:Lcom/haima/hmcp/business/StreamingMonitor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/business/StreamingMonitor;->stop()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->mStreamingMonitor:Lcom/haima/hmcp/business/StreamingMonitor;

    .line 11
    .line 12
    sget-object v0, Lcom/haima/hmcp/business/StreamingMonitor;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "streaming monitor unregister..."

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
