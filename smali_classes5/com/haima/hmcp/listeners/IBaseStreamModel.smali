.class public interface abstract Lcom/haima/hmcp/listeners/IBaseStreamModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BINARY_DISCARDABLE:I = 0x2

.field public static final BINARY_NON_DISCARDABLE:I = 0x1

.field public static final TEXT_DISCARDABLE:I = 0x4

.field public static final TEXT_NON_DISCARDABLE:I = 0x3


# virtual methods
.method public abstract changeRenderRotation(I)V
.end method

.method public abstract connectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract disconnectAccProxy()V
.end method

.method public abstract doOperationNetTraceRoute(Ljava/lang/String;)V
.end method

.method public abstract doPlayerRelease()V
.end method

.method public abstract enableShareStream(Z)V
.end method

.method public abstract getBoardType()Ljava/lang/String;
.end method

.method public abstract getClockDiffVideoLatencyInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;
.end method

.method public abstract getCurrentBitRate()I
.end method

.method public abstract getEncodeVideoUrl()Ljava/lang/String;
.end method

.method public abstract getIMediaPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;
.end method

.method public abstract getLivingCapabilityStatus(Lcom/haima/hmcp/enums/ELivingCapabilityStatus;)Lcom/haima/hmcp/enums/ELivingCapabilityStatus;
.end method

.method public abstract getRenderView()Lcom/haima/hmcp/listeners/IRenderViewBase;
.end method

.method public abstract getResolution(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/haima/hmcp/beans/ResolutionInfo;
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
.end method

.method public abstract getShortcut()Landroid/graphics/Bitmap;
.end method

.method public abstract getStreamType()I
.end method

.method public abstract getStreamUrl()Ljava/lang/String;
.end method

.method public abstract getStreamingDomain()Ljava/lang/String;
.end method

.method public abstract getSwitchStreamTypeData(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)Lcom/haima/hmcp/beans/SwitchStreamTypeData;
.end method

.method public abstract getVideoLatency()Z
.end method

.method public abstract handlePermissionResult()Z
.end method

.method public abstract handleSpecialBundle(Landroid/os/Bundle;)V
.end method

.method public abstract imageEnhancement(ZF)V
.end method

.method public abstract init(Landroid/content/Context;Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/business/HmcpRequest;)V
.end method

.method public abstract initMetaInfo(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initUrl(Lcom/haima/hmcp/beans/PlayStreamPayloadData;)V
.end method

.method public abstract isDatachannelEnable()Z
.end method

.method public abstract isMatchStreamType(Lcom/haima/hmcp/beans/PlayStreamPayloadData;)Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isSupportFirstFrameOptimization()Z
.end method

.method public abstract isValidate(Lcom/haima/hmcp/beans/PlayStreamPayload;)Z
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onClockDiffChange(I)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract onFirstDiffClockSuccess()V
.end method

.method public abstract onFirstFrameArrival()V
.end method

.method public abstract onPLayerError()V
.end method

.method public abstract onReceiveMetaInfos(Ljava/util/Map;)V
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
.end method

.method public abstract onStopInternal()V
.end method

.method public abstract parseBoardType(Ljava/lang/String;)V
.end method

.method public abstract playForTesting(Lcom/haima/hmcp/beans/PlayTestData;)Z
.end method

.method public abstract release()V
.end method

.method public abstract releaseNotStop()V
.end method

.method public abstract releaseScreenShot()V
.end method

.method public abstract replay()V
.end method

.method public abstract requestKeyFrame()V
.end method

.method public abstract rfreshStoken()V
.end method

.method public abstract sendEvent([B)Z
.end method

.method public abstract sendEventByDataType(I[B)Z
.end method

.method public abstract sendLargeData([BLorg/webrtc/haima/HaimaDataChannel$Listener;)I
.end method

.method public abstract setColorMode(Lcom/haima/hmcp/beans/ColorMode;Lcom/haima/hmcp/listeners/ColorModeListener;)V
.end method

.method public abstract setGSMUrl(Ljava/lang/String;)V
.end method

.method public abstract setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V
.end method

.method public abstract setHmStreamerIPCallback(Lcom/haima/hmcp/listeners/HmStreamerIPCallback;)V
.end method

.method public abstract setHmcpVideoPlayerListener(Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;)V
.end method

.method public abstract setImageSize()V
.end method

.method public abstract setInputPingPongMs(I)V
.end method

.method public abstract setOperationDelayCallback(Lcom/haima/hmcp/listeners/IOperationDelayCallback;)V
.end method

.method public abstract setRender()V
.end method

.method public abstract setStreamingCallback(Lcom/haima/hmcp/listeners/StreamingCallback;)V
.end method

.method public abstract start2Play(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
.end method

.method public abstract startPlay(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
.end method

.method public abstract stop()V
.end method

.method public abstract stopFrameDataProxy()V
.end method

.method public abstract stopPlay()V
.end method

.method public abstract stopPlay(ZZ)V
.end method

.method public abstract switchBandWidthDetection(Z)Z
.end method

.method public abstract switchMobileNetworkTransport(Z)V
.end method

.method public abstract turnOffSound()V
.end method

.method public abstract turnOnSound()V
.end method

.method public abstract updateRenderview()V
.end method
