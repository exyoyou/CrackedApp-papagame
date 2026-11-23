.class public Lcom/haima/hmcp/widgets/EmptyImpStreamMode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/IStreamModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public changeRenderRotation(I)V
    .locals 0

    return-void
.end method

.method public connectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public disconnectAccProxy()V
    .locals 0

    return-void
.end method

.method public doOperationNetTraceRoute(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public doPlayerRelease()V
    .locals 0

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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentBitRate()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEncodeVideoUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIMediaPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLivingCapabilityStatus(Lcom/haima/hmcp/enums/ELivingCapabilityStatus;)Lcom/haima/hmcp/enums/ELivingCapabilityStatus;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRenderView()Lcom/haima/hmcp/listeners/IRenderViewBase;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolution(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/haima/hmcp/beans/ResolutionInfo;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getShortcut()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreamType()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreamingDomain()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSwitchStreamTypeData(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)Lcom/haima/hmcp/beans/SwitchStreamTypeData;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideoLatency()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePermissionResult()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleSpecialBundle(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public synthetic imageEnhancement(ZF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Li5/b;->b(Lcom/haima/hmcp/listeners/IBaseStreamModel;ZF)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/business/HmcpRequest;)V
    .locals 0

    return-void
.end method

.method public initMetaInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public initUrl(Lcom/haima/hmcp/beans/PlayStreamPayloadData;)V
    .locals 0

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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x0

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
    .locals 0

    const/4 p1, 0x0

    return p1
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
    .locals 0

    return-void
.end method

.method public onFirstFrameArrival()V
    .locals 0

    return-void
.end method

.method public onPLayerError()V
    .locals 0

    return-void
.end method

.method public onReceiveMetaInfos(Ljava/util/Map;)V
    .locals 0
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
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public releaseNotStop()V
    .locals 0

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
    .locals 0

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
    .locals 0

    return-void
.end method

.method public setImageSize()V
    .locals 0

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
    .locals 0

    return-void
.end method

.method public synthetic setStreamingCallback(Lcom/haima/hmcp/listeners/StreamingCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Li5/b;->k(Lcom/haima/hmcp/listeners/IBaseStreamModel;Lcom/haima/hmcp/listeners/StreamingCallback;)V

    return-void
.end method

.method public start2Play(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
    .locals 0

    return-void
.end method

.method public startPlay(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public stopFrameDataProxy()V
    .locals 0

    return-void
.end method

.method public stopPlay()V
    .locals 0

    .line 1
    return-void
.end method

.method public stopPlay(ZZ)V
    .locals 0

    .line 2
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
    .locals 0

    return-void
.end method

.method public turnOffSound()V
    .locals 0

    return-void
.end method

.method public turnOnSound()V
    .locals 0

    return-void
.end method

.method public updateRenderview()V
    .locals 0

    return-void
.end method
