.class public Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;
.implements Lorg/webrtc/haima/HmStreamerCallback;
.implements Lorg/webrtc/haima/HmPlayerCallback;
.implements Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;
.implements Lorg/webrtc/haima/IOperationDelayEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;,
        Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$HmCountlyEventRecorder;,
        Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;,
        Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$FirstFrameTimer;
    }
.end annotation


# static fields
.field public static final APK_TYPE_NON_POOL:I = 0x3

.field public static final APK_TYPE_POOL_BINTANG:I = 0x1

.field public static final APK_TYPE_POOL_NON_BINTANG:I = 0x2

.field private static final FIRST_FRAME_TIMEOUT_ERROR:I = -0x1

.field public static final RENDER_NONE:I = 0x0

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_SURFACE_VIEW_RTC:I = 0x3

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field private static final RTC_CONNECT_TIMEOUT_ERROR:I = -0x2

.field protected static final SCENE_NO:I = 0x0

.field protected static final SCENE_YES:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field protected static final VERSION:Ljava/lang/String; = "1.0"

.field public static final X86_INPUT_PING_INTERVAL_DEFAULT:J = 0x2710L

.field public static final X86_INPUT_PING_PONG_DELAY_DEFAULT:J = 0x64L


# instance fields
.field private hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

.field protected ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

.field private mAllRenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppContext:Landroid/content/Context;

.field private mCoTurnUrl:Ljava/lang/String;

.field private mConnectTimeOutTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;

.field protected mContext:Landroid/content/Context;

.field private mCurrentRender:I

.field private mCurrentRenderIndex:I

.field private mEnableShareStream:Z

.field private mFirstFrameTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$FirstFrameTimer;

.field protected mHandler:Landroid/os/Handler;

.field private mHeight:I

.field mHmCountlyEventRecorderCallback:Lorg/webrtc/haima/HmCountlyEventRecorderCallback;

.field protected mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

.field private mImageEnhancement:Ljava/lang/Boolean;

.field private mImageEnhancementStrength:F

.field private mInputDatachannelEnable:Z

.field private mInstanceIP:Ljava/lang/String;

.field public mIpV6TurnUrl:Ljava/lang/String;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field protected mPlayerDecodeTime:J

.field protected mPlayerFrameSize:Ljava/lang/String;

.field private mPrepareStartTime:J

.field protected mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

.field protected mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

.field private mRoomId:Ljava/lang/String;

.field private mSignalUrl:Ljava/lang/String;

.field private mSignalV2Url:Ljava/lang/String;

.field private mStreamingCallback:Lcom/haima/hmcp/listeners/StreamingCallback;

.field protected mTimer:Ljava/util/Timer;

.field private mTurnPassword:Ljava/lang/String;

.field public mTurnUrl:Ljava/lang/String;

.field private mTurnUserName:Ljava/lang/String;

.field private mVideoHeight:I

.field private mVideoRotationDegree:I

.field private mVideoWidth:I

.field private mWidth:I

.field private mX86InputPingTask:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;

.field public object:Lorg/json/JSONObject;

.field private reconnectCount:I

.field protected sdkStreamPayloadData:Lcom/haima/hmcp/beans/SdkStreamPayloadData;

.field private sendX86InputPingTime:J

.field protected surfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected viewRender:Lorg/hmwebrtc/VideoSink;

.field private x86InputPingInterval:J

.field private x86InputPingPongDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/haima/hmcp/rtc/widgets/RtcPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/business/HmcpRequest;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mPrepareStartTime:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mEnableShareStream:Z

    .line 10
    .line 11
    const-wide/16 v1, 0x2710

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->x86InputPingInterval:J

    .line 14
    .line 15
    const-wide/16 v1, 0x64

    .line 16
    .line 17
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->x86InputPingPongDelay:J

    .line 18
    .line 19
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$3;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$3;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmCountlyEventRecorderCallback:Lorg/webrtc/haima/HmCountlyEventRecorderCallback;

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAllRenders:Ljava/util/List;

    .line 32
    .line 33
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCurrentRenderIndex:I

    .line 34
    .line 35
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCurrentRender:I

    .line 36
    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    const-string p2, "rtcPlayer init fail, context is null"

    .line 42
    .line 43
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string p1, "12200"

    .line 47
    .line 48
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iput-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 53
    .line 54
    iput-object p3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 55
    .line 56
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->lambda$onRemoteTextMessage$2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mMeasuredWidth:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mMeasuredWidth:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mMeasuredHeight:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mMeasuredHeight:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mWidth:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mWidth:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHeight:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHeight:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$600(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->onVideoError(IILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sendX86InputPingTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$702(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sendX86InputPingTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$800(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->x86InputPingInterval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic b(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->lambda$onRemoteVideoEncodeAdaptation$0(Ljava/lang/String;III)V

    return-void
.end method

.method private static buildRtcAdapterConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/webrtc/haima/HmRtcAdapter$Configuration;
    .locals 1

    .line 1
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/webrtc/haima/HmRtcAdapter$Configuration;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mCoturnServer:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mSignalServer:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mRoomId:Ljava/lang/String;

    .line 11
    .line 12
    sget-object p1, Lcom/haima/hmcp/countly/CountlyUtil;->mUID:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mUserId:Ljava/lang/String;

    .line 15
    .line 16
    sget-object p1, Lcom/haima/hmcp/countly/CountlyUtil;->mDeviceID:Ljava/lang/String;

    .line 17
    .line 18
    iput-object p1, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceId:Ljava/lang/String;

    .line 19
    .line 20
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "buildRtcAdapterConfig  turnUrl="

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p3, " ipV6TurnUrl="

    .line 36
    .line 37
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p3, " turnUserName="

    .line 44
    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p3, " turnPassword="

    .line 52
    .line 53
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_0

    .line 76
    .line 77
    new-instance p2, Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;

    .line 78
    .line 79
    invoke-direct {p2, p4, p6, p7}, Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-nez p2, :cond_1

    .line 90
    .line 91
    new-instance p2, Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;

    .line 92
    .line 93
    invoke-direct {p2, p5, p6, p7}, Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_1
    const/4 p2, 0x0

    .line 100
    new-array p2, p2, [Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;

    .line 101
    .line 102
    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, [Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;

    .line 107
    .line 108
    iput-object p1, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mTurnIceServers:[Lorg/webrtc/haima/HmRtcAdapter$TurnIceServer;

    .line 109
    .line 110
    :try_start_0
    invoke-static {p0}, Lcom/haima/hmcp/utils/ConfigUtil;->getDeviceInfo(Landroid/content/Context;)Lcom/haima/hmcp/beans/DeviceInfo;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    iget-object p1, p0, Lcom/haima/hmcp/beans/DeviceInfo;->osVersion:Ljava/lang/String;

    .line 115
    .line 116
    iput-object p1, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceOs:Ljava/lang/String;

    .line 117
    .line 118
    iget-object p1, p0, Lcom/haima/hmcp/beans/DeviceInfo;->brand:Ljava/lang/String;

    .line 119
    .line 120
    iput-object p1, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceBrand:Ljava/lang/String;

    .line 121
    .line 122
    iget-object p1, p0, Lcom/haima/hmcp/beans/DeviceInfo;->model:Ljava/lang/String;

    .line 123
    .line 124
    iput-object p1, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceModel:Ljava/lang/String;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/haima/hmcp/beans/DeviceInfo;->screenInfo:Lcom/haima/hmcp/beans/ScreenInfo;

    .line 127
    .line 128
    if-eqz p0, :cond_2

    .line 129
    .line 130
    iget-object p0, p0, Lcom/haima/hmcp/beans/ScreenInfo;->resolution:Ljava/lang/String;

    .line 131
    .line 132
    iput-object p0, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mDeviceResolution:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    :catch_0
    :cond_2
    new-instance p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$4;

    .line 135
    .line 136
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$4;-><init>()V

    .line 137
    .line 138
    .line 139
    iput-object p0, v0, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mEnvVariableReader:Lorg/webrtc/haima/HmRtcAdapter$EnvVariableReader;

    .line 140
    .line 141
    return-object v0
.end method

.method public static synthetic c(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->lambda$onRemoteInputTransportState$1(I)V

    return-void
.end method

.method private checkColorMode(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method private declared-synchronized doRelease(ZZ)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->cancelConnectTimeOutTimer()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->cancelFirstFrameTimer()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->onPlayerRelease()V

    .line 11
    .line 12
    .line 13
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAppContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v0, "audio"

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Landroid/media/AudioManager;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 28
    .line 29
    if-eqz p2, :cond_4

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCloudFileManager()Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCloudFileManager()Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCloudFileManager()Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/haima/hmcp/utils/ping/PingManager;->getInstance()Lcom/haima/hmcp/utils/ping/PingManager;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p2}, Lcom/haima/hmcp/utils/ping/PingManager;->stop()V

    .line 65
    .line 66
    .line 67
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    if-eqz p2, :cond_3

    .line 71
    .line 72
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 75
    .line 76
    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 82
    .line 83
    .line 84
    :cond_2
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->disconnectRtc(Z)V

    .line 85
    .line 86
    .line 87
    const-string p1, "13232"

    .line 88
    .line 89
    const-string p2, "doRelease"

    .line 90
    .line 91
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 95
    .line 96
    iput-boolean v0, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mNeedToSwitchRtmp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    monitor-exit p0

    .line 99
    return-void

    .line 100
    :cond_4
    :goto_0
    monitor-exit p0

    .line 101
    return-void

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    monitor-exit p0

    .line 104
    throw p1
.end method

.method private initRenders()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAllRenders:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAllRenders:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAllRenders:Ljava/util/List;

    .line 15
    .line 16
    iget v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCurrentRender:I

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAllRenders:Ljava/util/List;

    .line 26
    .line 27
    iget v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCurrentRenderIndex:I

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCurrentRender:I

    .line 40
    .line 41
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-interface {v0, v1}, Lcom/haima/hmcp/rtc/widgets/IRenderView;->setFrameProxy(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCurrentRender:I

    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setRender(I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private synthetic lambda$onRemoteInputTransportState$1(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->instanceConnect()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method private synthetic lambda$onRemoteTextMessage$2(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/input/HMInput;->parseMsg(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$onRemoteVideoEncodeAdaptation$0(Ljava/lang/String;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mStreamingCallback:Lcom/haima/hmcp/listeners/StreamingCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/haima/hmcp/listeners/StreamingCallback;->onRemoteVideoEncodeChange(Ljava/lang/String;III)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private onVideoError(IILjava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    aput-object v4, v2, v3

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    aput-object v4, v2, v3

    .line 26
    .line 27
    const/4 v3, 0x2

    .line 28
    aput-object p3, v2, v3

    .line 29
    .line 30
    const-string v3, "onVideoError what: %d, extra: %d, error: %s"

    .line 31
    .line 32
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/haima/hmcp/beans/ReportBaseError;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, ""

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-direct {v0, v1, p3}, Lcom/haima/hmcp/beans/ReportBaseError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p3, "12036"

    .line 62
    .line 63
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p3, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 71
    .line 72
    const/4 v0, -0x1

    .line 73
    invoke-virtual {p3, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 74
    .line 75
    .line 76
    iget-object p3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 77
    .line 78
    invoke-virtual {p3, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 79
    .line 80
    .line 81
    iget-object p3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

    .line 82
    .line 83
    if-eqz p3, :cond_1

    .line 84
    .line 85
    invoke-interface {p3, p1, p2}, Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;->onError(II)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-void
.end method

.method private openVideoAndAudio()V
    .locals 23
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    move-object/from16 v13, p0

    .line 2
    .line 3
    const-string v0, " "

    .line 4
    .line 5
    sget-object v14, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "==openVideoAndAudio"

    .line 8
    .line 9
    invoke-static {v14, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 18
    .line 19
    sget-object v2, Lcom/haima/hmcp/beans/GamePlatformType;->ARM:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 20
    .line 21
    if-ne v1, v2, :cond_2

    .line 22
    .line 23
    iget-object v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalUrl:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCoTurnUrl:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRoomId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v1, "openVideoAndAudio got bad mSignalUrl: "

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalUrl:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, " OR bad mCoTurnUrl: "

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCoTurnUrl:Ljava/lang/String;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, " OR bad mRoomId: "

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRoomId:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    const/4 v1, 0x0

    .line 91
    invoke-virtual {v13, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->release(Z)V

    .line 92
    .line 93
    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->startConnectTimeOutTimer()V

    .line 95
    .line 96
    .line 97
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v3, "mSetResolution:"

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v3, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 116
    .line 117
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v3}, Lcom/haima/hmcp/beans/ResolutionInfo;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v14, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v2, Lcom/haima/hmcp/beans/ReportStartPlayStream;

    .line 136
    .line 137
    iget-object v3, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    iget-object v3, v3, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 144
    .line 145
    iget-object v4, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 146
    .line 147
    invoke-virtual {v4}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    iget-object v4, v4, Lcom/haima/hmcp/beans/ResolutionInfo;->bitRate:Ljava/lang/String;

    .line 152
    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v6, ""

    .line 159
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v6, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 164
    .line 165
    invoke-virtual {v6}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    iget v6, v6, Lcom/haima/hmcp/beans/ResolutionInfo;->frameRate:I

    .line 170
    .line 171
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-direct {v2, v3, v4, v5}, Lcom/haima/hmcp/beans/ReportStartPlayStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string v3, "12039"

    .line 182
    .line 183
    invoke-static {v2}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-static {v3, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_3
    :try_start_0
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 191
    .line 192
    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 193
    .line 194
    sget-object v3, Lcom/haima/hmcp/beans/GamePlatformType;->X86:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 195
    .line 196
    if-eq v2, v3, :cond_5

    .line 197
    .line 198
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalUrl:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-nez v2, :cond_4

    .line 205
    .line 206
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCoTurnUrl:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-nez v2, :cond_4

    .line 213
    .line 214
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRoomId:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-nez v2, :cond_4

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_4
    const-string v0, "mVideoPath is null!"

    .line 224
    .line 225
    invoke-static {v14, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto/16 :goto_3

    .line 229
    .line 230
    :cond_5
    :goto_0
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 231
    .line 232
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->checkSeiData()V

    .line 233
    .line 234
    .line 235
    new-instance v8, Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;

    .line 236
    .line 237
    invoke-direct {v8}, Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;-><init>()V

    .line 238
    .line 239
    .line 240
    sget v2, Lcom/haima/hmcp/Constants;->webrtcSignalTimeout:I

    .line 241
    .line 242
    int-to-long v2, v2

    .line 243
    iput-wide v2, v8, Lio/socket/client/Manager$Options;->timeout:J

    .line 244
    .line 245
    sget v2, Lcom/haima/hmcp/Constants;->webrtcSignalReconnectionDelayMax:I

    .line 246
    .line 247
    int-to-long v2, v2

    .line 248
    iput-wide v2, v8, Lio/socket/client/Manager$Options;->reconnectionDelayMax:J

    .line 249
    .line 250
    sget v2, Lcom/haima/hmcp/Constants;->webrtcSignalReconnectionAttempts:I

    .line 251
    .line 252
    iput v2, v8, Lio/socket/client/Manager$Options;->reconnectionAttempts:I

    .line 253
    .line 254
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 255
    .line 256
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    sget-object v3, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 261
    .line 262
    if-ne v2, v3, :cond_6

    .line 263
    .line 264
    const/16 v2, 0x5a

    .line 265
    .line 266
    const/16 v10, 0x5a

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_6
    const/4 v10, 0x0

    .line 270
    :goto_1
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 271
    .line 272
    iget-object v3, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 273
    .line 274
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCameraConfig()Lcom/haima/hmcp/beans/HMCameraConfig;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v2, v3}, Lorg/webrtc/haima/HmRtcAdapter;->setCameraConfig(Lorg/webrtc/haima/beans/CameraConfig;)V

    .line 279
    .line 280
    .line 281
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 282
    .line 283
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getViewContext()Landroid/content/Context;

    .line 284
    .line 285
    .line 286
    move-result-object v15

    .line 287
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCoTurnUrl:Ljava/lang/String;

    .line 288
    .line 289
    iget-object v3, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalUrl:Ljava/lang/String;

    .line 290
    .line 291
    iget-object v4, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRoomId:Ljava/lang/String;

    .line 292
    .line 293
    iget-object v5, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mTurnUrl:Ljava/lang/String;

    .line 294
    .line 295
    iget-object v6, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mIpV6TurnUrl:Ljava/lang/String;

    .line 296
    .line 297
    iget-object v7, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mTurnUserName:Ljava/lang/String;

    .line 298
    .line 299
    iget-object v9, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mTurnPassword:Ljava/lang/String;

    .line 300
    .line 301
    move-object/from16 v16, v2

    .line 302
    .line 303
    move-object/from16 v17, v3

    .line 304
    .line 305
    move-object/from16 v18, v4

    .line 306
    .line 307
    move-object/from16 v19, v5

    .line 308
    .line 309
    move-object/from16 v20, v6

    .line 310
    .line 311
    move-object/from16 v21, v7

    .line 312
    .line 313
    move-object/from16 v22, v9

    .line 314
    .line 315
    invoke-static/range {v15 .. v22}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->buildRtcAdapterConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/webrtc/haima/HmRtcAdapter$Configuration;

    .line 316
    .line 317
    .line 318
    move-result-object v12

    .line 319
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sdkStreamPayloadData:Lcom/haima/hmcp/beans/SdkStreamPayloadData;

    .line 320
    .line 321
    if-eqz v2, :cond_7

    .line 322
    .line 323
    iget-object v2, v2, Lcom/haima/hmcp/beans/SdkStreamPayloadData;->dataTrafficOwner:Ljava/lang/Integer;

    .line 324
    .line 325
    if-eqz v2, :cond_7

    .line 326
    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    const-string v3, "set rtc data traffic owner id: "

    .line 333
    .line 334
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    iget-object v3, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sdkStreamPayloadData:Lcom/haima/hmcp/beans/SdkStreamPayloadData;

    .line 338
    .line 339
    iget-object v3, v3, Lcom/haima/hmcp/beans/SdkStreamPayloadData;->dataTrafficOwner:Ljava/lang/Integer;

    .line 340
    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-static {v14, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 352
    .line 353
    invoke-static {}, Lorg/webrtc/haima/HmRtcParameterHelper$TrafficStats;->getModuleName()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    iget-object v4, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sdkStreamPayloadData:Lcom/haima/hmcp/beans/SdkStreamPayloadData;

    .line 358
    .line 359
    iget-object v4, v4, Lcom/haima/hmcp/beans/SdkStreamPayloadData;->dataTrafficOwner:Ljava/lang/Integer;

    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    invoke-static {v4}, Lorg/webrtc/haima/HmRtcParameterHelper$TrafficStats;->preferUid(I)Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v4

    .line 369
    invoke-virtual {v2, v3, v4}, Lorg/webrtc/haima/HmRtcAdapter;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    goto :goto_2

    .line 373
    :cond_7
    const-string v2, "do not set data traffic owner id cause is null"

    .line 374
    .line 375
    invoke-static {v14, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    const-string v3, "==initAdapter "

    .line 384
    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    iget-object v3, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalUrl:Ljava/lang/String;

    .line 389
    .line 390
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget-object v3, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRoomId:Ljava/lang/String;

    .line 397
    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    iget-object v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCoTurnUrl:Ljava/lang/String;

    .line 405
    .line 406
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-static {v14, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getGameArchitectureType()Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    sget-object v2, Lcom/haima/hmcp/beans/GameArchitectureType;->ARM:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 425
    .line 426
    const/4 v15, 0x1

    .line 427
    if-ne v0, v2, :cond_8

    .line 428
    .line 429
    const/4 v1, 0x1

    .line 430
    :cond_8
    iput-boolean v1, v12, Lorg/webrtc/haima/HmRtcAdapter$Configuration;->mGameTypeIsArm:Z

    .line 431
    .line 432
    iget-object v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 433
    .line 434
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mContext:Landroid/content/Context;

    .line 435
    .line 436
    iget-object v3, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->viewRender:Lorg/hmwebrtc/VideoSink;

    .line 437
    .line 438
    const/4 v4, 0x0

    .line 439
    iget-object v5, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalV2Url:Ljava/lang/String;

    .line 440
    .line 441
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 442
    .line 443
    .line 444
    move-result-object v0

    .line 445
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getSDKVersion()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v6

    .line 449
    iget-object v7, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mInstanceIP:Ljava/lang/String;

    .line 450
    .line 451
    iget-object v11, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 452
    .line 453
    move-object/from16 v9, p0

    .line 454
    .line 455
    invoke-virtual/range {v1 .. v12}, Lorg/webrtc/haima/HmRtcAdapter;->initAdapter(Landroid/content/Context;Lorg/hmwebrtc/VideoSink;Lorg/hmwebrtc/VideoSink;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/webrtc/haima/SocketIORTCClient$HmSocketIOOptions;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketSignalClientCallback;ILandroid/widget/FrameLayout;Lorg/webrtc/haima/HmRtcAdapter$Configuration;)Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-nez v0, :cond_9

    .line 460
    .line 461
    const-string v0, "rtc initAdapter failed!"

    .line 462
    .line 463
    invoke-static {v14, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    :cond_9
    iget-object v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 467
    .line 468
    invoke-virtual {v0, v13}, Lorg/webrtc/haima/HmRtcAdapter;->setHmPlayerCallback(Lorg/webrtc/haima/HmPlayerCallback;)V

    .line 469
    .line 470
    .line 471
    iget-object v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 472
    .line 473
    invoke-virtual {v0, v13}, Lorg/webrtc/haima/HmRtcAdapter;->setHmStreamerCallback(Lorg/webrtc/haima/HmStreamerCallback;)V

    .line 474
    .line 475
    .line 476
    iget-object v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 477
    .line 478
    iget-object v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 479
    .line 480
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAudioMute()Z

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapter;->setSpeakerMute(Z)V

    .line 485
    .line 486
    .line 487
    iget-object v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 488
    .line 489
    invoke-virtual {v0, v13}, Lorg/webrtc/haima/HmRtcAdapter;->SetOperationDelayEvent(Lorg/webrtc/haima/IOperationDelayEvent;)V

    .line 490
    .line 491
    .line 492
    iget-object v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 493
    .line 494
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapter;->isInputChannelEnabled()Z

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    iput-boolean v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mInputDatachannelEnable:Z

    .line 499
    .line 500
    iget-object v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 501
    .line 502
    iget-boolean v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mEnableShareStream:Z

    .line 503
    .line 504
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapter;->enableShareStreaming(Z)V

    .line 505
    .line 506
    .line 507
    const-string v0, "set HmCountlyEventRecorderCallback to webrtc core"

    .line 508
    .line 509
    invoke-static {v14, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    new-instance v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$HmCountlyEventRecorder;

    .line 513
    .line 514
    const/4 v1, 0x0

    .line 515
    invoke-direct {v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$HmCountlyEventRecorder;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$1;)V

    .line 516
    .line 517
    .line 518
    invoke-static {v0}, Lorg/webrtc/haima/HmRtcAdapter;->setCountlyEventRecorderCallback(Lorg/webrtc/haima/HmCountlyEventRecorderCallback;)V

    .line 519
    .line 520
    .line 521
    const-string v0, "==createPlayer===mHmRtcAdapter"

    .line 522
    .line 523
    invoke-static {v14, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    const-string v0, "12087"

    .line 527
    .line 528
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 532
    .line 533
    .line 534
    move-result-wide v0

    .line 535
    iput-wide v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mPrepareStartTime:J

    .line 536
    .line 537
    const-string v0, "13215"

    .line 538
    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .line 543
    .line 544
    const-string v2, "CoTurn="

    .line 545
    .line 546
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCoTurnUrl:Ljava/lang/String;

    .line 550
    .line 551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    const-string v2, "; Signal="

    .line 555
    .line 556
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalUrl:Ljava/lang/String;

    .line 560
    .line 561
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    const-string v2, "; RoomId="

    .line 565
    .line 566
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    iget-object v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRoomId:Ljava/lang/String;

    .line 570
    .line 571
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    const-string v2, "; enableShareStream="

    .line 575
    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    iget-boolean v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mEnableShareStream:Z

    .line 580
    .line 581
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    const-string v2, "; mInputDatachannelEnable="

    .line 585
    .line 586
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    iget-boolean v2, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mInputDatachannelEnable:Z

    .line 590
    .line 591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    iget-object v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 602
    .line 603
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBandwidthDetectionSwitch()Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->switchBandWidthDetection(Z)Z

    .line 608
    .line 609
    .line 610
    iget-object v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 611
    .line 612
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapter;->createConnect()V

    .line 613
    .line 614
    .line 615
    const-string v0, "==mHmRtcAdapter->createConnect"

    .line 616
    .line 617
    invoke-static {v14, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    iget-object v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 621
    .line 622
    invoke-virtual {v0, v15}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 623
    .line 624
    .line 625
    iget-object v0, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mImageEnhancement:Ljava/lang/Boolean;

    .line 626
    .line 627
    if-eqz v0, :cond_a

    .line 628
    .line 629
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    iget v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mImageEnhancementStrength:F

    .line 634
    .line 635
    invoke-virtual {v13, v0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->imageEnhancement(ZF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    .line 637
    .line 638
    goto :goto_3

    .line 639
    :catch_0
    move-exception v0

    .line 640
    sget-object v1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 641
    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    .line 643
    .line 644
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .line 646
    .line 647
    const-string v3, "Unable to open content: "

    .line 648
    .line 649
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    iget-object v3, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCoTurnUrl:Ljava/lang/String;

    .line 653
    .line 654
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    const-string v3, "; "

    .line 658
    .line 659
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    iget-object v4, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalUrl:Ljava/lang/String;

    .line 663
    .line 664
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    .line 669
    .line 670
    iget-object v3, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRoomId:Ljava/lang/String;

    .line 671
    .line 672
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    invoke-static {v1, v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->cancelConnectTimeOutTimer()V

    .line 683
    .line 684
    .line 685
    iget-object v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 686
    .line 687
    const/4 v2, -0x1

    .line 688
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 689
    .line 690
    .line 691
    iget-object v1, v13, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 692
    .line 693
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 694
    .line 695
    .line 696
    new-instance v1, Ljava/lang/StringBuilder;

    .line 697
    .line 698
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .line 700
    .line 701
    const-string v2, "openVideoAndAudio:: mMediaPlayer error=>"

    .line 702
    .line 703
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v0

    .line 710
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v0

    .line 717
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    :cond_a
    :goto_3
    return-void
.end method

.method private processX86DataChannelPong(Ljava/lang/String;J)V
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "processX86DataChannelPong:"

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
    const-string v0, ":"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    array-length v0, p1

    .line 30
    const/4 v1, 0x1

    .line 31
    if-le v0, v1, :cond_3

    .line 32
    .line 33
    :try_start_0
    aget-object p1, p1, v1

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    const/4 p1, 0x0

    .line 41
    :goto_0
    if-nez p1, :cond_0

    .line 42
    .line 43
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    const-string p2, "processX86DataChannelPong timestamp parse error"

    .line 46
    .line 47
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iget-wide v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sendX86InputPingTime:J

    .line 56
    .line 57
    cmp-long v4, v0, v2

    .line 58
    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    sget-object p2, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v0, "sendX86InputPingTime = "

    .line 69
    .line 70
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sendX86InputPingTime:J

    .line 74
    .line 75
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, " Pong contain sendX86InputPingTime : "

    .line 79
    .line 80
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    sub-long/2addr p2, v0

    .line 99
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 100
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v1, "ping/pong==lagTime===>"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v0, ""

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string v1, "10050"

    .line 139
    .line 140
    invoke-static {v1, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 144
    .line 145
    if-eqz p1, :cond_2

    .line 146
    .line 147
    long-to-int v1, p2

    .line 148
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmClockDiffUse(I)V

    .line 149
    .line 150
    .line 151
    :cond_2
    iget-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->x86InputPingPongDelay:J

    .line 152
    .line 153
    cmp-long p1, p2, v1

    .line 154
    .line 155
    if-ltz p1, :cond_3

    .line 156
    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    const-string p2, "10033"

    .line 173
    .line 174
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_3
    return-void
.end method

.method private sendX86InputIMStatus()V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "sendX86InputIMStatus"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v2, Lorg/webrtc/haima/util/RtcProtoBufUtil$StatusType;->STATUS_HIDE:Lorg/webrtc/haima/util/RtcProtoBufUtil$StatusType;

    .line 13
    .line 14
    invoke-static {v2}, Lorg/webrtc/haima/util/RtcProtoBufUtil;->getIMStatusData(Lorg/webrtc/haima/util/RtcProtoBufUtil$StatusType;)[B

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lorg/webrtc/haima/HmRtcAdapter;->sendData([B)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "sendIMStatusResult:"

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private setRenderView(Lcom/haima/hmcp/rtc/widgets/IRenderView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->unbindEGLSurface()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    if-nez p1, :cond_2

    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmScreenShotManager()Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmScreenShotConfig()Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "WEBRTC"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->setStreamType(Ljava/lang/String;)Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->setRtcRender(Lcom/haima/hmcp/rtc/widgets/IRenderView;)Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/utils/ScreenShotManager;->setConfig(Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 58
    .line 59
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;

    .line 68
    .line 69
    invoke-direct {v2, p0, v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$2;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Landroid/view/View;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    .line 77
    const/16 v2, 0x11

    .line 78
    .line 79
    const/4 v3, -0x2

    .line 80
    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setRenderView(Lcom/haima/hmcp/listeners/IRenderViewBase;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private setVideoURI()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->openVideoAndAudio()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private startConnectTimeOutTimer()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->cancelConnectTimeOutTimer()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mConnectTimeOutTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->start()Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "==ConnectTimeOutTimer start is call, ConnectTimeOutTimer: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mConnectTimeOutTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private startFirstFrameTimer()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "==FirstFrameTimer start is call, mFirstFrameTimer: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mFirstFrameTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$FirstFrameTimer;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->cancelFirstFrameTimer()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$FirstFrameTimer;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$FirstFrameTimer;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mFirstFrameTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$FirstFrameTimer;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->start()Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private startSendX86InputPing()V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "===startSendX86InputPing===, x86InputPingInterval:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-wide v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->x86InputPingInterval:J

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHandler:Landroid/os/Handler;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    new-instance v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$1;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mX86InputPingTask:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    const-wide/16 v2, 0x0

    .line 40
    .line 41
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private stopSendX86InputPing()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "===stopSendX86InputPing==="

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mX86InputPingTask:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mX86InputPingTask:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$PingTask;

    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private updateVideoSize(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAppContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenWidth(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenWidth(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAppContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenHeight(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenHeight(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-gt v0, p1, :cond_3

    .line 49
    .line 50
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-le v0, p2, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move v1, p1

    .line 60
    move v0, p2

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget-object v1, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 67
    .line 68
    if-ne v0, v1, :cond_4

    .line 69
    .line 70
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    const-string v1, "updateVideoSize: PORTRAIT"

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    mul-int v1, v0, p1

    .line 94
    .line 95
    div-int/2addr v1, p2

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    const-string v1, "updateVideoSize: LANDSCAPE"

    .line 100
    .line 101
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    mul-int v1, v0, p1

    .line 121
    .line 122
    div-int/2addr v1, p2

    .line 123
    :goto_1
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmShowWidth(I)V

    .line 126
    .line 127
    .line 128
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 129
    .line 130
    invoke-virtual {v2, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmShowHeight(I)V

    .line 131
    .line 132
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v3, "Streaming size[ width="

    .line 139
    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v3, ", height="

    .line 147
    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v4, "], RenderView size[ width="

    .line 155
    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v3, "]"

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    const-string v3, "13422"

    .line 178
    .line 179
    invoke-static {v3, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    sget-object v3, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 183
    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v5, "==onMeasure: "

    .line 190
    .line 191
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 205
    .line 206
    invoke-interface {v2, v1, v0}, Lcom/haima/hmcp/rtc/widgets/IRenderView;->setVideoSize(II)V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 210
    .line 211
    int-to-float p1, p1

    .line 212
    int-to-float p2, p2

    .line 213
    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->calcWindowStreamScale(FFII)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 217
    .line 218
    iget-object p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenResolution:Ljava/lang/String;

    .line 219
    .line 220
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->calcWindowStreamScale(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method


# virtual methods
.method public CloudStateSend(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->CloudStateSend(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public UiMessageSend(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "status:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ",data:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "13504"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public cancelConnectTimeOutTimer()V
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cancelConnectTimeOutTimer is call, cancelConnectTimeOutTimer: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mConnectTimeOutTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mConnectTimeOutTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    sget-object v1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "cancelConnectTimeOutTimer got Exception: "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mConnectTimeOutTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$ConnectTimeOutTimer;

    .line 84
    .line 85
    :cond_0
    return-void
.end method

.method public cancelFirstFrameTimer()V
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cancelFirstFrameTimer is call, mFirstFrameTimer: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mFirstFrameTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$FirstFrameTimer;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mFirstFrameTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$FirstFrameTimer;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    sget-object v1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "cancelFirstFrameTimer got Exception: "

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mFirstFrameTimer:Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$FirstFrameTimer;

    .line 84
    .line 85
    :cond_0
    return-void
.end method

.method public connectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "connectAccProxy port:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "13341"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_ACC_CONNECT_ENABLE:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string p2, "connectAccProxy config disable"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/webrtc/haima/HmRtcAdapter;->ConnectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string p2, "connectAccProxy  start"

    .line 45
    .line 46
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public disconnectAccProxy()V
    .locals 2

    .line 1
    const-string v0, "13342"

    .line 2
    .line 3
    const-string v1, "disconnectAccProxy interface call triggers RTC reconnection"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v0, Lcom/haima/hmcp/Constants;->CONFIG_ACC_CONNECT_ENABLE:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "disconnectAccProxy config disable"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "disConnectAccProxy  start"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->reconnectRtc(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public disconnectRtc(Z)V
    .locals 1

    .line 1
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "sdk to disconnect rtc"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->stopSendX86InputPing()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/haima/hmcp/input/HMInput;->stopSendPing()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Lorg/webrtc/haima/HmRtcAdapter;->setHmStreamerCallback(Lorg/webrtc/haima/HmStreamerCallback;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lorg/webrtc/haima/HmRtcAdapter;->setHmPlayerCallback(Lorg/webrtc/haima/HmPlayerCallback;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/webrtc/haima/HmRtcAdapter;->disconnect()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopReportClockDiffLatency()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopAllVibrators()V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopAllPhoneVibrators()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public enableShareStream(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mEnableShareStream:Z

    .line 2
    .line 3
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "enableShareStream flag:"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected fastResolutionSceneHandle()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x3

    .line 7
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->CloudStateSend(I)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "Fast resolution->CloudStateSend(STATE_PLAYING)"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 18
    .line 19
    const-string v3, ""

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getUiListener()Lcom/haima/hmcp/listeners/HmcpUIListener;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getUiListener()Lcom/haima/hmcp/listeners/HmcpUIListener;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget-object v4, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    invoke-virtual {v4, v5, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {v2, v4}, Lcom/haima/hmcp/listeners/HmcpUIListener;->HmcpPlayerStatus(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v2, "Fast resolution->Constants.STATUS_START_PLAY"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getUiListener()Lcom/haima/hmcp/listeners/HmcpUIListener;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object v4, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 57
    .line 58
    const/16 v5, 0x66

    .line 59
    .line 60
    invoke-virtual {v4, v5, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-interface {v2, v4}, Lcom/haima/hmcp/listeners/HmcpUIListener;->HmcpPlayerStatus(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v2, "Fast resolution->Constants.STATUS_FIRST_FRAME_ARRIVAL"

    .line 68
    .line 69
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "fold screen: Fast resolution FirstFrameArrived"

    .line 73
    .line 74
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iget-object v2, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v4, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    iget-object v4, v4, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_2

    .line 114
    .line 115
    const-string v2, "Fast resolution->===isNeedShowSwitchSuccess===="

    .line 116
    .line 117
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    .line 121
    .line 122
    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 123
    .line 124
    .line 125
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_result:I

    .line 126
    .line 127
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const/4 v3, 0x1

    .line 132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cur_id:I

    .line 140
    .line 141
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    iget-object v3, v3, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cur_rate:I

    .line 157
    .line 158
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 163
    .line 164
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    iget-object v3, v3, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cred:I

    .line 174
    .line 175
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p0, v2, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_2
    const-string v2, "Fast resolution->===isNeedShowSwitch faile===="

    .line 188
    .line 189
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    .line 193
    .line 194
    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    if-eqz v2, :cond_3

    .line 204
    .line 205
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 206
    .line 207
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    iget-object v3, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 212
    .line 213
    :cond_3
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cur_rate:I

    .line 214
    .line 215
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_play:I

    .line 223
    .line 224
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-virtual {p0, v2, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 236
    .line 237
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 241
    .line 242
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurResolution(Lcom/haima/hmcp/beans/ResolutionInfo;)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 250
    .line 251
    if-eqz v0, :cond_4

    .line 252
    .line 253
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapter;->resetStreamInfo()V

    .line 254
    .line 255
    .line 256
    :cond_4
    return-void
.end method

.method public getCurrentBitRate()I
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/haima/hmcp/beans/ResolutionInfo;->bitRate:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "getCurrentBitRate::"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "getCurrentBitRate -------"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    :goto_0
    div-int/lit16 v0, v0, 0x1f40

    .line 67
    .line 68
    return v0
.end method

.method public getIMediaPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getMinBitRate(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    const-string v0, ""

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_3

    .line 13
    .line 14
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget-object v0, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object v4, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-le v3, v4, :cond_2

    .line 40
    .line 41
    iget-object v0, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 42
    .line 43
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    return-object v0
.end method

.method public getRenderView()Lcom/haima/hmcp/rtc/widgets/IRenderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResolution(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/haima/hmcp/beans/ResolutionInfo;
    .locals 5
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
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_5

    .line 15
    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    iget-object v3, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->defaultChoice:Ljava/lang/String;

    .line 38
    .line 39
    const-string v4, "1"

    .line 40
    .line 41
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 48
    .line 49
    iget-object p2, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setCurrenteResolutionID(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v2

    .line 55
    :cond_2
    if-eqz p2, :cond_3

    .line 56
    .line 57
    iget-object v3, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_3

    .line 64
    .line 65
    return-object v2

    .line 66
    :cond_3
    if-eqz p3, :cond_4

    .line 67
    .line 68
    iget-object v3, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    return-object v2

    .line 77
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_5
    :goto_2
    return-object v0
.end method

.method public getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public getShortcut()Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;->getBitmap()Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getStreamUrl()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public getmHmRtcAdapter()Lorg/webrtc/haima/HmRtcAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public imageEnhancement(ZF)V
    .locals 4

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mImageEnhancement:Ljava/lang/Boolean;

    .line 6
    .line 7
    iput p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mImageEnhancementStrength:F

    .line 8
    .line 9
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "imageEnhancement isImageEnhancement:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ",Strength:"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 40
    .line 41
    instance-of v3, v1, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;

    .line 42
    .line 43
    if-eqz v3, :cond_0

    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "RtcTextureViewRenderer imageEnhancement:"

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 72
    .line 73
    check-cast v0, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/TextureViewRenderer;->setUnsharpMaskEnabled(Z)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 79
    .line 80
    check-cast p1, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lorg/hmwebrtc/TextureViewRenderer;->setUnsharpMaskAmount(F)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    instance-of v1, v1, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

    .line 87
    .line 88
    if-eqz v1, :cond_1

    .line 89
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v3, "RtcSurfaceViewRenderer imageEnhancement:"

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 117
    .line 118
    check-cast v0, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/SurfaceViewRenderer;->setUnsharpMaskEnabled(Z)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 124
    .line 125
    check-cast p1, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Lorg/hmwebrtc/SurfaceViewRenderer;->setUnsharpMaskAmount(F)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    const-string p1, "imageEnhancement mRenderView is null"

    .line 132
    .line 133
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_0
    return-void
.end method

.method public initMetaInfo(Ljava/util/HashMap;)V
    .locals 6
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
    const-string v0, "ping_interval_time"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    const-wide/16 v1, 0x2710

    .line 10
    .line 11
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    move-wide v3, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    int-to-long v3, v3

    .line 24
    :goto_0
    iput-wide v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->x86InputPingInterval:J

    .line 25
    .line 26
    sget-object v3, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "x86 ping interval"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v3, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    iput-wide v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->x86InputPingInterval:J

    .line 50
    .line 51
    :goto_1
    const-string v0, "ping_delay_time"

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    const-wide/16 v0, 0x64

    .line 60
    .line 61
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    move-wide v2, v0

    .line 68
    goto :goto_2

    .line 69
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    int-to-long v2, v2

    .line 74
    :goto_2
    iput-wide v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->x86InputPingPongDelay:J

    .line 75
    .line 76
    sget-object v2, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v4, "x86 ping delay"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {v2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :catch_1
    iput-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->x86InputPingPongDelay:J

    .line 100
    .line 101
    :goto_3
    return-void
.end method

.method public initVideoView(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/haima/hmcp/Constants;->IS_RTC_LOG_ENABLE:Z

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {v1}, Lorg/webrtc/haima/HmRtcAdapter;->enableLogging(Z)Z

    .line 12
    .line 13
    .line 14
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "rtc log open"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 22
    .line 23
    sget-object v2, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenOrientation(Lcom/haima/hmcp/enums/ScreenOrientation;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAppContext:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getVideoViewType()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCurrentRender:I

    .line 45
    .line 46
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v3, "initVideoView-> set render type: "

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCurrentRender:I

    .line 59
    .line 60
    if-ne v3, v1, :cond_2

    .line 61
    .line 62
    const-string v1, "Surface View"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const-string v1, "Texture View"

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Landroid/os/Handler;

    .line 78
    .line 79
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHandler:Landroid/os/Handler;

    .line 83
    .line 84
    new-instance v0, Ljava/util/Timer;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mTimer:Ljava/util/Timer;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 92
    .line 93
    new-instance v1, Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 94
    .line 95
    invoke-direct {v1}, Lcom/haima/hmcp/utils/FrameDataProxy;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmFrameDataProxy(Lcom/haima/hmcp/utils/FrameDataProxy;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->initRenders()V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 113
    .line 114
    .line 115
    new-instance v0, Lorg/webrtc/haima/HmRtcAdapter;

    .line 116
    .line 117
    invoke-direct {v0}, Lorg/webrtc/haima/HmRtcAdapter;-><init>()V

    .line 118
    .line 119
    .line 120
    iput-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 123
    .line 124
    iput-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mNeedToSwitchRtmp:Z

    .line 125
    .line 126
    invoke-static {}, Lorg/webrtc/haima/HmCameraWrapper;->getInstance()Lorg/webrtc/haima/HmCameraWrapper;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$1;

    .line 131
    .line 132
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$1;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Landroid/content/Context;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmCameraWrapper;->registerPermissionChecker(Lorg/webrtc/haima/listeners/HmPermissionChecker;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public inputDatachannelEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mInputDatachannelEnable:Z

    .line 2
    .line 3
    return v0
.end method

.method protected isInPlaybackState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCurrentState()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCurrentState()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCurrentState()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-eq v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    return v1
.end method

.method public isOnSound()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurrentSound()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    cmpl-float v0, v0, v2

    .line 13
    .line 14
    if-lez v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_1
    return v1
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->isInPlaybackState()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapter;->isPlaying()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

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

.method public notifyStasticInfo(IJLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v7, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-wide v3, p2

    .line 8
    move v5, p1

    .line 9
    move-object v6, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$6;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;JILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAccProxyConnectStateChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "ijkVideoView == null,onAccProxyConnectStateChange failed"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onAccProxyConnectStateChange(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "getHmcpPlayerListener == null,onAccProxyConnectStateChange failed"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public onBitrate(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmPlayerBitRate(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onCatchExceptionMsg(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "100666018-"

    .line 14
    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getCloudId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 34
    .line 35
    const-string v1, "prompt_hmcp_error"

    .line 36
    .line 37
    invoke-interface {v0, v1, p2, p1}, Lcom/haima/hmcp/business/HmcpRequestManager$OnHmcpSaasRequestListener;->showRetryPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public onCommonMessage(Lorg/webrtc/haima/HmStreamerCallback$MsgId;JLorg/webrtc/haima/HmStreamerCallback$MsgPayload;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onCommonMessage id:"

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
    const-string v2, ",code:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    new-instance v0, Lcom/haima/hmcp/beans/PlayNotification;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/haima/hmcp/beans/PlayNotification;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-wide p2, v0, Lcom/haima/hmcp/beans/PlayNotification;->value:J

    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    add-int/lit8 p1, p1, 0x1

    .line 49
    .line 50
    iput p1, v0, Lcom/haima/hmcp/beans/PlayNotification;->type:I

    .line 51
    .line 52
    :cond_0
    if-eqz p4, :cond_1

    .line 53
    .line 54
    iget-object p1, p4, Lorg/webrtc/haima/HmStreamerCallback$MsgPayload;->bytes:[B

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/beans/PlayNotification;->setData([B)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p4, Lorg/webrtc/haima/HmStreamerCallback$MsgPayload;->reserve:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/beans/PlayNotification;->setPayload(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onPlayerCommMsg(Lcom/haima/hmcp/beans/PlayNotification;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const-string p1, "ijkVideoView is null"

    .line 71
    .line 72
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method public onConnectFailed(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->cancelConnectTimeOutTimer()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->cancelFirstFrameTimer()V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectFailed:Z

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, "cloudPlayInfo == null,can\'t set ijkVideoView.getCloudPlayInfo().isWebrtcConnectFailed = true"

    .line 31
    .line 32
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-interface {p1, v0, v0}, Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;->onError(II)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void
.end method

.method public onConnected()V
    .locals 8

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==mHmRtcAdapter->onConnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x1

    .line 26
    iput-boolean v1, v0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isWebrtcConnectSuccess:Z

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "cloudPlayInfo == null,can\'t set ijkVideoView.getCloudPlayInfo().isWebrtcConnectSuccess = true"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->cancelConnectTimeOutTimer()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->startFirstFrameTimer()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const-string v3, "videoUrl"

    .line 51
    .line 52
    const-string v4, "success"

    .line 53
    .line 54
    const-string v5, ""

    .line 55
    .line 56
    iget-wide v6, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mPrepareStartTime:J

    .line 57
    .line 58
    invoke-virtual/range {v2 .. v7}, Lcom/haima/hmcp/business/HmcpRequestManager;->setResultNetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->reconnectCount:I

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->start()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public onCreateAnswer()V
    .locals 0

    return-void
.end method

.method public onCreateWebSocketClient(Landroid/content/Context;Ljava/lang/String;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;)Lorg/webrtc/haima/WebSocketSignalClient;
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 7
    .line 8
    invoke-direct {v1, p1, p2, v0, p3}, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient$RtcWebSocketConnectOptions;Lorg/webrtc/haima/WebSocketSignalClient$IWebSocketConnectionEvent;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance p3, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "onCreateWebSocketClient + signalV2Server:"

    .line 19
    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object v1
.end method

.method public onCurrentIpAddress(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmStreamerIPCallback:Lcom/haima/hmcp/listeners/HmStreamerIPCallback;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/HmStreamerIPCallback;->onConnectionIPChanged(Lorg/json/JSONObject;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onDelayInfoNeedSend(Lorg/webrtc/haima/HmFrameDelayInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onDelayInfoNeedSend(Lorg/webrtc/haima/HmFrameDelayInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onDisconnect(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "RTC onDisconnect: "

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
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "Rtc connect is "

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 34
    .line 35
    invoke-virtual {v1}, Lorg/webrtc/haima/HmRtcAdapter;->isConnected()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p1, 0x1

    .line 50
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->reconnectRtc(Z)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public onError(Lorg/webrtc/haima/enums/RtcErrorType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onError rtcErrorType:"

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
    const-string p1, ",errorString:"

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p1, ",obj:"

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onFirstFrameArrival()V
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==ijkVideoView onFirstFrameArrival"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string v1, "ijkVideoView is null"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->cancelFirstFrameTimer()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;->onFirstFrameArrival()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "hmcpVideoPlayerListener is null"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->viewRender:Lorg/hmwebrtc/VideoSink;

    .line 35
    .line 36
    instance-of v2, v1, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    check-cast v1, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGlobalConfig:Lcom/haima/hmcp/beans/GlobalConfig;

    .line 45
    .line 46
    iget-boolean v2, v2, Lcom/haima/hmcp/beans/GlobalConfig;->rtcSurfaceRendererScreenShotEnable:Z

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/SurfaceViewRenderer;->setLastFrameCallBack(Z)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    sput-wide v1, Lcom/haima/hmcp/utils/TimeUtil;->FirstFrameArrival:J

    .line 56
    .line 57
    invoke-static {}, Lcom/haima/hmcp/utils/TimeUtil;->logString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurrentApkType()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v2, 0x1

    .line 71
    if-ne v1, v2, :cond_3

    .line 72
    .line 73
    return-void

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 75
    .line 76
    invoke-virtual {v1}, Lorg/webrtc/haima/HmRtcAdapter;->getFrameDelayInfo()Lorg/webrtc/haima/HmFrameDelayInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    invoke-virtual {v1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getCodecName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v1}, Lorg/webrtc/haima/HmFrameDelayInfo;->getCodecImplementationName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v4, "OperationStream==timeframe---onFirstFrameRender, codes: "

    .line 96
    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, "; codecImp: "

    .line 104
    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v3, "codec:"

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, "; codecImp:"

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string v1, "12045"

    .line 144
    .line 145
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAppContext:Landroid/content/Context;

    .line 149
    .line 150
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->firstFrameArrival(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->disable()V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->reset()V

    .line 183
    .line 184
    .line 185
    :cond_5
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHandler:Landroid/os/Handler;

    .line 186
    .line 187
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$5;

    .line 188
    .line 189
    invoke-direct {v1, p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer$5;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public onFps(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    int-to-long v1, p1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmPlayerFPS(J)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onFrameDecode(I)V
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    iput-wide v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mPlayerDecodeTime:J

    .line 3
    .line 4
    return-void
.end method

.method public onFrameDelay(IIIF)V
    .locals 0

    return-void
.end method

.method public onFrameResolution(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-eqz v2, :cond_1

    .line 6
    .line 7
    cmp-long v2, p3, v0

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->updateRenderView()V

    .line 13
    .line 14
    .line 15
    long-to-int p2, p1

    .line 16
    iput p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mVideoWidth:I

    .line 17
    .line 18
    long-to-int p1, p3

    .line 19
    iput p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mVideoHeight:I

    .line 20
    .line 21
    iget-object p3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 22
    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p2, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->updateVideoSize(II)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public onIDRArrived(J)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p2, "==mHmRtcAdapter->onIDRArrived"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onIDRDecoded(J)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p2, "==mHmRtcAdapter->onIDRDecoded"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/haima/hmcp/utils/FrameDataProxy;->getFrameCallbackImp()Lorg/hmwebrtc/EglRenderer$FrameCallback;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {p1, p2}, Lcom/haima/hmcp/rtc/widgets/IRenderView;->setFrameProxy(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public onIDRReadyToRender(J)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p2, "==mHmRtcAdapter->onIDRReadyToRender"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onIDRRendered(J)V
    .locals 0

    .line 1
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string p2, "==mHmRtcAdapter->onIDRRend"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->onFirstFrameArrival()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onMessage([B)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onMessage"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onMessage([B)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onOperationDelayCallback(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOperationDelayCallback:Lcom/haima/hmcp/listeners/IOperationDelayCallback;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/IOperationDelayCallback;->onOperationDelayCallback(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "onOperationDelayCallback, delay:"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "ms"

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected onPlayerRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;->onPlayerRelease()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected onPlayerStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;->onPlayerStop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onReleaseWebSocketClient(Lorg/webrtc/haima/WebSocketSignalClient;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/haima/hmcp/rtc/widgets/beans/RtcWebSocketClient;

    .line 2
    .line 3
    return-void
.end method

.method public onRemoteBinMessage([B)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "UTF8"

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "onRemoteBinMessage msg:"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "onRemoteBinMessage e:"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public onRemoteInputTransportState(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onRemoteInputTransportState state:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ",1:open;2:close,mInputDatachannelEnable:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mInputDatachannelEnable:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->getGameArchitectureType()Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lcom/haima/hmcp/beans/GameArchitectureType;->ARM:Lcom/haima/hmcp/beans/GameArchitectureType;

    .line 40
    .line 41
    if-ne v0, v1, :cond_0

    .line 42
    .line 43
    iget-boolean v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mInputDatachannelEnable:Z

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHandler:Landroid/os/Handler;

    .line 52
    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/c;

    .line 56
    .line 57
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/c;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public onRemoteTextMessage(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onRemoteTextMessage payload:"

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v1, v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    new-instance v1, Lcom/haima/hmcp/rtc/widgets/beans/b;

    .line 36
    .line 37
    invoke-direct {v1, p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/b;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public onRemoteVideoEncodeAdaptation(Ljava/lang/String;III)V
    .locals 8

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onRemoteVideoEncodeAdaptation codecName: "

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
    const-string v2, ", fps: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", res: "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, "x"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mStreamingCallback:Lcom/haima/hmcp/listeners/StreamingCallback;

    .line 48
    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    const-string p1, "onRemoteVideoEncodeAdaptation mStreamingCallback == null"

    .line 52
    .line 53
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHandler:Landroid/os/Handler;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    new-instance v7, Lcom/haima/hmcp/rtc/widgets/beans/a;

    .line 62
    .line 63
    move-object v1, v7

    .line 64
    move-object v2, p0

    .line 65
    move-object v3, p1

    .line 66
    move v4, p2

    .line 67
    move v5, p3

    .line 68
    move v6, p4

    .line 69
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/rtc/widgets/beans/a;-><init>(Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;Ljava/lang/String;III)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public onRtcError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSignalConnected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, v0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSignalConnectSuccess:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "cloudPlayInfo == null,can\'t set ijkVideoView.getCloudPlayInfo().isSignalConnectSuccess = true"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public onSignalDisconnected()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==onSignalDisconnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSignalReceiveMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p2, "candidate"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x1

    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveCandidate:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string p2, "cloudPlayInfo == null,can\'t set cloudPlayInfo.isReceiveCandidate = true"

    .line 35
    .line 36
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string p2, "offer"

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_4

    .line 47
    .line 48
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isReceiveOffer:Z

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string p2, "cloudPlayInfo == null,can\'t set cloudPlayInfo.isReceiveOffer = true"

    .line 68
    .line 69
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    :goto_0
    return-void
.end method

.method public onSignalSendMessage(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string p1, "answer"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p3, 0x1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-boolean p3, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendAnswer:Z

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string p2, "cloudPlayInfo == null,can\'t set cloudPlayInfo.isSendAnswer = true"

    .line 35
    .line 36
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string p1, "join"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    const-string p1, "candidate"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-boolean p3, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSendCandidate:Z

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 75
    .line 76
    const-string p2, "cloudPlayInfo == null,can\'t set cloudPlayInfo.isSendCandidate = true"

    .line 77
    .line 78
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    :goto_0
    return-void
.end method

.method public onSignalStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSignalV2Connected()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, v0, Lcom/haima/hmcp/beans/CloudPlayInfo;->isSignalConnectSuccess:Z

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "cloudPlayInfo == null,can\'t set ijkVideoView.getCloudPlayInfo().isSignalConnectSuccess = true"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public onSignalV2Disconnected()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==onSignalV2Disconnected"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSignalV2RecvOffer()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "==onSignalV2RecvOffer"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onSignalV2Status(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSwitchConnectionCallback(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onSwitchConnectionCallback(II)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public onSwitchResolution(ILcom/haima/hmcp/beans/ResolutionInfo;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSwitchToRtmpStreaming()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doSwitchToRtmpStreaming()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onX86InputClose()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onX86DataChannelClose"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->stopSendX86InputPing()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onX86InputOpen()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "onX86DataChannelOpen"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->stopSendX86InputPing()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->startSendX86InputPing()V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sendX86InputIMStatus()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onX86InputPong(Ljava/lang/String;J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onX86DataChannelPong:"

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
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->processX86DataChannelPong(Ljava/lang/String;J)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method protected rePlay()V
    .locals 0

    return-void
.end method

.method public reconnectRtc(Z)V
    .locals 7

    .line 1
    const-string v0, "errorCode"

    .line 2
    .line 3
    const-string v1, "1.0"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopUploadX86()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iput v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->reconnectCount:I

    .line 17
    .line 18
    :cond_1
    iget p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->reconnectCount:I

    .line 19
    .line 20
    sget v3, Lcom/haima/hmcp/Constants;->CONFIG_RTC_RETRY_COUNT:I

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-ge p1, v3, :cond_2

    .line 24
    .line 25
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, "==ConnectTimeOutTimer is time out and reconnect"

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->reconnectCount:I

    .line 33
    .line 34
    add-int/2addr p1, v4

    .line 35
    iput p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->reconnectCount:I

    .line 36
    .line 37
    const-string p1, "13231"

    .line 38
    .line 39
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->openVideoAndAudio()V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_1

    .line 46
    .line 47
    :cond_2
    sget-boolean p1, Lcom/haima/hmcp/Constants;->CONFIG_RTC_CONNECT_FAILURE_TO_RTMP_SWITCH:Z

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isWaitStreamUrlPre()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    const-string v0, "Switch to RTMP cancel because pooled restart receive op4.5 but not receive op5"

    .line 62
    .line 63
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string p1, "12200"

    .line 67
    .line 68
    invoke-static {p1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

    .line 73
    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    const/4 v0, -0x2

    .line 77
    invoke-interface {p1, v0, v0}, Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;->onError(II)V

    .line 78
    .line 79
    .line 80
    :cond_4
    return-void

    .line 81
    :cond_5
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    const-string v3, "==ConnectTimeOutTimer is time out and out of reconnect times"

    .line 84
    .line 85
    invoke-static {p1, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    const-string v5, "100666010"

    .line 99
    .line 100
    if-nez v3, :cond_6

    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v5, "-"

    .line 111
    .line 112
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-object v5, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 116
    .line 117
    invoke-virtual {v5}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    :cond_6
    new-instance v3, Lorg/json/JSONObject;

    .line 129
    .line 130
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 131
    .line 132
    .line 133
    :try_start_0
    const-string v6, "eventDataVer"

    .line 134
    .line 135
    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    const-string v6, "version"

    .line 139
    .line 140
    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    if-eqz v1, :cond_7

    .line 150
    .line 151
    const-string v1, "statusCode"

    .line 152
    .line 153
    iget-object v6, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 154
    .line 155
    invoke-virtual {v6}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    iget-object v6, v6, Lcom/haima/hmcp/beans/CloudPlayInfo;->reportStatusCode:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    :cond_7
    const-string v1, "stopByApp"

    .line 165
    .line 166
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    :goto_0
    const-string p1, "13053"

    .line 185
    .line 186
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-static {p1, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 194
    .line 195
    new-instance v1, Lcom/haima/hmcp/utils/ErrorInfo;

    .line 196
    .line 197
    invoke-direct {v1}, Lcom/haima/hmcp/utils/ErrorInfo;-><init>()V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v0, v5}, Lcom/haima/hmcp/utils/ErrorInfo;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/haima/hmcp/utils/ErrorInfo;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    const-string v1, "rootCause"

    .line 205
    .line 206
    const-string v2, "reconnect RTC"

    .line 207
    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/utils/ErrorInfo;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/haima/hmcp/utils/ErrorInfo;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 213
    .line 214
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    const-string v2, "errorMessage"

    .line 219
    .line 220
    invoke-virtual {v0, v2, v1}, Lcom/haima/hmcp/utils/ErrorInfo;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/haima/hmcp/utils/ErrorInfo;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const/16 v1, 0x17

    .line 225
    .line 226
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->callbackHmcpError(Lcom/haima/hmcp/utils/ErrorInfo;I)Lorg/json/JSONObject;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v4}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->release(Z)V

    .line 230
    .line 231
    .line 232
    :goto_1
    return-void
.end method

.method public release(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->doRelease(ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public reportFrameDelayInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public requestKeyFrame()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "Requesting keyframe from server"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 13
    .line 14
    invoke-virtual {v0}, Lorg/webrtc/haima/HmRtcAdapter;->requestKeyFrame()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "Cannot request keyframe - RTC adapter is null"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setColorMode(Lcom/haima/hmcp/beans/ColorMode;Lcom/haima/hmcp/listeners/ColorModeListener;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "set color mode fail, ColorMode is null"

    .line 7
    .line 8
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-interface {p2, v0, v1}, Lcom/haima/hmcp/listeners/ColorModeListener;->onColorModeResult(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/ColorMode;->getMode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {p0, v1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->checkColorMode(I)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "set color mode fail, illegal mode: "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/ColorMode;->getMode()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object v1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    invoke-interface {p2, v0, p1}, Lcom/haima/hmcp/listeners/ColorModeListener;->onColorModeResult(ZLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 60
    .line 61
    if-nez v1, :cond_5

    .line 62
    .line 63
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    const-string v1, "set color mode fail, Render is not init"

    .line 66
    .line 67
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    if-eqz p2, :cond_4

    .line 71
    .line 72
    invoke-interface {p2, v0, v1}, Lcom/haima/hmcp/listeners/ColorModeListener;->onColorModeResult(ZLjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_4
    return-void

    .line 76
    :cond_5
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/ColorMode;->getMode()I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    const/4 v2, 0x1

    .line 81
    if-ne p1, v2, :cond_6

    .line 82
    .line 83
    const/4 p1, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_6
    const/4 p1, 0x0

    .line 86
    :goto_0
    invoke-interface {v1, p1}, Lcom/haima/hmcp/rtc/widgets/IRenderView;->enablePandaMode(Z)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    const-string p1, "set color mode success"

    .line 93
    .line 94
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    if-eqz p2, :cond_8

    .line 100
    .line 101
    const/4 p1, 0x0

    .line 102
    invoke-interface {p2, v2, p1}, Lcom/haima/hmcp/listeners/ColorModeListener;->onColorModeResult(ZLjava/lang/String;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 107
    .line 108
    const-string v1, "set color mode fail"

    .line 109
    .line 110
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    if-eqz p2, :cond_8

    .line 114
    .line 115
    invoke-interface {p2, v0, v1}, Lcom/haima/hmcp/listeners/ColorModeListener;->onColorModeResult(ZLjava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_8
    :goto_1
    return-void
.end method

.method public setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/utils/FrameDataProxy;->setHmFrameCallback(Lcom/haima/hmcp/listeners/HmFrameCallback;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmFrameDataProxy()Lcom/haima/hmcp/utils/FrameDataProxy;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameDataProxy;->getFrameCallbackImp()Lorg/hmwebrtc/EglRenderer$FrameCallback;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {p1, v0}, Lcom/haima/hmcp/rtc/widgets/IRenderView;->setFrameProxy(Lorg/hmwebrtc/EglRenderer$FrameCallback;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method public setHmStreamerIPCallback(Lcom/haima/hmcp/listeners/HmStreamerIPCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmStreamerIPCallback:Lcom/haima/hmcp/listeners/HmStreamerIPCallback;

    .line 7
    .line 8
    return-void
.end method

.method public setHmcpVideoPlayerListener(Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

    .line 2
    .line 3
    return-void
.end method

.method public setImageSize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAppContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenWidth(Landroid/content/Context;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenWidth(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAppContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/haima/hmcp/utils/ConfigUtil;->getScreenHeight(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenHeight(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    if-ne v0, v1, :cond_2

    .line 50
    .line 51
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-ge v0, v1, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-le v0, v1, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/4 v2, 0x0

    .line 82
    :goto_0
    if-eqz v2, :cond_4

    .line 83
    .line 84
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenWidth(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenHeight(I)V

    .line 102
    .line 103
    .line 104
    :cond_4
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 105
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v2, "setImageSize  mOrientation = "

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, ":"

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 129
    .line 130
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method public setInputPingPongMs(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setInputPingPongMs "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lorg/webrtc/haima/HmRtcAdapter;->setInputPingPongMs(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p1, "Cannot setInputPingPongMs - RTC adapter is null"

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method public setOperationDelayCallback(Lcom/haima/hmcp/listeners/IOperationDelayCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-object p1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOperationDelayCallback:Lcom/haima/hmcp/listeners/IOperationDelayCallback;

    .line 7
    .line 8
    return-void
.end method

.method public setRender(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p1, v1, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v0, v3

    .line 26
    .line 27
    const-string p1, "invalid render %d\n"

    .line 28
    .line 29
    invoke-static {v2, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "RENDER_TEXTURE_VIEW"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAppContext:Landroid/content/Context;

    .line 47
    .line 48
    invoke-direct {p1, v0}, Lcom/haima/hmcp/rtc/widgets/RtcTextureViewRenderer;-><init>(Landroid/content/Context;)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->viewRender:Lorg/hmwebrtc/VideoSink;

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setRenderView(Lcom/haima/hmcp/rtc/widgets/IRenderView;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    sget-object p1, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    const-string v0, "RENDER_SURFACE_VIEW"

    .line 60
    .line 61
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;

    .line 65
    .line 66
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAppContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-direct {p1, v0}, Lcom/haima/hmcp/rtc/widgets/RtcSurfaceViewRenderer;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->viewRender:Lorg/hmwebrtc/VideoSink;

    .line 72
    .line 73
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setRenderView(Lcom/haima/hmcp/rtc/widgets/IRenderView;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 p1, 0x0

    .line 78
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setRenderView(Lcom/haima/hmcp/rtc/widgets/IRenderView;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method public setStreamingCallback(Lcom/haima/hmcp/listeners/StreamingCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mStreamingCallback:Lcom/haima/hmcp/listeners/StreamingCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-void
.end method

.method public setmRenderView(Lcom/haima/hmcp/rtc/widgets/IRenderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 4
    .line 5
    sget-object v1, Lcom/haima/hmcp/beans/GamePlatformType;->ARM:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 6
    .line 7
    if-ne v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalUrl:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCoTurnUrl:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRoomId:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "===start===="

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->isInPlaybackState()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " mCurrentStat: "

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 63
    .line 64
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCurrentState()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->isInPlaybackState()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x3

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCurrentState()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eq v1, v2, :cond_5

    .line 92
    .line 93
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurrentApkType()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    const-string v3, ""

    .line 100
    .line 101
    const/4 v4, 0x1

    .line 102
    if-eq v1, v4, :cond_2

    .line 103
    .line 104
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isStartPlayCallBack()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-nez v1, :cond_2

    .line 111
    .line 112
    const/4 v1, 0x2

    .line 113
    invoke-virtual {p0, v1, v3}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->UiMessageSend(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setIsStartPlayCallBackFlag(Z)V

    .line 119
    .line 120
    .line 121
    :cond_2
    const-string v1, "==mMediaPlayer===start===="

    .line 122
    .line 123
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 127
    .line 128
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    if-eqz v1, :cond_3

    .line 133
    .line 134
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 135
    .line 136
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_3

    .line 141
    .line 142
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 143
    .line 144
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v1, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v5, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    iget-object v5, v5, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_3

    .line 163
    .line 164
    const-string v1, "===isNeedShowSwitchSuccess===="

    .line 165
    .line 166
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 170
    .line 171
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 172
    .line 173
    .line 174
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_result:I

    .line 175
    .line 176
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cur_id:I

    .line 188
    .line 189
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 194
    .line 195
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    iget-object v3, v3, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cur_rate:I

    .line 205
    .line 206
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    iget-object v3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 211
    .line 212
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    iget-object v3, v3, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cred:I

    .line 222
    .line 223
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 236
    .line 237
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 238
    .line 239
    .line 240
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 241
    .line 242
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    if-eqz v1, :cond_4

    .line 247
    .line 248
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 249
    .line 250
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    iget-object v3, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 255
    .line 256
    :cond_4
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cur_rate:I

    .line 257
    .line 258
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_play:I

    .line 266
    .line 267
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 279
    .line 280
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurResolution(Lcom/haima/hmcp/beans/ResolutionInfo;)V

    .line 290
    .line 291
    .line 292
    :cond_5
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 293
    .line 294
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 295
    .line 296
    .line 297
    return-void
.end method

.method public startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/beans/SdkStreamPayloadData;Lcom/haima/hmcp/rtc/widgets/beans/RtcTurnInfo;)V
    .locals 2

    .line 1
    iput-object p6, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->sdkStreamPayloadData:Lcom/haima/hmcp/beans/SdkStreamPayloadData;

    .line 2
    .line 3
    sget-object p6, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "=OperationStream=signalUrl===>"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "===signalV2Url==>"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "===coTurnUrl==>"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "===roomId==>"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p6, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 52
    .line 53
    sget-object v1, Lcom/haima/hmcp/beans/GamePlatformType;->ARM:Lcom/haima/hmcp/beans/GamePlatformType;

    .line 54
    .line 55
    if-ne v0, v1, :cond_2

    .line 56
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    .line 69
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string p5, "startPlay got bad signalUrl: "

    .line 81
    .line 82
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p1, " OR bad coTurnUrl: "

    .line 89
    .line 90
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p1, " OR bad roomId: "

    .line 97
    .line 98
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 112
    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->playRequest()V

    .line 116
    .line 117
    .line 118
    :cond_1
    const-string p1, "retry 211 request"

    .line 119
    .line 120
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalUrl:Ljava/lang/String;

    .line 125
    .line 126
    iput-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCoTurnUrl:Ljava/lang/String;

    .line 127
    .line 128
    iput-object p3, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalV2Url:Ljava/lang/String;

    .line 129
    .line 130
    iput-object p4, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRoomId:Ljava/lang/String;

    .line 131
    .line 132
    iput-object p5, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mInstanceIP:Ljava/lang/String;

    .line 133
    .line 134
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 135
    .line 136
    const/4 p2, 0x0

    .line 137
    iput-boolean p2, p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mNeedToSwitchRtmp:Z

    .line 138
    .line 139
    if-eqz p7, :cond_3

    .line 140
    .line 141
    iget-object p1, p7, Lcom/haima/hmcp/rtc/widgets/beans/RtcTurnInfo;->turnUrl:Ljava/lang/String;

    .line 142
    .line 143
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mTurnUrl:Ljava/lang/String;

    .line 144
    .line 145
    iget-object p1, p7, Lcom/haima/hmcp/rtc/widgets/beans/RtcTurnInfo;->ipV6TurnUrl:Ljava/lang/String;

    .line 146
    .line 147
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mIpV6TurnUrl:Ljava/lang/String;

    .line 148
    .line 149
    iget-object p1, p7, Lcom/haima/hmcp/rtc/widgets/beans/RtcTurnInfo;->turnUserName:Ljava/lang/String;

    .line 150
    .line 151
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mTurnUserName:Ljava/lang/String;

    .line 152
    .line 153
    iget-object p1, p7, Lcom/haima/hmcp/rtc/widgets/beans/RtcTurnInfo;->turnPassword:Ljava/lang/String;

    .line 154
    .line 155
    iput-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mTurnPassword:Ljava/lang/String;

    .line 156
    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string p2, "startPlay  mTurnUrl="

    .line 163
    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mTurnUrl:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p2, " mIpV6TurnUrl="

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mIpV6TurnUrl:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p2, " mTurnUserName="

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mTurnUserName:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string p2, " mTurnPassword="

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mTurnPassword:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p6, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 210
    .line 211
    const-string p2, "RTC is connected"

    .line 212
    .line 213
    if-eqz p1, :cond_4

    .line 214
    .line 215
    invoke-virtual {p1}, Lorg/webrtc/haima/HmRtcAdapter;->isConnected()Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-eqz p1, :cond_4

    .line 220
    .line 221
    invoke-static {p6, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->fastResolutionSceneHandle()V

    .line 225
    .line 226
    .line 227
    goto :goto_0

    .line 228
    :cond_4
    invoke-static {p6, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->setVideoURI()V

    .line 232
    .line 233
    .line 234
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 235
    .line 236
    .line 237
    move-result-wide p1

    .line 238
    sput-wide p1, Lcom/haima/hmcp/utils/TimeUtil;->MediaCodecCreate:J

    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->start()V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 244
    .line 245
    if-nez p1, :cond_5

    .line 246
    .line 247
    return-void

    .line 248
    :cond_5
    const/4 p2, 0x3

    .line 249
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 250
    .line 251
    .line 252
    return-void
.end method

.method public stopPlay()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->stopPlay(ZZ)V

    return-void
.end method

.method public stopPlay(ZZ)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/haima/hmcp/utils/HmIMEManager;->getInstance()Lcom/haima/hmcp/utils/HmIMEManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haima/hmcp/utils/HmIMEManager;->hideInput()Z

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setStartIM(Z)V

    .line 5
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==stopPlay=== CoTurnUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCoTurnUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; SignalUrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; RoomId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRoomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->reset()V

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->onPlayerStop()V

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    iget-object p2, p2, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGamePlatformType:Lcom/haima/hmcp/beans/GamePlatformType;

    sget-object v0, Lcom/haima/hmcp/beans/GamePlatformType;->ARM:Lcom/haima/hmcp/beans/GamePlatformType;

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mCoTurnUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mSignalUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRoomId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    return-void

    :cond_4
    if-eqz p1, :cond_5

    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->initRenders()V

    :cond_5
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->release(Z)V

    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->doRelease(ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public switchBandWidthDetection(Z)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "switchBandWidthDetection status:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const-string p1, "start"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "stop"

    .line 33
    .line 34
    :goto_0
    const-string v1, "bwc"

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Lorg/webrtc/haima/HmRtcAdapter;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    :goto_1
    return p1
.end method

.method public switchMobileNetworkTransport(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "switchMobileNetworkTransport:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "13343"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcAdapter;->SwitchToCellularConnection(Z)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "switchMobileNetworkTransport: "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method

.method public turnOffSound()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setCurrentSound(F)V

    .line 7
    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "turnOffSound:"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAppContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/haima/hmcp/utils/VolumeUtils;->getCurrentMediaVolume(Landroid/content/Context;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "13425"

    .line 33
    .line 34
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapter;->setSpeakerMute(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public turnOnSound()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setCurrentSound(F)V

    .line 8
    .line 9
    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "turnOnSound:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mAppContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/haima/hmcp/utils/VolumeUtils;->getCurrentMediaVolume(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

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
    const-string v1, "13425"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapter;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmRtcAdapter;->setSpeakerMute(Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public unbindEGLSurface()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->viewRender:Lorg/hmwebrtc/VideoSink;

    .line 2
    .line 3
    instance-of v1, v0, Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceViewRenderer;->releaseEglSurface()V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "unbindEGLSurface->SurfaceViewRenderer->releaseEglSurface success"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of v1, v0, Lorg/hmwebrtc/TextureViewRenderer;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    check-cast v0, Lorg/hmwebrtc/TextureViewRenderer;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/hmwebrtc/TextureViewRenderer;->releaseEglSurface()V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "unbindEGLSurface->TextureViewRenderer->releaseEglSurface success"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method

.method public updateRenderView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 6
    .line 7
    const/16 v2, 0x5a

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/16 v0, 0x5a

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iput v0, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mVideoRotationDegree:I

    .line 16
    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/haima/hmcp/rtc/widgets/beans/BaseRtcPlayer;->mRenderView:Lcom/haima/hmcp/rtc/widgets/IRenderView;

    .line 20
    .line 21
    invoke-interface {v1, v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->setVideoRotation(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
