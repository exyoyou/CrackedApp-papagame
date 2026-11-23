.class Lorg/webrtc/haima/HmRtcAdapterImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmRtcAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$000(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 10
    .line 11
    invoke-static {v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$000(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lorg/webrtc/haima/HmFrameDelayInfo;->clone()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 20
    .line 21
    invoke-virtual {v3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReportToArray()[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    goto :goto_1

    .line 26
    :catch_0
    move-exception v3

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :catch_1
    move-exception v3

    .line 32
    move-object v2, v1

    .line 33
    :goto_0
    :try_start_2
    invoke-static {}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$100()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v6, "CloneNotSupportedException:"

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v4, v3}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    check-cast v2, Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 65
    .line 66
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 67
    .line 68
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$200(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    monitor-enter v0

    .line 73
    :try_start_3
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 74
    .line 75
    invoke-static {v3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmPlayerCallback;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_1

    .line 80
    .line 81
    invoke-virtual {v2}, Lorg/webrtc/haima/HmFrameDelayInfo;->isValid()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_0

    .line 86
    .line 87
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 88
    .line 89
    invoke-static {v3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmPlayerCallback;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-interface {v3, v2}, Lorg/webrtc/haima/HmPlayerCallback;->onDelayInfoNeedSend(Lorg/webrtc/haima/HmFrameDelayInfo;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 97
    .line 98
    invoke-static {v3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmPlayerCallback;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2}, Lorg/webrtc/haima/HmFrameDelayInfo;->getVideoBitrate()J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    invoke-interface {v3, v4, v5}, Lorg/webrtc/haima/HmPlayerCallback;->onBitrate(J)V

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 110
    .line 111
    invoke-static {v3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmPlayerCallback;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v2}, Lorg/webrtc/haima/HmFrameDelayInfo;->getGameFps()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-interface {v3, v4}, Lorg/webrtc/haima/HmPlayerCallback;->onFps(I)V

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 123
    .line 124
    invoke-static {v3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->access$300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmPlayerCallback;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v2}, Lorg/webrtc/haima/HmFrameDelayInfo;->getDecodeTime()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-interface {v3, v2}, Lorg/webrtc/haima/HmPlayerCallback;->onFrameDecode(I)V

    .line 133
    .line 134
    .line 135
    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    if-eqz v1, :cond_2

    .line 137
    .line 138
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;->this$0:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->reportWeaklyNetwork([Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :catchall_1
    move-exception v1

    .line 145
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    throw v1

    .line 147
    :cond_2
    :goto_2
    return-void

    .line 148
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    throw v1
.end method
