.class Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/rtmp/widgets/HmcpIJKVideoViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->setHmcpIJKVideoViewListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError()V
    .locals 4

    .line 1
    const-string v0, "139004"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->access$500()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "=====play======onError====="

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->access$600(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->access$700(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/haima/hmcp/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 31
    .line 32
    sget v2, Lcom/haima/hmcp/Constants;->REFRESH_STOKEN_DELAY:I

    .line 33
    .line 34
    mul-int/lit16 v2, v2, 0x3e8

    .line 35
    .line 36
    const-string v3, "MediaPlayer onError"

    .line 37
    .line 38
    invoke-static {v1, v2, v3, v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->access$800(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;ILjava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onFirstFrameArrival()V
    .locals 2

    .line 1
    const-string v0, "139002"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->reset()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->access$000(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    iput v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->access$102(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/haima/hmcp/input/HMInput;->sendPing2()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->access$200(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->access$300(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)Landroid/os/Handler;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x7

    .line 49
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->firstFrameArrival(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "12045"

    .line 66
    .line 67
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->access$400(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)Landroid/os/Handler;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1$1;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1$1;-><init>(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onPlayerRelease()V
    .locals 1

    .line 1
    const-string v0, "139005"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;->this$0:Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopReportClockDiffLatency()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onPlayerStop()V
    .locals 1

    .line 1
    const-string v0, "139003"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
