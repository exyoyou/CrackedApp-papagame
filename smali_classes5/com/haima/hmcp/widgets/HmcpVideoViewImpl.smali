.class public Lcom/haima/hmcp/widgets/HmcpVideoViewImpl;
.super Lcom/haima/hmcp/widgets/HmcpVideoViewImplExtension;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/haima/hmcp/widgets/HmcpVideoViewImpl;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/widgets/HmcpVideoViewImplExtension;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/widgets/HmcpVideoViewImplExtension;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/widgets/HmcpVideoViewImplExtension;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected callbackCloudDeviceStatus(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/HmcpVideoViewImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onCloudDeviceStatus :"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    const-string p1, "mListener is null"

    .line 28
    .line 29
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-interface {v1, p1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onCloudDeviceStatus(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method protected callbackCloudPlayerKeyboardStatusChanged(Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/HmcpVideoViewImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onCloudPlayerKeyboardStatusChanged :"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v1, p1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onCloudPlayerKeyboardStatusChanged(Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p1, "mListener is null"

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method protected callbackLocalKeyboardShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/utils/HmIMEManager;->getInstance()Lcom/haima/hmcp/utils/HmIMEManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/HmIMEManager;->isShowInput()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/haima/hmcp/utils/HmIMEManager;->getInstance()Lcom/haima/hmcp/utils/HmIMEManager;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/HmIMEManager;->isFastCall()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    sget-object v0, Lcom/haima/hmcp/widgets/HmcpVideoViewImpl;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "onCloudPlayerKeyboardStatusChanged show"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 33
    .line 34
    sget-object v1, Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;->CLOUD_PLAYER_KEYBOARD_STATUS_SHOW:Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onCloudPlayerKeyboardStatusChanged(Lcom/haima/hmcp/enums/CloudPlayerKeyboardStatus;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public hideKeyboard()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->localKeyboardModel:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->hideInput()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected initManagerSpecial()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 6
    .line 7
    check-cast v1, Lcom/haima/hmcp/business/WebSocketManager;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/beans/CloudPlayInfo;->setWebSocketManager(Lcom/haima/hmcp/business/WebSocketManager;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/haima/hmcp/widgets/HmcpVideoViewImpl;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "cloudPlayInfo == null,can\'t set cloudPlayInfo.setWebSocketManager(mWebSocketManager)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->setCloudPlayInfo(Lcom/haima/hmcp/beans/CloudPlayInfo;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    check-cast v0, Lcom/haima/hmcp/business/WebSocketManager;

    .line 34
    .line 35
    sget-object v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/business/WebSocketManager;->setCloudPlayInfo(Lcom/haima/hmcp/beans/CloudPlayInfo;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public internalPlayPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->turnOffSound()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->turnOffVideo()V

    .line 8
    .line 9
    .line 10
    const-string p1, "13062"

    .line 11
    .line 12
    const-string p2, "turn off video, add cover"

    .line 13
    .line 14
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimerNoAccess()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
