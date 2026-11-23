.class Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setHmcpIJKVideoViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->lambda$onFirstFrameArrival$0()V

    return-void
.end method

.method public static synthetic b(Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->lambda$onFirstFrameArrival$1()V

    return-void
.end method

.method private synthetic lambda$onFirstFrameArrival$0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initX86()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onFirstFrameArrival$1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initArm()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 2

    .line 1
    const/4 p2, -0x2

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 5
    .line 6
    iget-object p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 7
    .line 8
    sget-object v0, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 9
    .line 10
    if-eq p2, v0, :cond_0

    .line 11
    .line 12
    sget-object p2, Lcom/haima/hmcp/enums/StreamType;->RTMP:Lcom/haima/hmcp/enums/StreamType;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p1, p2, v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->switchStreamType(Lcom/haima/hmcp/enums/StreamType;ILcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p1, "AbsIjkVideoView"

    .line 21
    .line 22
    const-string p2, "=====play======onError====="

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetState()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/IBaseStreamModel;->onPLayerError()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onFirstFrameArrival()V
    .locals 4

    .line 1
    const-string v0, "=OperationStream==HmcpRtcVideoView onFirstFrameArrival"

    .line 2
    .line 3
    const-string v1, "AbsIjkVideoView"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$2400(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->access$2500(Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onInnerFirstFrameArrival()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-boolean v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isChangeStreamType:Z

    .line 27
    .line 28
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 29
    .line 30
    const/16 v2, 0xa

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimerNoAccess()V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/haima/hmcp/utils/ping/PingManager;->getInstance()Lcom/haima/hmcp/utils/ping/PingManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ping/PingManager;->start()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    iput v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 51
    .line 52
    iget v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentApkType:I

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    if-ne v2, v3, :cond_0

    .line 56
    .line 57
    iput-boolean v3, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isFirstFrameArrived:Z

    .line 58
    .line 59
    :cond_0
    const-string v2, ""

    .line 60
    .line 61
    iput-object v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mResfreshStokenReasons:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 64
    .line 65
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IBaseStreamModel;->isSupportFirstFrameOptimization()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 72
    .line 73
    iget-boolean v2, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isReconnectStream:Z

    .line 74
    .line 75
    if-nez v2, :cond_1

    .line 76
    .line 77
    iget v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentApkType:I

    .line 78
    .line 79
    const/4 v2, 0x2

    .line 80
    if-ne v0, v2, :cond_2

    .line 81
    .line 82
    :cond_1
    const-string v0, "=OperationStream==turn on Video and Sound"

    .line 83
    .line 84
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 88
    .line 89
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 90
    .line 91
    const/16 v1, 0xb

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    .line 95
    .line 96
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/haima/hmcp/input/HMInput;->sendPing2()V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendScreenBrightness()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 113
    .line 114
    const/4 v1, 0x7

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 119
    .line 120
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 121
    .line 122
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IBaseStreamModel;->onFirstFrameArrival()V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 126
    .line 127
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 128
    .line 129
    sget-object v2, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 130
    .line 131
    if-ne v1, v2, :cond_4

    .line 132
    .line 133
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 134
    .line 135
    new-instance v1, Lcom/haima/hmcp/widgets/x;

    .line 136
    .line 137
    invoke-direct {v1, p0}, Lcom/haima/hmcp/widgets/x;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_4
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 145
    .line 146
    new-instance v1, Lcom/haima/hmcp/widgets/y;

    .line 147
    .line 148
    invoke-direct {v1, p0}, Lcom/haima/hmcp/widgets/y;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    .line 153
    .line 154
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 155
    .line 156
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 157
    .line 158
    new-instance v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25$1;

    .line 159
    .line 160
    invoke-direct {v1, p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25$1;-><init>(Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;)V

    .line 161
    .line 162
    .line 163
    const-wide/16 v2, 0x1f4

    .line 164
    .line 165
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->getInstance()Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 173
    .line 174
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppContext:Landroid/content/Context;

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;->startCacheCleanup(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public onPlayerRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopReportClockDiffLatency()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onPlayerStop()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView$25;->this$0:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const-string v2, ""

    .line 5
    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
