.class public Lcom/haima/hmcp/rtmp/widgets/RtmpModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/IStreamModel;


# static fields
.field private static final TAG:Ljava/lang/String; = "RtmpModel"


# instance fields
.field private ccallJava:Lcom/haima/hmcp/utils/CcallJava;

.field private ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field protected mAppContext:Landroid/content/Context;

.field protected mAudioUrl:Ljava/lang/String;

.field protected mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

.field protected mVideoUrl:Ljava/lang/String;

.field rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/rtmp/widgets/RtmpModel;Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->lambda$start2Play$0(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/rtmp/widgets/RtmpModel;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic lambda$start2Play$0(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->start2Play(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public changeRenderRotation(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getRenderView()Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;

    .line 22
    .line 23
    invoke-direct {v2, p0, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel$1;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpModel;Lcom/haima/hmcp/rtmp/widgets/IRenderView;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->setVideoRotation(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->requestLayout()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public connectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p2, "rtmp\u4e0d\u652f\u6301"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public disconnectAccProxy()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "rtmp\u4e0d\u652f\u6301"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public doOperationNetTraceRoute(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mVideoUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-class v0, Lcom/haima/hmcp/beans/PlayStreamPayload;

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/haima/hmcp/beans/PlayStreamPayload;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget v0, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->traceTimes:I

    .line 23
    .line 24
    iget-object v1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->host:Ljava/lang/String;

    .line 25
    .line 26
    iget v2, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->pingTimes:I

    .line 27
    .line 28
    iget p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->pingSize:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    const-string v1, ""

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    const/4 v2, 0x0

    .line 36
    :goto_0
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v3, v1, v2, p1, v4}, Lcom/haima/hmcp/HmcpManager;->doNetPing(Ljava/lang/String;IILcom/haima/hmcp/listeners/OnNetPingListener;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mAppContext:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mVideoUrl:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, v1, v2, v0, v4}, Lcom/haima/hmcp/HmcpManager;->doTraceRoute(Landroid/content/Context;Ljava/lang/String;ILcom/haima/hmcp/listeners/OnTraceRouteListener;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public doPlayerRelease()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->release(Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public synthetic enableShareStream(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li5/b;->a(Lcom/haima/hmcp/listeners/IBaseStreamModel;Z)V

    return-void
.end method

.method public getBoardType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClockDiffVideoLatencyInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getClockDiffTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ccallJava:Lcom/haima/hmcp/utils/CcallJava;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/CcallJava;->getFrameDelayInfoNow()Lcom/haima/hmcp/beans/FrameDelayInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "frameDelayInfo :"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;-><init>(Lcom/haima/hmcp/beans/FrameDelayInfo;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFPSPeriod()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-lez v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmPlayerFPS()J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFPSPeriod()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    int-to-long v4, v0

    .line 78
    div-long/2addr v2, v4

    .line 79
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setVideoFps(J)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmBandWidthPeriod()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-lez v0, :cond_2

    .line 89
    .line 90
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmPlayerBitRate()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmBandWidthPeriod()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    int-to-long v4, v0

    .line 103
    div-long/2addr v2, v4

    .line 104
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setBitRate(J)V

    .line 105
    .line 106
    .line 107
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 108
    .line 109
    iget v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->decodeType:I

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;->setDecodeType(I)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 116
    return-object v0
.end method

.method public getCurrentBitRate()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getCurrentBitRate()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getEncodeVideoUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mVideoUrl:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public getIMediaPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getIMediaPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getLivingCapabilityStatus(Lcom/haima/hmcp/enums/ELivingCapabilityStatus;)Lcom/haima/hmcp/enums/ELivingCapabilityStatus;
    .locals 0

    return-object p1
.end method

.method public getRenderView()Lcom/haima/hmcp/listeners/IRenderViewBase;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getRenderView()Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getResolution(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/haima/hmcp/beans/ResolutionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/haima/hmcp/beans/ResolutionInfo;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getResolution(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getRtmpPlayer()Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShortcut()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getShortcut()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getStreamUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getStreamingDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mVideoUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mVideoUrl:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method public getSwitchStreamTypeData(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)Lcom/haima/hmcp/beans/SwitchStreamTypeData;
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/SwitchStreamTypeData;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->mCloudId:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v1, Lcom/haima/hmcp/enums/StreamType;->WEBRTC:Lcom/haima/hmcp/enums/StreamType;

    .line 15
    .line 16
    iput-object v1, v0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 17
    .line 18
    iput p1, v0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->apkType:I

    .line 19
    .line 20
    iput-object p2, v0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->playData:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 21
    .line 22
    return-object v0
.end method

.method public getVideoLatency()Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getClockDiffTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-nez v4, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public handlePermissionResult()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleSpecialBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "streamType"

    .line 4
    .line 5
    const-string v1, "RTMP"

    .line 6
    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "sei"

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public synthetic imageEnhancement(ZF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Li5/b;->b(Lcom/haima/hmcp/listeners/IBaseStreamModel;ZF)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/business/HmcpRequest;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mAppContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 17
    .line 18
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2, p3}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;-><init>(Landroid/content/Context;Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/business/HmcpRequest;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 24
    .line 25
    new-instance p2, Lcom/haima/hmcp/utils/CcallJava;

    .line 26
    .line 27
    invoke-direct {p2}, Lcom/haima/hmcp/utils/CcallJava;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ccallJava:Lcom/haima/hmcp/utils/CcallJava;

    .line 31
    .line 32
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->initVideoView(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "init fail, context is "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, " ijkVideoView is "

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, " hmcpRequest is "

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget-object p2, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p2, "12200"

    .line 77
    .line 78
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public initMetaInfo(Ljava/util/HashMap;)V
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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->initMetaInfo(Ljava/util/HashMap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public initUrl(Lcom/haima/hmcp/beans/PlayStreamPayloadData;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->videoUrl:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mVideoUrl:Ljava/lang/String;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->audioUrl:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mAudioUrl:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public synthetic isDatachannelEnable()Z
    .locals 1

    .line 1
    invoke-static {p0}, Li5/b;->c(Lcom/haima/hmcp/listeners/IBaseStreamModel;)Z

    move-result v0

    return v0
.end method

.method public isMatchStreamType(Lcom/haima/hmcp/beans/PlayStreamPayloadData;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const-string v0, "RTMP"

    .line 9
    .line 10
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->streamType:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-boolean p1, v0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isMatchStreamType:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "cloudPlayInfo == null,can\'t set ijkVideoView.getCloudPlayInfo().isMatchStreamType"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return p1

    .line 41
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 42
    return p1
.end method

.method public isPlayerNull()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "rtmpPlayer is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "12200"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->isPlaying()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public synthetic isSupportFirstFrameOptimization()Z
    .locals 1

    .line 1
    invoke-static {p0}, Li5/b;->d(Lcom/haima/hmcp/listeners/IBaseStreamModel;)Z

    move-result v0

    return v0
.end method

.method public isValidate(Lcom/haima/hmcp/beans/PlayStreamPayload;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    iget-object v1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->videoUrl:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->audioUrl:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->inputUrl:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    :cond_2
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onClockDiffChange(I)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    return-void
.end method

.method public onFirstDiffClockSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->startReportClockDiffLatency()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onFirstFrameArrival()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFPSPeriod()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmBandWidthPeriod()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmBandWidthPeak()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmDecodeTimePeriod()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->startStastics(IIII)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onPLayerError()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mAppContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/haima/hmcp/utils/NetworkUtil;->isNetworkConnected(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    sget v2, Lcom/haima/hmcp/Constants;->REFRESH_STOKEN_DELAY:I

    .line 15
    .line 16
    mul-int/lit16 v2, v2, 0x3e8

    .line 17
    .line 18
    const-string v3, "MediaPlayer onError"

    .line 19
    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->refreshStoken(ILjava/lang/String;ZZ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onReceiveMetaInfos(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "RTMP"

    .line 7
    .line 8
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/util/List;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmResolutionList(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onStopInternal()V
    .locals 0

    return-void
.end method

.method public parseBoardType(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public playForTesting(Lcom/haima/hmcp/beans/PlayTestData;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/haima/hmcp/beans/PlayTestData;->videoUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mVideoUrl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayTestData;->audioUrl:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mAudioUrl:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->stopPlay()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public releaseNotStop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->stopPlay()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic releaseScreenShot()V
    .locals 0

    .line 1
    invoke-static {p0}, Li5/b;->e(Lcom/haima/hmcp/listeners/IBaseStreamModel;)V

    return-void
.end method

.method public replay()V
    .locals 0

    return-void
.end method

.method public synthetic requestKeyFrame()V
    .locals 0

    .line 1
    invoke-static {p0}, Li5/b;->f(Lcom/haima/hmcp/listeners/IBaseStreamModel;)V

    return-void
.end method

.method public rfreshStoken()V
    .locals 0

    return-void
.end method

.method public synthetic sendEvent([B)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li5/b;->g(Lcom/haima/hmcp/listeners/IBaseStreamModel;[B)Z

    move-result p1

    return p1
.end method

.method public synthetic sendEventByDataType(I[B)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Li5/b;->h(Lcom/haima/hmcp/listeners/IBaseStreamModel;I[B)Z

    move-result p1

    return p1
.end method

.method public synthetic sendLargeData([BLorg/webrtc/haima/HaimaDataChannel$Listener;)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Li5/b;->i(Lcom/haima/hmcp/listeners/IBaseStreamModel;[BLorg/webrtc/haima/HaimaDataChannel$Listener;)I

    move-result p1

    return p1
.end method

.method public setColorMode(Lcom/haima/hmcp/beans/ColorMode;Lcom/haima/hmcp/listeners/ColorModeListener;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "set color mode fail, RTMP is not support"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-interface {p2, p1, v0}, Lcom/haima/hmcp/listeners/ColorModeListener;->onColorModeResult(ZLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setGSMUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V
    .locals 0

    return-void
.end method

.method public setHmStreamerIPCallback(Lcom/haima/hmcp/listeners/HmStreamerIPCallback;)V
    .locals 0

    return-void
.end method

.method public setHmcpVideoPlayerListener(Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->setHmcpVideoPlayerListener(Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setImageSize()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->setImageSize()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public synthetic setInputPingPongMs(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li5/b;->j(Lcom/haima/hmcp/listeners/IBaseStreamModel;I)V

    return-void
.end method

.method public setOperationDelayCallback(Lcom/haima/hmcp/listeners/IOperationDelayCallback;)V
    .locals 0

    return-void
.end method

.method public setRender()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 9
    .line 10
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/haima/hmcp/HmcpManager;->getVideoViewType()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->setRender(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public synthetic setStreamingCallback(Lcom/haima/hmcp/listeners/StreamingCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li5/b;->k(Lcom/haima/hmcp/listeners/IBaseStreamModel;Lcom/haima/hmcp/listeners/StreamingCallback;)V

    return-void
.end method

.method public start2Play(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/haima/hmcp/dns/DnsManager;->mOpenAsyncParser:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "convertVideoAndAudioPathASync start"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mVideoUrl:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mAudioUrl:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v3, Lcom/haima/hmcp/rtmp/widgets/a;

    .line 23
    .line 24
    invoke-direct {v3, p0, p1}, Lcom/haima/hmcp/rtmp/widgets/a;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpModel;Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->convertVideoAndAudioPathASync(Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "convertVideoAndAudioPathSync start"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mVideoUrl:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mAudioUrl:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->convertVideoAndAudioPathSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->start2Play(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public startPlay(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mVideoUrl:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->mAudioUrl:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->startPlay(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public startStastics(IIII)V
    .locals 0

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    if-ltz p2, :cond_1

    .line 4
    .line 5
    if-gez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, p2, p3, p4}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->native_startStastics(IIII)V

    .line 9
    .line 10
    .line 11
    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->stopPlay()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public stopFrameDataProxy()V
    .locals 0

    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->stopPlay()V

    return-void
.end method

.method public stopPlay(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->stopPlay(ZZ)V

    return-void
.end method

.method public synthetic switchBandWidthDetection(Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li5/b;->l(Lcom/haima/hmcp/listeners/IBaseStreamModel;Z)Z

    move-result p1

    return p1
.end method

.method public switchMobileNetworkTransport(Z)V
    .locals 1

    .line 1
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "rtmp\u4e0d\u652f\u6301"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public turnDownSound()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->turnDownSound()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public turnOffSound()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->turnOffSound()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public turnOnSound()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;->rtmpPlayer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->turnOnSound()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public updateRenderview()V
    .locals 0

    return-void
.end method
