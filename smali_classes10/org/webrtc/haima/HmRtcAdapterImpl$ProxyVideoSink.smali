.class public Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/hmwebrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProxyVideoSink"
.end annotation


# instance fields
.field private isFirst:Z

.field private lock:Ljava/lang/Object;

.field private operationDelayReport:Lorg/webrtc/haima/HmOperationDelayReport;

.field private sMainHandler:Landroid/os/Handler;

.field private target:Lorg/hmwebrtc/VideoSink;

.field private targetDs:Lorg/hmwebrtc/VideoSink;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->isFirst:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->lock:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onFrame(Lorg/hmwebrtc/VideoFrame;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->target:Lorg/hmwebrtc/VideoSink;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "Dropping frame in proxy because target is null."

    .line 13
    .line 14
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->targetDs:Lorg/hmwebrtc/VideoSink;

    .line 20
    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v1, v1, Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getBuffer()Lorg/hmwebrtc/VideoFrame$Buffer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lorg/hmwebrtc/VideoFrame$TextureBuffer;

    .line 36
    .line 37
    invoke-interface {v1}, Lorg/hmwebrtc/VideoFrame$TextureBuffer;->getTextureId()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-gez v1, :cond_1

    .line 42
    .line 43
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->targetDs:Lorg/hmwebrtc/VideoSink;

    .line 44
    .line 45
    invoke-interface {v1, p1}, Lorg/hmwebrtc/VideoSink;->onFrame(Lorg/hmwebrtc/VideoFrame;)V

    .line 46
    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    iput-boolean v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->isFirst:Z

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-boolean v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->isFirst:Z

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->sMainHandler:Landroid/os/Handler;

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v1, "Fatal error: sMainHandler is null when processRunOnUiThread."

    .line 65
    .line 66
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p1, "sMainHandler is null when onFrame"

    .line 70
    .line 71
    const/16 v1, 0x2fa8

    .line 72
    .line 73
    invoke-static {v1, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :cond_2
    const/16 v2, 0x13

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const/4 v2, 0x0

    .line 85
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->sMainHandler:Landroid/os/Handler;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    .line 94
    .line 95
    const/4 v1, 0x0

    .line 96
    iput-boolean v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->isFirst:Z

    .line 97
    .line 98
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "@@@@begin to switch"

    .line 103
    .line 104
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->target:Lorg/hmwebrtc/VideoSink;

    .line 108
    .line 109
    invoke-interface {v1, p1}, Lorg/hmwebrtc/VideoSink;->onFrame(Lorg/hmwebrtc/VideoFrame;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    invoke-interface {v1, p1}, Lorg/hmwebrtc/VideoSink;->onFrame(Lorg/hmwebrtc/VideoFrame;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->operationDelayReport:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 118
    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getInputTimestampMs()J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    const-wide/16 v2, 0x0

    .line 126
    .line 127
    cmp-long v4, v0, v2

    .line 128
    .line 129
    if-lez v4, :cond_5

    .line 130
    .line 131
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->operationDelayReport:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 132
    .line 133
    invoke-virtual {p1}, Lorg/hmwebrtc/VideoFrame;->getInputTimestampMs()J

    .line 134
    .line 135
    .line 136
    move-result-wide v1

    .line 137
    invoke-virtual {v0, v1, v2}, Lorg/webrtc/haima/HmOperationDelayReport;->addOperationDelay(J)V

    .line 138
    .line 139
    .line 140
    :cond_5
    return-void

    .line 141
    :catchall_0
    move-exception p1

    .line 142
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    throw p1
.end method

.method public setOperationDelayReport(Lorg/webrtc/haima/HmOperationDelayReport;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->operationDelayReport:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 2
    .line 3
    return-void
.end method

.method public setTarget(Lorg/hmwebrtc/VideoSink;Lorg/hmwebrtc/VideoSink;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->target:Lorg/hmwebrtc/VideoSink;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->targetDs:Lorg/hmwebrtc/VideoSink;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->isFirst:Z

    .line 10
    .line 11
    iput-object p3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->sMainHandler:Landroid/os/Handler;

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method
