.class public abstract Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;
.super Lcom/haima/hmcp/widgets/AbsIjkVideoView;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "HmcpVideoViewImplBase"


# instance fields
.field private mStreamType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "WEBRTC"

    .line 5
    iput-object p2, p0, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->mStreamType:Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "WEBRTC"

    .line 8
    iput-object p2, p0, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->mStreamType:Ljava/lang/String;

    .line 9
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->mStreamType:Ljava/lang/String;

    .line 3
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "HmcpVideoViewAndroidImpl.init"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpManager:Lcom/haima/hmcp/HmcpManager;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initView(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/haima/hmcp/utils/ping/PingManager;->getInstance()Lcom/haima/hmcp/utils/ping/PingManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/utils/ping/PingManager;->setContext(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initIME(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initHandler()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->initCloudInfo()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initManager()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->initModelByStreamType(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private initCloudInfo()V
    .locals 2

    .line 1
    const-string v0, "WEBRTC"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->mStreamType:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/haima/hmcp/rtc/widgets/beans/RtcCloudPlayInfo;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcCloudPlayInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 25
    .line 26
    :goto_0
    return-void
.end method


# virtual methods
.method public distributeControlPermit(Ljava/util/List;Lcom/haima/hmcp/listeners/OnContronListener;)V
    .locals 3
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

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "distributeControlPermit()"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "; "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCid()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 38
    .line 39
    sget-object v1, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 40
    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 58
    .line 59
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/haima/hmcp/HmcpManager;->getCloudId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->requestX86ControlDistribute(Ljava/lang/String;Ljava/util/List;Lcom/haima/hmcp/listeners/OnContronListener;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public getOperateType()Lcom/haima/hmcp/widgets/beans/VirtualOperateType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 2
    .line 3
    sget-object v1, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mDefaultOperateType:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->NONE:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method protected initModelByStreamType(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "WEBRTC"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->mStreamType:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/haima/hmcp/rtc/widgets/RtcModel;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/haima/hmcp/rtc/widgets/RtcModel;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpModel;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 25
    .line 26
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 29
    .line 30
    invoke-interface {v0, p1, p0, v1}, Lcom/haima/hmcp/listeners/IBaseStreamModel;->init(Landroid/content/Context;Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/business/HmcpRequest;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mColorMode:Lcom/haima/hmcp/beans/ColorMode;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/listeners/IBaseStreamModel;->setColorMode(Lcom/haima/hmcp/beans/ColorMode;Lcom/haima/hmcp/listeners/ColorModeListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public queryControlUsers(Lcom/haima/hmcp/listeners/OnContronListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "queryControlUsers() "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ";"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCid()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 38
    .line 39
    sget-object v1, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 40
    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 58
    .line 59
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/haima/hmcp/HmcpManager;->getCloudId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1, p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->queryX86ControlInfo(Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public remoteCapture(Lcom/haima/hmcp/beans/RemoteCaptureParameters;Lcom/haima/hmcp/listeners/RemoteCaptureListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/HmcpVideoViewImplBase;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "remoteCapture()"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "; "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCid()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 38
    .line 39
    sget-object v1, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 40
    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    .line 57
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 58
    .line 59
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->remoteCapture(Lcom/haima/hmcp/beans/RemoteCaptureParameters;Lcom/haima/hmcp/listeners/RemoteCaptureListener;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public sendEvent([B)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/IBaseStreamModel;->sendEvent([B)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
