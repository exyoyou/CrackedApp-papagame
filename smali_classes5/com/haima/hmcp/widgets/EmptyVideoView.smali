.class public Lcom/haima/hmcp/widgets/EmptyVideoView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/IHmcpVideoView;


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
.method public backToGame()V
    .locals 0

    return-void
.end method

.method public batchUpload(Ljava/util/List;Lcom/haima/hmcp/listeners/BatchCloudOperationListener;)V
    .locals 0
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

    return-void
.end method

.method public cancelDownload()V
    .locals 0

    .line 1
    return-void
.end method

.method public cancelDownload(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CancelCallback;)V
    .locals 0

    .line 2
    return-void
.end method

.method public cancelUpload()V
    .locals 0

    return-void
.end method

.method public changeStreamType(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V
    .locals 0

    return-void
.end method

.method public checkBitmap(Landroid/graphics/Bitmap;F)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public connectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public controlPlay(Lcom/haima/hmcp/beans/Control;Lcom/haima/hmcp/listeners/OnContronListener;)V
    .locals 0

    return-void
.end method

.method public synthetic disableGyroscope()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/widgets/b0;->a(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;)V

    return-void
.end method

.method public disableVibrator(Z)V
    .locals 0

    return-void
.end method

.method public disconnectAccProxy()V
    .locals 0

    return-void
.end method

.method public disconnectWSTest()V
    .locals 0

    return-void
.end method

.method public distributeControlPermit(Ljava/util/List;Lcom/haima/hmcp/listeners/OnContronListener;)V
    .locals 0
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

    return-void
.end method

.method public download(Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 0

    .line 1
    return-void
.end method

.method public download(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;)V
    .locals 0

    .line 2
    return-void
.end method

.method public download(Ljava/util/List;Lcom/haima/hmcp/enums/DownloadMode;Lcom/haima/hmcp/listeners/DownloadCallback;)V
    .locals 0
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

    .line 3
    return-void
.end method

.method public synthetic enableGyroscope(Lcom/haima/hmcp/enums/GyroscopeActivateMode;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->b(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Lcom/haima/hmcp/enums/GyroscopeActivateMode;)V

    return-void
.end method

.method public enableHighBitrate(ZLcom/haima/hmcp/listeners/OnEnableHighBitrateListener;)V
    .locals 0

    return-void
.end method

.method public enableVirtualKeyBoardView(Z)V
    .locals 0

    return-void
.end method

.method public synthetic enterVirDeviceEditMode(Lcom/haima/hmcp/widgets/beans/VirtualOperateType;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/haima/hmcp/widgets/b0;->c(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Lcom/haima/hmcp/widgets/beans/VirtualOperateType;Z)V

    return-void
.end method

.method public entryQueue()V
    .locals 0

    return-void
.end method

.method public exitQueue()V
    .locals 0

    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitRate()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getButtonMappingMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getButtonMappings()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClockDiffVideoLatencyInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloudFileStatus(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/enums/CloudFileProtocol;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getCloudImeType(Lcom/haima/hmcp/listeners/GetCloudIMECallback;)V
    .locals 0

    return-void
.end method

.method public getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCloudPlayStatusCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentInputMode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getFunctionSensitivity()F
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/widgets/b0;->d(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;)F

    move-result v0

    return v0
.end method

.method public synthetic getGameArchitectureType()Lcom/haima/hmcp/beans/GameArchitectureType;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/widgets/b0;->e(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;)Lcom/haima/hmcp/beans/GameArchitectureType;

    move-result-object v0

    return-object v0
.end method

.method public getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIMediaPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getInputUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstanceAccessUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntroImageInfo()Lcom/haima/hmcp/beans/IntroImageInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastUserOperationTimestamp()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLivingCapabilityStatus()Lcom/haima/hmcp/enums/ELivingCapabilityStatus;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetaInfos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getMouseSensitivity()F
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/widgets/b0;->f(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;)F

    move-result v0

    return v0
.end method

.method public synthetic getMouseSensitivity(F)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->g(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;F)V

    return-void
.end method

.method public getNetText()Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getOperateType()Lcom/haima/hmcp/widgets/beans/VirtualOperateType;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/widgets/b0;->h(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;)Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    move-result-object v0

    return-object v0
.end method

.method public getPinCode(Lcom/haima/hmcp/listeners/OnContronListener;)V
    .locals 0

    return-void
.end method

.method public getQRCodeData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReportDelayInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;
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

.method public getResolutionInfo()Lcom/haima/hmcp/beans/ResolutionInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolutionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortcut()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

.method public getTipsInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/TipsInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getTouchMode()Lcom/haima/hmcp/enums/TouchMode;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/widgets/b0;->i(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;)Lcom/haima/hmcp/enums/TouchMode;

    move-result-object v0

    return-object v0
.end method

.method public getTransferDelegate()Lcom/haima/hmcp/business/TransferHelper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLatency()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getVirtualDeviceAlpha()F
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/widgets/b0;->j(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;)F

    move-result v0

    return v0
.end method

.method public synthetic getVirtualKeyVibrate()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/widgets/b0;->k(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;)Z

    move-result v0

    return v0
.end method

.method public getWorkingFile(Lcom/haima/hmcp/enums/CloudOperation;Lcom/haima/hmcp/listeners/WorkingFileCallback;)V
    .locals 0

    return-void
.end method

.method public handlePermissionResult(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public hideKeyboard()V
    .locals 0

    return-void
.end method

.method public synthetic imageEnhancement(ZF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/haima/hmcp/widgets/b0;->l(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;ZF)V

    return-void
.end method

.method public inputText(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isHandleInputEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLoadingShow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNativeDpadGame()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkOk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOnSound()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSwitchAuto()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTurnOffVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVirtualKeyBoardViewVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic isVirtualStickShow()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/widgets/b0;->m(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;)Z

    move-result v0

    return v0
.end method

.method public isX86Game()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public joinBattle(Lcom/haima/hmcp/beans/InternalJoinBattle;Lcom/haima/hmcp/listeners/OnJoinBattleListener;)V
    .locals 0

    return-void
.end method

.method public loadKeyboardConfigFromJson(Ljava/lang/String;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadSwitchStreamTypeData(Lcom/haima/hmcp/beans/SwitchStreamTypeData;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onExitGame()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onRestart(I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onSwitchResolution(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSwitchResolution(ILcom/haima/hmcp/beans/ResolutionInfo;I)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public onSwitchResolution(ILcom/haima/hmcp/beans/ResolutionInfo;ILcom/haima/hmcp/beans/ResolutionInfoExtra;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method

.method public pauseGame()V
    .locals 0

    return-void
.end method

.method public play()V
    .locals 0

    .line 1
    return-void
.end method

.method public play(Landroid/os/Bundle;)V
    .locals 0

    .line 2
    return-void
.end method

.method public playForTesting(Lcom/haima/hmcp/beans/PlayTestData;)V
    .locals 0

    return-void
.end method

.method public queryCloudFile(Lcom/haima/hmcp/listeners/QueryCallback;)V
    .locals 0

    return-void
.end method

.method public queryControlUsers(Lcom/haima/hmcp/listeners/OnContronListener;)V
    .locals 0

    return-void
.end method

.method public reconnection()V
    .locals 0

    return-void
.end method

.method public refreshTransferToken(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public relaunchGame(Lcom/haima/hmcp/listeners/OnRelaunchGameListener;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method

.method public releaseNotStop()V
    .locals 0

    return-void
.end method

.method public synthetic remoteCapture(Lcom/haima/hmcp/beans/RemoteCaptureParameters;Lcom/haima/hmcp/listeners/RemoteCaptureListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/haima/hmcp/widgets/b0;->n(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Lcom/haima/hmcp/beans/RemoteCaptureParameters;Lcom/haima/hmcp/listeners/RemoteCaptureListener;)V

    return-void
.end method

.method public reportFinishInfo(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestKeepAlive(JLcom/haima/hmcp/listeners/OnRequestAliveListener;)V
    .locals 0

    return-void
.end method

.method public synthetic requestKeyFrame()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/widgets/b0;->o(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;)V

    return-void
.end method

.method public requestRemoteImageList(IILcom/haima/hmcp/listeners/OnCloudImageListListener;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public requestStopKeepAlive(Lcom/haima/hmcp/listeners/OnRequestAliveListener;)V
    .locals 0

    return-void
.end method

.method public resetInputTimer()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public resetInputTimer(Z)I
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public restartGame(I)V
    .locals 0

    return-void
.end method

.method public searchCloudFile(Lcom/haima/hmcp/listeners/SearchCallback;)V
    .locals 0

    return-void
.end method

.method public sendAudioData([B)V
    .locals 0

    return-void
.end method

.method public sendCustomKeycode(Lcom/haima/hmcp/beans/HMInputOpData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sendGamepadKeyEvent(IIFFFF)V
    .locals 0

    return-void
.end method

.method public sendInputOp(Ljava/util/ArrayList;Lcom/haima/hmcp/listeners/HmInputOpListener;)V
    .locals 0
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

    return-void
.end method

.method public sendKeyEvent(Lcom/haima/hmcp/device/input/enums/KeyType;)V
    .locals 0

    return-void
.end method

.method public sendKeyboardEvent(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public sendMessage(Ljava/lang/String;Lcom/haima/hmcp/enums/MessageType;Lcom/haima/hmcp/listeners/OnSendMessageListener;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V
    .locals 0

    return-void
.end method

.method public sendSceneStopMessage(JLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendWsMessage(Ljava/lang/String;Lcom/haima/hmcp/enums/WsMessageType;Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setAttachContext(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public setAudioMute(Z)V
    .locals 0

    return-void
.end method

.method public setAudioRecordCallback(Lcom/haima/hmcp/listeners/AudioRecordSourceCallback;)V
    .locals 0

    return-void
.end method

.method public synthetic setAutoShowIME(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->p(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)V

    return-void
.end method

.method public setButtonMapping(Lcom/haima/hmcp/beans/ButtonMappings;)V
    .locals 0

    return-void
.end method

.method public setButtonMappingMode(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setChangeStreamStatus(Z)V
    .locals 0

    return-void
.end method

.method public setCloseStream(Z)V
    .locals 0

    return-void
.end method

.method public setCloudOperationListener(Lcom/haima/hmcp/listeners/CloudOperationListener;)V
    .locals 0

    return-void
.end method

.method public setColorMode(Lcom/haima/hmcp/beans/ColorMode;Lcom/haima/hmcp/listeners/ColorModeListener;)V
    .locals 0

    return-void
.end method

.method public setConfigInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic setControlListener(Lcom/haima/hmcp/listeners/OnContronListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->q(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Lcom/haima/hmcp/listeners/OnContronListener;)V

    return-void
.end method

.method public setCursorSize(II)V
    .locals 0

    return-void
.end method

.method public setCustomVideoView(Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;)V
    .locals 0

    return-void
.end method

.method public setDevicePixelRatio(I)V
    .locals 0

    return-void
.end method

.method public setDpadMouseMoveStep(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic setDpadMouseMoveStep(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/haima/hmcp/widgets/b0;->r(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public setExtraData(Lcom/haima/hmcp/beans/IntentExtraData;)V
    .locals 0

    return-void
.end method

.method public synthetic setFixedGamepadType(Lcom/haima/hmcp/enums/GamepadType;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->s(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Lcom/haima/hmcp/enums/GamepadType;)V

    return-void
.end method

.method public synthetic setFunctionSensitivity(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->t(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;F)V

    return-void
.end method

.method public synthetic setGyroToMouseXSensitivity(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->u(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;I)V

    return-void
.end method

.method public synthetic setGyroToMouseYSensitivity(I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->v(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;I)V

    return-void
.end method

.method public setHandleInputEvent(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V
    .locals 0

    return-void
.end method

.method public setHmStreamerIPCallback(Lcom/haima/hmcp/listeners/HmStreamerIPCallback;)V
    .locals 0

    return-void
.end method

.method public setHmcpPlayerListener(Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V
    .locals 0

    return-void
.end method

.method public setImageSize()V
    .locals 0

    return-void
.end method

.method public setInitMousePoint(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public synthetic setKeyPressedVibrator(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->w(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)V

    return-void
.end method

.method public synthetic setKeyboardMapperGamepadEnable(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->x(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)V

    return-void
.end method

.method public setLoadingShow(Z)V
    .locals 0

    return-void
.end method

.method public setMouseBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setMouseIcon(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public setMouseMoveStep(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setMouseOffSet(II)V
    .locals 0

    return-void
.end method

.method public setMouseOffSetRatio(FF)V
    .locals 0

    return-void
.end method

.method public synthetic setMouseSensitivity(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->y(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;F)V

    return-void
.end method

.method public setOperationDelayCallback(Lcom/haima/hmcp/listeners/IOperationDelayCallback;)V
    .locals 0

    return-void
.end method

.method public synthetic setPCMouseMode(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->z(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)V

    return-void
.end method

.method public synthetic setPhysicalMouseViewOnSensitivity(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->A(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;F)V

    return-void
.end method

.method public setPlayerState(I)V
    .locals 0

    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0

    return-void
.end method

.method public setScreenOrientation(Lcom/haima/hmcp/enums/ScreenOrientation;)V
    .locals 0

    return-void
.end method

.method public setScreenWidth(I)V
    .locals 0

    return-void
.end method

.method public setSeiListener(Lcom/haima/hmcp/listeners/ISeiListener;)V
    .locals 0

    return-void
.end method

.method public synthetic setShowVirtualRawKey(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->B(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)V

    return-void
.end method

.method public setStreamTypeChangeListener(Lcom/haima/hmcp/listeners/OnStreamTypeChangeListener;)V
    .locals 0

    return-void
.end method

.method public setStreamingCallback(Lcom/haima/hmcp/listeners/StreamingCallback;)V
    .locals 0

    return-void
.end method

.method public synthetic setStreamingMode(Lcom/haima/hmcp/enums/StreamingMode;Lcom/haima/hmcp/listeners/IStreamingModeCallback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/haima/hmcp/widgets/b0;->C(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Lcom/haima/hmcp/enums/StreamingMode;Lcom/haima/hmcp/listeners/IStreamingModeCallback;)V

    return-void
.end method

.method public synthetic setTouchMode(Lcom/haima/hmcp/enums/TouchMode;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->D(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Lcom/haima/hmcp/enums/TouchMode;)Z

    move-result p1

    return p1
.end method

.method public synthetic setTouchesMoveMapperRockerEnable(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->E(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)V

    return-void
.end method

.method public setUIListener(Lcom/haima/hmcp/listeners/HmcpUIListener;)V
    .locals 0

    return-void
.end method

.method public setUserInfo(Lcom/haima/hmcp/beans/UserInfo;)V
    .locals 0

    return-void
.end method

.method public setVideoDelayCallback(Lcom/haima/hmcp/listeners/IVideoDelayCallback;)V
    .locals 0

    return-void
.end method

.method public setVirtualBaseScale(F)V
    .locals 0

    return-void
.end method

.method public setVirtualKeyboardSurfaceView(Lcom/haima/hmcp/widgets/virtualkey/VirtualKeyboardSurfaceView;)V
    .locals 0

    return-void
.end method

.method public synthetic setVirtualStickAlpha(F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->G(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;F)V

    return-void
.end method

.method public setWsMessageListener(Lcom/haima/hmcp/listeners/OnSendWsMessageListener;)V
    .locals 0

    return-void
.end method

.method public synthetic setXAxisReverse(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->H(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)V

    return-void
.end method

.method public synthetic setYAxisReverse(Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->I(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)V

    return-void
.end method

.method public synthetic showVirtualKeyboard(Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->J(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic showVirtualStick(Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->K(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)Z

    move-result p1

    return p1
.end method

.method public startLiving(Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnLivingListener;)V
    .locals 0

    return-void
.end method

.method public startPlay()V
    .locals 0

    .line 1
    return-void
.end method

.method public startPlay(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public startRecord()V
    .locals 0

    return-void
.end method

.method public startRecordStream(Lcom/haima/hmcp/listeners/StartRecordStreamListener;)V
    .locals 0

    return-void
.end method

.method public startStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public stopAndDismiss(Landroid/app/Activity;I)V
    .locals 0

    return-void
.end method

.method public stopLiving(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnLivingListener;)V
    .locals 0

    return-void
.end method

.method public stopRecord()V
    .locals 0

    return-void
.end method

.method public stopRecordStream(Lcom/haima/hmcp/listeners/StopRecordStreamListener;)V
    .locals 0

    return-void
.end method

.method public synthetic switchBandWidthDetection(Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->L(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)Z

    move-result p1

    return p1
.end method

.method public switchIME(Lcom/haima/hmcp/listeners/SwitchIMECallback;)V
    .locals 0

    return-void
.end method

.method public switchInputMode()V
    .locals 0

    return-void
.end method

.method public synthetic switchKeyboard(Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->M(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic switchLocalKeyboard(Z)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/widgets/b0;->N(Lcom/haima/hmcp/widgets/IBaseHmcpVideoView;Z)Z

    move-result p1

    return p1
.end method

.method public switchMobileNetworkTransport(Z)V
    .locals 0

    return-void
.end method

.method public switchStreamType(Lcom/haima/hmcp/enums/StreamType;Lcom/haima/hmcp/listeners/OnSwitchStreamTypeListener;)V
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

.method public updateCTokenTimeStamp(Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateCloudFile(Lcom/haima/hmcp/enums/CloudOperation;Ljava/util/List;Lcom/haima/hmcp/listeners/UpdateCallback;)V
    .locals 0
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

    return-void
.end method

.method public updateGameUID(Landroid/os/Bundle;Lcom/haima/hmcp/listeners/OnUpdataGameUIDListener;)V
    .locals 0

    return-void
.end method

.method public updateInstanceTime(IILcom/haima/hmcp/listeners/OnUpdateInstanceTimeListener;)V
    .locals 0

    return-void
.end method

.method public upload(Lcom/haima/hmcp/beans/CloudFile;)V
    .locals 0

    .line 1
    return-void
.end method

.method public upload(Lcom/haima/hmcp/beans/CloudFile;Lcom/haima/hmcp/listeners/CloudOperationListener;)V
    .locals 0

    .line 2
    return-void
.end method
