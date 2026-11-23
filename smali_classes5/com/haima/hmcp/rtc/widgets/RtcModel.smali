.class public Lcom/haima/hmcp/rtc/widgets/RtcModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/IStreamModel;


# static fields
.field private static final AUTH_SEPARATOR:Ljava/lang/String; = ":"

.field private static final TAG:Ljava/lang/String; = "RtcModel"


# instance fields
.field protected boardType:Ljava/lang/String;

.field private ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field protected mAppContext:Landroid/content/Context;

.field protected mCoTurnUrl:Ljava/lang/String;

.field protected mInstanceIP:Ljava/lang/String;

.field protected mIpV6TurnUrl:Ljava/lang/String;

.field protected mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

.field protected mRoomId:Ljava/lang/String;

.field protected mSignalUrl:Ljava/lang/String;

.field protected mSignalV2Url:Ljava/lang/String;

.field protected mTurnPassword:Ljava/lang/String;

.field protected mTurnUrl:Ljava/lang/String;

.field protected mTurnUserName:Ljava/lang/String;

.field private rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;


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

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/rtc/widgets/RtcModel;)Lcom/haima/hmcp/rtc/widgets/RtcPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/rtc/widgets/RtcModel;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public changeRenderRotation(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getRenderView()Lcom/haima/hmcp/rtc/widgets/IRenderView;

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
    new-instance v2, Lcom/haima/hmcp/rtc/widgets/RtcModel$3;

    .line 22
    .line 23
    invoke-direct {v2, p0, v0}, Lcom/haima/hmcp/rtc/widgets/RtcModel$3;-><init>(Lcom/haima/hmcp/rtc/widgets/RtcModel;Lcom/haima/hmcp/rtc/widgets/IRenderView;)V

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
    invoke-interface {v0}, Lcom/haima/hmcp/rtc/widgets/IRenderView;->requestLayout()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public connectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->connectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public disconnectAccProxy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->disconnectAccProxy()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public doOperationNetTraceRoute(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public doPlayerRelease()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopUploadX86()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->release(Z)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public enableShareStream(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->enableShareStream(Z)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "enableShareStream failed because rtcPlayer=null"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public getBoardType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->boardType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClockDiffVideoLatencyInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapter;->getFrameDelayInfo()Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_1
    sget-object v1, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "hmFrameDelayInfo :"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmClockDiffUse()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-direct {v1, v0, v2, v3}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;-><init>(Lorg/webrtc/haima/HmFrameDelayInfo;IZ)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->getBoardType()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->setBoardType(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getVideoFps()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    long-to-int v0, v2

    .line 80
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->setGameRealFps(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->getFrameRateDecode()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->setRealFrameRateDecode(J)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->getFrameRateOutput()J

    .line 91
    .line 92
    .line 93
    move-result-wide v2

    .line 94
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/rtc/widgets/beans/RtcVideoDelayInfo;->setRealFrameRateOutput(J)V

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getCurrentBitRate()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getCurrentBitRate()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public getEncodeVideoUrl()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mSignalUrl:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ","

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mCoTurnUrl:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mRoomId:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public getIMediaPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getIMediaPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getLivingCapabilityStatus(Lcom/haima/hmcp/enums/ELivingCapabilityStatus;)Lcom/haima/hmcp/enums/ELivingCapabilityStatus;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapter;->getFrameDelayInfo()Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    sget-object p1, Lcom/haima/hmcp/enums/ELivingCapabilityStatus;->UNKNOWN:Lcom/haima/hmcp/enums/ELivingCapabilityStatus;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    invoke-virtual {v0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getCodecName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    sget-object p1, Lcom/haima/hmcp/enums/ELivingCapabilityStatus;->UNKNOWN:Lcom/haima/hmcp/enums/ELivingCapabilityStatus;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_2
    const-string v1, "h265"

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_FORCE_H264:Z

    .line 53
    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    sget-object p1, Lcom/haima/hmcp/enums/ELivingCapabilityStatus;->UNSUPPORTED:Lcom/haima/hmcp/enums/ELivingCapabilityStatus;

    .line 57
    .line 58
    :cond_3
    return-object p1

    .line 59
    :cond_4
    :goto_0
    sget-object p1, Lcom/haima/hmcp/enums/ELivingCapabilityStatus;->UNKNOWN:Lcom/haima/hmcp/enums/ELivingCapabilityStatus;

    .line 60
    .line 61
    return-object p1
.end method

.method public getRenderView()Lcom/haima/hmcp/listeners/IRenderViewBase;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getRenderView()Lcom/haima/hmcp/rtc/widgets/IRenderView;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getResolution(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public getRtcPlayer()Lcom/haima/hmcp/rtc/widgets/RtcPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShortcut()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getShortcut()Landroid/graphics/Bitmap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getStreamUrl()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getStreamingDomain()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mCoTurnUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mCoTurnUrl:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, ":"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    array-length v2, v0

    .line 18
    const/4 v3, 0x3

    .line 19
    const/4 v4, 0x1

    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    aget-object v0, v0, v4

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    array-length v2, v0

    .line 26
    if-le v2, v4, :cond_1

    .line 27
    .line 28
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mCoTurnUrl:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    aget-object v5, v0, v5

    .line 37
    .line 38
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v5, ""

    .line 49
    .line 50
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    array-length v1, v0

    .line 63
    sub-int/2addr v1, v4

    .line 64
    aget-object v0, v0, v1

    .line 65
    .line 66
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    return-object v0

    .line 78
    :cond_1
    const/4 v0, 0x0

    .line 79
    return-object v0
.end method

.method public getSwitchStreamTypeData(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)Lcom/haima/hmcp/beans/SwitchStreamTypeData;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapter;->setCountlyEventRecorderCallback(Lorg/webrtc/haima/HmCountlyEventRecorderCallback;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/haima/hmcp/beans/SwitchStreamTypeData;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->mCloudId:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v1, Lcom/haima/hmcp/enums/StreamType;->RTMP:Lcom/haima/hmcp/enums/StreamType;

    .line 19
    .line 20
    iput-object v1, v0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->streamType:Lcom/haima/hmcp/enums/StreamType;

    .line 21
    .line 22
    iput p1, v0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->apkType:I

    .line 23
    .line 24
    iput-object p2, v0, Lcom/haima/hmcp/beans/SwitchStreamTypeData;->playData:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 25
    .line 26
    return-object v0
.end method

.method public getVideoLatency()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePermissionResult()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleSpecialBundle(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v1, "sei"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmSeiDataSwitch(I)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "sei data-> app sei: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmSeiDataSwitch()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmSeiDataSwitch()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmSeiDataSwitch(I)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmSeiDataSwitch()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x1

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmSeiDataSwitch(I)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v1, "sei data-> app sei after check: "

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmSeiDataSwitch()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method public imageEnhancement(ZF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->imageEnhancement(ZF)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p1, "imageEnhancement rtcPlayer is null"

    .line 10
    .line 11
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :goto_0
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
    iput-object p2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mAppContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 17
    .line 18
    new-instance v0, Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 19
    .line 20
    invoke-direct {v0, p1, p2, p3}, Lcom/haima/hmcp/rtc/widgets/RtcPlayer;-><init>(Landroid/content/Context;Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/business/HmcpRequest;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->initVideoView(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "init fail, context is "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " ijkVideoView is "

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " hmcpRequest is "

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    sget-object p2, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p2, "12200"

    .line 68
    .line 69
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->initMetaInfo(Ljava/util/HashMap;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public initUrl(Lcom/haima/hmcp/beans/PlayStreamPayloadData;)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 11
    .line 12
    sget-object v3, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 13
    .line 14
    if-ne v0, v3, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    const-string v3, " mTurnPassword="

    .line 20
    .line 21
    const-string v4, " mTurnUserName="

    .line 22
    .line 23
    const-string v5, " mIpV6TurnUrl="

    .line 24
    .line 25
    const-string v6, " mTurnUrl="

    .line 26
    .line 27
    const-string v7, ""

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->signalUrl:Ljava/lang/String;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mSignalUrl:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v0, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->roomId:Ljava/lang/String;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mRoomId:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v7, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mSignalV2Url:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->turnUrl:Ljava/lang/String;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnUrl:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->ipV6TurnUrl:Ljava/lang/String;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mIpV6TurnUrl:Ljava/lang/String;

    .line 48
    .line 49
    iget-object v0, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->turnUserName:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnUserName:Ljava/lang/String;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->turnPassword:Ljava/lang/String;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnPassword:Ljava/lang/String;

    .line 56
    .line 57
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "initUrl x86 for streamer2.0:roomId="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mRoomId:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, " signalUrl="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mSignalUrl:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnUrl:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mIpV6TurnUrl:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnUserName:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnPassword:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_2

    .line 124
    .line 125
    :cond_2
    iget-object v0, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 126
    .line 127
    if-eqz v0, :cond_3

    .line 128
    .line 129
    iget-object v8, v0, Lcom/haima/hmcp/beans/WebRtcInfo;->signalUrl:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v8, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mSignalUrl:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v8, v0, Lcom/haima/hmcp/beans/WebRtcInfo;->roomId:Ljava/lang/String;

    .line 134
    .line 135
    iput-object v8, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mRoomId:Ljava/lang/String;

    .line 136
    .line 137
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->signalV2Url:Ljava/lang/String;

    .line 138
    .line 139
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mSignalV2Url:Ljava/lang/String;

    .line 140
    .line 141
    iget-object p1, v0, Lcom/haima/hmcp/beans/WebRtcInfo;->coTurnUrl:Ljava/lang/String;

    .line 142
    .line 143
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mCoTurnUrl:Ljava/lang/String;

    .line 144
    .line 145
    iget-object p1, v0, Lcom/haima/hmcp/beans/WebRtcInfo;->turnUrl:Ljava/lang/String;

    .line 146
    .line 147
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnUrl:Ljava/lang/String;

    .line 148
    .line 149
    iget-object p1, v0, Lcom/haima/hmcp/beans/WebRtcInfo;->ipV6TurnUrl:Ljava/lang/String;

    .line 150
    .line 151
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mIpV6TurnUrl:Ljava/lang/String;

    .line 152
    .line 153
    iget-object p1, v0, Lcom/haima/hmcp/beans/WebRtcInfo;->auth:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_4

    .line 160
    .line 161
    const-string v0, ":"

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    array-length v8, v0

    .line 168
    if-lez v8, :cond_4

    .line 169
    .line 170
    aget-object v2, v0, v2

    .line 171
    .line 172
    iput-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnUserName:Ljava/lang/String;

    .line 173
    .line 174
    aget-object v0, v0, v1

    .line 175
    .line 176
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnPassword:Ljava/lang/String;

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_3
    const/4 p1, 0x0

    .line 180
    :cond_4
    :goto_1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 181
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v2, "initUrl ARM:roomId="

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mRoomId:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v2, " mSignalUrl="

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mSignalUrl:Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v2, " mSignalV2Url="

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mSignalV2Url:Ljava/lang/String;

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v2, " mCoTurnUrl="

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mCoTurnUrl:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnUrl:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mIpV6TurnUrl:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v2, " auth="

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnUserName:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnPassword:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object p1

    .line 271
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    :goto_2
    iput-object v7, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mInstanceIP:Ljava/lang/String;

    .line 275
    .line 276
    return-void
.end method

.method public isDatachannelEnable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->inputDatachannelEnable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isMatchStreamType(Lcom/haima/hmcp/beans/PlayStreamPayloadData;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    const-string v0, "WEBRTC"

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "cloudPlayInfo == null,can\'t set ijkVideoView.getCloudPlayInfo().isMatchStreamType = isMatch"

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "rtcPlayer is null"

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
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->isPlaying()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public isSupportFirstFrameOptimization()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidate(Lcom/haima/hmcp/beans/PlayStreamPayload;)Z
    .locals 3

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
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->webRtcInfo:Lcom/haima/hmcp/beans/WebRtcInfo;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p1, Lcom/haima/hmcp/beans/WebRtcInfo;->signalUrl:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p1, Lcom/haima/hmcp/beans/WebRtcInfo;->coTurnUrl:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/haima/hmcp/beans/WebRtcInfo;->roomId:Ljava/lang/String;

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
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x1

    .line 39
    :cond_2
    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapter;->registerPermissionHandler(Lorg/webrtc/haima/listeners/HmPermissionHandler;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method public onClockDiffChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setInputPingPongMs(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmClockDiffUse(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapter;->registerGSCallback(Lorg/webrtc/haima/listeners/HmGSCallback;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->disconnectRtc(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->stopFrameDataProxy()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/haima/hmcp/business/BaseManager;->resetListeners()V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapter;->unRegisterPermissionHandler()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "mHmRtcAdapter.unRegisterPermissionHandler failed, cause HmRtcAdapter is null when onDetachedFromWindow"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method public onFirstDiffClockSuccess()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==start2Play first diff clock success"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onFirstFrameArrival()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->startReportClockDiffLatency()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onFirstFrameArrival rtc_upload_audio_on = "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 31
    .line 32
    iget-object v2, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 33
    .line 34
    sget-object v3, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 35
    .line 36
    if-ne v2, v3, :cond_3

    .line 37
    .line 38
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    iget-boolean v2, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHasOperatePermission:Z

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    sget v2, Lcom/haima/hmcp/Constants;->CONFIG_RECORD_MODE:I

    .line 47
    .line 48
    sget v3, Lcom/haima/hmcp/Constants;->RECORD_MODE_AUTO:I

    .line 49
    .line 50
    if-eq v2, v3, :cond_0

    .line 51
    .line 52
    iget-boolean v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isRecordOn:Z

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mAppContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/haima/hmcp/utils/GameActionUtil;->isRecordPermissionAllowed(Landroid/content/Context;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 73
    .line 74
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->requestPermission(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const-string v1, "playerListener is empty"

    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-static {}, Lorg/webrtc/haima/audio/HmAudioManager;->getInstance()Lorg/webrtc/haima/audio/HmAudioManager;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lorg/webrtc/haima/audio/HmAudioManager;->startRecord()V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 94
    .line 95
    const/4 v1, 0x1

    .line 96
    iput-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isRecordOn:Z

    .line 97
    .line 98
    :cond_3
    :goto_0
    return-void
.end method

.method public onPLayerError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    sget v1, Lcom/haima/hmcp/Constants;->REFRESH_STOKEN_DELAY:I

    .line 4
    .line 5
    mul-int/lit16 v1, v1, 0x3e8

    .line 6
    .line 7
    const-string v2, "MediaPlayer onError"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->refreshStoken(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onReceiveMetaInfos(Ljava/util/Map;)V
    .locals 3
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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "WEBRTC"

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
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getResolutionList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurrenteResolutionID()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getResolutionList()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurrenteResolutionID()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setResolutionList(Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public onStopInternal()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapter;->unRegisterPermissionHandler()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public parseBoardType(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v0, "inputUrl is empty"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->boardType:Ljava/lang/String;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string p1, "url="

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const-string v2, "st="

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-ltz p1, :cond_6

    .line 36
    .line 37
    if-gez v2, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->boardType:Ljava/lang/String;

    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    const-string v0, "(\\d+\\.\\d+\\.\\d+\\.\\d+)\\:(\\d+)"

    .line 54
    .line 55
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->boardType:Ljava/lang/String;

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x2

    .line 77
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    return-void

    .line 88
    :cond_4
    const-string v0, "7681"

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_board_type_i_ii:I

    .line 97
    .line 98
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->boardType:Ljava/lang/String;

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_board_type_iii:I

    .line 106
    .line 107
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->boardType:Ljava/lang/String;

    .line 112
    .line 113
    :goto_0
    return-void

    .line 114
    :cond_6
    :goto_1
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->boardType:Ljava/lang/String;

    .line 115
    .line 116
    return-void
.end method

.method public playForTesting(Lcom/haima/hmcp/beans/PlayTestData;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "RTC not support"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayTestData;->orientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setOrientationInit(Lcom/haima/hmcp/enums/ScreenOrientation;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return v1
.end method

.method public release()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->stopPlay()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/utils/FrameDataProxy;->setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameDataProxy;->reset()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopUploadX86()V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public releaseNotStop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->stopPlay()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/utils/FrameDataProxy;->setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameDataProxy;->reset()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopUploadX86()V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public releaseScreenShot()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->unbindEGLSurface()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public replay()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->disconnectRtc(Z)V

    .line 12
    .line 13
    .line 14
    const-string v0, "13232"

    .line 15
    .line 16
    const-string v1, "rePlay"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public requestKeyFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->requestKeyFrame()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "requestKeyFrame failed because rtcPlayer=null"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public rfreshStoken()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimerNoAccess()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->cancelConnectTimeOutTimer()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->cancelFirstFrameTimer()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public sendEvent([B)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "RtcAdapter is null"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapter;->sendData([B)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public sendEventByDataType(I[B)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string p2, "RtcAdapter is null"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmRtcAdapter;->sendToRemoteInput(I[B)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 p2, -0x1

    .line 29
    if-eq p1, p2, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    return v1
.end method

.method public sendLargeData([BLorg/webrtc/haima/HaimaDataChannel$Listener;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "RtcAdapter is null"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, -0x1

    .line 17
    return p1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmRtcAdapter;->x86SendLargeDataBlcok([BLorg/webrtc/haima/HaimaDataChannel$Listener;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method public setColorMode(Lcom/haima/hmcp/beans/ColorMode;Lcom/haima/hmcp/listeners/ColorModeListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setColorMode(Lcom/haima/hmcp/beans/ColorMode;Lcom/haima/hmcp/listeners/ColorModeListener;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "setColorMode play is not init"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-interface {p2, p1, v0}, Lcom/haima/hmcp/listeners/ColorModeListener;->onColorModeResult(ZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public setGSMUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapter;->setGSUrl(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/RtcModel$1;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/rtc/widgets/RtcModel$1;-><init>(Lcom/haima/hmcp/rtc/widgets/RtcModel;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapter;->registerGSCallback(Lorg/webrtc/haima/listeners/HmGSCallback;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lcom/haima/hmcp/rtc/widgets/RtcModel$2;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel$2;-><init>(Lcom/haima/hmcp/rtc/widgets/RtcModel;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lorg/webrtc/haima/HmRtcAdapter;->registerProtoUtilsCallback(Lorg/webrtc/haima/listeners/HmProtoCallback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setHmStreamerIPCallback(Lcom/haima/hmcp/listeners/HmStreamerIPCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setHmStreamerIPCallback(Lcom/haima/hmcp/listeners/HmStreamerIPCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setHmcpVideoPlayerListener(Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setHmcpVideoPlayerListener(Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setImageSize()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setImageSize()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setInputPingPongMs(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "setStreamingCallback rtcPlayer is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setInputPingPongMs(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setOperationDelayCallback(Lcom/haima/hmcp/listeners/IOperationDelayCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setOperationDelayCallback(Lcom/haima/hmcp/listeners/IOperationDelayCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setRender()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

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
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setRender(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setStreamingCallback(Lcom/haima/hmcp/listeners/StreamingCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "setStreamingCallback rtcPlayer is null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setStreamingCallback(Lcom/haima/hmcp/listeners/StreamingCallback;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public start2Play(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->start2Play(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public startPlay(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v8, Lcom/haima/hmcp/rtc/widgets/beans/RtcTurnInfo;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnUrl:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mIpV6TurnUrl:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnUserName:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mTurnPassword:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v8, v0, v1, v2, v3}, Lcom/haima/hmcp/rtc/widgets/beans/RtcTurnInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mSignalUrl:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mCoTurnUrl:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mSignalV2Url:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v5, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mRoomId:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v6, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->mInstanceIP:Ljava/lang/String;

    .line 36
    .line 37
    move-object v7, p1

    .line 38
    invoke-virtual/range {v1 .. v8}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/SdkStreamPayloadData;Lcom/haima/hmcp/rtc/widgets/beans/RtcTurnInfo;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopUploadX86()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->stopPlay()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public stopFrameDataProxy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/utils/FrameDataProxy;->setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameDataProxy;->reset()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->stopPlay()V

    return-void
.end method

.method public stopPlay(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopUploadX86()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->stopPlay(ZZ)V

    return-void
.end method

.method public switchBandWidthDetection(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/RtcModel;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "switchBandWidthDetection rtcPlayer is null"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->switchBandWidthDetection(Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public switchMobileNetworkTransport(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->switchMobileNetworkTransport(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public turnDownSound()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/RtcPlayer;->turnDownSound()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public turnOffSound()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->turnOffSound()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public turnOnSound()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;->isPlayerNull()Z

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/RtcModel;->rtcPlayer:Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->turnOnSound()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public updateRenderview()V
    .locals 0

    return-void
.end method
