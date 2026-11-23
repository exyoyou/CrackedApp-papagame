.class public Lorg/webrtc/haima/HmRtcAdapterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/webrtc/haima/AppRTCClient$SignalingEvents;
.implements Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;
.implements Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;
.implements Lorg/hmwebrtc/ShareStreamingManager$KeyFrameRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmRtcAdapterImpl$HmCallbackRunnable;,
        Lorg/webrtc/haima/HmRtcAdapterImpl$SignalV2ReleaseRunnable;,
        Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;,
        Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;
    }
.end annotation


# static fields
.field private static final MEDIA_CODEC_RENDER_MODE_SURFACETEXTURE:I = 0x1

.field private static final MEDIA_CODEC_RENDER_MODE_SURFACEVIEW:I = 0x2

.field private static final MEDIA_CODEC_RENDER_MODE_YUV:I = 0x0

.field public static final MSG_CALLBACK_FRAME_RESOLUTION:I = 0x10

.field public static final MSG_CONNECT_FAILED_INTERNAL:I = 0x1

.field public static final MSG_ON_ACCPROXY_CONNECT_STATE_CHANGE:I = 0x32

.field public static final MSG_ON_CHANNEL_CONNECTED:I = 0x8

.field public static final MSG_ON_CHANNEL_CONNECT_STATUS:I = 0x7

.field public static final MSG_ON_CHANNEL_ERROR:I = 0x6

.field public static final MSG_ON_CHANNEL_SEND_MESSAGE:I = 0x9

.field public static final MSG_ON_COMMAND_CHANNEL_AVAILABLE:I = 0x3b

.field public static final MSG_ON_CONNECTED:I = 0xe

.field public static final MSG_ON_CONNECT_ROOM:I = 0x2

.field public static final MSG_ON_DISCONNECTED:I = 0xf

.field public static final MSG_ON_ICE_CANDIDATE:I = 0xc

.field public static final MSG_ON_ICE_CANDIDATES_REMOVED:I = 0xd

.field public static final MSG_ON_LOCAL_DESCRIPTION_CREATED:I = 0xa

.field public static final MSG_ON_LOCAL_DESCRIPTION_SET:I = 0xb

.field public static final MSG_ON_RECV_COMMAND_BIN:I = 0x39

.field public static final MSG_ON_RECV_COMMAND_TEXT:I = 0x3a

.field public static final MSG_ON_REMOTE_DESCRIPTION:I = 0x3

.field public static final MSG_ON_REMOTE_ICE_CANDIDATE:I = 0x4

.field public static final MSG_ON_REMOTE_ICE_CANDIDATES_REMOVED:I = 0x5

.field public static final MSG_ON_SINGALEV2_CONNECTED:I = 0x1f

.field public static final MSG_ON_SINGALEV2_CONNECT_STATUS:I = 0x1e

.field public static final MSG_ON_STREAMER_BWE:I = 0x35

.field public static final MSG_ON_SWITCH_CONNECT_CALLBACK:I = 0x33

.field public static final MSG_ON_SWITCH_DISPLAY_VIEW:I = 0x13

.field public static final MSG_ON_SWITCH_TO_RTMP:I = 0x28

.field public static final MSG_ON_VIDEO_FRAME_ELAPSED_TIME:I = 0x34

.field public static final MSG_ON_X86_INPUT_CLOSE:I = 0x37

.field public static final MSG_ON_X86_INPUT_OPEN:I = 0x36

.field public static final MSG_ON_X86_INPUT_PONG:I = 0x38

.field public static final MSG_REMOTE_VIDEO_ENCODE_ADAPTATION:I = 0x12

.field public static final MSG_REPORT_ERROR:I = 0x0

.field public static final MSG_THROW_EXCEPTION_MSG:I = 0x11

.field public static final ON_CHANNEL_SEND_MESSAGE_TO:Ljava/lang/String; = "to"

.field public static final ON_CHANNEL_SEND_MESSAGE_TYPE:Ljava/lang/String; = "type"

.field private static final STAT_CALLBACK_PERIOD:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "HmRtcAdapterImpl"

.field private static final VideoFrameRateForLowPerformanceDevice:I = 0x1e

.field private static final VideoHeightForLowPerformanceDevice:I = 0x1e0

.field private static final VideoMinBitrate:I = 0x5

.field private static final VideoWidthForLowPerformanceDevice:I = 0x280

.field private static mInstance:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field private static mInstanceLock:Ljava/lang/Object;

.field private static sgCountlyEventRecorderCallback:Lorg/webrtc/haima/HmCountlyEventRecorderCallback;


# instance fields
.field private TIMEOUT_WEBSOCKET_CHECK:I

.field private actualNetJitterMs:I

.field private appRtcClient:Lorg/webrtc/haima/SocketIORTCClient;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private callStartedTimeMs:J

.field currentConnectStatus:Ljava/lang/Boolean;

.field private eglRendererErrorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

.field private gsCallback:Lorg/webrtc/haima/listeners/HmGSCallback;

.field private iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field private imageRotationDegree:I

.field private isCalled:Z

.field private isEnableViewSwitch:Z

.field private isPlaying:Z

.field private isReceivedStreamerAvDelayInfo:Z

.field lastRtt:J

.field private mAlreadyRecvOfferSdp:Z

.field private mAlreadyRecvRemoteCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheAccProxyIp:Ljava/lang/String;

.field private mCacheAccProxyPW:Ljava/lang/String;

.field private mCacheAccProxyPort:I

.field private mCacheAccProxyUser:Ljava/lang/String;

.field private mCacheSwitchToCellularConnection:Z

.field private mCameraConfig:Lorg/webrtc/haima/beans/CameraConfig;

.field private mCommandFilter:Lorg/webrtc/haima/HmRtcCommandFilter;

.field private mCommnadCallback:Lorg/webrtc/haima/HmRtcCommandFilter$Listener;

.field mCommnadThread:Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

.field private mFrameHeigh:J

.field private mFrameWidth:J

.field private mGSUrl:Ljava/lang/String;

.field private mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

.field private mHmBandWidthController:Lorg/webrtc/haima/HmBandWidthController;

.field private mIoOptions:Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;

.field private mJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

.field private mJankTool:Lorg/webrtc/haima/JankStatisticsTool;

.field private mLocalPreviewRenderer:Lorg/hmwebrtc/VideoSink;

.field private mMainHandler:Landroid/os/Handler;

.field private mMainHandlerLock:Ljava/lang/Object;

.field private mNativeJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

.field private mOperationDelayReport:Lorg/webrtc/haima/HmOperationDelayReport;

.field private mPlayerCallback:Lorg/webrtc/haima/HmPlayerCallback;

.field private mPlayerCallbackLock:Ljava/lang/Object;

.field private mPrevSignalV2Url:Ljava/lang/String;

.field private mRealGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

.field private mRoomId:Ljava/lang/String;

.field private mRtcDisconnected:Z

.field private mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

.field private mSignalHttpSwitchToSignalV1V2Lock:Ljava/lang/Object;

.field private mStreamerCallback:Lorg/webrtc/haima/HmStreamerCallback;

.field private mStreamerCallbackLock:Ljava/lang/Object;

.field private mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

.field private mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

.field private mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

.field private mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

.field private mWSClientCheckRunable:Ljava/lang/Runnable;

.field private mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

.field private maxNetJitterCounts:I

.field private maxNetJitterMs:I

.field myself:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field private owner:I

.field private peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private remoteProxyRenderer:Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

.field private remoteSinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/VideoSink;",
            ">;"
        }
    .end annotation
.end field

.field private final renderEventCallback:Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;

.field private resolutionChangedTime:J

.field private roomConnectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

.field private sMainHandler:Landroid/os/Handler;

.field final statRunnable:Ljava/lang/Runnable;

.field private statsHandlerLock:Ljava/lang/Object;

.field private statsThreadHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private streamerWeaklyInfoCount:I

.field private viewSwitchHappened:Z

.field private weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

.field private weaklyNetworkReportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mInstanceLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandlerLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mStreamerCallbackLock:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallbackLock:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSignalHttpSwitchToSignalV1V2Lock:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->iceServers:Ljava/util/List;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/Object;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->statsHandlerLock:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$1;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$1;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->statRunnable:Ljava/lang/Runnable;

    .line 52
    .line 53
    sget-object v0, Lorg/webrtc/haima/beans/GamePlatformType;->ARM:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 54
    .line 55
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 56
    .line 57
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRealGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 58
    .line 59
    const/16 v0, 0x3e8

    .line 60
    .line 61
    iput v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TIMEOUT_WEBSOCKET_CHECK:I

    .line 62
    .line 63
    const-string v0, ""

    .line 64
    .line 65
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPrevSignalV2Url:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mAlreadyRecvRemoteCandidates:Ljava/util/List;

    .line 73
    .line 74
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-direct {v0, p0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/webrtc/haima/HmRtcAdapterImpl$1;)V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->renderEventCallback:Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;

    .line 81
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReportList:Ljava/util/ArrayList;

    .line 88
    .line 89
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$2;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$2;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->eglRendererErrorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

    .line 95
    .line 96
    iput-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->myself:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 97
    .line 98
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$5;

    .line 99
    .line 100
    invoke-direct {v0, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$5;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 101
    .line 102
    .line 103
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWSClientCheckRunable:Ljava/lang/Runnable;

    .line 104
    .line 105
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 106
    .line 107
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->currentConnectStatus:Ljava/lang/Boolean;

    .line 108
    .line 109
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$23;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$23;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCommnadCallback:Lorg/webrtc/haima/HmRtcCommandFilter$Listener;

    .line 115
    .line 116
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$24;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$24;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCommnadThread:Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;

    .line 122
    .line 123
    return-void
.end method

.method private CreateIceServers(Ljava/lang/String;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, ","

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    array-length v0, p1

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_5

    .line 13
    .line 14
    aget-object v2, p1, v1

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const-string v3, "stun:"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    const-string v3, "stun"

    .line 36
    .line 37
    const-string v4, "turn"

    .line 38
    .line 39
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    :cond_2
    const-string v3, "@"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_4

    .line 50
    .line 51
    const-string v3, "turn:"

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    const-string v3, "transport=tcp"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_4

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-direct {p0, v3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->createIceServer(Ljava/lang/String;)Lorg/hmwebrtc/PeerConnection$IceServer;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    if-nez v3, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->iceServers:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    sget-object v3, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v5, "add turnServerUrl = "

    .line 91
    .line 92
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v3, v2}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_5
    return-void
.end method

.method private ParseVideoTimingFrameInfo(Ljava/lang/String;)V
    .locals 31

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, ",videoRenderTimeMs:"

    .line 4
    .line 5
    :try_start_0
    const-string v2, "\\,"

    .line 6
    .line 7
    move-object/from16 v3, p1

    .line 8
    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    array-length v3, v2

    .line 16
    const/16 v4, 0x10

    .line 17
    .line 18
    if-lt v3, v4, :cond_2

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    aget-object v3, v2, v3

    .line 22
    .line 23
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    const/4 v5, 0x1

    .line 28
    aget-object v5, v2, v5

    .line 29
    .line 30
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    const/4 v7, 0x2

    .line 35
    aget-object v7, v2, v7

    .line 36
    .line 37
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    const/4 v9, 0x3

    .line 42
    aget-object v9, v2, v9

    .line 43
    .line 44
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v9

    .line 48
    const/4 v11, 0x4

    .line 49
    aget-object v11, v2, v11

    .line 50
    .line 51
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v11

    .line 55
    const/4 v13, 0x5

    .line 56
    aget-object v13, v2, v13

    .line 57
    .line 58
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v13

    .line 62
    const/4 v15, 0x6

    .line 63
    aget-object v15, v2, v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 64
    .line 65
    move-object/from16 v16, v0

    .line 66
    .line 67
    :try_start_1
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    const/4 v15, 0x7

    .line 72
    aget-object v15, v2, v15

    .line 73
    .line 74
    move-wide/from16 v17, v0

    .line 75
    .line 76
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    const/16 v15, 0x8

    .line 81
    .line 82
    aget-object v15, v2, v15

    .line 83
    .line 84
    move-wide/from16 v19, v0

    .line 85
    .line 86
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    const/16 v15, 0x9

    .line 91
    .line 92
    aget-object v15, v2, v15

    .line 93
    .line 94
    move-wide/from16 v21, v0

    .line 95
    .line 96
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    const/16 v15, 0xa

    .line 101
    .line 102
    aget-object v15, v2, v15

    .line 103
    .line 104
    move-wide/from16 v23, v0

    .line 105
    .line 106
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    const/16 v15, 0xb

    .line 111
    .line 112
    aget-object v15, v2, v15

    .line 113
    .line 114
    move-wide/from16 v25, v0

    .line 115
    .line 116
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    const/16 v15, 0xc

    .line 121
    .line 122
    aget-object v15, v2, v15

    .line 123
    .line 124
    move-wide/from16 v27, v0

    .line 125
    .line 126
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v0

    .line 130
    const/16 v15, 0xd

    .line 131
    .line 132
    aget-object v15, v2, v15

    .line 133
    .line 134
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 135
    .line 136
    .line 137
    const/16 v15, 0xe

    .line 138
    .line 139
    aget-object v15, v2, v15

    .line 140
    .line 141
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 142
    .line 143
    .line 144
    const/16 v15, 0xf

    .line 145
    .line 146
    aget-object v2, v2, v15

    .line 147
    .line 148
    move-wide/from16 v29, v0

    .line 149
    .line 150
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 151
    .line 152
    .line 153
    move-result-wide v0

    .line 154
    sget-object v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 155
    .line 156
    iget-boolean v2, v2, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->isDebugLog:Z

    .line 157
    .line 158
    if-eqz v2, :cond_0

    .line 159
    .line 160
    sget-object v2, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 161
    .line 162
    new-instance v15, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    move-object/from16 p1, v2

    .line 168
    .line 169
    const-string v2, "videoRtpTimestamp:"

    .line 170
    .line 171
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string v2, ",videoCaptureTimeMs:"

    .line 178
    .line 179
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    const-string v2, ",videoEncodeStartMs:"

    .line 186
    .line 187
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v2, ",videoEncodeFinishMs:"

    .line 194
    .line 195
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v2, ",videoPacketizationFinishMs:"

    .line 202
    .line 203
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v2, ",videoPacerExitMs:"

    .line 210
    .line 211
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v2, ",videoNetworkTimestampMs:"

    .line 218
    .line 219
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    move-wide/from16 v2, v17

    .line 223
    .line 224
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v2, ",videoNetwork2TimestampMs:"

    .line 228
    .line 229
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    move-wide/from16 v2, v19

    .line 233
    .line 234
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v2, ",videoReceiveStartMs:"

    .line 238
    .line 239
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    move-wide/from16 v2, v21

    .line 243
    .line 244
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v2, ",videoReceiveFinishMs:"

    .line 248
    .line 249
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    move-wide/from16 v2, v23

    .line 253
    .line 254
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const-string v2, ",videoDecodeStartMs:"

    .line 258
    .line 259
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    move-wide/from16 v2, v25

    .line 263
    .line 264
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string v2, ",videoDecodeFinishMs:"

    .line 268
    .line 269
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    move-wide/from16 v2, v27

    .line 273
    .line 274
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    move-object/from16 v4, v16

    .line 278
    .line 279
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    move-wide/from16 v11, v29

    .line 283
    .line 284
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v4, ",videoDecodeDelayMs:"

    .line 294
    .line 295
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v4, "IntervalFromVideoCaptureToDecoded:"

    .line 302
    .line 303
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    sub-long v11, v2, v5

    .line 307
    .line 308
    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v4

    .line 315
    move-object/from16 v11, p1

    .line 316
    .line 317
    invoke-static {v11, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    goto :goto_0

    .line 321
    :cond_0
    move-wide/from16 v2, v27

    .line 322
    .line 323
    :goto_0
    sub-long v11, v7, v5

    .line 324
    .line 325
    sub-long/2addr v9, v7

    .line 326
    sub-long/2addr v2, v5

    .line 327
    sget-object v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 328
    .line 329
    iget v5, v4, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->videoFromCapToDecodedThreshold:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 330
    .line 331
    mul-int/lit16 v5, v5, 0x3e8

    .line 332
    .line 333
    int-to-long v5, v5

    .line 334
    cmp-long v7, v2, v5

    .line 335
    .line 336
    if-lez v7, :cond_1

    .line 337
    .line 338
    const-wide/16 v2, -0x1

    .line 339
    .line 340
    :cond_1
    move-object/from16 v5, p0

    .line 341
    .line 342
    :try_start_2
    iget-object v6, v5, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 343
    .line 344
    const-string v7, "video capture delay"

    .line 345
    .line 346
    long-to-int v8, v11

    .line 347
    iget-object v4, v4, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoCaptureParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 348
    .line 349
    invoke-static {v7, v8, v4}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    .line 350
    .line 351
    .line 352
    move-result v4

    .line 353
    invoke-virtual {v6, v4}, Lorg/webrtc/haima/HmFrameDelayInfo;->setVideoCaptureDelay(I)V

    .line 354
    .line 355
    .line 356
    iget-object v4, v5, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 357
    .line 358
    const-string v6, "video encode delay"

    .line 359
    .line 360
    long-to-int v7, v9

    .line 361
    sget-object v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 362
    .line 363
    iget-object v8, v8, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoEncodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 364
    .line 365
    invoke-static {v6, v7, v8}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    .line 366
    .line 367
    .line 368
    move-result v6

    .line 369
    invoke-virtual {v4, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setVideoEncodeDelay(I)V

    .line 370
    .line 371
    .line 372
    iget-object v4, v5, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 373
    .line 374
    const-string v6, "video decode delay"

    .line 375
    .line 376
    long-to-int v1, v0

    .line 377
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 378
    .line 379
    iget-object v0, v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoDecodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 380
    .line 381
    invoke-static {v6, v1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    invoke-virtual {v4, v0}, Lorg/webrtc/haima/HmFrameDelayInfo;->setVideoDecodeDelay(I)V

    .line 386
    .line 387
    .line 388
    iget-object v0, v5, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 389
    .line 390
    long-to-int v1, v2

    .line 391
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmFrameDelayInfo;->setIntervalFromVideoCaptureToDecoded(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 392
    .line 393
    .line 394
    goto :goto_2

    .line 395
    :catch_0
    move-exception v0

    .line 396
    goto :goto_1

    .line 397
    :catch_1
    move-exception v0

    .line 398
    move-object/from16 v5, p0

    .line 399
    .line 400
    goto :goto_1

    .line 401
    :cond_2
    move-object v5, v1

    .line 402
    goto :goto_2

    .line 403
    :catch_2
    move-exception v0

    .line 404
    move-object v5, v1

    .line 405
    :goto_1
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 406
    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    const-string v3, "ParseTimingFrameInfo Exception:"

    .line 413
    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    :goto_2
    return-void
.end method

.method private UpdateAudioDeviceState()V
    .locals 15

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->currentConnectStatus:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/content/Context;

    .line 21
    .line 22
    :goto_0
    if-nez v0, :cond_2

    .line 23
    .line 24
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v1, "Fatal error: context is null when getAudioDeviceState."

    .line 27
    .line 28
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x2fa8

    .line 32
    .line 33
    const-string v1, "context is null when getAudioDeviceState"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 39
    .line 40
    const-string v1, "aaaaaaaaaaa"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmFrameDelayInfo;->setAudioDeviceState(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    const-string v1, "audio"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/media/AudioManager;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const-string v2, "1"

    .line 59
    .line 60
    const-string v3, "0"

    .line 61
    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    move-object v1, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    move-object v1, v3

    .line 67
    :goto_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    move-object v4, v2

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move-object v4, v3

    .line 76
    :goto_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_5

    .line 81
    .line 82
    move-object v5, v2

    .line 83
    goto :goto_3

    .line 84
    :cond_5
    move-object v5, v3

    .line 85
    :goto_3
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    if-eqz v7, :cond_6

    .line 92
    .line 93
    move-object v7, v2

    .line 94
    goto :goto_4

    .line 95
    :cond_6
    move-object v7, v3

    .line 96
    :goto_4
    iget-object v8, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 97
    .line 98
    invoke-virtual {v8}, Lorg/webrtc/haima/PeerConnectionClient;->getInUsedAudioAttributes()Landroid/media/AudioAttributes;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    const-string v9, ""

    .line 103
    .line 104
    const/4 v10, 0x3

    .line 105
    if-eqz v8, :cond_7

    .line 106
    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8}, Landroid/media/AudioAttributes;->getContentType()I

    .line 116
    .line 117
    .line 118
    move-result v12

    .line 119
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    new-instance v12, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Landroid/media/AudioAttributes;->getUsage()I

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v12

    .line 145
    new-instance v13, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v8}, Landroid/media/AudioAttributes;->getFlags()I

    .line 154
    .line 155
    .line 156
    move-result v14

    .line 157
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v13

    .line 164
    const/16 v14, 0x1a

    .line 165
    .line 166
    if-lt v6, v14, :cond_8

    .line 167
    .line 168
    invoke-static {v8}, Landroidx/media/a;->a(Landroid/media/AudioAttributes;)I

    .line 169
    .line 170
    .line 171
    move-result v10

    .line 172
    goto :goto_5

    .line 173
    :cond_7
    move-object v11, v9

    .line 174
    move-object v12, v11

    .line 175
    move-object v13, v12

    .line 176
    :cond_8
    :goto_5
    const/16 v8, 0x17

    .line 177
    .line 178
    if-lt v6, v8, :cond_a

    .line 179
    .line 180
    invoke-static {v0, v10}, Lorg/hmwebrtc/audio/e0;->a(Landroid/media/AudioManager;I)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_9

    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_9
    move-object v2, v3

    .line 188
    :goto_6
    move-object v9, v2

    .line 189
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v3, "a"

    .line 202
    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 282
    .line 283
    invoke-virtual {v1, v0}, Lorg/webrtc/haima/HmFrameDelayInfo;->setAudioDeviceState(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmFrameDelayInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1000(Lorg/webrtc/haima/HmRtcAdapterImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameWidth:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1100(Lorg/webrtc/haima/HmRtcAdapterImpl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameHeigh:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1200(Lorg/webrtc/haima/HmRtcAdapterImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->statsThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1202(Lorg/webrtc/haima/HmRtcAdapterImpl;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->statsThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/WebSocketRTCClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1302(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/webrtc/haima/WebSocketRTCClient;)Lorg/webrtc/haima/WebSocketRTCClient;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->appRtcClient:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1402(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/webrtc/haima/SocketIORTCClient;)Lorg/webrtc/haima/SocketIORTCClient;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->appRtcClient:Lorg/webrtc/haima/SocketIORTCClient;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1500(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mIoOptions:Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1600(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->roomConnectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1700(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->createPeerConnectionInternal(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mAlreadyRecvOfferSdp:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1802(Lorg/webrtc/haima/HmRtcAdapterImpl;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mAlreadyRecvOfferSdp:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1900(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToUiThread(Ljava/lang/Runnable;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$200(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2000(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/PeerConnectionClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2100(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mAlreadyRecvRemoteCandidates:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2200(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/beans/GamePlatformType;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2300(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/SessionDescription;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteSdpOperate(Lorg/hmwebrtc/SessionDescription;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2400(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRoomId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2500()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mInstanceLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$2600()Lorg/webrtc/haima/HmRtcAdapterImpl;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mInstance:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$2700(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmPlayerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallback:Lorg/webrtc/haima/HmPlayerCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lorg/webrtc/haima/HmRtcAdapterImpl;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/webrtc/haima/HmRtcAdapterImpl;->receiveFrameResolution(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToStatThread(Ljava/lang/Runnable;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$700(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mStreamerCallbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lorg/webrtc/haima/HmRtcAdapterImpl;)Lorg/webrtc/haima/HmStreamerCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mStreamerCallback:Lorg/webrtc/haima/HmStreamerCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lorg/webrtc/haima/HmRtcAdapterImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGSUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private static adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 2
    .line 3
    iget-boolean v0, v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->enable:Z

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1, p2}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->calculateParameters(ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 12
    .line 13
    iget-boolean v0, v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->isDebugLog:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "original "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, " in MS:"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ",adjusted "

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    invoke-static {v0, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return p2

    .line 62
    :cond_1
    const/4 p0, 0x0

    .line 63
    return p0
.end method

.method private adjustNetJitterDelayInfo(I)I
    .locals 5

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 2
    .line 3
    iget-boolean v1, v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->enable:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    iget-object v0, v0, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mNetJitterParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 9
    .line 10
    invoke-static {p1, v0}, Lorg/webrtc/haima/HmAVDelayCloudConfig;->calculateParameters(ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sget-object v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 15
    .line 16
    iget-boolean v1, v1, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->isDebugLog:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v4, "original net jitter in MS:"

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, ",adjusted net jitter in MS:"

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->maxNetJitterMs:I

    .line 51
    .line 52
    if-le v0, p1, :cond_1

    .line 53
    .line 54
    iput v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->maxNetJitterMs:I

    .line 55
    .line 56
    iget p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->actualNetJitterMs:I

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    iput v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->actualNetJitterMs:I

    .line 61
    .line 62
    :cond_1
    iget p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->maxNetJitterCounts:I

    .line 63
    .line 64
    add-int/lit8 v0, p1, 0x1

    .line 65
    .line 66
    iput v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->maxNetJitterCounts:I

    .line 67
    .line 68
    const/4 v0, 0x4

    .line 69
    if-lt p1, v0, :cond_2

    .line 70
    .line 71
    iget p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->maxNetJitterMs:I

    .line 72
    .line 73
    iput p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->actualNetJitterMs:I

    .line 74
    .line 75
    iput v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->maxNetJitterCounts:I

    .line 76
    .line 77
    iput v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->maxNetJitterMs:I

    .line 78
    .line 79
    :cond_2
    iget p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->actualNetJitterMs:I

    .line 80
    .line 81
    return p1

    .line 82
    :cond_3
    return v2
.end method

.method private callbackFrameResolution()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameWidth:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_2

    .line 8
    .line 9
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameHeigh:J

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-eqz v4, :cond_2

    .line 14
    .line 15
    iget-boolean v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->isCalled:Z

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, "Fast resolution-> "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameWidth:J

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " * "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameHeigh:J

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    iput-boolean v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->isCalled:Z

    .line 55
    .line 56
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    move-object v1, v2

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/content/Context;

    .line 68
    .line 69
    :goto_0
    if-nez v1, :cond_1

    .line 70
    .line 71
    const-string v1, "Fatal error: context is null when callbackFrameResolution."

    .line 72
    .line 73
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    iput-wide v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->resolutionChangedTime:J

    .line 82
    .line 83
    const/16 v0, 0x10

    .line 84
    .line 85
    invoke-direct {p0, v0, v2, v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    return-void
.end method

.method private createDsDisplayView(Landroid/widget/FrameLayout;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->isEnableViewSwitch:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lorg/hmwebrtc/SurfaceViewDsRenderer;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Lorg/hmwebrtc/TextureViewDsRenderer;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v2, "onCreateDsView begin"

    .line 35
    .line 36
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Lorg/webrtc/haima/HmRtcAdapterImpl$21;

    .line 44
    .line 45
    invoke-direct {v3, p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl$21;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    .line 53
    const/16 v3, 0x11

    .line 54
    .line 55
    const/4 v4, -0x2

    .line 56
    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 67
    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    check-cast v0, Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 71
    .line 72
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    check-cast v0, Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 76
    .line 77
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 78
    .line 79
    :goto_1
    const-string p1, "onCreateDsView finish"

    .line 80
    .line 81
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-exception p1

    .line 86
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v2, "createDsDisplayView failed:"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->isEnableViewSwitch:Z

    .line 114
    .line 115
    :cond_2
    :goto_2
    return-void
.end method

.method private createIceServer(Ljava/lang/String;)Lorg/hmwebrtc/PeerConnection$IceServer;
    .locals 6

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Add conturnServerUrl = "

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
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "@"

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    array-length v2, v1

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x1

    .line 32
    if-gt v2, v4, :cond_0

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "Fatal error, coturn server url is error: "

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v3

    .line 55
    :cond_0
    aget-object v2, v1, v4

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v5, ":"

    .line 62
    .line 63
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    array-length v5, v2

    .line 68
    if-gt v5, v4, :cond_1

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "Fatal error, coturn server auth is error: "

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v3

    .line 91
    :cond_1
    new-instance p1, Lorg/hmwebrtc/PeerConnection$IceServer;

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    aget-object v1, v1, v0

    .line 95
    .line 96
    aget-object v0, v2, v0

    .line 97
    .line 98
    aget-object v2, v2, v4

    .line 99
    .line 100
    invoke-direct {p1, v1, v0, v2}, Lorg/hmwebrtc/PeerConnection$IceServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-object p1
.end method

.method private createPeerConnectionInternal(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/webrtc/haima/PeerConnectionClient;->peerconnectionCreated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "peercontion has created."

    .line 12
    .line 13
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 18
    .line 19
    iget-boolean v0, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoCallEnabled:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v1, "Call createVideoCapturer() in onConnectedToRoom."

    .line 30
    .line 31
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lorg/webrtc/haima/camera/HmCameraManager;->createVideoCapturer()Lorg/hmwebrtc/VideoCapturer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    const-string v1, ""

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lorg/hmwebrtc/PeerConnection$IceServer;

    .line 63
    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Lorg/hmwebrtc/PeerConnection$IceServer;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, "\n"

    .line 80
    .line 81
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    sget-object v2, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v4, "PeerConnection will apply iceServers: "

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    if-nez p1, :cond_4

    .line 112
    .line 113
    sget-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 114
    .line 115
    if-nez p1, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 118
    .line 119
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteSinks:Ljava/util/List;

    .line 120
    .line 121
    new-instance v1, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0, v1}, Lorg/webrtc/haima/PeerConnectionClient;->createPeerConnection(Ljava/util/List;Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 131
    .line 132
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lorg/webrtc/haima/camera/HmCameraManager;->getLocalProxyVideoSink()Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteSinks:Ljava/util/List;

    .line 141
    .line 142
    new-instance v3, Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v1, v2, v0, v3}, Lorg/webrtc/haima/PeerConnectionClient;->createPeerConnection(Lorg/hmwebrtc/VideoSink;Ljava/util/List;Lorg/hmwebrtc/VideoCapturer;Ljava/util/List;)V

    .line 148
    .line 149
    .line 150
    :goto_2
    return-void

    .line 151
    :cond_4
    sget-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 152
    .line 153
    if-nez v1, :cond_5

    .line 154
    .line 155
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 156
    .line 157
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteSinks:Ljava/util/List;

    .line 158
    .line 159
    invoke-virtual {v0, v1, p1}, Lorg/webrtc/haima/PeerConnectionClient;->createPeerConnection(Ljava/util/List;Ljava/util/List;)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_5
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 164
    .line 165
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v2}, Lorg/webrtc/haima/camera/HmCameraManager;->getLocalProxyVideoSink()Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteSinks:Ljava/util/List;

    .line 174
    .line 175
    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->createPeerConnection(Lorg/hmwebrtc/VideoSink;Ljava/util/List;Lorg/hmwebrtc/VideoCapturer;Ljava/util/List;)V

    .line 176
    .line 177
    .line 178
    :goto_3
    sget-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableShareStreaming:Z

    .line 179
    .line 180
    if-eqz p1, :cond_6

    .line 181
    .line 182
    invoke-static {}, Lorg/hmwebrtc/ShareStreamingManager;->getInstance()Lorg/hmwebrtc/ShareStreamingManager;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lorg/hmwebrtc/ShareStreamingManager;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :catch_0
    move-exception p1

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v1, "onConnectedToRoomInternal-->"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_6
    :goto_4
    return-void
.end method

.method private getLong(Ljava/lang/String;J)J
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-wide p2

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 5
    .line 6
    .line 7
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    return-wide p1

    .line 9
    :catch_0
    return-wide p2
.end method

.method private getStreamerStatLong(Ljava/lang/String;)J
    .locals 6

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long p1, v2, v4

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move-wide v0, v2

    .line 18
    :catch_0
    :goto_0
    return-wide v0
.end method

.method private initHmAdapterHandler()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "Did u forget call disconnect?"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 23
    .line 24
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    .line 25
    .line 26
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    .line 33
    .line 34
    new-instance v1, Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$3;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, p0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl$3;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Landroid/os/Looper;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->sMainHandler:Landroid/os/Handler;

    .line 55
    .line 56
    return-void
.end method

.method private initRender(Lorg/hmwebrtc/EglBase;)Lorg/hmwebrtc/VideoSink;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 2
    .line 3
    const-string v1, ",imageRotationDegree:"

    .line 4
    .line 5
    const/16 v2, 0x33e3

    .line 6
    .line 7
    const-string v3, "initRender: thread = "

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "DS render view type is SurfaceView,layout is:"

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 22
    .line 23
    invoke-virtual {v4}, Lorg/hmwebrtc/SurfaceViewDsRenderer;->getRenderLayout()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->imageRotationDegree:I

    .line 34
    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v2, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 46
    .line 47
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->renderEventCallback:Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;

    .line 48
    .line 49
    invoke-virtual {v0, v4}, Lorg/hmwebrtc/SurfaceViewDsRenderer;->init(Lorg/hmwebrtc/RendererCommon$RendererEvents;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 53
    .line 54
    sget-object v4, Lorg/hmwebrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lorg/hmwebrtc/RendererCommon$ScalingType;

    .line 55
    .line 56
    invoke-virtual {v0, v4}, Lorg/hmwebrtc/SurfaceViewDsRenderer;->setScalingType(Lorg/hmwebrtc/RendererCommon$ScalingType;)V

    .line 57
    .line 58
    .line 59
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, " ,mSurfaceDsRenderer = "

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v5, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 82
    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {v0, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v4, "render view type is SurfaceView,layout is:"

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 108
    .line 109
    invoke-virtual {v4}, Lorg/hmwebrtc/SurfaceViewRenderer;->getRenderLayout()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->imageRotationDegree:I

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v2, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 132
    .line 133
    if-nez v0, :cond_1

    .line 134
    .line 135
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 136
    .line 137
    sget-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/SurfaceViewRenderer;->setUseDirectSurface(Z)V

    .line 140
    .line 141
    .line 142
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 143
    .line 144
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->eglRendererErrorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/SurfaceViewRenderer;->setErrorCallback(Lorg/hmwebrtc/EglRenderer$ErrorCallback;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 150
    .line 151
    invoke-interface {p1}, Lorg/hmwebrtc/EglBase;->getEglBaseContext()Lorg/hmwebrtc/EglBase$Context;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->renderEventCallback:Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;

    .line 156
    .line 157
    invoke-virtual {v0, p1, v1}, Lorg/hmwebrtc/SurfaceViewRenderer;->init(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 161
    .line 162
    sget-object v0, Lorg/hmwebrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lorg/hmwebrtc/RendererCommon$ScalingType;

    .line 163
    .line 164
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/SurfaceViewRenderer;->setScalingType(Lorg/hmwebrtc/RendererCommon$ScalingType;)V

    .line 165
    .line 166
    .line 167
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 168
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v1, " ,mSurfaceRenderer = "

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 202
    .line 203
    return-object p1

    .line 204
    :cond_2
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 205
    .line 206
    if-eqz v0, :cond_3

    .line 207
    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v4, "DS render view type is TextureView,layout is:"

    .line 214
    .line 215
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 219
    .line 220
    invoke-virtual {v4}, Lorg/hmwebrtc/TextureViewDsRenderer;->getRenderLayout()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    iget v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->imageRotationDegree:I

    .line 231
    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v2, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 243
    .line 244
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->renderEventCallback:Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;

    .line 245
    .line 246
    invoke-virtual {v0, v4}, Lorg/hmwebrtc/TextureViewDsRenderer;->init(Lorg/hmwebrtc/RendererCommon$RendererEvents;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 250
    .line 251
    sget-object v4, Lorg/hmwebrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lorg/hmwebrtc/RendererCommon$ScalingType;

    .line 252
    .line 253
    invoke-virtual {v0, v4}, Lorg/hmwebrtc/TextureViewDsRenderer;->setScalingType(Lorg/hmwebrtc/RendererCommon$ScalingType;)V

    .line 254
    .line 255
    .line 256
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 257
    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 267
    .line 268
    .line 269
    move-result-object v5

    .line 270
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string v5, " ,mTextureDsRenderer = "

    .line 274
    .line 275
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    iget-object v5, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 279
    .line 280
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-static {v0, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_3
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 291
    .line 292
    if-eqz v0, :cond_5

    .line 293
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string v4, "render view type is TextureView,layout is:"

    .line 300
    .line 301
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 305
    .line 306
    invoke-virtual {v4}, Lorg/hmwebrtc/TextureViewRenderer;->getRenderLayout()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    iget v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->imageRotationDegree:I

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v2, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 329
    .line 330
    if-nez v0, :cond_4

    .line 331
    .line 332
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 333
    .line 334
    sget-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    .line 335
    .line 336
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/TextureViewRenderer;->setUseDirectSurface(Z)V

    .line 337
    .line 338
    .line 339
    :cond_4
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 340
    .line 341
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->eglRendererErrorCallback:Lorg/hmwebrtc/EglRenderer$ErrorCallback;

    .line 342
    .line 343
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/TextureViewRenderer;->setErrorCallback(Lorg/hmwebrtc/EglRenderer$ErrorCallback;)V

    .line 344
    .line 345
    .line 346
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 347
    .line 348
    invoke-interface {p1}, Lorg/hmwebrtc/EglBase;->getEglBaseContext()Lorg/hmwebrtc/EglBase$Context;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->renderEventCallback:Lorg/webrtc/haima/HmRtcAdapterImpl$RenderEventCallback;

    .line 353
    .line 354
    invoke-virtual {v0, p1, v1}, Lorg/hmwebrtc/TextureViewRenderer;->init(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;)V

    .line 355
    .line 356
    .line 357
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 358
    .line 359
    sget-object v0, Lorg/hmwebrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lorg/hmwebrtc/RendererCommon$ScalingType;

    .line 360
    .line 361
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/TextureViewRenderer;->setScalingType(Lorg/hmwebrtc/RendererCommon$ScalingType;)V

    .line 362
    .line 363
    .line 364
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 365
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 375
    .line 376
    .line 377
    move-result-object v1

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    const-string v1, " ,mTextureRenderer = "

    .line 382
    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 387
    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 399
    .line 400
    return-object p1

    .line 401
    :cond_5
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 402
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v1, " ,return null"

    .line 419
    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    const/4 p1, 0x0

    .line 431
    return-object p1
.end method

.method private initRenderInstance(Lorg/hmwebrtc/VideoSink;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 6
    .line 7
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Lorg/hmwebrtc/TextureViewRenderer;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    check-cast p1, Lorg/hmwebrtc/TextureViewRenderer;

    .line 15
    .line 16
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method private internalThrowExceptionMsg(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    move-object v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/content/Context;

    .line 22
    .line 23
    :goto_0
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string p2, "Fatal error: context is null when throwExceptionMsg."

    .line 28
    .line 29
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "report_only"

    .line 39
    .line 40
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    const-string p2, "throw_exception_msg"

    .line 44
    .line 45
    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/16 p1, 0x11

    .line 49
    .line 50
    invoke-direct {p0, p1, v1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static isCountlyEventRecorderCallbackSet()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->sgCountlyEventRecorderCallback:Lorg/webrtc/haima/HmCountlyEventRecorderCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private isPossibleLeaveHttpSignal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-lez p2, :cond_0

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-lez p1, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_1
    if-eqz p3, :cond_2

    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-lez p3, :cond_2

    .line 32
    .line 33
    const/4 p3, 0x1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    const/4 p3, 0x0

    .line 36
    :goto_2
    if-eqz p2, :cond_3

    .line 37
    .line 38
    if-nez p1, :cond_4

    .line 39
    .line 40
    if-eqz p3, :cond_3

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    const/4 v0, 0x0

    .line 44
    :cond_4
    :goto_3
    return v0
.end method

.method public static nativeCallbackDirectly(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mInstanceLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mInstance:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 5
    .line 6
    iget-object v1, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string p1, "Adapter was not init or disconnected."

    .line 13
    .line 14
    invoke-static {p0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v2, Lorg/webrtc/haima/HmRtcAdapterImpl$HmCallbackRunnable;

    .line 20
    .line 21
    invoke-direct {v2, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$HmCallbackRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "nativeCallbackDirectly Exception:"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {p1, p0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method

.method private overrideConfiguration()V
    .locals 13

    .line 1
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "overrideConfiguration: rtcUseDirectSurfaceView forcedly value change from false to true."

    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/SurfaceViewRenderer;->setUseTextureCloningFlag(Z)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v2, "overrideConfiguration: TextureCloningFlag of mSurfaceRenderer is set to false."

    .line 26
    .line 27
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/TextureViewRenderer;->setUseTextureCloningFlag(Z)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "overrideConfiguration: TextureCloningFlag of mTextureRenderer is set to false."

    .line 40
    .line 41
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lorg/webrtc/haima/camera/HmCameraManager;->getHmCameraSettings()Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lorg/webrtc/haima/camera/HmCameraSettings;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {v0}, Lorg/webrtc/haima/camera/HmCameraSettings;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-virtual {v0}, Lorg/webrtc/haima/camera/HmCameraSettings;->getFrameRate()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lorg/webrtc/haima/camera/HmCameraManager;->getMinBitrate()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4}, Lorg/webrtc/haima/camera/HmCameraManager;->getMaxBitrate()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const/16 v5, 0x280

    .line 81
    .line 82
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    const/16 v6, 0x1e0

    .line 87
    .line 88
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    const/16 v7, 0x1e

    .line 93
    .line 94
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    mul-int v8, v5, v6

    .line 99
    .line 100
    mul-int v8, v8, v7

    .line 101
    .line 102
    int-to-float v8, v8

    .line 103
    mul-int v9, v1, v2

    .line 104
    .line 105
    mul-int v9, v9, v0

    .line 106
    .line 107
    int-to-float v9, v9

    .line 108
    div-float/2addr v8, v9

    .line 109
    int-to-float v9, v3

    .line 110
    mul-float v9, v9, v8

    .line 111
    .line 112
    float-to-int v9, v9

    .line 113
    const/4 v10, 0x5

    .line 114
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    int-to-float v11, v4

    .line 119
    mul-float v11, v11, v8

    .line 120
    .line 121
    float-to-int v8, v11

    .line 122
    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    sget-object v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 127
    .line 128
    new-instance v11, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v12, "overrideConfiguration: VideoCapture&Encode "

    .line 134
    .line 135
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v1, "x"

    .line 142
    .line 143
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v2, ", "

    .line 150
    .line 151
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v0, "fps, ["

    .line 158
    .line 159
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v3, "kbps, "

    .line 166
    .line 167
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v4, "kbps]  -> "

    .line 174
    .line 175
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v0, "kbps] "

    .line 206
    .line 207
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v10, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v9}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setCameraMinBitrate(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, v8}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setCameraMaxBitrate(I)V

    .line 221
    .line 222
    .line 223
    new-instance v0, Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 224
    .line 225
    invoke-direct {v0, v5, v6, v7}, Lorg/webrtc/haima/camera/HmCameraSettings;-><init>(III)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->setCameraCaptureFormat(Lorg/webrtc/haima/camera/HmCameraSettings;)V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method private parseRTCStatsReport(Lorg/hmwebrtc/RTCStatsReport;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lorg/hmwebrtc/RTCStatsReport;->getStatsMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_5

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lorg/hmwebrtc/RTCStats;

    .line 24
    .line 25
    invoke-virtual {v0}, Lorg/hmwebrtc/RTCStats;->getType()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "candidate-pair"

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Lorg/hmwebrtc/RTCStats;->getMembers()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "best_connection"

    .line 43
    .line 44
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const-string v1, "currentRoundTripTime"

    .line 67
    .line 68
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 83
    .line 84
    .line 85
    move-result-wide v1

    .line 86
    const-wide v3, 0x408f400000000000L    # 1000.0

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    mul-double v1, v1, v3

    .line 92
    .line 93
    double-to-long v1, v1

    .line 94
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 95
    .line 96
    invoke-virtual {v3, v1, v2}, Lorg/webrtc/haima/HmFrameDelayInfo;->setCurrentRoundTripTime(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_0
    nop

    .line 101
    goto :goto_0

    .line 102
    :cond_4
    :goto_1
    const-string v1, "bytesReceived"

    .line 103
    .line 104
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    .line 110
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 111
    .line 112
    const/4 v2, 0x1

    .line 113
    invoke-virtual {v1, v0, v2}, Lorg/webrtc/haima/HmFrameDelayInfo;->updateTotalBitrate(Ljava/util/Map;I)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_5
    return-void
.end method

.method private parseStateIntoDelayInfo([Lorg/hmwebrtc/StatsReport;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->currentConnectStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5c

    aget-object v6, v2, v5

    .line 3
    iget-object v0, v6, Lorg/hmwebrtc/StatsReport;->type:Ljava/lang/String;

    const-string v7, "googCandidatePair"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, "bytesReceived"

    if-eqz v0, :cond_a

    .line 4
    iget-object v15, v6, Lorg/hmwebrtc/StatsReport;->values:[Lorg/hmwebrtc/StatsReport$Value;

    array-length v7, v15

    const/4 v0, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v19

    move/from16 v23, v5

    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    :goto_1
    if-ge v9, v7, :cond_8

    aget-object v0, v15, v9

    .line 5
    iget-object v14, v0, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    :goto_2
    const/4 v10, -0x1

    goto :goto_3

    :sswitch_0
    const-string v10, "remoteCandidateId"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x4

    goto :goto_3

    :sswitch_1
    const-string v10, "localCandidateId"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x3

    goto :goto_3

    :sswitch_2
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    const/4 v10, 0x2

    goto :goto_3

    :sswitch_3
    const-string v10, "currentRoundTripTime"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    const/4 v10, 0x1

    goto :goto_3

    :sswitch_4
    const-string v10, "googActiveConnection"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    :goto_3
    packed-switch v10, :pswitch_data_0

    goto :goto_5

    .line 6
    :pswitch_0
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_5

    .line 7
    :pswitch_1
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    move-object/from16 v19, v0

    goto :goto_5

    .line 8
    :pswitch_2
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    goto :goto_5

    .line 9
    :pswitch_3
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v0, v0, v4

    float-to-long v4, v0

    .line 10
    iget-boolean v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->isReceivedStreamerAvDelayInfo:Z

    if-eqz v0, :cond_7

    .line 11
    :try_start_0
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-wide v11, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->lastRtt:J

    sub-long v11, v4, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    long-to-int v12, v11

    invoke-direct {v1, v12}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustNetJitterDelayInfo(I)I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/webrtc/haima/HmFrameDelayInfo;->setNetJitterDelay(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 12
    sget-object v11, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setNetJitterDelay Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_7
    :goto_4
    iput-wide v4, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->lastRtt:J

    goto :goto_5

    .line 14
    :pswitch_4
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_8
    const-wide/16 v11, 0x0

    if-eqz v16, :cond_b

    cmp-long v0, v4, v11

    if-lez v0, :cond_9

    .line 15
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v0, v4, v5}, Lorg/webrtc/haima/HmFrameDelayInfo;->setCurrentRoundTripTime(J)V

    .line 16
    :cond_9
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    const/16 v21, 0x1

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v21}, Lorg/webrtc/haima/HmFrameDelayInfo;->updateTotalBitrate(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    :cond_a
    move/from16 v23, v5

    const-wide/16 v11, 0x0

    :cond_b
    :goto_6
    const-string v0, "VideoBwe"

    .line 17
    iget-object v4, v6, Lorg/hmwebrtc/StatsReport;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 18
    iget-object v4, v6, Lorg/hmwebrtc/StatsReport;->values:[Lorg/hmwebrtc/StatsReport$Value;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v5, :cond_e

    aget-object v0, v4, v7

    .line 19
    iget-object v9, v0, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    const-string v13, "haimaSysCpu"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    const-string v13, "haimaCpu"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_8

    .line 20
    :cond_c
    :try_start_1
    iget-object v9, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/webrtc/haima/HmFrameDelayInfo;->setHaimaCpu(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 21
    sget-object v9, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setHaimaCpu Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 22
    :cond_d
    :try_start_2
    iget-object v9, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v9, v0}, Lorg/webrtc/haima/HmFrameDelayInfo;->setSystemCpu(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 23
    sget-object v9, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "haimaSysCpu Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_e
    const-string v0, "ssrc"

    .line 24
    iget-object v4, v6, Lorg/hmwebrtc/StatsReport;->type:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_19

    .line 25
    :cond_10
    iget-object v0, v6, Lorg/hmwebrtc/StatsReport;->values:[Lorg/hmwebrtc/StatsReport$Value;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    const-string v5, "audio"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v9, 0x1

    const/4 v15, 0x6

    const-string v4, "packetsReceived"

    const/16 v17, 0x5

    if-eqz v0, :cond_22

    .line 26
    iget-object v5, v6, Lorg/hmwebrtc/StatsReport;->values:[Lorg/hmwebrtc/StatsReport$Value;

    array-length v7, v5

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v7, :cond_22

    aget-object v0, v5, v11

    .line 27
    iget-object v12, v0, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_1

    :goto_a
    const/4 v12, -0x1

    goto/16 :goto_b

    :sswitch_5
    const-string v13, "googMinJitterReceived"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    goto :goto_a

    :cond_11
    const/16 v12, 0xa

    goto/16 :goto_b

    :sswitch_6
    const-string v13, "googJitterReceived"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    goto :goto_a

    :cond_12
    const/16 v12, 0x9

    goto/16 :goto_b

    :sswitch_7
    const-string v13, "haimaAudioRenderDelay"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    goto :goto_a

    :cond_13
    const/16 v12, 0x8

    goto :goto_b

    :sswitch_8
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    goto :goto_a

    :cond_14
    const/4 v12, 0x7

    goto :goto_b

    :sswitch_9
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    goto :goto_a

    :cond_15
    const/4 v12, 0x6

    goto :goto_b

    :sswitch_a
    const-string v13, "audioOutputLevel"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    goto :goto_a

    :cond_16
    const/4 v12, 0x5

    goto :goto_b

    :sswitch_b
    const-string v13, "googMedianJitterReceived"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_17

    goto :goto_a

    :cond_17
    const/4 v12, 0x4

    goto :goto_b

    :sswitch_c
    const-string v13, "googMaxJitterReceived"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    goto :goto_a

    :cond_18
    const/4 v12, 0x3

    goto :goto_b

    :sswitch_d
    const-string v13, "haimaAudioDecodeDelay"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_19

    goto :goto_a

    :cond_19
    const/4 v12, 0x2

    goto :goto_b

    :sswitch_e
    const-string v13, "googAvgJitterReceived"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1a

    goto :goto_a

    :cond_1a
    const/4 v12, 0x1

    goto :goto_b

    :sswitch_f
    const-string v13, "googDeltaJitterReceived"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1b

    goto :goto_a

    :cond_1b
    const/4 v12, 0x0

    :goto_b
    packed-switch v12, :pswitch_data_1

    goto/16 :goto_c

    .line 28
    :pswitch_5
    sget-boolean v12, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    if-eqz v12, :cond_1c

    .line 29
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "googMinJitterReceived:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_1c
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    if-eqz v12, :cond_21

    .line 31
    :try_start_3
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 32
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Lorg/webrtc/haima/WeaklyNetworkReport;->setMinJitter(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_c

    :catch_3
    move-exception v0

    .line 33
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "googMinJitterReceived Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 34
    :pswitch_6
    sget-boolean v12, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    if-eqz v12, :cond_21

    .line 35
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "googJitterReceived:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 36
    :pswitch_7
    iget-boolean v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->isReceivedStreamerAvDelayInfo:Z

    if-eqz v12, :cond_21

    .line 37
    :try_start_4
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 38
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    const-string v13, "audio render delay"

    sget-object v14, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    iget-object v14, v14, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    invoke-static {v13, v0, v14}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/webrtc/haima/HmFrameDelayInfo;->setAudioRenderDelay(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_c

    :catch_4
    move-exception v0

    .line 39
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "haimaAudioRenderDelay Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 40
    :pswitch_8
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 41
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v0, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setBytesAudioReceived(J)V

    .line 42
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v0}, Lorg/webrtc/haima/HmFrameDelayInfo;->getLastAudioBytesReceived()J

    move-result-wide v24

    sub-long v12, v12, v24

    div-long/2addr v12, v9

    .line 43
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v0, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setBitrateAudio(J)V

    goto/16 :goto_c

    .line 44
    :pswitch_9
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    if-eqz v12, :cond_21

    .line 45
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 46
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Lorg/webrtc/haima/WeaklyNetworkReport;->setReceivingAudioPackets(J)V

    .line 47
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    invoke-virtual {v0}, Lorg/webrtc/haima/WeaklyNetworkReport;->getLastReceivingAudioPackets()J

    move-result-wide v24

    sub-long v13, v13, v24

    invoke-virtual {v0, v13, v14}, Lorg/webrtc/haima/WeaklyNetworkReport;->setReceivingAudioPacketsRate(J)V

    goto/16 :goto_c

    .line 48
    :pswitch_a
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 49
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v12, v0}, Lorg/webrtc/haima/HmFrameDelayInfo;->setAudioLevel(I)V

    goto/16 :goto_c

    .line 50
    :pswitch_b
    sget-boolean v12, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    if-eqz v12, :cond_1d

    .line 51
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "googMedianJitterReceived:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1d
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    if-eqz v12, :cond_21

    .line 53
    :try_start_5
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 54
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Lorg/webrtc/haima/WeaklyNetworkReport;->setMedianJitter(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_c

    :catch_5
    move-exception v0

    .line 55
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "googMedianJitterReceived Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 56
    :pswitch_c
    sget-boolean v12, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    if-eqz v12, :cond_1e

    .line 57
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "googMaxJitterReceived:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1e
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    if-eqz v12, :cond_21

    .line 59
    :try_start_6
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Lorg/webrtc/haima/WeaklyNetworkReport;->setMaxJitter(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_c

    :catch_6
    move-exception v0

    .line 61
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "googMaxJitterReceived Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 62
    :pswitch_d
    iget-boolean v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->isReceivedStreamerAvDelayInfo:Z

    if-eqz v12, :cond_21

    .line 63
    :try_start_7
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    const-string v13, "audio decode delay"

    sget-object v14, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    iget-object v14, v14, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioDecodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    invoke-static {v13, v0, v14}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/webrtc/haima/HmFrameDelayInfo;->setAudioDecodeDelay(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_c

    :catch_7
    move-exception v0

    .line 65
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "haimaAudioDecodeDelay Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 66
    :pswitch_e
    sget-boolean v12, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    if-eqz v12, :cond_1f

    .line 67
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "googAvgJitterReceived:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1f
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    if-eqz v12, :cond_21

    .line 69
    :try_start_8
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 70
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Lorg/webrtc/haima/WeaklyNetworkReport;->setAvgJitter(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    .line 71
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "googAvgJitterReceived Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 72
    :pswitch_f
    sget-boolean v12, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    if-eqz v12, :cond_20

    .line 73
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "googDeltaJitterReceived:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_20
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    if-eqz v12, :cond_21

    .line 75
    :try_start_9
    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    int-to-long v13, v0

    invoke-virtual {v12, v13, v14}, Lorg/webrtc/haima/WeaklyNetworkReport;->setDeltaJitter(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_c

    :catch_9
    move-exception v0

    .line 77
    sget-object v12, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "googDeltaJitterReceived Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :goto_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 78
    :cond_22
    iget-object v0, v6, Lorg/hmwebrtc/StatsReport;->values:[Lorg/hmwebrtc/StatsReport$Value;

    const/4 v5, 0x3

    aget-object v0, v0, v5

    iget-object v0, v0, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    const-string v7, "video"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 79
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    const-string v7, "video render delay"

    if-eqz v0, :cond_23

    iget-boolean v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->viewSwitchHappened:Z

    if-nez v0, :cond_23

    .line 80
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFrameRateEglRender(I)V

    .line 81
    iget-boolean v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->isReceivedStreamerAvDelayInfo:Z

    if-eqz v0, :cond_24

    .line 82
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v11, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 83
    invoke-virtual {v11}, Lorg/hmwebrtc/SurfaceViewDsRenderer;->getRenderDelayMs()J

    move-result-wide v11

    long-to-int v12, v11

    sget-object v11, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    iget-object v11, v11, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 84
    invoke-static {v7, v12, v11}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/webrtc/haima/HmFrameDelayInfo;->setVideoRenderDelay(I)V

    goto :goto_d

    .line 85
    :cond_23
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_24

    .line 86
    iget-object v11, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceViewRenderer;->getEglRenderFps()I

    move-result v0

    invoke-virtual {v11, v0}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFrameRateEglRender(I)V

    .line 87
    iget-boolean v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->isReceivedStreamerAvDelayInfo:Z

    if-eqz v0, :cond_24

    .line 88
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v11, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 89
    invoke-virtual {v11}, Lorg/hmwebrtc/SurfaceViewRenderer;->getRenderDelayMs()J

    move-result-wide v11

    long-to-int v12, v11

    sget-object v11, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    iget-object v11, v11, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 90
    invoke-static {v7, v12, v11}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    move-result v11

    invoke-virtual {v0, v11}, Lorg/webrtc/haima/HmFrameDelayInfo;->setVideoRenderDelay(I)V

    .line 91
    :cond_24
    :goto_d
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    if-eqz v0, :cond_25

    iget-boolean v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->viewSwitchHappened:Z

    if-nez v0, :cond_25

    .line 92
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFrameRateEglRender(I)V

    .line 93
    iget-boolean v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->isReceivedStreamerAvDelayInfo:Z

    if-eqz v0, :cond_26

    .line 94
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 95
    invoke-virtual {v12}, Lorg/hmwebrtc/TextureViewDsRenderer;->getRenderDelayMs()J

    move-result-wide v12

    long-to-int v13, v12

    sget-object v12, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    iget-object v12, v12, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 96
    invoke-static {v7, v13, v12}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/webrtc/haima/HmFrameDelayInfo;->setVideoRenderDelay(I)V

    goto :goto_e

    :cond_25
    const/4 v11, 0x0

    .line 97
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    if-eqz v0, :cond_26

    .line 98
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v0}, Lorg/hmwebrtc/TextureViewRenderer;->getEglRenderFps()I

    move-result v0

    invoke-virtual {v12, v0}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFrameRateEglRender(I)V

    .line 99
    iget-boolean v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->isReceivedStreamerAvDelayInfo:Z

    if-eqz v0, :cond_26

    .line 100
    iget-object v0, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 101
    invoke-virtual {v12}, Lorg/hmwebrtc/TextureViewRenderer;->getRenderDelayMs()J

    move-result-wide v12

    long-to-int v13, v12

    sget-object v12, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    iget-object v12, v12, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mVideoPlayParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 102
    invoke-static {v7, v13, v12}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    move-result v7

    invoke-virtual {v0, v7}, Lorg/webrtc/haima/HmFrameDelayInfo;->setVideoRenderDelay(I)V

    .line 103
    :cond_26
    :goto_e
    iget-object v0, v6, Lorg/hmwebrtc/StatsReport;->values:[Lorg/hmwebrtc/StatsReport$Value;

    array-length v6, v0

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v6, :cond_5b

    aget-object v12, v0, v7

    .line 104
    iget-object v13, v12, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_2

    :goto_10
    const/4 v13, -0x1

    goto/16 :goto_11

    :sswitch_10
    const-string v14, "googFrameRateReceived"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_27

    goto :goto_10

    :cond_27
    const/16 v13, 0x29

    goto/16 :goto_11

    :sswitch_11
    const-string v14, "haimaDecodeVariance"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_28

    goto :goto_10

    :cond_28
    const/16 v13, 0x28

    goto/16 :goto_11

    :sswitch_12
    const-string v14, "originHaimaFreezeCount"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_29

    goto :goto_10

    :cond_29
    const/16 v13, 0x27

    goto/16 :goto_11

    :sswitch_13
    const-string v14, "googRenderDelayMs"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2a

    goto :goto_10

    :cond_2a
    const/16 v13, 0x26

    goto/16 :goto_11

    :sswitch_14
    const-string v14, "originGoogFrameRateReceived"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2b

    goto :goto_10

    :cond_2b
    const/16 v13, 0x25

    goto/16 :goto_11

    :sswitch_15
    const-string v14, "haimaFreezeDuration"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2c

    goto :goto_10

    :cond_2c
    const/16 v13, 0x24

    goto/16 :goto_11

    :sswitch_16
    const-string v14, "googFrameWidthReceived"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2d

    goto :goto_10

    :cond_2d
    const/16 v13, 0x23

    goto/16 :goto_11

    :sswitch_17
    const-string v14, "googTimingFrameInfo"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2e

    goto :goto_10

    :cond_2e
    const/16 v13, 0x22

    goto/16 :goto_11

    :sswitch_18
    const-string v14, "googDecodeMs"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2f

    goto :goto_10

    :cond_2f
    const/16 v13, 0x21

    goto/16 :goto_11

    :sswitch_19
    const-string v14, "googCodecName"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_30

    goto/16 :goto_10

    :cond_30
    const/16 v13, 0x20

    goto/16 :goto_11

    :sswitch_1a
    const-string v14, "originHaimaRenderVariance"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_31

    goto/16 :goto_10

    :cond_31
    const/16 v13, 0x1f

    goto/16 :goto_11

    :sswitch_1b
    const-string v14, "haimaFecPackets"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_32

    goto/16 :goto_10

    :cond_32
    const/16 v13, 0x1e

    goto/16 :goto_11

    :sswitch_1c
    const-string v14, "originGoogFrameRateOutput"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_33

    goto/16 :goto_10

    :cond_33
    const/16 v13, 0x1d

    goto/16 :goto_11

    :sswitch_1d
    const-string v14, "haimaRenderVariance"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_34

    goto/16 :goto_10

    :cond_34
    const/16 v13, 0x1c

    goto/16 :goto_11

    :sswitch_1e
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_35

    goto/16 :goto_10

    :cond_35
    const/16 v13, 0x1b

    goto/16 :goto_11

    :sswitch_1f
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_36

    goto/16 :goto_10

    :cond_36
    const/16 v13, 0x1a

    goto/16 :goto_11

    :sswitch_20
    const-string v14, "renderDroppedRate"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_37

    goto/16 :goto_10

    :cond_37
    const/16 v13, 0x19

    goto/16 :goto_11

    :sswitch_21
    const-string v14, "googTargetDelayMs"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_38

    goto/16 :goto_10

    :cond_38
    const/16 v13, 0x18

    goto/16 :goto_11

    :sswitch_22
    const-string v14, "googFrameRateOutput"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_39

    goto/16 :goto_10

    :cond_39
    const/16 v13, 0x17

    goto/16 :goto_11

    :sswitch_23
    const-string v14, "googJitterBufferMs"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3a

    goto/16 :goto_10

    :cond_3a
    const/16 v13, 0x16

    goto/16 :goto_11

    :sswitch_24
    const-string v14, "packetsLost"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3b

    goto/16 :goto_10

    :cond_3b
    const/16 v13, 0x15

    goto/16 :goto_11

    :sswitch_25
    const-string v14, "orginGoogFrameRateDecoded"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3c

    goto/16 :goto_10

    :cond_3c
    const/16 v13, 0x14

    goto/16 :goto_11

    :sswitch_26
    const-string v14, "googFrameRateDecoded"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3d

    goto/16 :goto_10

    :cond_3d
    const/16 v13, 0x13

    goto/16 :goto_11

    :sswitch_27
    const-string v14, "googRtt"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3e

    goto/16 :goto_10

    :cond_3e
    const/16 v13, 0x12

    goto/16 :goto_11

    :sswitch_28
    const-string v14, "originHaimaJankDuration"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3f

    goto/16 :goto_10

    :cond_3f
    const/16 v13, 0x11

    goto/16 :goto_11

    :sswitch_29
    const-string v14, "codecImplementationName"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_40

    goto/16 :goto_10

    :cond_40
    const/16 v13, 0x10

    goto/16 :goto_11

    :sswitch_2a
    const-string v14, "haimaJankCount"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_41

    goto/16 :goto_10

    :cond_41
    const/16 v13, 0xf

    goto/16 :goto_11

    :sswitch_2b
    const-string v14, "originHaimaJankCount"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_42

    goto/16 :goto_10

    :cond_42
    const/16 v13, 0xe

    goto/16 :goto_11

    :sswitch_2c
    const-string v14, "googContentType"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_43

    goto/16 :goto_10

    :cond_43
    const/16 v13, 0xd

    goto/16 :goto_11

    :sswitch_2d
    const-string v14, "googNacksSent"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_44

    goto/16 :goto_10

    :cond_44
    const/16 v13, 0xc

    goto/16 :goto_11

    :sswitch_2e
    const-string v14, "renderDroppedCount"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_45

    goto/16 :goto_10

    :cond_45
    const/16 v13, 0xb

    goto/16 :goto_11

    :sswitch_2f
    const-string v14, "framesDecoded"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_46

    goto/16 :goto_10

    :cond_46
    const/16 v13, 0xa

    goto/16 :goto_11

    :sswitch_30
    const-string v14, "googCurrentDelayMs"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_47

    goto/16 :goto_10

    :cond_47
    const/16 v13, 0x9

    goto/16 :goto_11

    :sswitch_31
    const-string v14, "haimaJankDuration"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_48

    goto/16 :goto_10

    :cond_48
    const/16 v13, 0x8

    goto/16 :goto_11

    :sswitch_32
    const-string v14, "haimaRemoteToLocalClockOffset"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_49

    goto/16 :goto_10

    :cond_49
    const/4 v13, 0x7

    goto :goto_11

    :sswitch_33
    const-string v14, "googPlisSent"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4a

    goto/16 :goto_10

    :cond_4a
    const/4 v13, 0x6

    goto :goto_11

    :sswitch_34
    const-string v14, "haimaFreezeInterVals"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4b

    goto/16 :goto_10

    :cond_4b
    const/4 v13, 0x5

    goto :goto_11

    :sswitch_35
    const-string v14, "haimaFreezeCount"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4c

    goto/16 :goto_10

    :cond_4c
    const/4 v13, 0x4

    goto :goto_11

    :sswitch_36
    const-string v14, "haimaFecRecovered"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4d

    goto/16 :goto_10

    :cond_4d
    const/4 v13, 0x3

    goto :goto_11

    :sswitch_37
    const-string v14, "googFrameHeightReceived"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4e

    goto/16 :goto_10

    :cond_4e
    const/4 v13, 0x2

    goto :goto_11

    :sswitch_38
    const-string v14, "originHaimaDecodeVariance"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4f

    goto/16 :goto_10

    :cond_4f
    const/4 v13, 0x1

    goto :goto_11

    :sswitch_39
    const-string v14, "originHaimaFreezeDuration"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_50

    goto/16 :goto_10

    :cond_50
    const/4 v13, 0x0

    :goto_11
    const-string v14, "unknow"

    packed-switch v13, :pswitch_data_2

    .line 105
    iget-object v13, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v14, v12, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    iget-object v12, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Lorg/webrtc/haima/HmFrameDelayInfo;->fillJankInfo(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_17

    .line 106
    :pswitch_10
    iget-object v12, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 107
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHmConstSmoothFps()I

    move-result v14

    if-lez v14, :cond_51

    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHmConstSmoothFps()I

    move-result v14

    move/from16 v22, v6

    int-to-long v5, v14

    cmp-long v14, v12, v5

    if-lez v14, :cond_52

    .line 108
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHmConstSmoothFps()I

    move-result v5

    int-to-long v5, v5

    goto :goto_12

    :cond_51
    move/from16 v22, v6

    :cond_52
    move-wide v5, v12

    .line 109
    :goto_12
    iget-object v14, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v14, v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFrameRateOutput(J)V

    .line 110
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setRealFrameRateOutput(J)V

    goto/16 :goto_18

    :pswitch_11
    move/from16 v22, v6

    .line 111
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setDecodeVariance(I)V

    goto/16 :goto_18

    :pswitch_12
    move/from16 v22, v6

    .line 112
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setOriginFreezeCount(J)V

    goto/16 :goto_18

    :pswitch_13
    move/from16 v22, v6

    .line 113
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setRenderTime(I)V

    goto/16 :goto_18

    :pswitch_14
    move/from16 v22, v6

    .line 114
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setOriginFrameRateReceived(I)V

    goto/16 :goto_18

    :pswitch_15
    move/from16 v22, v6

    .line 115
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFreezeDuration(I)V

    goto/16 :goto_18

    :pswitch_16
    move/from16 v22, v6

    .line 116
    sget-object v5, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "googTimingFrameInfo->"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-direct {v1, v5}, Lorg/webrtc/haima/HmRtcAdapterImpl;->ParseVideoTimingFrameInfo(Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_17
    move/from16 v22, v6

    .line 118
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setDecodeTime(I)V

    goto/16 :goto_18

    :pswitch_18
    move/from16 v22, v6

    .line 119
    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5a

    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 120
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setCodecName(Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_19
    move/from16 v22, v6

    .line 121
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setOriginRenderVariance(I)V

    goto/16 :goto_18

    :pswitch_1a
    move/from16 v22, v6

    .line 122
    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 123
    iget-object v6, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v6, v5}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFecPackets(I)V

    goto/16 :goto_18

    :pswitch_1b
    move/from16 v22, v6

    .line 124
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setOriginFrameRateRendered(I)V

    goto/16 :goto_18

    :pswitch_1c
    move/from16 v22, v6

    .line 125
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setRenderVariance(I)V

    goto/16 :goto_18

    :pswitch_1d
    move/from16 v22, v6

    .line 126
    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 127
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v12, v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setVideoBytesReceived(J)V

    .line 128
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v12}, Lorg/webrtc/haima/HmFrameDelayInfo;->getLastVideoBytesReceived()J

    move-result-wide v13

    sub-long/2addr v5, v13

    div-long/2addr v5, v9

    invoke-virtual {v12, v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setVideoBitrate(J)V

    goto/16 :goto_18

    :pswitch_1e
    move/from16 v22, v6

    .line 129
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setPacketsReceived(J)V

    goto/16 :goto_18

    :pswitch_1f
    move/from16 v22, v6

    .line 130
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_53

    const/4 v6, 0x0

    goto :goto_13

    :cond_53
    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :goto_13
    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setDiscardFrameRate(I)V

    goto/16 :goto_18

    :pswitch_20
    move/from16 v22, v6

    .line 131
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setTargetDelay(J)V

    goto/16 :goto_18

    :pswitch_21
    move/from16 v22, v6

    .line 132
    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 133
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHmConstSmoothFps()I

    move-result v6

    if-lez v6, :cond_54

    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHmConstSmoothFps()I

    move-result v6

    if-le v5, v6, :cond_54

    .line 134
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHmConstSmoothFps()I

    move-result v6

    goto :goto_14

    :cond_54
    move v6, v5

    .line 135
    :goto_14
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v12, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setGameFps(I)V

    .line 136
    iget-object v6, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v6, v5}, Lorg/webrtc/haima/HmFrameDelayInfo;->setGameRealFps(I)V

    goto/16 :goto_18

    :pswitch_22
    move/from16 v22, v6

    .line 137
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setJitterBuffer(J)V

    goto/16 :goto_18

    :pswitch_23
    move/from16 v22, v6

    .line 138
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setPacketsLost(J)V

    goto/16 :goto_18

    :pswitch_24
    move/from16 v22, v6

    .line 139
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setOriginFrameRateDecode(I)V

    goto/16 :goto_18

    :pswitch_25
    move/from16 v22, v6

    .line 140
    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 141
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHmConstSmoothFps()I

    move-result v12

    if-lez v12, :cond_55

    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHmConstSmoothFps()I

    move-result v12

    int-to-long v12, v12

    cmp-long v14, v5, v12

    if-lez v14, :cond_55

    .line 142
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHmConstSmoothFps()I

    move-result v12

    int-to-long v12, v12

    goto :goto_15

    :cond_55
    move-wide v12, v5

    .line 143
    :goto_15
    iget-object v14, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v14, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFrameRateDecode(J)V

    .line 144
    iget-object v12, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v12, v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setRealFrameRateDecode(J)V

    goto/16 :goto_18

    :pswitch_26
    move/from16 v22, v6

    .line 145
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    if-eqz v5, :cond_56

    .line 146
    sget-object v5, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "googRtt->"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_56
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    if-eqz v5, :cond_5a

    .line 148
    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 149
    iget-object v6, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    int-to-long v12, v5

    invoke-virtual {v6, v12, v13}, Lorg/webrtc/haima/WeaklyNetworkReport;->setReceivingRtt(J)V

    goto/16 :goto_18

    :pswitch_27
    move/from16 v22, v6

    .line 150
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setOriginJankDuration(J)V

    goto/16 :goto_18

    :pswitch_28
    move/from16 v22, v6

    .line 151
    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5a

    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 152
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setCodecImplementationName(Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_29
    move/from16 v22, v6

    .line 153
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setJankCount(I)V

    goto/16 :goto_18

    :pswitch_2a
    move/from16 v22, v6

    .line 154
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setOriginJankCount(J)V

    goto/16 :goto_18

    :pswitch_2b
    move/from16 v22, v6

    .line 155
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setContentType(Ljava/lang/String;)V

    goto/16 :goto_18

    :pswitch_2c
    move/from16 v22, v6

    .line 156
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setNacksSent(J)V

    goto/16 :goto_18

    :pswitch_2d
    move/from16 v22, v6

    .line 157
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_57

    const-wide/16 v12, 0x0

    goto :goto_16

    :cond_57
    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    :goto_16
    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setDiscardFrameCount(J)V

    goto/16 :goto_18

    :pswitch_2e
    move/from16 v22, v6

    .line 158
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setReciveFrameCount(I)V

    goto/16 :goto_18

    :pswitch_2f
    move/from16 v22, v6

    .line 159
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setDelayTime(J)V

    .line 160
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v5}, Lorg/webrtc/haima/HmFrameDelayInfo;->getDelayTime()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setNowDelayTime(J)V

    goto/16 :goto_18

    :pswitch_30
    move/from16 v22, v6

    .line 161
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setJankDuration(I)V

    goto/16 :goto_18

    :pswitch_31
    move/from16 v22, v6

    .line 162
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    if-eqz v5, :cond_58

    .line 163
    sget-object v5, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "haimaRemoteToLocalClockOffset: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_58
    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_5a

    .line 165
    iget-object v6, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v6, v5}, Lorg/webrtc/haima/HmFrameDelayInfo;->setRemoteToLocalClockOffset(I)V

    .line 166
    iget-object v6, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    if-eqz v6, :cond_5a

    .line 167
    invoke-virtual {v6, v5}, Lorg/webrtc/haima/WeaklyNetworkReport;->setRemoteToLocalClockOffset(I)V

    goto/16 :goto_18

    :pswitch_32
    move/from16 v22, v6

    .line 168
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setPliSent(J)V

    goto :goto_18

    :pswitch_33
    move/from16 v22, v6

    .line 169
    sget-boolean v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    if-eqz v5, :cond_59

    .line 170
    sget-object v5, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "haimaFreezeInterVals:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_59
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    if-eqz v5, :cond_5a

    .line 172
    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/WeaklyNetworkReport;->setFreezeIntervals(Ljava/lang/String;)V

    goto :goto_18

    :pswitch_34
    move/from16 v22, v6

    .line 173
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFreezeCount(I)V

    goto :goto_18

    :pswitch_35
    move/from16 v22, v6

    .line 174
    iget-object v5, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 175
    iget-object v6, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {v6, v5}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFecRecovered(I)V

    goto :goto_18

    :goto_17
    :pswitch_36
    move/from16 v22, v6

    goto :goto_18

    :pswitch_37
    move/from16 v22, v6

    .line 176
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setOriginDecodeVariance(I)V

    goto :goto_18

    :pswitch_38
    move/from16 v22, v6

    .line 177
    iget-object v5, v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-object v6, v12, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lorg/webrtc/haima/HmFrameDelayInfo;->setOriginFreezeDuration(J)V

    :cond_5a
    :goto_18
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v22

    const/4 v5, 0x3

    goto/16 :goto_f

    :cond_5b
    :goto_19
    add-int/lit8 v5, v23, 0x1

    goto/16 :goto_0

    :cond_5c
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2c95709c -> :sswitch_4
        0x31a2747 -> :sswitch_3
        0x381e736c -> :sswitch_2
        0x4ab4d193 -> :sswitch_1
        0x6be931d8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x63d6d81b -> :sswitch_f
        -0x52fe4681 -> :sswitch_e
        -0x1b6ca13d -> :sswitch_d
        -0x146d036f -> :sswitch_c
        0x5d70777 -> :sswitch_b
        0x1f27754d -> :sswitch_a
        0x36d977ec -> :sswitch_9
        0x381e736c -> :sswitch_8
        0x3c6e381b -> :sswitch_7
        0x52f36fcd -> :sswitch_6
        0x758fc4ff -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7e661677 -> :sswitch_39
        -0x6f4c5543 -> :sswitch_38
        -0x649735eb -> :sswitch_37
        -0x588dcbdd -> :sswitch_36
        -0x547fa60c -> :sswitch_35
        -0x5361c92d -> :sswitch_34
        -0x43d48e42 -> :sswitch_33
        -0x3d9f6e65 -> :sswitch_32
        -0x3b5c9ed4 -> :sswitch_31
        -0x38342450 -> :sswitch_30
        -0x3473a750 -> :sswitch_2f
        -0x28164a1b -> :sswitch_2e
        -0x1f448eb0 -> :sswitch_2d
        -0x1a0c7d8d -> :sswitch_2c
        -0x15115ac3 -> :sswitch_2b
        -0x13ad5b89 -> :sswitch_2a
        -0x101b5bed -> :sswitch_29
        -0xf1e9d5a -> :sswitch_28
        0xc580992 -> :sswitch_27
        0x172ec869 -> :sswitch_26
        0x1d1eb112 -> :sswitch_25
        0x20b712af -> :sswitch_24
        0x286f13f2 -> :sswitch_23
        0x2d342a6e -> :sswitch_22
        0x2e51c6d8 -> :sswitch_21
        0x3047f54a -> :sswitch_20
        0x36d977ec -> :sswitch_1f
        0x381e736c -> :sswitch_1e
        0x40a2a76b -> :sswitch_1d
        0x41f7b568 -> :sswitch_1c
        0x457c500b -> :sswitch_1b
        0x55663265 -> :sswitch_1a
        0x59e07ae1 -> :sswitch_19
        0x60e3fd14 -> :sswitch_18
        0x677f85b1 -> :sswitch_17
        0x6808e23a -> :sswitch_16
        0x6cd65e8f -> :sswitch_15
        0x6e7d0888 -> :sswitch_14
        0x6fe0d733 -> :sswitch_13
        0x731f413a -> :sswitch_12
        0x7bf01fc3 -> :sswitch_11
        0x7c70540e -> :sswitch_10
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_36
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method private parseStreamerInfo([[Lorg/hmwebrtc/StatsReport$Value;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "parseStreamerInfo values null"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->currentConnectStatus:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    array-length v0, p1

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v0, :cond_c

    .line 24
    .line 25
    aget-object v3, p1, v2

    .line 26
    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    sget-object v3, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v4, "parseStreamerInfo val null"

    .line 32
    .line 33
    invoke-static {v3, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_4

    .line 37
    .line 38
    :cond_2
    array-length v4, v3

    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_1
    if-ge v5, v4, :cond_b

    .line 41
    .line 42
    aget-object v6, v3, v5

    .line 43
    .line 44
    :try_start_0
    const-string v7, "available_bw_kbps"

    .line 45
    .line 46
    iget-object v8, v6, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_3

    .line 53
    .line 54
    iget-object v6, v6, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    .line 55
    .line 56
    const-wide/16 v7, -0x1

    .line 57
    .line 58
    invoke-direct {p0, v6, v7, v8}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getLong(Ljava/lang/String;J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    invoke-direct {p0, v6, v7}, Lorg/webrtc/haima/HmRtcAdapterImpl;->updateAvailableBandWidth(J)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_3

    .line 66
    .line 67
    :cond_3
    const-string v7, "inputFps"

    .line 68
    .line 69
    iget-object v8, v6, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_4

    .line 76
    .line 77
    iget-object v7, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 78
    .line 79
    iget-object v6, v6, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    .line 80
    .line 81
    invoke-direct {p0, v6}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getStreamerStatLong(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v8

    .line 85
    invoke-virtual {v7, v8, v9}, Lorg/webrtc/haima/HmFrameDelayInfo;->setStreamerInputFps(J)V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_4
    const-string v7, "sendFps"

    .line 91
    .line 92
    iget-object v8, v6, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_5

    .line 99
    .line 100
    iget-object v7, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 101
    .line 102
    iget-object v6, v6, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {p0, v6}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getStreamerStatLong(Ljava/lang/String;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v8

    .line 108
    invoke-virtual {v7, v8, v9}, Lorg/webrtc/haima/HmFrameDelayInfo;->setStreamerSendFps(J)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :cond_5
    const-string v7, "sendKbps"

    .line 114
    .line 115
    iget-object v8, v6, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    if-eqz v7, :cond_6

    .line 122
    .line 123
    iget-object v7, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 124
    .line 125
    iget-object v6, v6, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {p0, v6}, Lorg/webrtc/haima/HmRtcAdapterImpl;->getStreamerStatLong(Ljava/lang/String;)J

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    invoke-virtual {v7, v8, v9}, Lorg/webrtc/haima/HmFrameDelayInfo;->setStreamerSendKbps(J)V

    .line 132
    .line 133
    .line 134
    goto/16 :goto_3

    .line 135
    .line 136
    :cond_6
    const-string v7, "audioCaptureDelay"

    .line 137
    .line 138
    iget-object v8, v6, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 144
    if-eqz v7, :cond_7

    .line 145
    .line 146
    :try_start_1
    iget-object v7, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 147
    .line 148
    const-string v8, "audio capture delay"

    .line 149
    .line 150
    iget-object v6, v6, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    sget-object v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 157
    .line 158
    iget-object v9, v9, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioCaptureParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 159
    .line 160
    invoke-static {v8, v6, v9}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    invoke-virtual {v7, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setAudioCaptureDelay(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catch_0
    :try_start_2
    sget-object v6, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 169
    .line 170
    const-string v7, "parseStreamerInfo audioCaptureDelay value is illegal"

    .line 171
    .line 172
    invoke-static {v6, v7}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :goto_2
    const/4 v6, 0x1

    .line 176
    iput-boolean v6, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->isReceivedStreamerAvDelayInfo:Z

    .line 177
    .line 178
    goto/16 :goto_3

    .line 179
    .line 180
    :cond_7
    const-string v7, "audioEncodeDelay"

    .line 181
    .line 182
    iget-object v8, v6, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    .line 183
    .line 184
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 188
    if-eqz v7, :cond_8

    .line 189
    .line 190
    :try_start_3
    iget-object v7, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 191
    .line 192
    const-string v8, "audio encode delay"

    .line 193
    .line 194
    iget-object v6, v6, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    .line 195
    .line 196
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v6

    .line 200
    sget-object v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmRtcAvDelaySdk:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;

    .line 201
    .line 202
    iget-object v9, v9, Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayParameters;->mAudioEncodeParameters:Lorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;

    .line 203
    .line 204
    invoke-static {v8, v6, v9}, Lorg/webrtc/haima/HmRtcAdapterImpl;->adjustAvDelayInfo(Ljava/lang/String;ILorg/webrtc/haima/HmAVDelayCloudConfig$AVDelayTuneValue;)I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    invoke-virtual {v7, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->setAudioEncodeDelay(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 209
    .line 210
    .line 211
    goto :goto_3

    .line 212
    :catch_1
    :try_start_4
    sget-object v6, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 213
    .line 214
    const-string v7, "audioEncodeDelay value is illegal"

    .line 215
    .line 216
    invoke-static {v6, v7}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_3

    .line 220
    :cond_8
    const-string v7, "streamerWeaklyNet"

    .line 221
    .line 222
    iget-object v8, v6, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    if-eqz v7, :cond_a

    .line 229
    .line 230
    sget-boolean v7, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    .line 231
    .line 232
    if-eqz v7, :cond_9

    .line 233
    .line 234
    sget-object v7, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 235
    .line 236
    new-instance v8, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v9, "streamerWeaklyNet:"

    .line 242
    .line 243
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    iget-object v9, v6, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    invoke-static {v7, v8}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 256
    .line 257
    .line 258
    :cond_9
    :try_start_5
    iget-object v6, v6, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    .line 259
    .line 260
    invoke-direct {p0, v6}, Lorg/webrtc/haima/HmRtcAdapterImpl;->parseStreamerWeaklyInfo(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 261
    .line 262
    .line 263
    goto :goto_3

    .line 264
    :catch_2
    move-exception v6

    .line 265
    :try_start_6
    sget-object v7, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 266
    .line 267
    new-instance v8, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    const-string v9, "parseStreamerWeaklyInfo streamerWeaklyNet exception:"

    .line 273
    .line 274
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v6

    .line 288
    invoke-static {v7, v6}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_a
    iget-object v7, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 293
    .line 294
    iget-object v8, v6, Lorg/hmwebrtc/StatsReport$Value;->name:Ljava/lang/String;

    .line 295
    .line 296
    iget-object v6, v6, Lorg/hmwebrtc/StatsReport$Value;->value:Ljava/lang/String;

    .line 297
    .line 298
    invoke-virtual {v7, v8, v6}, Lorg/webrtc/haima/HmFrameDelayInfo;->fillJankInfo(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 299
    .line 300
    .line 301
    :catch_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 302
    .line 303
    goto/16 :goto_1

    .line 304
    .line 305
    :cond_b
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 306
    .line 307
    goto/16 :goto_0

    .line 308
    .line 309
    :cond_c
    return-void
.end method

.method private parseStreamerWeaklyInfo(Ljava/lang/String;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "parseStreamerWeaklyInfo weaklyNetworkReport null"

    .line 12
    .line 13
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {v2}, Lorg/webrtc/haima/WeaklyNetworkReport;->getRemoteToLocalClockOffset()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const v3, 0x7fffffff

    .line 22
    .line 23
    .line 24
    if-ne v2, v3, :cond_1

    .line 25
    .line 26
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "parseStreamerWeaklyInfo client has not remoteToLocalClockOffset"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    if-eqz v1, :cond_a

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_2
    iget v3, v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->streamerWeaklyInfoCount:I

    .line 45
    .line 46
    const/4 v4, 0x1

    .line 47
    add-int/2addr v3, v4

    .line 48
    iput v3, v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->streamerWeaklyInfoCount:I

    .line 49
    .line 50
    sget v5, Lorg/webrtc/haima/WeaklyNetworkReport;->START_STREAMER_WEAKLY_INFO:I

    .line 51
    .line 52
    if-gt v3, v5, :cond_3

    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    const-string v3, ","

    .line 56
    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    array-length v3, v1

    .line 62
    const/4 v5, 0x5

    .line 63
    if-lt v3, v5, :cond_9

    .line 64
    .line 65
    array-length v3, v1

    .line 66
    const/4 v6, 0x6

    .line 67
    if-le v3, v6, :cond_4

    .line 68
    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_4
    new-instance v3, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;

    .line 72
    .line 73
    const/16 v18, 0x0

    .line 74
    .line 75
    aget-object v7, v1, v18

    .line 76
    .line 77
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    int-to-long v14, v2

    .line 82
    add-long v8, v7, v14

    .line 83
    .line 84
    aget-object v2, v1, v4

    .line 85
    .line 86
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 87
    .line 88
    .line 89
    move-result-wide v10

    .line 90
    const/4 v2, 0x2

    .line 91
    aget-object v7, v1, v2

    .line 92
    .line 93
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v12

    .line 97
    const/4 v7, 0x3

    .line 98
    aget-object v7, v1, v7

    .line 99
    .line 100
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v16

    .line 104
    const/4 v7, 0x4

    .line 105
    aget-object v7, v1, v7

    .line 106
    .line 107
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v19

    .line 111
    move-object v7, v3

    .line 112
    move-wide/from16 v21, v14

    .line 113
    .line 114
    move-wide/from16 v14, v16

    .line 115
    .line 116
    move-wide/from16 v16, v19

    .line 117
    .line 118
    invoke-direct/range {v7 .. v17}, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;-><init>(JJJJJ)V

    .line 119
    .line 120
    .line 121
    array-length v7, v1

    .line 122
    if-ge v7, v6, :cond_5

    .line 123
    .line 124
    iget-object v1, v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    .line 125
    .line 126
    invoke-virtual {v1, v3}, Lorg/webrtc/haima/WeaklyNetworkReport;->addStreamerWeaklyNetInfo(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_5
    aget-object v6, v1, v5

    .line 131
    .line 132
    const-string v7, ";"

    .line 133
    .line 134
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    array-length v7, v6

    .line 139
    const/4 v8, 0x0

    .line 140
    :goto_0
    if-ge v8, v7, :cond_7

    .line 141
    .line 142
    aget-object v9, v6, v8

    .line 143
    .line 144
    const-string v10, ":"

    .line 145
    .line 146
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v9

    .line 150
    array-length v10, v9

    .line 151
    if-eq v10, v2, :cond_6

    .line 152
    .line 153
    sget-object v9, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 154
    .line 155
    const-string v10, "parseStreamerWeaklyInfo bwe bandwidth or time error"

    .line 156
    .line 157
    invoke-static {v9, v10}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    aget-object v10, v9, v18

    .line 162
    .line 163
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 164
    .line 165
    .line 166
    move-result-wide v10

    .line 167
    add-long v10, v10, v21

    .line 168
    .line 169
    aget-object v9, v9, v4

    .line 170
    .line 171
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 172
    .line 173
    .line 174
    move-result-wide v12

    .line 175
    invoke-virtual {v3, v10, v11, v12, v13}, Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;->addBweInfo(JJ)V

    .line 176
    .line 177
    .line 178
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_7
    iget-object v2, v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Lorg/webrtc/haima/WeaklyNetworkReport;->addStreamerWeaklyNetInfo(Lorg/webrtc/haima/WeaklyNetworkReport$StreamerWeaklyNetInfo;)V

    .line 184
    .line 185
    .line 186
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableVideoFrameElapsedTimeReport:Z

    .line 187
    .line 188
    if-eqz v2, :cond_8

    .line 189
    .line 190
    aget-object v1, v1, v5

    .line 191
    .line 192
    const/4 v2, 0x0

    .line 193
    const/16 v3, 0x35

    .line 194
    .line 195
    invoke-direct {v0, v3, v1, v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 196
    .line 197
    .line 198
    :cond_8
    return-void

    .line 199
    :cond_9
    :goto_2
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 200
    .line 201
    const-string v2, "parseStreamerWeaklyInfo length is not right"

    .line 202
    .line 203
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :cond_a
    :goto_3
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 208
    .line 209
    const-string v2, "parseStreamerWeaklyInfo streamerWeaklyInfo null or empty"

    .line 210
    .line 211
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method

.method private postRunnableToStatThread(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->statsHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->statsThreadHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method private postRunnableToThread(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method

.method private postRunnableToUiThread(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string v1, "Fatal error: mMainHandler is null when postRunnableToUiThread."

    .line 11
    .line 12
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->sMainHandler:Landroid/os/Handler;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method private processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandlerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const-string p2, "Fatal error: mMainHandler is null when processRunOnUiThread."

    .line 11
    .line 12
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "mMainHandler is null when processRunOnUiThread"

    .line 16
    .line 17
    const/16 p2, 0x2fa8

    .line 18
    .line 19
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->sMainHandler:Landroid/os/Handler;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->sMainHandler:Landroid/os/Handler;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p1
.end method

.method private receiveFrameResolution(JJ)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameWidth:J

    .line 2
    .line 3
    cmp-long v2, v0, p1

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameHeigh:J

    .line 8
    .line 9
    cmp-long v2, v0, p3

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->isCalled:Z

    .line 15
    .line 16
    :cond_1
    iput-wide p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameWidth:J

    .line 17
    .line 18
    iput-wide p3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameHeigh:J

    .line 19
    .line 20
    invoke-direct {p0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->callbackFrameResolution()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static recordCountlyEvent(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->sgCountlyEventRecorderCallback:Lorg/webrtc/haima/HmCountlyEventRecorderCallback;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p1, v0

    .line 26
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-interface {v1, p0, p1, v2, v3}, Lorg/webrtc/haima/HmCountlyEventRecorderCallback;->recordCountlyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    sget-object p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string p1, "recordCountlyEvent error  callback is empty "

    .line 37
    .line 38
    invoke-static {p0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "recordCountlyEvent got Exception: "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p1, p0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method

.method private remoteSdpOperate(Lorg/hmwebrtc/SessionDescription;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->gsCallback:Lorg/webrtc/haima/listeners/HmGSCallback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string p2, "gsCallback is null"

    .line 8
    .line 9
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {v0, p1, p2}, Lorg/webrtc/haima/listeners/HmGSCallback;->callBackToSaasSdk(Lorg/hmwebrtc/SessionDescription;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private renderRelease()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const-string v2, "renderRelease: thread = "

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v5, " ,mSurfaceDsRenderer = "

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v5, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 33
    .line 34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v0, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 50
    .line 51
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceViewDsRenderer;->release()V

    .line 52
    .line 53
    .line 54
    iput-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v5, " ,mSurfaceRenderer = "

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v5, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v0, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 95
    .line 96
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceViewRenderer;->release()V

    .line 97
    .line 98
    .line 99
    iput-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 100
    .line 101
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 102
    .line 103
    if-eqz v0, :cond_2

    .line 104
    .line 105
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v5, " ,mTextureDsRenderer = "

    .line 123
    .line 124
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v5, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 128
    .line 129
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-static {v0, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 145
    .line 146
    invoke-virtual {v0}, Lorg/hmwebrtc/TextureViewDsRenderer;->release()V

    .line 147
    .line 148
    .line 149
    iput-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 150
    .line 151
    :cond_2
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 152
    .line 153
    if-eqz v0, :cond_3

    .line 154
    .line 155
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 156
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v2, " ,mTextureRenderer = "

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 178
    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 190
    .line 191
    invoke-virtual {v0}, Lorg/hmwebrtc/TextureViewRenderer;->release()V

    .line 192
    .line 193
    .line 194
    iput-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 195
    .line 196
    :cond_3
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 197
    .line 198
    if-eqz v0, :cond_5

    .line 199
    .line 200
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mLocalPreviewRenderer:Lorg/hmwebrtc/VideoSink;

    .line 201
    .line 202
    instance-of v1, v0, Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 203
    .line 204
    if-eqz v1, :cond_4

    .line 205
    .line 206
    check-cast v0, Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 207
    .line 208
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceViewRenderer;->release()V

    .line 209
    .line 210
    .line 211
    iput-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mLocalPreviewRenderer:Lorg/hmwebrtc/VideoSink;

    .line 212
    .line 213
    goto :goto_0

    .line 214
    :cond_4
    instance-of v1, v0, Lorg/hmwebrtc/TextureViewRenderer;

    .line 215
    .line 216
    if-eqz v1, :cond_5

    .line 217
    .line 218
    check-cast v0, Lorg/hmwebrtc/TextureViewRenderer;

    .line 219
    .line 220
    invoke-virtual {v0}, Lorg/hmwebrtc/TextureViewRenderer;->release()V

    .line 221
    .line 222
    .line 223
    iput-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mLocalPreviewRenderer:Lorg/hmwebrtc/VideoSink;

    .line 224
    .line 225
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mJankTool:Lorg/webrtc/haima/JankStatisticsTool;

    .line 226
    .line 227
    if-eqz v0, :cond_6

    .line 228
    .line 229
    invoke-virtual {v0}, Lorg/webrtc/haima/JankStatisticsTool;->destroy()V

    .line 230
    .line 231
    .line 232
    iput-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mJankTool:Lorg/webrtc/haima/JankStatisticsTool;

    .line 233
    .line 234
    :cond_6
    return-void
.end method

.method private reportSendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string p1, "answer"

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-string v0, ""

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    :try_start_0
    const-string p1, "sdp"

    .line 14
    .line 15
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string p3, "parse answer sdp-->"

    .line 27
    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    const/16 p1, 0x33a8

    .line 46
    .line 47
    invoke-static {p1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    const-string p1, "join"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    const/16 p1, 0x33a5

    .line 60
    .line 61
    invoke-static {p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    const-string p1, "candidate"

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    :try_start_1
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    goto :goto_1

    .line 78
    :catch_1
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :goto_1
    const/16 p1, 0x33aa

    .line 83
    .line 84
    invoke-static {p1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_2
    return-void
.end method

.method public static setCountlyEventRecorderCallback(Lorg/webrtc/haima/HmCountlyEventRecorderCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->sgCountlyEventRecorderCallback:Lorg/webrtc/haima/HmCountlyEventRecorderCallback;

    .line 2
    .line 3
    return-void
.end method

.method private startCall()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->callStartedTimeMs:J

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mAlreadyRecvOfferSdp:Z

    .line 9
    .line 10
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mAlreadyRecvRemoteCandidates:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 16
    .line 17
    sget-object v1, Lorg/webrtc/haima/beans/GamePlatformType;->X86:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "creating PeerConnection by X86"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->iceServers:Ljava/util/List;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->createPeerConnectionInternal(Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {v0}, Lorg/webrtc/haima/WebSocketRTCClient;->connect()V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandlerLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWSClientCheckRunable:Ljava/lang/Runnable;

    .line 49
    .line 50
    iget v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TIMEOUT_WEBSOCKET_CHECK:I

    .line 51
    .line 52
    int-to-long v3, v3

    .line 53
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    monitor-exit v0

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :try_start_2
    throw v1

    .line 61
    :cond_2
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->appRtcClient:Lorg/webrtc/haima/SocketIORTCClient;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->roomConnectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/SocketIORTCClient;->connectToRoom(Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    .line 69
    .line 70
    :cond_3
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v2, "connectToRoom-->"

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method private updateAvailableBandWidth(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mHmBandWidthController:Lorg/webrtc/haima/HmBandWidthController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/HmBandWidthController;->onUpdateAvailableBandWidth(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public ConnectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    if-gtz p2, :cond_0

    .line 2
    .line 3
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p4, "ConnectAccProxy illegal port:"

    .line 11
    .line 12
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    return p1

    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :cond_1
    const-string p1, "127.0.0.1"

    .line 36
    .line 37
    :cond_2
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "ConnectAccProxy ip:"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, " port:"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 68
    .line 69
    const/4 v1, 0x1

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyIp:Ljava/lang/String;

    .line 73
    .line 74
    iput p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyPort:I

    .line 75
    .line 76
    iput-object p3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyUser:Ljava/lang/String;

    .line 77
    .line 78
    iput-object p4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyPW:Ljava/lang/String;

    .line 79
    .line 80
    return v1

    .line 81
    :cond_3
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/webrtc/haima/PeerConnectionClient;->ConnectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return v1
.end method

.method public DisconnectAccProxy()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "DisconnectAccProxy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/webrtc/haima/PeerConnectionClient;->DisconnectAccProxy()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const-string v0, ""

    .line 16
    .line 17
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyIp:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyPort:I

    .line 21
    .line 22
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyUser:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyPW:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method public SetOperationDelayEvent(Lorg/webrtc/haima/IOperationDelayEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mOperationDelayReport:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmOperationDelayReport;->setOperationDelayEvent(Lorg/webrtc/haima/IOperationDelayEvent;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public SwitchToCellularConnection(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheSwitchToCellularConnection:Z

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->SwitchToCellularConnection(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public changeCameraCaptureFormat(Lorg/webrtc/haima/camera/HmCameraSettings;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/camera/HmCameraManager;->changeCameraCaptureFormat(Lorg/webrtc/haima/camera/HmCameraSettings;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public connectFailedInternal(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/16 v0, 0x33a1

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/content/Context;

    .line 18
    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "Fatal error: context is null when connectFailedInternal."

    .line 24
    .line 25
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, v0, p1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public createConnect(Lorg/hmwebrtc/log/WebrtcLoggableHelp;)V
    .locals 9

    .line 1
    :try_start_0
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "create connect"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->isPlaying:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->resetStreamInfo()V

    .line 12
    .line 13
    .line 14
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcForceEgl10:Z

    .line 15
    .line 16
    invoke-static {v2}, Lorg/hmwebrtc/h;->e(Z)Lorg/hmwebrtc/EglBase;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-direct {p0, v5}, Lorg/webrtc/haima/HmRtcAdapterImpl;->initRender(Lorg/hmwebrtc/EglBase;)Lorg/hmwebrtc/VideoSink;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_9

    .line 25
    .line 26
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteProxyRenderer:Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 36
    .line 37
    :goto_0
    iget-object v6, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->sMainHandler:Landroid/os/Handler;

    .line 38
    .line 39
    invoke-virtual {v3, v2, v4, v6}, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->setTarget(Lorg/hmwebrtc/VideoSink;Lorg/hmwebrtc/VideoSink;Landroid/os/Handler;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteSinks:Ljava/util/List;

    .line 43
    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteProxyRenderer:Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    .line 47
    .line 48
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    :cond_2
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 52
    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v3, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    .line 60
    .line 61
    invoke-direct {v3}, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v5, v3}, Lorg/webrtc/haima/camera/HmCameraManager;->setLocalVideoSink(Lorg/hmwebrtc/EglBase;Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 68
    .line 69
    if-nez v2, :cond_4

    .line 70
    .line 71
    const/4 v2, 0x0

    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Landroid/content/Context;

    .line 78
    .line 79
    :goto_1
    if-nez v2, :cond_5

    .line 80
    .line 81
    const-string v3, "Context ref is null when create Connection"

    .line 82
    .line 83
    invoke-static {v0, v3}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    const/16 v3, 0x3e8

    .line 91
    .line 92
    invoke-virtual {v0, v1, v3}, Lorg/webrtc/haima/PeerConnectionClient;->enableStatsEvents(ZI)V

    .line 93
    .line 94
    .line 95
    :cond_6
    new-instance v0, Lorg/webrtc/haima/PeerConnectionClient;

    .line 96
    .line 97
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget-object v6, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 102
    .line 103
    move-object v3, v0

    .line 104
    move-object v7, p0

    .line 105
    move-object v8, p1

    .line 106
    invoke-direct/range {v3 .. v8}, Lorg/webrtc/haima/PeerConnectionClient;-><init>(Landroid/content/Context;Lorg/hmwebrtc/EglBase;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;Lorg/hmwebrtc/log/WebrtcLoggableHelp;)V

    .line 107
    .line 108
    .line 109
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 110
    .line 111
    new-instance p1, Lorg/hmwebrtc/PeerConnectionFactory$Options;

    .line 112
    .line 113
    invoke-direct {p1}, Lorg/hmwebrtc/PeerConnectionFactory$Options;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 117
    .line 118
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lorg/webrtc/haima/PeerConnectionClient;->setGamePlatform(Lorg/webrtc/haima/beans/GamePlatformType;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 124
    .line 125
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRealGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 126
    .line 127
    invoke-virtual {v0, v2}, Lorg/webrtc/haima/PeerConnectionClient;->setRealGamePlatform(Lorg/webrtc/haima/beans/GamePlatformType;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 131
    .line 132
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCommandFilter:Lorg/webrtc/haima/HmRtcCommandFilter;

    .line 133
    .line 134
    iput-object v2, v0, Lorg/webrtc/haima/PeerConnectionClient;->mCommandListener:Lorg/webrtc/haima/HmRtcCommandListener;

    .line 135
    .line 136
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->createPeerConnectionFactory(Lorg/hmwebrtc/PeerConnectionFactory$Options;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->startCall()V

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyIp:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_7

    .line 149
    .line 150
    iget p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyPort:I

    .line 151
    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 155
    .line 156
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyIp:Ljava/lang/String;

    .line 157
    .line 158
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyUser:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyPW:Ljava/lang/String;

    .line 161
    .line 162
    invoke-virtual {v0, v2, p1, v3, v4}, Lorg/webrtc/haima/PeerConnectionClient;->ConnectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_7
    iget-boolean p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheSwitchToCellularConnection:Z

    .line 166
    .line 167
    if-eqz p1, :cond_8

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->SwitchToCellularConnection(Z)V

    .line 170
    .line 171
    .line 172
    iput-boolean v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheSwitchToCellularConnection:Z

    .line 173
    .line 174
    :cond_8
    return-void

    .line 175
    :cond_9
    new-instance p1, Ljava/lang/NullPointerException;

    .line 176
    .line 177
    const-string v0, "ViewRenderer is not Null, must pass SurfaceViewRenderer or TextureViewRenderer"

    .line 178
    .line 179
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :catch_0
    move-exception p1

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v1, "create connect-->"

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Lorg/webrtc/haima/util/ExceptionUtils;->toString(Ljava/lang/Exception;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-void
.end method

.method public createHmDCDevice(Ljava/lang/String;)Lorg/webrtc/haima/HmDCDevice;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->createHmDCDevice(Ljava/lang/String;)Lorg/webrtc/haima/HmDCDevice;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public disconnect()V
    .locals 4

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Call disconnect."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->statsHandlerLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->statsThreadHandler:Landroid/os/Handler;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    new-instance v3, Lorg/webrtc/haima/HmRtcAdapterImpl$4;

    .line 16
    .line 17
    invoke-direct {v3, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$4;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    sget-object v2, Lorg/webrtc/haima/HmRtcAdapterImpl;->mInstanceLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2

    .line 27
    :try_start_1
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lorg/webrtc/haima/HmCameraWrapper;->uninstallCamera()V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    sput-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mInstance:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 36
    .line 37
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCommandFilter:Lorg/webrtc/haima/HmRtcCommandFilter;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v2}, Lorg/webrtc/haima/HmRtcCommandFilter;->uninit()V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandlerLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v3

    .line 48
    :try_start_2
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 57
    .line 58
    .line 59
    iput-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 60
    .line 61
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->appRtcClient:Lorg/webrtc/haima/SocketIORTCClient;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2}, Lorg/webrtc/haima/SocketIORTCClient;->preRelease()V

    .line 67
    .line 68
    .line 69
    :cond_3
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    .line 70
    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    iget-boolean v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRtcDisconnected:Z

    .line 74
    .line 75
    if-nez v3, :cond_4

    .line 76
    .line 77
    const-string v2, "Disconnect websocket client."

    .line 78
    .line 79
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    .line 83
    .line 84
    invoke-virtual {v2}, Lorg/webrtc/haima/WebSocketRTCClient;->disconnect()V

    .line 85
    .line 86
    .line 87
    const-string v2, "Disconnect websocket client end."

    .line 88
    .line 89
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_4
    if-eqz v2, :cond_5

    .line 96
    .line 97
    const-string v2, "Reset websocket client."

    .line 98
    .line 99
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    .line 103
    .line 104
    invoke-virtual {v2}, Lorg/webrtc/haima/WebSocketRTCClient;->reset()V

    .line 105
    .line 106
    .line 107
    const-string v2, "Reset websocket client end."

    .line 108
    .line 109
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_5
    :goto_0
    iput-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

    .line 113
    .line 114
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteProxyRenderer:Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    .line 115
    .line 116
    if-eqz v2, :cond_6

    .line 117
    .line 118
    invoke-virtual {v2, v1, v1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->setTarget(Lorg/hmwebrtc/VideoSink;Lorg/hmwebrtc/VideoSink;Landroid/os/Handler;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 122
    .line 123
    if-eqz v2, :cond_7

    .line 124
    .line 125
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2, v1}, Lorg/webrtc/haima/camera/HmCameraManager;->setLocalProxyVideoSinkTarget(Lorg/hmwebrtc/VideoSink;)V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lorg/webrtc/haima/camera/HmCameraManager;->release()V

    .line 137
    .line 138
    .line 139
    :cond_7
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableShareStreaming:Z

    .line 140
    .line 141
    if-eqz v2, :cond_8

    .line 142
    .line 143
    invoke-static {}, Lorg/hmwebrtc/ShareStreamingManager;->getInstance()Lorg/hmwebrtc/ShareStreamingManager;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lorg/hmwebrtc/ShareStreamingManager;->stop()V

    .line 148
    .line 149
    .line 150
    const/16 v2, 0x3571

    .line 151
    .line 152
    invoke-static {v2}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 153
    .line 154
    .line 155
    :cond_8
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteSinks:Ljava/util/List;

    .line 156
    .line 157
    if-eqz v2, :cond_9

    .line 158
    .line 159
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 160
    .line 161
    .line 162
    :cond_9
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 163
    .line 164
    if-eqz v2, :cond_a

    .line 165
    .line 166
    const-string v2, "Close peer connection client."

    .line 167
    .line 168
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 172
    .line 173
    invoke-virtual {v2}, Lorg/webrtc/haima/PeerConnectionClient;->close()V

    .line 174
    .line 175
    .line 176
    const-string v2, "Close peer connection client end."

    .line 177
    .line 178
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iput-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 182
    .line 183
    :cond_a
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->appRtcClient:Lorg/webrtc/haima/SocketIORTCClient;

    .line 184
    .line 185
    if-eqz v2, :cond_b

    .line 186
    .line 187
    const-string v2, "Disconnect signal server."

    .line 188
    .line 189
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->appRtcClient:Lorg/webrtc/haima/SocketIORTCClient;

    .line 193
    .line 194
    invoke-virtual {v2}, Lorg/webrtc/haima/SocketIORTCClient;->disconnectFromRoom()V

    .line 195
    .line 196
    .line 197
    const-string v2, "Disconnect signal server end."

    .line 198
    .line 199
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iput-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->appRtcClient:Lorg/webrtc/haima/SocketIORTCClient;

    .line 203
    .line 204
    :cond_b
    invoke-direct {p0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->renderRelease()V

    .line 205
    .line 206
    .line 207
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 208
    .line 209
    if-eqz v2, :cond_c

    .line 210
    .line 211
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    .line 212
    .line 213
    .line 214
    iput-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 215
    .line 216
    :cond_c
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->uninitBandWidthController()V

    .line 217
    .line 218
    .line 219
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    .line 220
    .line 221
    if-eqz v2, :cond_d

    .line 222
    .line 223
    invoke-static {}, Lorg/webrtc/haima/audio/HmAudioManager;->getInstance()Lorg/webrtc/haima/audio/HmAudioManager;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lorg/webrtc/haima/audio/HmAudioManager;->release()V

    .line 228
    .line 229
    .line 230
    :cond_d
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mOperationDelayReport:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 231
    .line 232
    if-eqz v2, :cond_e

    .line 233
    .line 234
    invoke-virtual {v2}, Lorg/webrtc/haima/HmOperationDelayReport;->stopReport()V

    .line 235
    .line 236
    .line 237
    iput-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mOperationDelayReport:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 238
    .line 239
    :cond_e
    const/4 v1, 0x0

    .line 240
    iput-boolean v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mAlreadyRecvOfferSdp:Z

    .line 241
    .line 242
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mAlreadyRecvRemoteCandidates:Ljava/util/List;

    .line 243
    .line 244
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 245
    .line 246
    .line 247
    const-string v2, ""

    .line 248
    .line 249
    iput-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyIp:Ljava/lang/String;

    .line 250
    .line 251
    iput v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyPort:I

    .line 252
    .line 253
    const-string v1, ""

    .line 254
    .line 255
    iput-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyUser:Ljava/lang/String;

    .line 256
    .line 257
    const-string v1, ""

    .line 258
    .line 259
    iput-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCacheAccProxyPW:Ljava/lang/String;

    .line 260
    .line 261
    const-string v1, "Call disconnect end."

    .line 262
    .line 263
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :catchall_0
    move-exception v0

    .line 268
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    throw v0

    .line 270
    :goto_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 271
    throw v0

    .line 272
    :catchall_1
    move-exception v0

    .line 273
    goto :goto_1

    .line 274
    :catchall_2
    move-exception v0

    .line 275
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 276
    throw v0
.end method

.method public enableShareStreaming(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableShareStreaming:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 p1, 0x3570

    .line 6
    .line 7
    invoke-static {p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public forceDisconnectRTC(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->onDisconnected(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getFrameDelayInfo()Lorg/webrtc/haima/HmFrameDelayInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    return-object v0
.end method

.method public getGSUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGSUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOwner()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->owner:I

    .line 2
    .line 3
    return v0
.end method

.method public initAdapter(Lorg/webrtc/haima/HmRtcEnvironment;Landroid/content/Context;Lorg/hmwebrtc/VideoSink;Lorg/hmwebrtc/VideoSink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;ILandroid/widget/FrameLayout;Ljava/lang/Boolean;)V
    .locals 41

    move-object/from16 v10, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p11

    if-eqz p15, :cond_2

    .line 1
    sget-object v5, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initAdapter set gametype:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "arm"

    goto :goto_0

    :cond_0
    const-string v7, "x86"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lorg/webrtc/haima/beans/GamePlatformType;->ARM:Lorg/webrtc/haima/beans/GamePlatformType;

    goto :goto_1

    :cond_1
    sget-object v5, Lorg/webrtc/haima/beans/GamePlatformType;->X86:Lorg/webrtc/haima/beans/GamePlatformType;

    :goto_1
    iput-object v5, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRealGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    goto :goto_2

    .line 3
    :cond_2
    sget-object v5, Lorg/webrtc/haima/beans/GamePlatformType;->ARM:Lorg/webrtc/haima/beans/GamePlatformType;

    iput-object v5, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRealGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 4
    :goto_2
    new-instance v5, Lorg/webrtc/haima/HmRtcCommandFilter;

    iget-object v6, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCommnadThread:Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;

    iget-object v7, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCommnadCallback:Lorg/webrtc/haima/HmRtcCommandFilter$Listener;

    invoke-direct {v5, v6, v7}, Lorg/webrtc/haima/HmRtcCommandFilter;-><init>(Lorg/webrtc/haima/HmRtcCommandFilter$ProcessThread;Lorg/webrtc/haima/HmRtcCommandFilter$Listener;)V

    iput-object v5, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCommandFilter:Lorg/webrtc/haima/HmRtcCommandFilter;

    .line 5
    invoke-virtual {v5}, Lorg/webrtc/haima/HmRtcCommandFilter;->init()V

    .line 6
    sget-object v5, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init Adapter with signalServer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " signalV2Server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " roomId: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " coturnServer: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " instanceIP: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p10

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v6, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    sget-object v8, Lorg/webrtc/haima/beans/GamePlatformType;->X86:Lorg/webrtc/haima/beans/GamePlatformType;

    if-ne v6, v8, :cond_3

    invoke-direct {v10, v3, v4, v11}, Lorg/webrtc/haima/HmRtcAdapterImpl;->isPossibleLeaveHttpSignal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8
    iget-object v6, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSignalHttpSwitchToSignalV1V2Lock:Ljava/lang/Object;

    monitor-enter v6

    .line 9
    :try_start_0
    sget-object v9, Lorg/webrtc/haima/beans/GamePlatformType;->ARM:Lorg/webrtc/haima/beans/GamePlatformType;

    iput-object v9, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    const-string v9, ""

    .line 10
    iput-object v9, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGSUrl:Ljava/lang/String;

    const-string v9, "gametype is falsified to GamePlatformType.ARM for following signalv1/v2."

    .line 11
    invoke-static {v5, v9}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    monitor-exit v6

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_3
    if-nez v1, :cond_4

    const-string v1, ""

    :cond_4
    move-object v6, v1

    .line 13
    iget-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    if-ne v1, v8, :cond_5

    .line 14
    invoke-direct {v10, v6}, Lorg/webrtc/haima/HmRtcAdapterImpl;->CreateIceServers(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v1, p1

    .line 15
    iput-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteSinks:Ljava/util/List;

    .line 17
    new-instance v1, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    invoke-direct {v1}, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;-><init>()V

    iput-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteProxyRenderer:Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/hmwebrtc/ContextUtils;->initialize(Landroid/content/Context;)V

    .line 19
    instance-of v1, v2, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 20
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    move-result-object v1

    move-object v8, v2

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v1, v8}, Lorg/webrtc/haima/HmCameraWrapper;->installCamera(Landroid/app/Activity;)Z

    .line 21
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    move-result-object v1

    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCameraConfig:Lorg/webrtc/haima/beans/CameraConfig;

    invoke-virtual {v1, v8}, Lorg/webrtc/haima/HmCameraWrapper;->setCameraConfig(Lorg/webrtc/haima/beans/CameraConfig;)V

    goto :goto_4

    :cond_6
    const-string v1, "Context isn\'t an Activity, we can\'t init camera."

    .line 22
    invoke-static {v5, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_4
    iget-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v0, "fatal error: don\'t init adapter multiple times."

    .line 24
    invoke-static {v5, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_7
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 26
    sget-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    if-eqz v1, :cond_8

    .line 27
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/webrtc/haima/camera/HmCameraManager;->setContext(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/webrtc/haima/camera/HmCameraManager;->setAdapter(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 29
    iput-object v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mLocalPreviewRenderer:Lorg/hmwebrtc/VideoSink;

    .line 30
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/webrtc/haima/camera/HmCameraManager;->setLocalRenderer(Lorg/hmwebrtc/VideoSink;)V

    :cond_8
    move-object/from16 v0, p3

    .line 31
    invoke-direct {v10, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->initRenderInstance(Lorg/hmwebrtc/VideoSink;)V

    .line 32
    new-instance v0, Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-direct {v0}, Lorg/webrtc/haima/HmFrameDelayInfo;-><init>()V

    iput-object v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 33
    new-instance v0, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    invoke-direct {v0}, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;-><init>()V

    iput-object v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mNativeJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    .line 34
    iput-object v4, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRoomId:Ljava/lang/String;

    move/from16 v1, p13

    .line 35
    iput v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->imageRotationDegree:I

    const-string v0, ""

    const/4 v13, 0x0

    if-eqz v4, :cond_a

    const-string v0, "-"

    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    .line 37
    invoke-virtual {v4, v13, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v5, v4

    goto :goto_6

    :cond_a
    :goto_5
    move-object v5, v0

    .line 38
    :goto_6
    :try_start_1
    invoke-static {v5}, Lorg/webrtc/haima/HmRtcGlobalConfig;->parseHmNewRtcConfig(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 39
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "parseHmNewRtcConfig Exception:"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :goto_7
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableGetWifiSsidDefault:Z

    sput-boolean v0, Lorg/hmwebrtc/NetworkMonitorAutoDetect;->getWifiSSIDSwitchOnCloudConfig:Z

    .line 41
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSurfaceSwitch:Z

    iput-boolean v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->isEnableViewSwitch:Z

    move-object/from16 v8, p14

    .line 42
    invoke-direct {v10, v8}, Lorg/webrtc/haima/HmRtcAdapterImpl;->createDsDisplayView(Landroid/widget/FrameLayout;)V

    .line 43
    iget-object v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    if-eqz v0, :cond_b

    .line 44
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    invoke-virtual {v0, v8}, Lorg/hmwebrtc/SurfaceViewRenderer;->setDsSurface(Lorg/hmwebrtc/SurfaceViewDsRenderer;)V

    .line 45
    :cond_b
    iget-object v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    if-eqz v0, :cond_c

    .line 46
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    invoke-virtual {v0, v8}, Lorg/hmwebrtc/TextureViewRenderer;->setDsSurface(Lorg/hmwebrtc/TextureViewDsRenderer;)V

    .line 47
    :cond_c
    iput-boolean v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->viewSwitchHappened:Z

    .line 48
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "configured openH265: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->openH265()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->openH265()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_d

    .line 50
    invoke-static {v9}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->turnOnH265(Z)V

    .line 51
    invoke-static {v9}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->turnOnH265(Z)V

    goto :goto_8

    .line 52
    :cond_d
    invoke-static {v13}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->turnOnH265(Z)V

    .line 53
    invoke-static {v13}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->turnOnH265(Z)V

    .line 54
    :goto_8
    invoke-static {}, Lorg/webrtc/haima/JankStatisticsTool;->createEglRenderJankCounter()Lorg/hmwebrtc/utils/PerfdogJankCounter;

    move-result-object v8

    iput-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    .line 55
    iget-object v14, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    if-nez v14, :cond_e

    const/4 v14, 0x1

    goto :goto_9

    :cond_e
    const/4 v14, 0x0

    :goto_9
    invoke-static {v14, v8}, Lorg/webrtc/haima/JankStatisticsTool;->createJankTool(ZLorg/hmwebrtc/utils/PerfdogJankCounter;)Lorg/webrtc/haima/JankStatisticsTool;

    move-result-object v8

    iput-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mJankTool:Lorg/webrtc/haima/JankStatisticsTool;

    if-eqz v8, :cond_f

    .line 56
    invoke-virtual {v8, v5}, Lorg/webrtc/haima/JankStatisticsTool;->create(Ljava/lang/String;)Z

    .line 57
    :cond_f
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    if-eqz v8, :cond_11

    .line 58
    sget-boolean v15, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcImageAdjustable:Z

    invoke-virtual {v8, v15}, Lorg/hmwebrtc/SurfaceViewRenderer;->setImageAdjustable(Z)V

    .line 59
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    sget v15, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcBrightnessRatio:F

    invoke-virtual {v8, v15}, Lorg/hmwebrtc/SurfaceViewRenderer;->setBrightnessRatio(F)V

    .line 60
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    sget v15, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcContrastRatio:F

    invoke-virtual {v8, v15}, Lorg/hmwebrtc/SurfaceViewRenderer;->setContrastRatio(F)V

    .line 61
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    sget v15, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSaturationRatio:F

    invoke-virtual {v8, v15}, Lorg/hmwebrtc/SurfaceViewRenderer;->setSaturationRatio(F)V

    .line 62
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    iget-object v15, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mJankTool:Lorg/webrtc/haima/JankStatisticsTool;

    if-eqz v15, :cond_10

    invoke-virtual {v15}, Lorg/webrtc/haima/JankStatisticsTool;->getRecvJankCounter()Lorg/hmwebrtc/utils/PerfdogJankCounter;

    move-result-object v15

    goto :goto_a

    :cond_10
    const/4 v15, 0x0

    :goto_a
    iget-object v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    invoke-virtual {v8, v15, v13}, Lorg/hmwebrtc/SurfaceViewRenderer;->setJankMeasuringTool(Lorg/hmwebrtc/utils/PerfdogJankCounter;Lorg/hmwebrtc/utils/PerfdogJankCounter;)Z

    .line 63
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SurfaceView useTextureCloningFlag: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v13, Lorg/webrtc/haima/HmRtcGlobalConfig;->useTextureCloningFlag:Z

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    sget-boolean v13, Lorg/webrtc/haima/HmRtcGlobalConfig;->useTextureCloningFlag:Z

    invoke-virtual {v8, v13}, Lorg/hmwebrtc/SurfaceViewRenderer;->setUseTextureCloningFlag(Z)V

    .line 65
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    sget-boolean v13, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableFrameInterpolation:Z

    sget v15, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFirstFrameInterpolationInterval:I

    sget v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFollowingFrameInterpolationInterval:I

    sget v14, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFrameInterpolationTopLimit:I

    invoke-virtual {v8, v13, v15, v9, v14}, Lorg/hmwebrtc/SurfaceViewRenderer;->setFrameInterpolationParameters(ZIII)V

    .line 66
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    sget-boolean v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEglMonochromeOff:Z

    invoke-virtual {v8, v9}, Lorg/hmwebrtc/SurfaceViewRenderer;->setEglMonochromeOff(Z)V

    .line 67
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    sget-boolean v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableImageEnhancement:Z

    invoke-virtual {v8, v9}, Lorg/hmwebrtc/SurfaceViewRenderer;->setUnsharpMaskEnabled(Z)V

    .line 68
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    sget v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcImageEnhancementStrength:I

    int-to-float v9, v9

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v9, v13

    invoke-virtual {v8, v9}, Lorg/hmwebrtc/SurfaceViewRenderer;->setUnsharpMaskAmount(F)V

    .line 69
    :cond_11
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    if-eqz v8, :cond_13

    .line 70
    sget-boolean v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcImageAdjustable:Z

    invoke-virtual {v8, v9}, Lorg/hmwebrtc/TextureViewRenderer;->setImageAdjustable(Z)V

    .line 71
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    sget v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcBrightnessRatio:F

    invoke-virtual {v8, v9}, Lorg/hmwebrtc/TextureViewRenderer;->setBrightnessRatio(F)V

    .line 72
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    sget v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcContrastRatio:F

    invoke-virtual {v8, v9}, Lorg/hmwebrtc/TextureViewRenderer;->setContrastRatio(F)V

    .line 73
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    sget v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSaturationRatio:F

    invoke-virtual {v8, v9}, Lorg/hmwebrtc/TextureViewRenderer;->setSaturationRatio(F)V

    .line 74
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    iget-object v9, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mJankTool:Lorg/webrtc/haima/JankStatisticsTool;

    if-eqz v9, :cond_12

    invoke-virtual {v9}, Lorg/webrtc/haima/JankStatisticsTool;->getRecvJankCounter()Lorg/hmwebrtc/utils/PerfdogJankCounter;

    move-result-object v9

    goto :goto_b

    :cond_12
    const/4 v9, 0x0

    :goto_b
    iget-object v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    invoke-virtual {v8, v9, v13}, Lorg/hmwebrtc/TextureViewRenderer;->setJankMeasuringTool(Lorg/hmwebrtc/utils/PerfdogJankCounter;Lorg/hmwebrtc/utils/PerfdogJankCounter;)Z

    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TextureView useTextureCloningFlag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->useTextureCloningFlag:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    sget-boolean v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->useTextureCloningFlag:Z

    invoke-virtual {v8, v9}, Lorg/hmwebrtc/TextureViewRenderer;->setUseTextureCloningFlag(Z)V

    .line 77
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    sget-boolean v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableFrameInterpolation:Z

    sget v13, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFirstFrameInterpolationInterval:I

    sget v14, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFollowingFrameInterpolationInterval:I

    sget v15, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFrameInterpolationTopLimit:I

    invoke-virtual {v8, v9, v13, v14, v15}, Lorg/hmwebrtc/TextureViewRenderer;->setFrameInterpolationParameters(ZIII)V

    .line 78
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    sget-boolean v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEglMonochromeOff:Z

    invoke-virtual {v8, v9}, Lorg/hmwebrtc/TextureViewRenderer;->setEglMonochromeOff(Z)V

    .line 79
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    sget-boolean v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableImageEnhancement:Z

    invoke-virtual {v8, v9}, Lorg/hmwebrtc/TextureViewRenderer;->setUnsharpMaskEnabled(Z)V

    .line 80
    iget-object v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    sget v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcImageEnhancementStrength:I

    int-to-float v9, v9

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v9, v13

    invoke-virtual {v8, v9}, Lorg/hmwebrtc/TextureViewRenderer;->setUnsharpMaskAmount(F)V

    .line 81
    :cond_13
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    .line 82
    invoke-static {v8}, Lorg/hmwebrtc/AndroidVideoDecoder;->setUseSharedContextFlag(I)V

    goto :goto_c

    :cond_14
    const/4 v8, 0x0

    .line 83
    invoke-static {v8}, Lorg/hmwebrtc/AndroidVideoDecoder;->setUseSharedContextFlag(I)V

    .line 84
    :goto_c
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecOutputDropping:Z

    invoke-static {v8}, Lorg/hmwebrtc/AndroidVideoDecoder;->setLossFrameFlag(Z)V

    .line 85
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableNoOutputLongTimeRequestKeyFrame:Z

    sget v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNoOutputFramesIntervalMs:I

    sget v13, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNumOfNotDecodedFramesThreshold:I

    invoke-static {v8, v9, v13}, Lorg/hmwebrtc/AndroidVideoDecoder;->setNoOutputFramesIntervalMs(ZII)V

    .line 86
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecOutputDropping:Z

    invoke-static {v8}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->setLossFrameFlag(Z)V

    .line 87
    iget-boolean v8, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->isEnableViewSwitch:Z

    invoke-static {v8}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->setEnableSurfaceSwitch(Z)V

    .line 88
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableNoOutputLongTimeRequestKeyFrame:Z

    sget v9, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNoOutputFramesIntervalMs:I

    sget v13, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNumOfNotDecodedFramesThreshold:I

    invoke-static {v8, v9, v13}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->setNoOutputFramesIntervalMs(ZII)V

    .line 89
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->isCloseDecoderLowLatency:Z

    sput-boolean v8, Lorg/hmwebrtc/AndroidVideoDecoder;->isCloseDecoderLowLatency:Z

    .line 90
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->isCloseDecoderLowLatency:Z

    sput-boolean v8, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->isCloseDecoderLowLatency:Z

    .line 91
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecVideoDecoderLowLatency:Z

    sput-boolean v8, Lorg/hmwebrtc/AndroidVideoDecoder;->useMediaCodecVideoDecoderLowLatency:Z

    .line 92
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableMediaCodecVideoDecoderLowLatency:Z

    sput-boolean v8, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->useMediaCodecVideoDecoderLowLatency:Z

    .line 93
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    sput-boolean v8, Lorg/hmwebrtc/AndroidVideoDecoder;->isNotRetryOrIgnoreAsDecoderConfigureIllegalStateException:Z

    .line 94
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->forceVP8Format:Z

    invoke-static {v8}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->forceMatchVP8(Z)V

    .line 95
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->forceH264Format:Z

    invoke-static {v8}, Lorg/hmwebrtc/MediaCodecVideoDecoderFactory;->forceMatchH264(Z)V

    .line 96
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    invoke-static {v8}, Lorg/hmwebrtc/HardwareVideoEncoderFactory;->setEnableEncoder(Z)V

    .line 97
    sget v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcHwDecoderBufferMode:I

    sput v8, Lorg/hmwebrtc/AndroidVideoDecoder;->rtcHwDecoderBufferMode:I

    .line 98
    sget-boolean v8, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSoftwareDecoder:Z

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    .line 99
    sget v13, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_frame_buffer_size_limit:I

    invoke-static {v13}, Lorg/hmwebrtc/VideoFrame;->setHaimaFrameBufferSize(I)V

    .line 100
    sget-boolean v13, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_frame_info_match_by_pts:Z

    invoke-static {v13}, Lorg/hmwebrtc/VideoFrame;->setFrameInfoMatchByPts(Z)V

    .line 101
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "init Adapter got and set cid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", use SharedContext is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lorg/webrtc/haima/HmRtcGlobalConfig;->useSharedContext:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", force vp8 is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lorg/webrtc/haima/HmRtcGlobalConfig;->forceVP8Format:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", force h264 is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lorg/webrtc/haima/HmRtcGlobalConfig;->forceH264Format:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", force EGL10 is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcForceEgl10:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", use hardware decoder: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", rtc frame buffer size for render: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_frame_buffer_size_limit:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", rtc frame info match by pts: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_frame_info_match_by_pts:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_15

    const-string v13, "force rtcUseDirectSurfaceView to false caused by useCodecHwAcceleration==false"

    .line 102
    invoke-static {v0, v13}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 103
    sput-boolean v13, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    .line 104
    :cond_15
    sget-boolean v13, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    if-eqz v13, :cond_19

    .line 105
    iget-boolean v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->isEnableViewSwitch:Z

    if-eqz v13, :cond_17

    .line 106
    iget-object v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    if-eqz v13, :cond_16

    goto :goto_d

    .line 107
    :cond_16
    iget-object v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    if-eqz v13, :cond_19

    goto :goto_e

    .line 108
    :cond_17
    iget-object v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    if-eqz v13, :cond_18

    :goto_d
    move-object/from16 v38, v13

    const/16 v39, 0x0

    goto :goto_f

    .line 109
    :cond_18
    iget-object v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    if-eqz v13, :cond_19

    :goto_e
    move/from16 v39, v1

    move-object/from16 v38, v13

    goto :goto_f

    :cond_19
    move/from16 v39, v1

    const/16 v38, 0x0

    .line 110
    :goto_f
    sget-boolean v27, Lorg/webrtc/haima/HmRtcGlobalConfig;->no_audio_processing:Z

    .line 111
    sget-boolean v31, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_aec:Z

    .line 112
    sget-boolean v32, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_agc:Z

    .line 113
    sget-boolean v33, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_builtin_ns:Z

    .line 114
    sget-boolean v34, Lorg/webrtc/haima/HmRtcGlobalConfig;->disable_webrtc_agc_and_hpf:Z

    .line 115
    sget-object v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcPreferVideoCodec:Ljava/lang/String;

    if-nez v1, :cond_1a

    const-string v1, ""

    :cond_1a
    move-object/from16 v22, v1

    .line 116
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 117
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->isFlexFecOpen()Z

    move-result v13

    if-eqz v13, :cond_1b

    iget-object v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    sget-object v14, Lorg/webrtc/haima/beans/GamePlatformType;->ARM:Lorg/webrtc/haima/beans/GamePlatformType;

    if-ne v13, v14, :cond_1b

    const/16 v24, 0x1

    goto :goto_10

    :cond_1b
    const/16 v24, 0x0

    :goto_10
    const/16 v25, 0x0

    const-string v26, "opus"

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    sget-boolean v40, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    move-object v14, v1

    const/4 v13, 0x0

    move/from16 v23, v8

    move-object/from16 v37, v5

    invoke-direct/range {v14 .. v40}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;-><init>(ZZZIIIILjava/lang/String;ZZILjava/lang/String;ZZZZZZZZZLorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;Ljava/lang/String;Ljava/lang/Object;IZ)V

    iput-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 118
    new-instance v1, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    invoke-direct {v1, v3, v4, v6}, Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->roomConnectionParameters:Lorg/webrtc/haima/AppRTCClient$RoomConnectionParameters;

    .line 119
    iget-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGSUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    if-eqz v11, :cond_1e

    .line 120
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 121
    sget v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_signalv2_signalv1delaytime:I

    iput v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->TIMEOUT_WEBSOCKET_CHECK:I

    .line 122
    iget-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    if-nez v1, :cond_1c

    .line 123
    new-instance v14, Lorg/webrtc/haima/WebSocketRTCClient;

    iget-object v9, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

    move-object v1, v14

    move-object/from16 v2, p2

    move-object v3, v6

    move-object v4, v5

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p0

    move-object/from16 v8, p12

    invoke-direct/range {v1 .. v9}, Lorg/webrtc/haima/WebSocketRTCClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;Lorg/webrtc/haima/HmRtcEnvironment;)V

    iput-object v14, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    const-string v1, "new signalV2Server creating HmWebSocketClient"

    .line 124
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 125
    :cond_1c
    iget-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPrevSignalV2Url:Ljava/lang/String;

    invoke-static {v11, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 126
    iget-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    invoke-virtual {v1}, Lorg/webrtc/haima/WebSocketRTCClient;->disconnect()V

    .line 127
    iput-object v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    const-string v1, "changing signalV2Server recreating HmWebSocketClient"

    .line 128
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v14, Lorg/webrtc/haima/WebSocketRTCClient;

    iget-object v9, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRtcEnv:Lorg/webrtc/haima/HmRtcEnvironment;

    move-object v1, v14

    move-object/from16 v2, p2

    move-object v3, v6

    move-object v4, v5

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p0

    move-object/from16 v8, p12

    invoke-direct/range {v1 .. v9}, Lorg/webrtc/haima/WebSocketRTCClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientEvent;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;Lorg/webrtc/haima/HmRtcEnvironment;)V

    iput-object v14, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    const-string v1, "new signalV2Server creating HmWebSocketClient"

    .line 130
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1d
    :goto_11
    iput-object v12, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mIoOptions:Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;

    .line 132
    iput-object v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->appRtcClient:Lorg/webrtc/haima/SocketIORTCClient;

    .line 133
    iput-object v11, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPrevSignalV2Url:Ljava/lang/String;

    goto :goto_12

    .line 134
    :cond_1e
    new-instance v0, Lorg/webrtc/haima/SocketIORTCClient;

    invoke-direct {v0, v10, v12}, Lorg/webrtc/haima/SocketIORTCClient;-><init>(Lorg/webrtc/haima/AppRTCClient$SignalingEvents;Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;)V

    iput-object v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->appRtcClient:Lorg/webrtc/haima/SocketIORTCClient;

    .line 135
    iput-object v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mWebSocketClient:Lorg/webrtc/haima/WebSocketRTCClient;

    .line 136
    :cond_1f
    :goto_12
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetReport:Z

    if-eqz v0, :cond_20

    .line 137
    new-instance v0, Lorg/webrtc/haima/WeaklyNetworkReport;

    invoke-direct {v0}, Lorg/webrtc/haima/WeaklyNetworkReport;-><init>()V

    iput-object v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    .line 138
    :cond_20
    iget-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->statsHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_2
    iget-object v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->statsThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_21

    .line 140
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 141
    iput-object v13, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->statsThreadHandler:Landroid/os/Handler;

    .line 142
    :cond_21
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "getStats thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 144
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->statsThreadHandler:Landroid/os/Handler;

    .line 145
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 146
    iget-object v2, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->initHmAdapterHandler()V

    .line 148
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 149
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_4
    sput-object v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mInstance:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 151
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v1, 0x0

    .line 152
    iput-boolean v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRtcDisconnected:Z

    .line 153
    iput-boolean v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mAlreadyRecvOfferSdp:Z

    .line 154
    iget-object v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mAlreadyRecvRemoteCandidates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->initBandWidthController()V

    .line 156
    invoke-static {}, Lorg/hmwebrtc/MediaCodecSupportedCodecs;->postReportTask()V

    .line 157
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig;

    invoke-virtual {v0}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 158
    new-instance v0, Lorg/webrtc/haima/HmOperationDelayReport;

    invoke-direct {v0}, Lorg/webrtc/haima/HmOperationDelayReport;-><init>()V

    iput-object v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mOperationDelayReport:Lorg/webrtc/haima/HmOperationDelayReport;

    .line 159
    sget-object v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig;

    invoke-virtual {v1}, Lorg/webrtc/haima/HmOperationDelayConfig;->getIntervalMs()I

    move-result v1

    sget-object v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig;

    .line 160
    invoke-virtual {v2}, Lorg/webrtc/haima/HmOperationDelayConfig;->isDebugLog()Z

    move-result v2

    sget-object v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig;

    .line 161
    invoke-virtual {v3}, Lorg/webrtc/haima/HmOperationDelayConfig;->getMaxDelayMs()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig;

    .line 162
    invoke-virtual {v5}, Lorg/webrtc/haima/HmOperationDelayConfig;->getSaltMs()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v2

    move-wide/from16 p4, v3

    move-wide/from16 p6, v5

    move-object/from16 p8, p0

    .line 163
    invoke-virtual/range {p1 .. p8}, Lorg/webrtc/haima/HmOperationDelayReport;->startReport(IZJJLorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 164
    iget-object v0, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->remoteProxyRenderer:Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    iget-object v1, v10, Lorg/webrtc/haima/HmRtcAdapterImpl;->mOperationDelayReport:Lorg/webrtc/haima/HmOperationDelayReport;

    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->setOperationDelayReport(Lorg/webrtc/haima/HmOperationDelayReport;)V

    :cond_22
    return-void

    :catchall_1
    move-exception v0

    .line 165
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 166
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    .line 167
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method initBandWidthController()V
    .locals 3

    .line 1
    const-string v0, "bw"

    .line 2
    .line 3
    const-string v1, "initBandWidthController"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mHmBandWidthController:Lorg/webrtc/haima/HmBandWidthController;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/webrtc/haima/HmBandWidthController;->stop()V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v0, Lorg/webrtc/haima/HmBandWidthController;

    .line 16
    .line 17
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->sMainHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v2, Lorg/webrtc/haima/HmRtcAdapterImpl$22;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$22;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lorg/webrtc/haima/HmBandWidthController;-><init>(Landroid/os/Handler;Lorg/webrtc/haima/HmBandWidthController$Observer;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mHmBandWidthController:Lorg/webrtc/haima/HmBandWidthController;

    .line 28
    .line 29
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/webrtc/haima/PeerConnectionClient;->isICEConnected()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isInputChannelEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRealGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 2
    .line 3
    sget-object v1, Lorg/webrtc/haima/beans/GamePlatformType;->X86:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->getInstance()Lorg/webrtc/haima/HmDataChannelDeviceSwitch;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lorg/webrtc/haima/HmDataChannelDeviceSwitch;->isDataChannelEnable()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->isPlaying:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRotationSupported()Z
    .locals 1

    .line 1
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public isRtcUploadAudioChannelAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/webrtc/haima/PeerConnectionClient;->isRtcUploadAudioChannelAvailable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method protected isRtcUploadVideoChannelAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lorg/webrtc/haima/PeerConnectionClient;->isRtcUploadVideoChannelAvailable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public onAccProxyConnectStateChange(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onAccProxyConnectStateChange,current:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    sget-object p2, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "onAccProxyConnectStateChange code:"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p2, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v0, ""

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/4 p2, 0x0

    .line 78
    const/16 v0, 0x32

    .line 79
    .line 80
    invoke-direct {p0, v0, p1, p2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public onChannelClose()V
    .locals 1

    .line 1
    const/16 v0, 0x33ba

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$10;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$10;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToUiThread(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onChannelConnectStatus(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x33bd

    .line 8
    .line 9
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    move-object v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/content/Context;

    .line 24
    .line 25
    :goto_0
    if-nez v0, :cond_2

    .line 26
    .line 27
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "Fatal error: context is null when onChannelConnectStatus."

    .line 30
    .line 31
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const/4 v0, 0x7

    .line 36
    invoke-direct {p0, v0, p1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onChannelConnected()V
    .locals 2

    .line 1
    const/16 v0, 0x33b9

    .line 2
    .line 3
    invoke-static {v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/content/Context;

    .line 18
    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "Fatal error: context is null when onChannelConnected."

    .line 24
    .line 25
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$12;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$12;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToThread(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string v1, "Fatal error: mMainHandler is null when onChannelConnected."

    .line 43
    .line 44
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    const/16 v0, 0x8

    .line 49
    .line 50
    invoke-direct {p0, v0, v1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public onChannelError(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "connect_error"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x33a1

    .line 10
    .line 11
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    move-object v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Landroid/content/Context;

    .line 26
    .line 27
    :goto_0
    if-nez v0, :cond_1

    .line 28
    .line 29
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "Fatal error: context is null when onChannelError."

    .line 32
    .line 33
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const/4 v0, 0x6

    .line 38
    invoke-direct {p0, v0, p1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->reportError(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onChannelSendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/Context;

    .line 12
    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p2, "Fatal error: context is null when onChannelSendMessage."

    .line 18
    .line 19
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->reportSendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "to"

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "type"

    .line 37
    .line 38
    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/16 p1, 0x9

    .line 42
    .line 43
    invoke-direct {p0, p1, p3, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public onConnected(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "onConnected,current:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "expired:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 v0, 0x3512

    .line 33
    .line 34
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const/16 p1, 0x33a0

    .line 39
    .line 40
    invoke-static {p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->currentConnectStatus:Ljava/lang/Boolean;

    .line 46
    .line 47
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "peerConnectionClient onConnected:"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->currentConnectStatus:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->isPlaying:Z

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    iget-wide v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->callStartedTimeMs:J

    .line 79
    .line 80
    sub-long/2addr v0, v2

    .line 81
    iget-object v2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 82
    .line 83
    invoke-virtual {v2, v0, v1}, Lorg/webrtc/haima/HmFrameDelayInfo;->setNetTime(J)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    move-object v0, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/content/Context;

    .line 98
    .line 99
    :goto_0
    const/16 v2, 0x2fa8

    .line 100
    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    const-string v0, "Fatal error: context is null when onConnected."

    .line 104
    .line 105
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string p1, "context is null when onConnected"

    .line 109
    .line 110
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_2
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$16;

    .line 115
    .line 116
    invoke-direct {v0, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$16;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 117
    .line 118
    .line 119
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToThread(Ljava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_3

    .line 124
    .line 125
    const-string v0, "Fatal error: mMainHandler is null when onConnected."

    .line 126
    .line 127
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string p1, "mMainHandler is null when onConnected"

    .line 131
    .line 132
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_3
    const/16 p1, 0xe

    .line 137
    .line 138
    invoke-direct {p0, p1, v1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 139
    .line 140
    .line 141
    sget-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 142
    .line 143
    if-eqz p1, :cond_4

    .line 144
    .line 145
    sget-object p1, Lorg/webrtc/haima/beans/GamePlatformType;->ARM:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 146
    .line 147
    :cond_4
    sget-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableShareStreaming:Z

    .line 148
    .line 149
    if-eqz p1, :cond_5

    .line 150
    .line 151
    invoke-static {}, Lorg/hmwebrtc/ShareStreamingManager;->getInstance()Lorg/hmwebrtc/ShareStreamingManager;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1, p0}, Lorg/hmwebrtc/ShareStreamingManager;->setKeyFrameRequestCallBack(Lorg/hmwebrtc/ShareStreamingManager$KeyFrameRequestCallBack;)V

    .line 156
    .line 157
    .line 158
    :cond_5
    return-void
.end method

.method public onConnectedToRoom(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/content/Context;

    .line 13
    .line 14
    :goto_0
    const/16 v2, 0x2fa8

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "Fatal error: context is null when onConnectedToRoom."

    .line 21
    .line 22
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "Context is null when onConnectedToRoom"

    .line 26
    .line 27
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$6;

    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$6;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToThread(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "Fatal error: mMainHandler is null when onConnectedToRoom."

    .line 45
    .line 46
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p1, "mMainHandler is null when onConnectedToRoom"

    .line 50
    .line 51
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const/4 v0, 0x2

    .line 56
    invoke-direct {p0, v0, p1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onConnectionIPChanged(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Current remote streaming ip list: "

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
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/16 v0, 0x3408

    .line 26
    .line 27
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$17;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$17;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToUiThread(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onCountlyCallback(IJLjava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x2fa8

    .line 2
    .line 3
    if-eq p1, v0, :cond_6

    .line 4
    .line 5
    const/16 v0, 0x33b2

    .line 6
    .line 7
    if-eq p1, v0, :cond_5

    .line 8
    .line 9
    const/16 v0, 0x3408

    .line 10
    .line 11
    if-eq p1, v0, :cond_4

    .line 12
    .line 13
    const/16 v0, 0x3514

    .line 14
    .line 15
    if-eq p1, v0, :cond_3

    .line 16
    .line 17
    const/16 v0, 0x3519

    .line 18
    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    const/16 v0, 0x33c0

    .line 22
    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x33c1

    .line 26
    .line 27
    if-eq p1, v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, p1, p4, p2, p3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->recordCountlyEventLocal(ILjava/lang/String;J)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->onIDRDecoded(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->onIDRArrived(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/16 p1, 0x34

    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    invoke-direct {p0, p1, p4, p2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->onIDRRendered(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p0, p4}, Lorg/webrtc/haima/HmRtcAdapterImpl;->onConnectionIPChanged(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->onIDRReadyToRender(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_6
    invoke-virtual {p0, p4}, Lorg/webrtc/haima/HmRtcAdapterImpl;->onRtcNativeWarning(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method public onCreatePeerConnectionSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "onCreatePeerConnectionSuccess,current:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "expired:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 v0, 0x3512

    .line 33
    .line 34
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandlerLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p1

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mMainHandler:Landroid/os/Handler;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 46
    .line 47
    const-string v1, "mMainHandler is empty"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    monitor-exit p1

    .line 53
    return-void

    .line 54
    :cond_1
    new-instance v1, Lorg/webrtc/haima/HmRtcAdapterImpl$11;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$11;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    monitor-exit p1

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v0
.end method

.method public onDcJsonMessage([BLjava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onDcJsonMessage, current:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mStreamerCallbackLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p2

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mStreamerCallback:Lorg/webrtc/haima/HmStreamerCallback;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    new-instance v0, Lorg/webrtc/haima/HmStreamerCallback$MsgPayload;

    .line 46
    .line 47
    invoke-direct {v0}, Lorg/webrtc/haima/HmStreamerCallback$MsgPayload;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, v0, Lorg/webrtc/haima/HmStreamerCallback$MsgPayload;->bytes:[B

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    iput-object p1, v0, Lorg/webrtc/haima/HmStreamerCallback$MsgPayload;->reserve:Ljava/lang/Object;

    .line 54
    .line 55
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mStreamerCallback:Lorg/webrtc/haima/HmStreamerCallback;

    .line 56
    .line 57
    sget-object v1, Lorg/webrtc/haima/HmStreamerCallback$MsgId;->kGeneralJson:Lorg/webrtc/haima/HmStreamerCallback$MsgId;

    .line 58
    .line 59
    const-wide/16 v2, 0x0

    .line 60
    .line 61
    invoke-interface {p1, v1, v2, v3, v0}, Lorg/webrtc/haima/HmStreamerCallback;->onCommonMessage(Lorg/webrtc/haima/HmStreamerCallback$MsgId;JLorg/webrtc/haima/HmStreamerCallback$MsgPayload;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "mStreamCallback is null"

    .line 68
    .line 69
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    monitor-exit p2

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p1
.end method

.method public onDisconnected(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onDisconnected,current:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const-string p2, "PEER_CONNECTION_FAILED"

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    const/16 p2, 0x348a

    .line 47
    .line 48
    invoke-static {p2}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 49
    .line 50
    .line 51
    :cond_1
    const-string p2, "ICE_CONNECTION_FAILED"

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    const/16 p2, 0x33ac

    .line 60
    .line 61
    invoke-static {p2}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 65
    .line 66
    iput-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->currentConnectStatus:Ljava/lang/Boolean;

    .line 67
    .line 68
    sget-object p2, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v1, "peerConnectionClient onDisconnected:"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->currentConnectStatus:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {p2, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    const/4 v1, 0x0

    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    move-object v0, v1

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/content/Context;

    .line 104
    .line 105
    :goto_0
    if-nez v0, :cond_4

    .line 106
    .line 107
    const-string p1, "Fatal error: context is null when onDisconnected."

    .line 108
    .line 109
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :cond_4
    const/4 p2, 0x1

    .line 114
    iput-boolean p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mRtcDisconnected:Z

    .line 115
    .line 116
    const/16 p2, 0xf

    .line 117
    .line 118
    invoke-direct {p0, p2, p1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    sget-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableShareStreaming:Z

    .line 122
    .line 123
    if-eqz p1, :cond_5

    .line 124
    .line 125
    invoke-static {}, Lorg/hmwebrtc/ShareStreamingManager;->getInstance()Lorg/hmwebrtc/ShareStreamingManager;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lorg/hmwebrtc/ShareStreamingManager;->clearKeyFrameRequestCallBack()V

    .line 130
    .line 131
    .line 132
    :cond_5
    return-void
.end method

.method public onIDRArrived(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Time: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x33c0

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallbackLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallback:Lorg/webrtc/haima/HmPlayerCallback;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-interface {v1, v2, v3}, Lorg/webrtc/haima/HmPlayerCallback;->onIDRArrived(J)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public onIDRDecoded(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Time: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x33c1

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallbackLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallback:Lorg/webrtc/haima/HmPlayerCallback;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-interface {v1, v2, v3}, Lorg/webrtc/haima/HmPlayerCallback;->onIDRDecoded(J)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public onIDRReadyToRender(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Time: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x33b2

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallbackLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallback:Lorg/webrtc/haima/HmPlayerCallback;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-interface {v1, v2, v3}, Lorg/webrtc/haima/HmPlayerCallback;->onIDRReadyToRender(J)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public onIDRRendered(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Time: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x3514

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallbackLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallback:Lorg/webrtc/haima/HmPlayerCallback;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-interface {v1, v2, v3}, Lorg/webrtc/haima/HmPlayerCallback;->onIDRRendered(J)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public onIceCandidate(Lorg/hmwebrtc/IceCandidate;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onIceCandidate,current:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    move-object p2, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Landroid/content/Context;

    .line 50
    .line 51
    :goto_0
    invoke-virtual {p1}, Lorg/hmwebrtc/IceCandidate;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const/16 v2, 0x33c6

    .line 56
    .line 57
    invoke-static {v2, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x2fa8

    .line 61
    .line 62
    if-nez p2, :cond_2

    .line 63
    .line 64
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    const-string p2, "Fatal error: context is null when onIceCandidate."

    .line 67
    .line 68
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string p1, "context is null when onIceCandidate"

    .line 72
    .line 73
    invoke-static {v1, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    new-instance p2, Lorg/webrtc/haima/HmRtcAdapterImpl$14;

    .line 78
    .line 79
    invoke-direct {p2, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$14;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/IceCandidate;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToThread(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-nez p2, :cond_3

    .line 87
    .line 88
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 89
    .line 90
    const-string p2, "Fatal error: mMainHandler is null when onIceCandidate."

    .line 91
    .line 92
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const-string p1, "mMainHandler is null when onIceCandidate"

    .line 96
    .line 97
    invoke-static {v1, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    const/16 p2, 0xc

    .line 102
    .line 103
    invoke-direct {p0, p2, p1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public onIceCandidatesRemoved([Lorg/hmwebrtc/IceCandidate;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onIceCandidatesRemoved,current:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    move-object p2, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Landroid/content/Context;

    .line 50
    .line 51
    :goto_0
    const/16 v1, 0x2fa8

    .line 52
    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    const-string p2, "Fatal error: context is null when onIceCandidatesRemoved."

    .line 58
    .line 59
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "context is null when onIceCandidatesRemoved"

    .line 63
    .line 64
    invoke-static {v1, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    new-instance p2, Lorg/webrtc/haima/HmRtcAdapterImpl$15;

    .line 69
    .line 70
    invoke-direct {p2, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$15;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;[Lorg/hmwebrtc/IceCandidate;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToThread(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 80
    .line 81
    const-string p2, "Fatal error: mMainHandler is null when onIceCandidatesRemoved."

    .line 82
    .line 83
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p1, "mMainHandler is null when onIceCandidatesRemoved"

    .line 87
    .line 88
    invoke-static {v1, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    const/16 p2, 0xd

    .line 93
    .line 94
    invoke-direct {p0, p2, p1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public onIceConnected(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onIceDisconnected(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onKeyFrameRequested()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onKeyFrameRequested"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->requestKeyFrame()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onLocalDescriptionCreated(Lorg/hmwebrtc/SessionDescription;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onLocalDescriptionCreated,current:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const/16 p2, 0x33a7

    .line 39
    .line 40
    invoke-static {p2}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 41
    .line 42
    .line 43
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    move-object p2, v0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Landroid/content/Context;

    .line 55
    .line 56
    :goto_0
    if-nez p2, :cond_2

    .line 57
    .line 58
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    const-string p2, "Fatal error: context is null when callbackCreateAnswer."

    .line 61
    .line 62
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    const/16 p2, 0xa

    .line 67
    .line 68
    invoke-direct {p0, p2, p1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public onLocalDescriptionSet(Lorg/hmwebrtc/SessionDescription;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onLocalDescriptionSet,current:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    move-object p2, v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    check-cast p2, Landroid/content/Context;

    .line 50
    .line 51
    :goto_0
    const/16 v1, 0x2fa8

    .line 52
    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    const-string p2, "Fatal error: context is null when onLocalDescription."

    .line 58
    .line 59
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "context is null when onLocalDescriptionSet"

    .line 63
    .line 64
    invoke-static {v1, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    new-instance p2, Lorg/webrtc/haima/HmRtcAdapterImpl$13;

    .line 69
    .line 70
    invoke-direct {p2, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$13;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/SessionDescription;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToThread(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 80
    .line 81
    const-string p2, "Fatal error: mMainHandler is null when onLocalDescriptionSet."

    .line 82
    .line 83
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p1, "mMainHandler is null when onLocalDescriptionSet"

    .line 87
    .line 88
    invoke-static {v1, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    const/16 p2, 0xb

    .line 93
    .line 94
    invoke-direct {p0, p2, p1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public onMessage([BLjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onMessage,current:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mStreamerCallbackLock:Ljava/lang/Object;

    .line 39
    .line 40
    monitor-enter p2

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mStreamerCallback:Lorg/webrtc/haima/HmStreamerCallback;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lorg/webrtc/haima/HmStreamerCallback;->onMessage([B)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v0, "mStreamCallback is null"

    .line 52
    .line 53
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit p2

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p1
.end method

.method public onPeerConnectionError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onPeerConnectionError,current:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    sget-object p2, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "==HmRtcAdapterImpl->onPeerConnectionError"

    .line 41
    .line 42
    invoke-static {p2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string p2, "ICE_CONNECTION_FAILED"

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->connectFailedInternal(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string p2, "PEER_CONNECTION_FAILED"

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->connectFailedInternal(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->reportError(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public onPeerConnectionStatsReady(Lorg/hmwebrtc/RTCStatsReport;Ljava/lang/Object;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    if-eq v0, p2, :cond_0

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPeerConnectionStatsReady,current:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "expired:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3512

    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    return-void

    .line 40
    :cond_0
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->parseRTCStatsReport(Lorg/hmwebrtc/RTCStatsReport;)V

    return-void
.end method

.method public onPeerConnectionStatsReady([Lorg/hmwebrtc/StatsReport;[[Lorg/hmwebrtc/StatsReport$Value;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    if-eq v0, p3, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPeerConnectionStatsReady,current:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "expired:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3512

    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object p3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    monitor-enter p3

    .line 4
    :try_start_0
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->parseStateIntoDelayInfo([Lorg/hmwebrtc/StatsReport;)V

    .line 5
    invoke-direct {p0, p2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->parseStreamerInfo([[Lorg/hmwebrtc/StatsReport$Value;)V

    .line 6
    invoke-direct {p0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->UpdateAudioDeviceState()V

    .line 7
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mJankTool:Lorg/webrtc/haima/JankStatisticsTool;

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mNativeJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {p2}, Lorg/webrtc/haima/HmFrameDelayInfo;->getJankDuration()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->jankDuration:J

    .line 9
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mNativeJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {p2}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFreezeDuration()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->bigJankDuration:J

    .line 10
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mNativeJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {p2}, Lorg/webrtc/haima/HmFrameDelayInfo;->getJankCount()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->jankCount:J

    .line 11
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mNativeJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {p2}, Lorg/webrtc/haima/HmFrameDelayInfo;->getFreezeCount()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->bigJankCount:J

    .line 12
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mNativeJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {p2}, Lorg/webrtc/haima/HmFrameDelayInfo;->getGameFps()I

    move-result p2

    iput p2, p1, Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;->fps:I

    .line 13
    :cond_1
    sget-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUseDirectSurfaceView:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mJankCounter:Lorg/hmwebrtc/utils/PerfdogJankCounter;

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    .line 14
    invoke-virtual {p1, p2}, Lorg/hmwebrtc/utils/PerfdogJankCounter;->getJankInfo(Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;)Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-wide v0, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankCount:J

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Lorg/webrtc/haima/HmFrameDelayInfo;->setJankCount(I)V

    .line 16
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-wide v0, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->bigJankCount:J

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFreezeCount(I)V

    .line 17
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-wide v0, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankDuration:J

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Lorg/webrtc/haima/HmFrameDelayInfo;->setJankDurationFromJava(I)V

    .line 18
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    iget-wide v0, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->bigJankDuration:J

    long-to-int v1, v0

    invoke-virtual {p2, v1}, Lorg/webrtc/haima/HmFrameDelayInfo;->setFreezeDurationFromJava(I)V

    .line 19
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    if-eqz p2, :cond_2

    .line 20
    iget-object p1, p1, Lorg/hmwebrtc/utils/PerfdogJankCounter$JankInfo;->jankIntervals:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/webrtc/haima/WeaklyNetworkReport;->setFreezeIntervals(Ljava/lang/String;)V

    .line 21
    :cond_2
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    if-eqz p1, :cond_4

    .line 22
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {p2}, Lorg/webrtc/haima/HmFrameDelayInfo;->getVideoBitrate()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/webrtc/haima/WeaklyNetworkReport;->setReceivingVideoBitrate(J)V

    .line 23
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {p2}, Lorg/webrtc/haima/HmFrameDelayInfo;->getPacketsPercentDiff()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/webrtc/haima/WeaklyNetworkReport;->setReceivingVideoPacketsRate(J)V

    .line 24
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameDelayInfo:Lorg/webrtc/haima/HmFrameDelayInfo;

    invoke-virtual {p2}, Lorg/webrtc/haima/HmFrameDelayInfo;->getPacketsLostRate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/webrtc/haima/WeaklyNetworkReport;->setPacketsLostRate(Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    iget-wide v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameWidth:J

    iget-wide v3, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameHeigh:J

    iget-wide v5, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->resolutionChangedTime:J

    invoke-virtual/range {v0 .. v6}, Lorg/webrtc/haima/WeaklyNetworkReport;->setResolutionChanged(JJJ)V

    .line 26
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/webrtc/haima/WeaklyNetworkReport;->setReportTime(J)V

    .line 27
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    invoke-virtual {p1}, Lorg/webrtc/haima/WeaklyNetworkReport;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReport:Lorg/webrtc/haima/WeaklyNetworkReport;

    invoke-virtual {p2}, Lorg/webrtc/haima/WeaklyNetworkReport;->reset()V

    .line 29
    sget-boolean p2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    if-eqz p2, :cond_3

    .line 30
    sget-object p2, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "weaklyNetworkReport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_3
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReportList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32
    :try_start_1
    sget-object p2, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseStateIntoDelayInfo has a Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_4
    :goto_0
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->statRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToStatThread(Ljava/lang/Runnable;)Z

    .line 35
    iget-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mJankTool:Lorg/webrtc/haima/JankStatisticsTool;

    if-eqz p1, :cond_5

    .line 36
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mNativeJankInfo:Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;

    invoke-virtual {p1, p2}, Lorg/webrtc/haima/JankStatisticsTool;->update(Lorg/webrtc/haima/JankStatisticsTool$NativeJankInfo;)V

    :cond_5
    return-void

    .line 37
    :goto_1
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onPeerErrorFromWebrtcCpp(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->internalThrowExceptionMsg(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onReConnected(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "onReConnected,current:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "expired:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 v0, 0x3512

    .line 33
    .line 34
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const/16 p1, 0x348b

    .line 39
    .line 40
    invoke-static {p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 44
    .line 45
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->currentConnectStatus:Ljava/lang/Boolean;

    .line 46
    .line 47
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "peerConnectionClient onReConnected:"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->currentConnectStatus:Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public onRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSignalHttpSwitchToSignalV1V2Lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 5
    .line 6
    sget-object v2, Lorg/webrtc/haima/beans/GamePlatformType;->X86:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 7
    .line 8
    const/16 v3, 0x351b

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const-string v1, "signalhttp"

    .line 13
    .line 14
    invoke-static {v3, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "signalv1"

    .line 19
    .line 20
    invoke-static {v3, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p1, Lorg/hmwebrtc/SessionDescription;->description:Ljava/lang/String;

    .line 25
    .line 26
    const/16 v1, 0x33a6

    .line 27
    .line 28
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    move-object v0, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/content/Context;

    .line 43
    .line 44
    :goto_1
    const/16 v2, 0x2fa8

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    const-string v0, "Fatal error: context is null when onRemoteDescription."

    .line 51
    .line 52
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "Context is null when onRemoteDescription"

    .line 56
    .line 57
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$7;

    .line 62
    .line 63
    invoke-direct {v0, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$7;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/SessionDescription;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToThread(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 73
    .line 74
    const-string v0, "Fatal error: mMainHandler is null when onRemoteDescription."

    .line 75
    .line 76
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string p1, "mMainHandler is null when onRemoteDescription"

    .line 80
    .line 81
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    const/4 v0, 0x3

    .line 86
    invoke-direct {p0, v0, p1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p1
.end method

.method public onRemoteIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lorg/hmwebrtc/IceCandidate;->sdp:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x33a9

    .line 4
    .line 5
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    move-object v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/content/Context;

    .line 20
    .line 21
    :goto_0
    const/16 v2, 0x2fa8

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "Fatal error: context is null when onRemoteIceCandidate."

    .line 28
    .line 29
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string p1, "context is null when onRemoteIceCandidate"

    .line 33
    .line 34
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$8;

    .line 39
    .line 40
    invoke-direct {v0, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$8;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/IceCandidate;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToThread(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v0, "Fatal error: mMainHandler is null when onRemoteIceCandidate."

    .line 52
    .line 53
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string p1, "mMainHandler is null when onRemoteIceCandidate"

    .line 57
    .line 58
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_2
    const/4 v0, 0x4

    .line 63
    invoke-direct {p0, v0, p1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public onRemoteIceCandidatesRemoved([Lorg/hmwebrtc/IceCandidate;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/content/Context;

    .line 13
    .line 14
    :goto_0
    const/16 v2, 0x2fa8

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "Fatal error: context is null when onRemoteIceCandidatesRemoved."

    .line 21
    .line 22
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "context is null when onRemoteIceCandidatesRemoved"

    .line 26
    .line 27
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$9;

    .line 32
    .line 33
    invoke-direct {v0, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$9;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;[Lorg/hmwebrtc/IceCandidate;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToThread(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "Fatal error: mMainHandler is null when onRemoteIceCandidatesRemoved."

    .line 45
    .line 46
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p1, "mMainHandler is null when onRemoteIceCandidatesRemoved"

    .line 50
    .line 51
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_2
    const/4 v0, 0x5

    .line 56
    invoke-direct {p0, v0, p1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onRemoteVideoEncodeAdaptation(Ljava/lang/String;IIILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p5, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p2, "onRemoteVideoEncodeAdaptation,current:"

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p5, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v0, "codec_name"

    .line 44
    .line 45
    invoke-virtual {p5, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "fps"

    .line 49
    .line 50
    int-to-short p2, p2

    .line 51
    invoke-virtual {p5, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 52
    .line 53
    .line 54
    const-string p1, "width"

    .line 55
    .line 56
    int-to-short p2, p3

    .line 57
    invoke-virtual {p5, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 58
    .line 59
    .line 60
    const-string p1, "height"

    .line 61
    .line 62
    int-to-short p2, p4

    .line 63
    invoke-virtual {p5, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 64
    .line 65
    .line 66
    const/16 p1, 0x12

    .line 67
    .line 68
    const/4 p2, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p5}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public onReportEvent(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRtcNativeWarning(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0x2fa8

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSDPError(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onSDPError,current:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->connectFailedInternal(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onSwitchConnectionCallback(IILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p3, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p2, "onSwitchConnectionCallback,current:"

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p3, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, ""

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "code"

    .line 61
    .line 62
    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "network_type"

    .line 81
    .line 82
    invoke-virtual {p3, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/16 p1, 0x33

    .line 86
    .line 87
    const/4 p2, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public onSwitchToRtmpStreaming(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "onSwitchToRtmpStreaming,current:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "expired:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 v0, 0x3512

    .line 33
    .line 34
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const/16 p1, 0x28

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p2, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onThrowPeerExceptionMsg,current:"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onThrowSignalExceptionMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->throwExceptionMsg(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWebSocketConnectStatus(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x354b

    .line 8
    .line 9
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    move-object v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/content/Context;

    .line 24
    .line 25
    :goto_0
    if-nez v0, :cond_2

    .line 26
    .line 27
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "Fatal error: context is null when onChannelConnectStatus."

    .line 30
    .line 31
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const/16 v0, 0x1e

    .line 36
    .line 37
    invoke-direct {p0, v0, p1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public onWebSocketConnected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/Context;

    .line 12
    .line 13
    :goto_0
    const/16 v1, 0x2fa8

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, "Fatal error: context is null when onConnectedToRoom."

    .line 20
    .line 21
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string p1, "Context is null when onConnectedToRoom"

    .line 25
    .line 26
    invoke-static {v1, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$18;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$18;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToThread(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "Fatal error: mMainHandler is null when onWebSocketConnected."

    .line 44
    .line 45
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string p1, "mMainHandler is null when onWebSocketConnected"

    .line 49
    .line 50
    invoke-static {v1, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public onWebSocketDisconnected(I)V
    .locals 0

    .line 1
    const/16 p1, 0x354a

    .line 2
    .line 3
    invoke-static {p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lorg/webrtc/haima/HmRtcAdapterImpl$19;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lorg/webrtc/haima/HmRtcAdapterImpl$19;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToUiThread(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onWebSocketForceDisconnectRTC(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->onDisconnected(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onWebSocketHandShakeSucceed()V
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onWebSocketHandShakeSucceed."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x3549

    .line 9
    .line 10
    invoke-static {v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(I)V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0x1f

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, v0, v1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onWebSocketRecvExtMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onWebSocketRecvExtMessage: "

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
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onWebSocketRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lorg/hmwebrtc/SessionDescription;->description:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x33a6

    .line 4
    .line 5
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0x351b

    .line 9
    .line 10
    const-string v1, "signalv2"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    move-object v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/content/Context;

    .line 27
    .line 28
    :goto_0
    const/16 v2, 0x2fa8

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "Fatal error: context is null when onRemoteDescription."

    .line 35
    .line 36
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "Context is null when onRemoteDescription"

    .line 40
    .line 41
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_1
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapterImpl$20;

    .line 46
    .line 47
    invoke-direct {v0, p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl$20;-><init>(Lorg/webrtc/haima/HmRtcAdapterImpl;Lorg/hmwebrtc/SessionDescription;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->postRunnableToThread(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "Fatal error: mMainHandler is null when onWebSocketRemoteDescription."

    .line 59
    .line 60
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string p1, "mMainHandler is null when onWebSocketRemoteDescription"

    .line 64
    .line 65
    invoke-static {v2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    const/4 v0, 0x3

    .line 70
    invoke-direct {p0, v0, p1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onWebSocketRemoteIceCandidate(Lorg/hmwebrtc/IceCandidate;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->onRemoteIceCandidate(Lorg/hmwebrtc/IceCandidate;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWebSocketSendMessage(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/Context;

    .line 12
    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    .line 15
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p2, "Fatal error: context is null when onChannelSendMessage."

    .line 18
    .line 19
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string v0, ""

    .line 24
    .line 25
    invoke-direct {p0, v0, p1, p2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->reportSendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v2, "to"

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "type"

    .line 39
    .line 40
    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/16 p1, 0x9

    .line 44
    .line 45
    invoke-direct {p0, p1, p2, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onX86DataChannelClose(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "onX86DataChannelClose, current:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "expired:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 v0, 0x3512

    .line 33
    .line 34
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const/16 p1, 0x37

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onX86DataChannelOpen(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "onX86DataChannelOpen, current:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "expired:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 v0, 0x3512

    .line 33
    .line 34
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    const/16 p1, 0x36

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onX86DataChannelPong(Ljava/lang/String;JLjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eq v0, p4, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string p2, "onX86DataChannelPong, current:"

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p2, "expired:"

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/16 p2, 0x3512

    .line 33
    .line 34
    invoke-static {p2, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, ""

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "payload"

    .line 61
    .line 62
    invoke-virtual {p4, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "recvTime"

    .line 81
    .line 82
    invoke-virtual {p4, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const/16 p1, 0x38

    .line 86
    .line 87
    const/4 p2, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p4}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public recordCountlyEventLocal(ILjava/lang/String;J)V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->sgCountlyEventRecorderCallback:Lorg/webrtc/haima/HmCountlyEventRecorderCallback;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p2, v0

    .line 26
    :goto_0
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/webrtc/haima/HmCountlyEventRecorderCallback;->recordCountlyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    const-string p2, "recordCountlyEventLocal error  callback is empty "

    .line 33
    .line 34
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception p1

    .line 39
    sget-object p2, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance p3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string p4, "recordCountlyEventLocal got Exception: "

    .line 47
    .line 48
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method

.method public registerGSCallback(Lorg/webrtc/haima/listeners/HmGSCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->gsCallback:Lorg/webrtc/haima/listeners/HmGSCallback;

    .line 2
    .line 3
    return-void
.end method

.method public registerPermissionHandler(Lorg/webrtc/haima/listeners/HmPermissionHandler;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmCameraWrapper;->registerPermissionHandler(Lorg/webrtc/haima/listeners/HmPermissionHandler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public registerProtoUtilsCallback(Lorg/webrtc/haima/listeners/HmProtoCallback;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/webrtc/haima/util/RtcProtoBufUtil;->registerCallback(Lorg/webrtc/haima/listeners/HmProtoCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public reportError(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    move-object v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/content/Context;

    .line 22
    .line 23
    :goto_0
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "Fatal error: context is null when reportError."

    .line 28
    .line 29
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0, p1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl;->processRunOnUiThread(ILjava/lang/Object;Landroid/os/Bundle;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public reportWeaklyNetwork([Ljava/lang/Object;)V
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p1

    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const/4 v3, -0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    :goto_0
    if-ge v4, v1, :cond_3

    .line 8
    .line 9
    aget-object v5, p1, v4

    .line 10
    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    if-nez v5, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    instance-of v6, v5, Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v6, :cond_2

    .line 19
    .line 20
    add-int/lit8 v6, v0, -0x1

    .line 21
    .line 22
    if-ne v3, v6, :cond_1

    .line 23
    .line 24
    new-instance v6, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    check-cast v5, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    check-cast v5, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, ","

    .line 56
    .line 57
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    sget-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetDebug:Z

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v1, "=reportWeaklyNetwork===16004 ="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_4
    const/16 p1, 0x3e84

    .line 94
    .line 95
    invoke-static {p1, v2}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public requestKeyFrame()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/hmwebrtc/AndroidVideoDecoder;->requestKeyFrame()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/hmwebrtc/DirectSurfaceVideoDecoder;->requestKeyFrame()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public resetStreamInfo()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameHeigh:J

    .line 4
    .line 5
    iput-wide v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mFrameWidth:J

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->isCalled:Z

    .line 9
    .line 10
    return-void
.end method

.method public sendData([B)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "sendData:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    return p1

    .line 33
    :cond_0
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->sendData([B)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public sendText(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->sendText(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public sendToRemoteInput(I[B)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/PeerConnectionClient;->sendToRemoteInput(I[B)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    return p1
.end method

.method public setActivityIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/camera/HmCameraManager;->setActivityIntent(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "setAudioAttributes"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "Not setAudioAttributes"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public setCameraCaptureFormat(Lorg/webrtc/haima/camera/HmCameraSettings;)V
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/camera/HmCameraManager;->setCameraCaptureFormat(Lorg/webrtc/haima/camera/HmCameraSettings;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setCameraConfig(Lorg/webrtc/haima/beans/CameraConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mCameraConfig:Lorg/webrtc/haima/beans/CameraConfig;

    .line 2
    .line 3
    return-void
.end method

.method public setCameraMaxBitrate(I)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Lorg/webrtc/haima/camera/HmCameraManager;->setVideoBitrate(Ljava/lang/Integer;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setCameraMinBitrate(I)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Lorg/webrtc/haima/camera/HmCameraManager;->setVideoBitrate(Ljava/lang/Integer;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setGSUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSignalHttpSwitchToSignalV1V2Lock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGSUrl:Ljava/lang/String;

    .line 5
    .line 6
    sget-object p1, Lorg/webrtc/haima/beans/GamePlatformType;->X86:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 7
    .line 8
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public setHmPlayerCallback(Lorg/webrtc/haima/HmPlayerCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mPlayerCallback:Lorg/webrtc/haima/HmPlayerCallback;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p1
.end method

.method public setHmStreamerCallback(Lorg/webrtc/haima/HmStreamerCallback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mStreamerCallbackLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mStreamerCallback:Lorg/webrtc/haima/HmStreamerCallback;

    .line 5
    .line 6
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "setHmStreamerCallback - callback="

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p1
.end method

.method public setInputPingPongMs(I)V
    .locals 0

    return-void
.end method

.method public setLongParameter(Ljava/lang/String;J)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setLongParameter type"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p1, "null"

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "paramter:"

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    return p1
.end method

.method public setOwner(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->owner:I

    .line 2
    .line 3
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/webrtc/haima/HmRtcParameterHelper$TrafficStats;->IsMatched(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-static {p2}, Lorg/webrtc/haima/TrafficStatsHelper;->executeCommand(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mHmBandWidthController:Lorg/webrtc/haima/HmBandWidthController;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-static {p1}, Lorg/webrtc/haima/HmBandWidthController;->isMatchedModuleName(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mHmBandWidthController:Lorg/webrtc/haima/HmBandWidthController;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, "."

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmBandWidthController;->executeCommand(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    return p1

    .line 66
    :cond_1
    :goto_0
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "setParameter type"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, "null"

    .line 79
    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    move-object p1, v2

    .line 84
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string p1, "paramter:"

    .line 88
    .line 89
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move-object p2, v2

    .line 96
    :goto_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const/4 p1, 0x0

    .line 107
    return p1
.end method

.method public setSpeakerMute(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->setSpeakerMute(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public startAudioRecorder()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/audio/HmAudioManager;->getInstance()Lorg/webrtc/haima/audio/HmAudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/audio/HmAudioManager;->startRecord()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public startCameraCapture()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/camera/HmCameraManager;->startVideoSource()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public stopAudioRecorder()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/audio/HmAudioManager;->getInstance()Lorg/webrtc/haima/audio/HmAudioManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/audio/HmAudioManager;->stopRecord()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public stopCameraCapture()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/camera/HmCameraManager;->stopVideoSource()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public switchDisplayView()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 2
    .line 3
    const/16 v1, 0x3474

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v5, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 12
    .line 13
    if-eqz v5, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mSurfaceDsRenderer:Lorg/hmwebrtc/SurfaceViewDsRenderer;

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v5, "onSurfaceSwitch:mSurfaceRenderer"

    .line 31
    .line 32
    invoke-static {v0, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v5}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureDsRenderer:Lorg/hmwebrtc/TextureViewDsRenderer;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v5, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 43
    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mTextureRenderer:Lorg/hmwebrtc/TextureViewRenderer;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lorg/webrtc/haima/HmRtcAdapterImpl;->TAG:Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, "@@@@onSurfaceSwitch:mTextureDsRenderer"

    .line 57
    .line 58
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "onSurfaceSwitch:mTextureDsRenderer"

    .line 62
    .line 63
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iput-boolean v4, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->viewSwitchHappened:Z

    .line 67
    .line 68
    return-void
.end method

.method public throwExceptionMsg(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/webrtc/haima/HmRtcAdapterImpl;->internalThrowExceptionMsg(Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public unRegisterPermissionHandler()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/HmCameraWrapper;->unRegisterPermissionHandler()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method uninitBandWidthController()V
    .locals 2

    .line 1
    const-string v0, "bw"

    .line 2
    .line 3
    const-string v1, "uninitBandWidthController"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mHmBandWidthController:Lorg/webrtc/haima/HmBandWidthController;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lorg/webrtc/haima/HmBandWidthController;->stop()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->mHmBandWidthController:Lorg/webrtc/haima/HmBandWidthController;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public weaklyNetworkReportToArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetReport:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReportList:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0xa

    .line 12
    .line 13
    if-ge v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReportList:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->weaklyNetworkReportList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public x86SendLargeDataBlcok([BLorg/webrtc/haima/HaimaDataChannel$Listener;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmRtcAdapterImpl;->peerConnectionClient:Lorg/webrtc/haima/PeerConnectionClient;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, -0x1

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/webrtc/haima/PeerConnectionClient;->x86SendLargeDataBlcok([BLorg/webrtc/haima/HaimaDataChannel$Listener;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
