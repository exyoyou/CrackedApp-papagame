.class public interface abstract Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract backToGame()V
.end method

.method public abstract batchUpload(Ljava/util/List;Lcom/haima/hmcp/listeners/BatchCloudOperationListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/listeners/BatchCloudOperationListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract cancelDownload()V
.end method

.method public abstract cancelDownload(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V
.end method

.method public abstract cancelUpload()V
.end method

.method public abstract changeStreamType(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V
.end method

.method public abstract checkBitmap(Landroid/graphics/Bitmap;F)I
.end method

.method public abstract connectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract controlPlay(Lcom/haima/hmcp/beans/Control;Lcom/haima/hmcp/listeners/OnContronListener;)V
.end method

.method public abstract disableGyroscope()V
.end method

.method public abstract disableVibrator(Z)V
.end method

.method public abstract disconnectAccProxy()V
.end method

.method public abstract disconnectWSTest()V
.end method

.method public abstract distributeControlPermit(Ljava/util/List;Lcom/haima/hmcp/listeners/OnContronListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ControlInfo;",
            ">;",
            "Lcom/haima/hmcp/listeners/OnContronListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract download(Lcom/haima/hmcp/beans/CloudFile;)V
.end method

.method public abstract download(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;)V
.end method

.method public abstract download(Ljava/util/List;Lcom/haima/hmcp/enums/DownloadMode;Lcom/haima/hmcp/listeners/DownloadCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/enums/DownloadMode;",
            "Lcom/haima/hmcp/listeners/DownloadCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract enableGyroscope(Lcom/haima/hmcp/enums/GyroscopeActivateMode;)V
.end method

.method public abstract enableHighBitrate(ZLcom/haima/hmcp/listeners/OnEnableHighBitrateListener;)V
.end method

.method public abstract enableVirtualKeyBoardView(Z)V
.end method

.method public abstract enterVirDeviceEditMode(Lcom/haima/hmcp/widgets/beans/VirtualOperateType;Z)V
.end method

.method public abstract entryQueue()V
.end method

.method public abstract exitQueue()V
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getBitRate()I
.end method

.method public abstract getButtonMappingMode()I
.end method

.method public abstract getButtonMappings()Ljava/util/List;
.end method

.method public abstract getClockDiffVideoLatencyInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;
.end method

.method public abstract getCloudFileStatus(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/enums/CloudFileProtocol;)I
.end method

.method public abstract getCloudImeType(Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V
.end method

.method public abstract getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;
.end method

.method public abstract getCloudPlayStatusCode()Ljava/lang/String;
.end method

.method public abstract getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;
.end method

.method public abstract getCurrentInputMode()I
.end method

.method public abstract getFunctionSensitivity()F
.end method

.method public abstract getGameArchitectureType()Lcom/haima/hmcp/beans/GameArchitectureType;
.end method

.method public abstract getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;
.end method

.method public abstract getIMediaPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;
.end method

.method public abstract getInputUrl()Ljava/lang/String;
.end method

.method public abstract getInstanceAccessUrl()Ljava/lang/String;
.end method

.method public abstract getIntroImageInfo()Lcom/haima/hmcp/beans/IntroImageInfo;
.end method

.method public abstract getLastUserOperationTimestamp()J
.end method

.method public abstract getLivingCapabilityStatus()Lcom/haima/hmcp/enums/ELivingCapabilityStatus;
.end method

.method public abstract getMetaInfos()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMouseSensitivity()F
.end method

.method public abstract getMouseSensitivity(F)V
.end method

.method public abstract getNetText()Ljava/util/ArrayList;
.end method

.method public abstract getOperateType()Lcom/haima/hmcp/widgets/beans/VirtualOperateType;
.end method

.method public abstract getPinCode(Lcom/haima/hmcp/listeners/OnContronListener;)V
.end method

.method public abstract getQRCodeData()Ljava/lang/String;
.end method

.method public abstract getReportDelayInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;
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

.method public abstract getResolutionInfo()Lcom/haima/hmcp/beans/ResolutionInfo;
.end method

.method public abstract getResolutionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenHeight()I
.end method

.method public abstract getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
.end method

.method public abstract getScreenWidth()I
.end method

.method public abstract getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;
.end method

.method public abstract getShortcut()Landroid/graphics/Bitmap;
.end method

.method public abstract getStreamUrl()Ljava/lang/String;
.end method

.method public abstract getStreamingDomain()Ljava/lang/String;
.end method

.method public abstract getTipsInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/TipsInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTouchMode()Lcom/haima/hmcp/enums/TouchMode;
.end method

.method public abstract getTransferDelegate()Lcom/haima/hmcp/business/TransferHelper;
.end method

.method public abstract getVideoLatency()I
.end method

.method public abstract getVirtualDeviceAlpha()F
.end method

.method public abstract getVirtualKeyVibrate()Z
.end method

.method public abstract getWorkingFile(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/listeners/WorkingFileCallback;)V
.end method

.method public abstract handlePermissionResult(Ljava/lang/String;Z)V
.end method

.method public abstract hideKeyboard()V
.end method

.method public abstract imageEnhancement(ZF)V
.end method

.method public abstract inputText(Ljava/lang/String;)Z
.end method

.method public abstract isHandleInputEvent()Z
.end method

.method public abstract isLoadingShow()Z
.end method

.method public abstract isNativeDpadGame()Z
.end method

.method public abstract isNetworkOk()Z
.end method

.method public abstract isOnSound()Z
.end method

.method public abstract isSwitchAuto()Z
.end method

.method public abstract isTurnOffVideo()Z
.end method

.method public abstract isVirtualKeyBoardViewVisible()Z
.end method

.method public abstract isVirtualStickShow()Z
.end method

.method public abstract isX86Game()Z
.end method

.method public abstract joinBattle(Lcom/haima/hmcp/beans/InternalJoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
.end method

.method public abstract loadKeyboardConfigFromJson(Ljava/lang/String;Z)Z
.end method

.method public abstract loadSwitchStreamTypeData(Lcom/haima/hmcp/beans/SwitchStreamTypeData;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onExitGame()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onRestart(I)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onSwitchResolution(Ljava/lang/String;)V
.end method

.method public abstract onSwitchResolution(ILcom/haima/hmcp/beans/ResolutionInfo;I)Z
.end method

.method public abstract onSwitchResolution(ILcom/haima/hmcp/beans/ResolutionInfo;ILcom/haima/hmcp/beans/ResolutionInfoExtra;)Z
.end method

.method public abstract pauseGame()V
.end method

.method public abstract play()V
.end method

.method public abstract play(Landroid/os/Bundle;)V
.end method

.method public abstract playForTesting(Lcom/haima/hmcp/beans/PlayTestData;)V
.end method

.method public abstract queryCloudFile(Lcom/haima/hmcp/listeners/QueryCallback;)V
.end method

.method public abstract queryControlUsers(Lcom/haima/hmcp/listeners/OnContronListener;)V
.end method

.method public abstract reconnection()V
.end method

.method public abstract refreshTransferToken(ILjava/lang/String;)V
.end method

.method public abstract relaunchGame(Lcom/haima/hmcp/listeners/OnRelaunchGameListener;)V
.end method

.method public abstract release()V
.end method

.method public abstract release(Ljava/lang/String;)V
.end method

.method public abstract releaseNotStop()V
.end method

.method public abstract remoteCapture(Lcom/haima/hmcp/beans/RemoteCaptureParameters;Lcom/haima/hmcp/listeners/RemoteCaptureListener;)V
.end method

.method public abstract reportFinishInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract requestKeepAlive(JLcom/haima/hmcp/listeners/OnRequestAliveListener;)V
.end method

.method public abstract requestKeyFrame()V
.end method

.method public abstract requestRemoteImageList(IILcom/haima/hmcp/listeners/OnCloudImageListListener;)Z
.end method

.method public abstract requestStopKeepAlive(Lcom/haima/hmcp/listeners/OnRequestAliveListener;)V
.end method

.method public abstract resetInputTimer()I
.end method

.method public abstract resetInputTimer(Z)I
.end method

.method public abstract restartGame(I)V
.end method

.method public abstract searchCloudFile(Lcom/haima/hmcp/listeners/SearchCallback;)V
.end method

.method public abstract sendAudioData([B)V
.end method

.method public abstract sendCustomKeycode(Lcom/haima/hmcp/beans/HMInputOpData;)Z
.end method

.method public abstract sendGamepadKeyEvent(IIFFFF)V
.end method

.method public abstract sendInputOp(Ljava/util/ArrayList;Lcom/haima/hmcp/listeners/HmInputOpListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/beans/HmInputOp;",
            ">;",
            "Lcom/haima/hmcp/listeners/HmInputOpListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendKeyEvent(Lcom/haima/hmcp/device/input/enums/KeyType;)V
.end method

.method public abstract sendKeyboardEvent(Ljava/lang/String;I)V
.end method

.method public abstract sendMessage(Ljava/lang/String;Lcom/haima/hmcp/enums/MessageType;Lcom/haima/hmcp/listeners/OnSendMessageListener;)Z
.end method

.method public abstract sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V
.end method

.method public abstract sendSceneStopMessage(JLjava/lang/String;)V
.end method

.method public abstract sendWsMessage(Ljava/lang/String;Lcom/haima/hmcp/enums/WsMessageType;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)Z
.end method

.method public abstract setAttachContext(Landroid/content/Context;)V
.end method

.method public abstract setAudioMute(Z)V
.end method

.method public abstract setAudioRecordCallback(Lcom/haima/hmcp/listeners/AudioRecordSourceCallback;)V
.end method

.method public abstract setAutoShowIME(Z)V
.end method

.method public abstract setButtonMapping(Lcom/haima/hmcp/beans/ButtonMappings;)V
.end method

.method public abstract setButtonMappingMode(I)Z
.end method

.method public abstract setChangeStreamStatus(Z)V
.end method

.method public abstract setCloseStream(Z)V
.end method

.method public abstract setCloudOperationListener(Lcom/haima/hmcp/listeners/CloudOperationListener;)V
.end method

.method public abstract setColorMode(Lcom/haima/hmcp/beans/ColorMode;Lcom/haima/hmcp/listeners/ColorModeListener;)V
.end method

.method public abstract setConfigInfo(Ljava/lang/String;)V
.end method

.method public abstract setControlListener(Lcom/haima/hmcp/listeners/OnContronListener;)V
.end method

.method public abstract setCursorSize(II)V
.end method

.method public abstract setCustomVideoView(Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;)V
.end method

.method public abstract setDevicePixelRatio(I)V
.end method

.method public abstract setDpadMouseMoveStep(F)V
.end method

.method public abstract setDpadMouseMoveStep(Ljava/lang/Float;Ljava/lang/Float;)V
.end method

.method public abstract setExtraData(Lcom/haima/hmcp/beans/IntentExtraData;)V
.end method

.method public abstract setFixedGamepadType(Lcom/haima/hmcp/enums/GamepadType;)V
.end method

.method public abstract setFunctionSensitivity(F)V
.end method

.method public abstract setGyroToMouseXSensitivity(I)V
.end method

.method public abstract setGyroToMouseYSensitivity(I)V
.end method

.method public abstract setHandleInputEvent(Z)Z
.end method

.method public abstract setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V
.end method

.method public abstract setHmStreamerIPCallback(Lcom/haima/hmcp/listeners/HmStreamerIPCallback;)V
.end method

.method public abstract setHmcpPlayerListener(Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
.end method

.method public abstract setImageSize()V
.end method

.method public abstract setInitMousePoint(FF)Z
.end method

.method public abstract setKeyPressedVibrator(Z)V
.end method

.method public abstract setKeyboardMapperGamepadEnable(Z)V
.end method

.method public abstract setLoadingShow(Z)V
.end method

.method public abstract setMouseBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setMouseIcon(Ljava/lang/String;I)V
.end method

.method public abstract setMouseMoveStep(I)Z
.end method

.method public abstract setMouseOffSet(II)V
.end method

.method public abstract setMouseOffSetRatio(FF)V
.end method

.method public abstract setMouseSensitivity(F)V
.end method

.method public abstract setOperationDelayCallback(Lcom/haima/hmcp/listeners/IOperationDelayCallback;)V
.end method

.method public abstract setPCMouseMode(Z)V
.end method

.method public abstract setPhysicalMouseViewOnSensitivity(F)V
.end method

.method public abstract setPlayerState(I)V
.end method

.method public abstract setScreenHeight(I)V
.end method

.method public abstract setScreenOrientation(Lcom/haima/hmcp/enums/ScreenOrientation;)V
.end method

.method public abstract setScreenWidth(I)V
.end method

.method public abstract setSeiListener(Lcom/haima/hmcp/listeners/ISeiListener;)V
.end method

.method public abstract setShowVirtualRawKey(Z)V
.end method

.method public abstract setStreamTypeChangeListener(Lcom/haima/hmcp/listeners/OnStreamTypeChangeListener;)V
.end method

.method public abstract setStreamingCallback(Lcom/haima/hmcp/listeners/StreamingCallback;)V
.end method

.method public abstract setStreamingMode(Lcom/haima/hmcp/enums/StreamingMode;Lcom/haima/hmcp/listeners/IStreamingModeCallback;)V
.end method

.method public abstract setTouchMode(Lcom/haima/hmcp/enums/TouchMode;)Z
.end method

.method public abstract setTouchesMoveMapperRockerEnable(Z)V
.end method

.method public abstract setUIListener(Lcom/haima/hmcp/listeners/HmcpUIListener;)V
.end method

.method public abstract setUserInfo(Lcom/haima/hmcp/beans/UserInfo;)V
.end method

.method public abstract setVideoDelayCallback(Lcom/haima/hmcp/listeners/IVideoDelayCallback;)V
.end method

.method public abstract setVirtualBaseScale(F)V
.end method

.method public abstract setVirtualKeyboardSurfaceView(Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;)V
.end method

.method public abstract setVirtualStickAlpha(F)V
.end method

.method public abstract setWsMessageListener(Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V
.end method

.method public abstract setXAxisReverse(Z)V
.end method

.method public abstract setYAxisReverse(Z)V
.end method

.method public abstract showVirtualKeyboard(Z)Z
.end method

.method public abstract showVirtualStick(Z)Z
.end method

.method public abstract startLiving(Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnLivingListener;)V
.end method

.method public abstract startPlay()V
.end method

.method public abstract startPlay(Z)V
.end method

.method public abstract startRecord()V
.end method

.method public abstract startRecordStream(Lcom/haima/hmcp/listeners/StartRecordStreamListener;)V
.end method

.method public abstract startStreaming()Z
.end method

.method public abstract stopAndDismiss(Landroid/app/Activity;I)V
.end method

.method public abstract stopLiving(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnLivingListener;)V
.end method

.method public abstract stopRecord()V
.end method

.method public abstract stopRecordStream(Lcom/haima/hmcp/listeners/StopRecordStreamListener;)V
.end method

.method public abstract switchBandWidthDetection(Z)Z
.end method

.method public abstract switchIME(Lcom/haima/hmcp/listeners/SwitchIMECallback;)V
.end method

.method public abstract switchInputMode()V
.end method

.method public abstract switchKeyboard(Z)Z
.end method

.method public abstract switchLocalKeyboard(Z)Z
.end method

.method public abstract switchMobileNetworkTransport(Z)V
.end method

.method public abstract switchStreamType(Lcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;)V
.end method

.method public abstract turnOffSound()V
.end method

.method public abstract turnOnSound()V
.end method

.method public abstract updateCTokenTimeStamp(Ljava/lang/String;Ljava/lang/Long;)Z
.end method

.method public abstract updateCloudFile(Lcom/haima/hmcp/enums/CloudOperation;Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/enums/CloudOperation;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/CloudFile;",
            ">;",
            "Lcom/haima/hmcp/listeners/UpdateCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateGameUID(Landroid/os/Bundle;Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;)V
.end method

.method public abstract updateInstanceTime(IILcom/haima/hmcp/listeners/OnUpdateInstanceTimeListener;)V
.end method

.method public abstract upload(Lcom/haima/hmcp/beans/CloudFile;)V
.end method

.method public abstract upload(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;)V
.end method
