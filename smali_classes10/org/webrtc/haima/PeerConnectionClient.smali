.class public Lorg/webrtc/haima/PeerConnectionClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/PeerConnectionClient$DcObserver;,
        Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;,
        Lorg/webrtc/haima/PeerConnectionClient$X86RemoteSDPObserver;,
        Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;,
        Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;,
        Lorg/webrtc/haima/PeerConnectionClient$PCObserver;,
        Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;,
        Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;,
        Lorg/webrtc/haima/PeerConnectionClient$StreamerAudioInfo;,
        Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;,
        Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;,
        Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;,
        Lorg/webrtc/haima/PeerConnectionClient$DCManager;,
        Lorg/webrtc/haima/PeerConnectionClient$CountlyController;
    }
.end annotation


# static fields
.field private static final AUDIO_AUTO_GAIN_CONTROL_CONSTRAINT:Ljava/lang/String; = "googAutoGainControl"

.field private static final AUDIO_CODEC_ISAC:Ljava/lang/String; = "ISAC"

.field private static final AUDIO_CODEC_OPUS:Ljava/lang/String; = "opus"

.field private static final AUDIO_CODEC_PARAM_BITRATE:Ljava/lang/String; = "maxaveragebitrate"

.field private static final AUDIO_ECHO_CANCELLATION_CONSTRAINT:Ljava/lang/String; = "googEchoCancellation"

.field private static final AUDIO_HIGH_PASS_FILTER_CONSTRAINT:Ljava/lang/String; = "googHighpassFilter"

.field private static final AUDIO_NOISE_SUPPRESSION_CONSTRAINT:Ljava/lang/String; = "googNoiseSuppression"

.field private static final COUNT_DOWN_LATCH_NUMBER:I = 0x1

.field private static final DC_MAX_BUFFER_SIZE:J = 0x3e800L

.field private static final DISABLE_WEBRTC_AGC_FIELDTRIAL:Ljava/lang/String; = "WebRTC-Audio-MinimizeResamplingOnMobile/Enabled/"

.field private static final HM_NACK_BUFFER_CONFIG_FIELDTRIAL:Ljava/lang/String; = "WebRTC-NACK-Buffer-Limit/%d/WebRTC-NACK-Buffer-Salt/%d/WebRTC-NACK-Buffer-Force-Limit/%d/"

.field private static final HM_RETURN_OK:Ljava/lang/String; = "HM_RET_OK"

.field public static final ICE_CONNECTION_FAILED:Ljava/lang/String; = "ICE_CONNECTION_FAILED"

.field public static final PEER_CONNECTION_FAILED:Ljava/lang/String; = "PEER_CONNECTION_FAILED"

.field private static final RTCEVENTLOG_OUTPUT_DIR_NAME:Ljava/lang/String; = "rtc_event_log"

.field private static final SMOOTHLY_DECODING:Ljava/lang/String; = "WebRTC-Smoothly-Decoding-On/Enabled/WebRTC-Smoothly-Decoding-Max-Buffers/%d/WebRTC-Smoothly-Decoding-Min-Buffers/%d/WebRTC-Smoothly-Decoding-Max-Delay/%d/WebRTC-Smoothly-Decoding-Min-Delay/%d/"

.field private static final TAG:Ljava/lang/String; = "PeerConnectionClient"

.field private static final UDP_PORT_ERROR_CREATE_FAILED:I = 0x1

.field private static final UDP_PORT_ERROR_TRANSPORT_FAILED:I = 0x2

.field private static final VIDEO_CODEC_H264:Ljava/lang/String; = "H264"

.field public static final VIDEO_CODEC_H264_BASELINE:Ljava/lang/String; = "H264 Baseline"

.field public static final VIDEO_CODEC_H264_HIGH:Ljava/lang/String; = "H264 High"

.field public static final VIDEO_CODEC_H265:Ljava/lang/String; = "H265"

.field private static final VIDEO_CODEC_PARAM_START_BITRATE:Ljava/lang/String; = "x-google-start-bitrate"

.field private static final VIDEO_CODEC_VP8:Ljava/lang/String; = "VP8"

.field private static final VIDEO_CODEC_VP9:Ljava/lang/String; = "VP9"

.field private static final VIDEO_FLEXFEC_DISABLE_FIELDTRIAL:Ljava/lang/String; = "WebRTC-FlexFEC-03-Advertised/Disabled/WebRTC-FlexFEC-03/Disabled/"

.field private static final VIDEO_FLEXFEC_ENABLE_FIELDTRIAL:Ljava/lang/String; = "WebRTC-FlexFEC-03-Advertised/Enabled/WebRTC-FlexFEC-03/Enabled/"

.field private static final VIDEO_FRAME_ELAPSED_TIME_REPORT_FIELDTRIAL:Ljava/lang/String; = "WebRTC-Video-Frame-Elapsed-Time-Report/Enabled/"

.field private static final VIDEO_RSFEC_FIELDTRIAL:Ljava/lang/String; = "WebRTC-FlexFEC-03-Advertised/Enabled/WebRTC-FlexFEC-03/Enabled/WebRTC-RsFEC/Enabled/"

.field private static final VIDEO_VP8_INTEL_HW_ENCODER_FIELDTRIAL:Ljava/lang/String; = "WebRTC-IntelVP8/Enabled/"

.field private static final WEAKLY_NET_REPORT_FIELDTRIAL:Ljava/lang/String; = "WebRTC-Weakly-Net-Report/Enabled/"

.field private static mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

.field private static mRealGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;


# instance fields
.field private adm:Lorg/hmwebrtc/audio/AudioDeviceModule;

.field private final answerObserver:Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;

.field private final appContext:Landroid/content/Context;

.field private audioConstraints:Lorg/hmwebrtc/MediaConstraints;

.field private final dataChannelEnabled:Z

.field private final dcObserver:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

.field private final events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private factory:Lorg/hmwebrtc/PeerConnectionFactory;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private hmDataChannelManager:Lorg/webrtc/haima/HmDataChannelManager;

.field private iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field private isError:Z

.field private localSdp:Lorg/hmwebrtc/SessionDescription;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mAudioDirection:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

.field private mCacheAccProxyIp:Ljava/lang/String;

.field private mCacheAccProxyPW:Ljava/lang/String;

.field private mCacheAccProxyPort:I

.field private mCacheAccProxyUser:Ljava/lang/String;

.field private mCacheSwitchToCellularConnection:Z

.field private mCommandChannel:Lorg/webrtc/haima/HmRtcCommandChannel;

.field public mCommandListener:Lorg/webrtc/haima/HmRtcCommandListener;

.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mCountlyController:Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

.field mDCManager:Lorg/webrtc/haima/PeerConnectionClient$DCManager;

.field private mDataChannel:Lorg/hmwebrtc/DataChannel;

.field private mHmRemoteVQAStats:Lorg/webrtc/haima/HmDCObserverVQA;

.field mInputHelper:Lorg/webrtc/haima/HmInputHelper;

.field private mIsRTCConnected:Z

.field private final mLocalObserver:Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;

.field private mPeeConnectionOpening:Z

.field private mPeerConnectionLock:Ljava/lang/Object;

.field private final mRemoteObserver:Lorg/webrtc/haima/PeerConnectionClient$X86RemoteSDPObserver;

.field private mStreamerInfoCollector:Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;

.field private mStreamerStatsCollector:Lorg/webrtc/haima/StreamerStatsCollector;

.field private mTransDeviceManager:Lorg/webrtc/haima/HmTransDeviceManager;

.field private mVideoDirection:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

.field private mWebrtcLoggable:Lorg/hmwebrtc/log/WebrtcLoggableHelp;

.field private mx86SendLargeDataBlcokListener:Lorg/webrtc/haima/HaimaDataChannel$Listener;

.field private mx86SendLock:Ljava/lang/Object;

.field private myself:Ljava/lang/Object;

.field private final offerObserver:Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;

.field private final pcCountlyObserver:Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;

.field private final pcObserver:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

.field private peerConnection:Lorg/hmwebrtc/PeerConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

.field private preferIsac:Z

.field private queuedRemoteCandidates:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/IceCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private remoteSinks:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/VideoSink;",
            ">;"
        }
    .end annotation
.end field

.field private remoteVideoTrack:Lorg/hmwebrtc/VideoTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private renderVideo:Z

.field private final rootEglBase:Lorg/hmwebrtc/EglBase;

.field private sdpMediaConstraints:Lorg/hmwebrtc/MediaConstraints;

.field private final statsTimer:Ljava/util/Timer;

.field streamerReportsArray:[[Lorg/hmwebrtc/StatsReport$Value;

.field private webRtcAudioTrackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/hmwebrtc/audio/WebRtcAudioTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/beans/GamePlatformType;->ARM:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 2
    .line 3
    sput-object v0, Lorg/webrtc/haima/PeerConnectionClient;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 4
    .line 5
    sput-object v0, Lorg/webrtc/haima/PeerConnectionClient;->mRealGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/hmwebrtc/EglBase;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;Lorg/hmwebrtc/log/WebrtcLoggableHelp;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, p0, v2}, Lorg/webrtc/haima/PeerConnectionClient$PCObserver;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/webrtc/haima/PeerConnectionClient$1;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->pcObserver:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

    .line 17
    .line 18
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;

    .line 19
    .line 20
    invoke-direct {v1, p0, v2}, Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/webrtc/haima/PeerConnectionClient$1;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->pcCountlyObserver:Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;

    .line 24
    .line 25
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-direct {v1, p0, v3}, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Z)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->offerObserver:Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;

    .line 32
    .line 33
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;

    .line 34
    .line 35
    invoke-direct {v1, p0, v2}, Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/webrtc/haima/PeerConnectionClient$1;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mLocalObserver:Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;

    .line 39
    .line 40
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$X86RemoteSDPObserver;

    .line 41
    .line 42
    invoke-direct {v1, p0, v2}, Lorg/webrtc/haima/PeerConnectionClient$X86RemoteSDPObserver;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/webrtc/haima/PeerConnectionClient$1;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mRemoteObserver:Lorg/webrtc/haima/PeerConnectionClient$X86RemoteSDPObserver;

    .line 46
    .line 47
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;

    .line 48
    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-direct {v1, p0, v4}, Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Z)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->answerObserver:Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;

    .line 54
    .line 55
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

    .line 56
    .line 57
    invoke-direct {v1, p0, v2}, Lorg/webrtc/haima/PeerConnectionClient$DcObserver;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/webrtc/haima/PeerConnectionClient$1;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->dcObserver:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

    .line 61
    .line 62
    new-instance v1, Ljava/util/Timer;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->statsTimer:Ljava/util/Timer;

    .line 68
    .line 69
    new-instance v1, Ljava/lang/Object;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeerConnectionLock:Ljava/lang/Object;

    .line 75
    .line 76
    iput-boolean v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->renderVideo:Z

    .line 77
    .line 78
    const/4 v1, 0x4

    .line 79
    new-array v1, v1, [[Lorg/hmwebrtc/StatsReport$Value;

    .line 80
    .line 81
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->streamerReportsArray:[[Lorg/hmwebrtc/StatsReport$Value;

    .line 82
    .line 83
    iput-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 84
    .line 85
    new-instance v1, Lorg/webrtc/haima/HmInputHelper;

    .line 86
    .line 87
    invoke-direct {v1}, Lorg/webrtc/haima/HmInputHelper;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mInputHelper:Lorg/webrtc/haima/HmInputHelper;

    .line 91
    .line 92
    new-instance v1, Lorg/webrtc/haima/HmRtcCommandChannel;

    .line 93
    .line 94
    invoke-direct {v1}, Lorg/webrtc/haima/HmRtcCommandChannel;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCommandChannel:Lorg/webrtc/haima/HmRtcCommandChannel;

    .line 98
    .line 99
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

    .line 100
    .line 101
    invoke-direct {v1, p0, v2}, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/webrtc/haima/PeerConnectionClient$1;)V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCountlyController:Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

    .line 105
    .line 106
    new-instance v1, Ljava/lang/Object;

    .line 107
    .line 108
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mx86SendLock:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object p2, p0, Lorg/webrtc/haima/PeerConnectionClient;->rootEglBase:Lorg/hmwebrtc/EglBase;

    .line 114
    .line 115
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->appContext:Landroid/content/Context;

    .line 116
    .line 117
    iput-object p4, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 118
    .line 119
    iput-object p3, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 120
    .line 121
    invoke-static {p3}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->access$500(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Lorg/webrtc/haima/PeerConnectionClient$DataChannelParameters;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    if-eqz p4, :cond_0

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_0
    const/4 v3, 0x0

    .line 129
    :goto_0
    iput-boolean v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->dataChannelEnabled:Z

    .line 130
    .line 131
    iput-object p5, p0, Lorg/webrtc/haima/PeerConnectionClient;->mWebrtcLoggable:Lorg/hmwebrtc/log/WebrtcLoggableHelp;

    .line 132
    .line 133
    invoke-static {p1}, Lorg/webrtc/haima/HmUtilsHelper;->getTotalMemory(Landroid/content/Context;)J

    .line 134
    .line 135
    .line 136
    sget-boolean p4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 137
    .line 138
    if-eqz p4, :cond_1

    .line 139
    .line 140
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 141
    .line 142
    .line 143
    move-result-object p4

    .line 144
    invoke-virtual {p4, p2}, Lorg/webrtc/haima/camera/HmCameraManager;->setEglBase(Lorg/hmwebrtc/EglBase;)V

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    new-instance p4, Lorg/webrtc/haima/PeerConnectionClient$1;

    .line 152
    .line 153
    invoke-direct {p4, p0}, Lorg/webrtc/haima/PeerConnectionClient$1;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, p4}, Lorg/webrtc/haima/camera/HmCameraManager;->setEventObserver(Lorg/webrtc/haima/camera/HmCameraManager$CameraEventObserver;)V

    .line 157
    .line 158
    .line 159
    :cond_1
    sget-object p2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 160
    .line 161
    const-string p4, "Initialize Haima RTC PeerConnectionFactory, version: 3.0.2.8.5396d74.12041040"

    .line 162
    .line 163
    invoke-static {p2, p4}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance p4, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string p5, "Preferred video codec: "

    .line 172
    .line 173
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-static {p3}, Lorg/webrtc/haima/PeerConnectionClient;->getSdpVideoCodecName(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p5

    .line 180
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p4

    .line 187
    invoke-static {p2, p4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {p3}, Lorg/webrtc/haima/PeerConnectionClient;->getFieldTrials(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    new-instance p4, Lorg/webrtc/haima/n;

    .line 195
    .line 196
    invoke-direct {p4, p0, p2, p3, p1}, Lorg/webrtc/haima/n;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v0, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public static synthetic a(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$DisconnectAccProxy$11()V

    return-void
.end method

.method static synthetic access$1200(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->reportError(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1300(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->reportErrorOnly(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1700(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/StreamerStatsCollector;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mStreamerStatsCollector:Lorg/webrtc/haima/StreamerStatsCollector;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mStreamerInfoCollector:Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/HmDCObserverVQA;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mHmRemoteVQAStats:Lorg/webrtc/haima/HmDCObserverVQA;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2200(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->getStats()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2300(Lorg/webrtc/haima/PeerConnectionClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2302(Lorg/webrtc/haima/PeerConnectionClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2400(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/DataChannel;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->createStreamerInfoCollector(Lorg/hmwebrtc/DataChannel;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2500(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/DataChannel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2502(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/DataChannel;)Lorg/hmwebrtc/DataChannel;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2600(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$DcObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->dcObserver:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2700(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/DataChannel;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->createStreamerStatsCollector(Lorg/hmwebrtc/DataChannel;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$2800(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->getTerminalDevJsonInfo()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$2900()Lorg/webrtc/haima/beans/GamePlatformType;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$3000(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->remoteSinks:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3100(Lorg/webrtc/haima/PeerConnectionClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mIsRTCConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3102(Lorg/webrtc/haima/PeerConnectionClient;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mIsRTCConnected:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3200(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3300(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/SessionDescription;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->localSdp:Lorg/hmwebrtc/SessionDescription;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3302(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/SessionDescription;)Lorg/hmwebrtc/SessionDescription;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->localSdp:Lorg/hmwebrtc/SessionDescription;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3400(Lorg/webrtc/haima/PeerConnectionClient;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->preferIsac:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3500(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/webrtc/haima/PeerConnectionClient;->preferCodec(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$3600(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3700(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/webrtc/haima/PeerConnectionClient;->getSdpVideoCodecName(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$3800(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/SessionDescription$Attribute;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->sendLocalSessionAttribule(Lorg/hmwebrtc/SessionDescription$Attribute;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$3900(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->drainCandidates()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4000(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->answerObserver:Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4100(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mLocalObserver:Lorg/webrtc/haima/PeerConnectionClient$LocalSDPObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4200(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/webrtc/haima/PeerConnectionClient;->isOutputJson(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$4300(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mx86SendLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4400(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/HaimaDataChannel$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mx86SendLargeDataBlcokListener:Lorg/webrtc/haima/HaimaDataChannel$Listener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/webrtc/haima/PeerConnectionClient$CountlyController;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCountlyController:Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lorg/webrtc/haima/PeerConnectionClient;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lorg/webrtc/haima/PeerConnectionClient;)Lorg/hmwebrtc/PeerConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$reportError$9(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/IceCandidate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$addRemoteIceCandidate$5(Lorg/hmwebrtc/IceCandidate;)V

    return-void
.end method

.method private closeInternal()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "begin to close peer connection client:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/16 v1, 0x34e9

    .line 19
    .line 20
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 28
    .line 29
    iget-boolean v1, v1, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->aecDump:Z

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lorg/hmwebrtc/PeerConnectionFactory;->stopAecDump()V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "Closing peer connection."

    .line 39
    .line 40
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {v1, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->access$1102(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 50
    .line 51
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mInputHelper:Lorg/webrtc/haima/HmInputHelper;

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lorg/webrtc/haima/HmInputHelper;->deleteInputchannel(Ljava/util/concurrent/ExecutorService;)Z

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lorg/webrtc/haima/HmDataChannelManager;->disposeAllDataChannel()V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->destroyStreamerStatsCollector()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->destroyStreamerInfoCollector()V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mHmRemoteVQAStats:Lorg/webrtc/haima/HmDCObserverVQA;

    .line 70
    .line 71
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDCManager:Lorg/webrtc/haima/PeerConnectionClient$DCManager;

    .line 72
    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->access$1400(Lorg/webrtc/haima/PeerConnectionClient$DCManager;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDCManager:Lorg/webrtc/haima/PeerConnectionClient$DCManager;

    .line 79
    .line 80
    :cond_1
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCommandChannel:Lorg/webrtc/haima/HmRtcCommandChannel;

    .line 81
    .line 82
    invoke-virtual {v1}, Lorg/webrtc/haima/HmRtcCommandChannel;->release()V

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mTransDeviceManager:Lorg/webrtc/haima/HmTransDeviceManager;

    .line 86
    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Lorg/webrtc/haima/HmTransDeviceManager;->release()V

    .line 90
    .line 91
    .line 92
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mTransDeviceManager:Lorg/webrtc/haima/HmTransDeviceManager;

    .line 93
    .line 94
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v3, "data channel destroyed:"

    .line 100
    .line 101
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/16 v3, 0x34ea

    .line 112
    .line 113
    invoke-static {v3, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 117
    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    invoke-virtual {v1}, Lorg/hmwebrtc/PeerConnection;->dispose()V

    .line 121
    .line 122
    .line 123
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 124
    .line 125
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v3, "peer connection disposed:"

    .line 131
    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const/16 v3, 0x34eb

    .line 143
    .line 144
    invoke-static {v3, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->remoteSinks:Ljava/util/List;

    .line 148
    .line 149
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 150
    .line 151
    if-eqz v1, :cond_4

    .line 152
    .line 153
    const-string v1, "Closing peer connection factory."

    .line 154
    .line 155
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 159
    .line 160
    invoke-virtual {v1}, Lorg/hmwebrtc/PeerConnectionFactory;->dispose()V

    .line 161
    .line 162
    .line 163
    const-string v1, "Closing peer connection factory end."

    .line 164
    .line 165
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 169
    .line 170
    :cond_4
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->rootEglBase:Lorg/hmwebrtc/EglBase;

    .line 171
    .line 172
    invoke-interface {v1}, Lorg/hmwebrtc/EglBase;->release()V

    .line 173
    .line 174
    .line 175
    const-string v1, ""

    .line 176
    .line 177
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyIp:Ljava/lang/String;

    .line 178
    .line 179
    const/4 v2, 0x0

    .line 180
    iput v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyPort:I

    .line 181
    .line 182
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyUser:Ljava/lang/String;

    .line 183
    .line 184
    iput-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyPW:Ljava/lang/String;

    .line 185
    .line 186
    const-string v1, "Closing peer connection done."

    .line 187
    .line 188
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v1, "Closing peer connection done:"

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    const/16 v1, 0x34ec

    .line 209
    .line 210
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->adm:Lorg/hmwebrtc/audio/AudioDeviceModule;

    .line 214
    .line 215
    if-eqz v0, :cond_5

    .line 216
    .line 217
    invoke-interface {v0}, Lorg/hmwebrtc/audio/AudioDeviceModule;->release()V

    .line 218
    .line 219
    .line 220
    :cond_5
    return-void
.end method

.method private createDataChannel()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/hmwebrtc/DataChannel$Init;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/hmwebrtc/DataChannel$Init;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lorg/hmwebrtc/DataChannel$Init;->ordered:Z

    .line 12
    .line 13
    iput v1, v0, Lorg/hmwebrtc/DataChannel$Init;->id:I

    .line 14
    .line 15
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 16
    .line 17
    const-string v2, "ggp-tcp-like"

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0}, Lorg/hmwebrtc/PeerConnection;->createDataChannel(Ljava/lang/String;Lorg/hmwebrtc/DataChannel$Init;)Lorg/hmwebrtc/DataChannel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 24
    .line 25
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->dcObserver:Lorg/webrtc/haima/PeerConnectionClient$DcObserver;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/DataChannel;->registerObserver(Lorg/hmwebrtc/DataChannel$Observer;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private createPeerConnectionFactoryInternal(Lorg/hmwebrtc/PeerConnectionFactory$Options;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 3
    .line 4
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 5
    .line 6
    iget-object v1, v1, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->audioCodec:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string v3, "ISAC"

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_0
    iput-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->preferIsac:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/webrtc/haima/PeerConnectionClient;->createJavaAudioDevice()Lorg/hmwebrtc/audio/AudioDeviceModule;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->adm:Lorg/hmwebrtc/audio/AudioDeviceModule;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "Factory networkIgnoreMask option: "

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v3, p1, Lorg/hmwebrtc/PeerConnectionFactory$Options;->networkIgnoreMask:I

    .line 43
    .line 44
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableEncoderH264HP:Z

    .line 55
    .line 56
    sget-object v1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v4, "enableH264HighProfile is :"

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v1, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 79
    .line 80
    iget-boolean v3, v3, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoCodecHwAcceleration:Z

    .line 81
    .line 82
    if-eqz v3, :cond_3

    .line 83
    .line 84
    new-instance v3, Lorg/hmwebrtc/DefaultVideoEncoderFactory;

    .line 85
    .line 86
    iget-object v4, p0, Lorg/webrtc/haima/PeerConnectionClient;->rootEglBase:Lorg/hmwebrtc/EglBase;

    .line 87
    .line 88
    invoke-interface {v4}, Lorg/hmwebrtc/EglBase;->getEglBaseContext()Lorg/hmwebrtc/EglBase$Context;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-direct {v3, v4, v2, v0}, Lorg/hmwebrtc/DefaultVideoEncoderFactory;-><init>(Lorg/hmwebrtc/EglBase$Context;ZZ)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 96
    .line 97
    invoke-static {v0}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->access$1100(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    const-string v0, "new DefaultVideoDecoderFactory without direct surface"

    .line 104
    .line 105
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance v0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;

    .line 109
    .line 110
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->rootEglBase:Lorg/hmwebrtc/EglBase;

    .line 111
    .line 112
    invoke-interface {v2}, Lorg/hmwebrtc/EglBase;->getEglBaseContext()Lorg/hmwebrtc/EglBase$Context;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-direct {v0, v2}, Lorg/hmwebrtc/DefaultVideoDecoderFactory;-><init>(Lorg/hmwebrtc/EglBase$Context;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    new-instance v0, Lorg/hmwebrtc/DefaultVideoDecoderFactory;

    .line 121
    .line 122
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 123
    .line 124
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->access$1100(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    iget-object v4, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 129
    .line 130
    iget v4, v4, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->rotationDegree:I

    .line 131
    .line 132
    iget-object v5, p0, Lorg/webrtc/haima/PeerConnectionClient;->rootEglBase:Lorg/hmwebrtc/EglBase;

    .line 133
    .line 134
    invoke-interface {v5}, Lorg/hmwebrtc/EglBase;->getEglBaseContext()Lorg/hmwebrtc/EglBase$Context;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-direct {v0, v2, v4, v5}, Lorg/hmwebrtc/DefaultVideoDecoderFactory;-><init>(Ljava/lang/Object;ILorg/hmwebrtc/EglBase$Context;)V

    .line 139
    .line 140
    .line 141
    const-string v2, "new DefaultVideoDecoderFactory with direct surface"

    .line 142
    .line 143
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    const-string v0, "new DefaultVideoDecoderFactory with software"

    .line 148
    .line 149
    invoke-static {v1, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v3, Lorg/hmwebrtc/SoftwareVideoEncoderFactory;

    .line 153
    .line 154
    invoke-direct {v3}, Lorg/hmwebrtc/SoftwareVideoEncoderFactory;-><init>()V

    .line 155
    .line 156
    .line 157
    new-instance v0, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;

    .line 158
    .line 159
    invoke-direct {v0}, Lorg/hmwebrtc/SoftwareVideoDecoderFactory;-><init>()V

    .line 160
    .line 161
    .line 162
    :goto_0
    invoke-static {}, Lorg/hmwebrtc/PeerConnectionFactory;->builder()Lorg/hmwebrtc/PeerConnectionFactory$Builder;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-virtual {v2, p1}, Lorg/hmwebrtc/PeerConnectionFactory$Builder;->setOptions(Lorg/hmwebrtc/PeerConnectionFactory$Options;)Lorg/hmwebrtc/PeerConnectionFactory$Builder;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->adm:Lorg/hmwebrtc/audio/AudioDeviceModule;

    .line 171
    .line 172
    invoke-virtual {p1, v2}, Lorg/hmwebrtc/PeerConnectionFactory$Builder;->setAudioDeviceModule(Lorg/hmwebrtc/audio/AudioDeviceModule;)Lorg/hmwebrtc/PeerConnectionFactory$Builder;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p1, v3}, Lorg/hmwebrtc/PeerConnectionFactory$Builder;->setVideoEncoderFactory(Lorg/hmwebrtc/VideoEncoderFactory;)Lorg/hmwebrtc/PeerConnectionFactory$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/PeerConnectionFactory$Builder;->setVideoDecoderFactory(Lorg/hmwebrtc/VideoDecoderFactory;)Lorg/hmwebrtc/PeerConnectionFactory$Builder;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lorg/hmwebrtc/PeerConnectionFactory$Builder;->createPeerConnectionFactory()Lorg/hmwebrtc/PeerConnectionFactory;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 189
    .line 190
    const-string p1, "Peer connection factory created."

    .line 191
    .line 192
    invoke-static {v1, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sget-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 196
    .line 197
    if-eqz p1, :cond_4

    .line 198
    .line 199
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Lorg/webrtc/haima/camera/HmCameraManager;->setPeerConnectFactory(Lorg/hmwebrtc/PeerConnectionFactory;)V

    .line 206
    .line 207
    .line 208
    :cond_4
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 209
    .line 210
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->adm:Lorg/hmwebrtc/audio/AudioDeviceModule;

    .line 211
    .line 212
    check-cast v0, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;

    .line 213
    .line 214
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->getWebRtcAudioTrack()Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->webRtcAudioTrackRef:Ljava/lang/ref/WeakReference;

    .line 222
    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    const-string v0, "Peer connection factory created:"

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    const/16 v0, 0x34e3

    .line 241
    .line 242
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 243
    .line 244
    .line 245
    return-void
.end method

.method private createStreamerInfoCollector(Lorg/hmwebrtc/DataChannel;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "info_chn"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mStreamerInfoCollector:Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->release()V

    .line 21
    .line 22
    .line 23
    :cond_1
    new-instance v0, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;-><init>(Lorg/hmwebrtc/DataChannel;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mStreamerInfoCollector:Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "createStreamerInfoCollector:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "info_chn:"

    .line 52
    .line 53
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 59
    return p1
.end method

.method private createStreamerStatsCollector(Lorg/hmwebrtc/DataChannel;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "stats_chn"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mStreamerStatsCollector:Lorg/webrtc/haima/StreamerStatsCollector;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lorg/webrtc/haima/StreamerStatsCollector;->release()V

    .line 21
    .line 22
    .line 23
    :cond_1
    new-instance v0, Lorg/webrtc/haima/StreamerStatsCollector;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Lorg/webrtc/haima/StreamerStatsCollector;-><init>(Lorg/hmwebrtc/DataChannel;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mStreamerStatsCollector:Lorg/webrtc/haima/StreamerStatsCollector;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "createStreamerStatsCollector:"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lorg/hmwebrtc/DataChannel;->label()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "stats_chn:"

    .line 52
    .line 53
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    return p1

    .line 58
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 59
    return p1
.end method

.method private createTransDevice(Ljava/lang/String;ILorg/webrtc/haima/HmTransDevice$Observer;)Lorg/webrtc/haima/HmTransDevice;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mTransDeviceManager:Lorg/webrtc/haima/HmTransDeviceManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/webrtc/haima/HmTransDeviceManager;->createDevice(Lorg/hmwebrtc/PeerConnection;Ljava/lang/String;ILorg/webrtc/haima/HmTransDevice$Observer;)Lorg/webrtc/haima/HmTransDevice;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string p2, "createTransDevice - mTransDeviceManager or peerConnection is null"

    .line 17
    .line 18
    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method

.method public static synthetic d(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$new$0(Ljava/lang/String;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;Landroid/content/Context;)V

    return-void
.end method

.method private destroyStreamerInfoCollector()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mStreamerInfoCollector:Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mStreamerInfoCollector:Lorg/webrtc/haima/PeerConnectionClient$StreamerInfoCollector;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private destroyStreamerStatsCollector()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mStreamerStatsCollector:Lorg/webrtc/haima/StreamerStatsCollector;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/webrtc/haima/StreamerStatsCollector;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mStreamerStatsCollector:Lorg/webrtc/haima/StreamerStatsCollector;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private drainCandidates()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->queuedRemoteCandidates:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "Add "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->queuedRemoteCandidates:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " remote candidates"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->queuedRemoteCandidates:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lorg/hmwebrtc/IceCandidate;

    .line 55
    .line 56
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 57
    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v4, "Add candidate into peer connection in drainCandidates: "

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 76
    .line 77
    invoke-interface {v2, v3, v4}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 81
    .line 82
    invoke-virtual {v2, v1}, Lorg/hmwebrtc/PeerConnection;->addIceCandidate(Lorg/hmwebrtc/IceCandidate;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v2, "HM_RET_OK"

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_0

    .line 93
    .line 94
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 95
    .line 96
    const-string v2, "Add candidate into peer connection failed: unknown_error"

    .line 97
    .line 98
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-interface {v1, v2, v3}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_0
    sget-object v1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 105
    .line 106
    const-string v2, "Add candidate succeed."

    .line 107
    .line 108
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->queuedRemoteCandidates:Ljava/util/List;

    .line 114
    .line 115
    :cond_2
    return-void
.end method

.method public static synthetic e(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/SessionDescription;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$setRemoteDescription$7(Lorg/hmwebrtc/SessionDescription;)V

    return-void
.end method

.method public static synthetic f(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/SessionDescription;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$setX86RemoteDescription$8(Lorg/hmwebrtc/SessionDescription;)V

    return-void
.end method

.method private static findMediaDescriptionLine(Z[Ljava/lang/String;)I
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const-string p0, "m=audio "

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string p0, "m=video "

    .line 7
    .line 8
    :goto_0
    const/4 v0, 0x0

    .line 9
    :goto_1
    array-length v1, p1

    .line 10
    if-ge v0, v1, :cond_2

    .line 11
    .line 12
    aget-object v1, p1, v0

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    const/4 p0, -0x1

    .line 25
    return p0
.end method

.method public static synthetic g(Lorg/webrtc/haima/PeerConnectionClient;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$SwitchToCellularConnection$12(Z)V

    return-void
.end method

.method private static getFieldTrials(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WebRTC-IntelVP8/Enabled/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-boolean v2, p0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->disableWebRtcAGCAndHPF:Z

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WebRTC-Audio-MinimizeResamplingOnMobile/Enabled/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    const-string v3, "Disable WebRTC AGC field trial."

    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcFecType()I

    move-result v2

    .line 6
    sget-object v3, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config fec_type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    const-string v5, "WebRTC-FlexFEC-03-Advertised/Disabled/WebRTC-FlexFEC-03/Disabled/"

    const-string v6, "WebRTC-FlexFEC-03-Advertised/Enabled/WebRTC-FlexFEC-03/Enabled/"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v2, v4, :cond_2

    .line 7
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->isFlexFecOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne v2, v8, :cond_3

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-ne v2, v7, :cond_4

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WebRTC-FlexFEC-03-Advertised/Enabled/WebRTC-FlexFEC-03/Enabled/WebRTC-RsFEC/Enabled/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 13
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_0
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableWeaklyNetReport:Z

    if-eqz v2, :cond_5

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WebRTC-Weakly-Net-Report/Enabled/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_5
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableVideoFrameElapsedTimeReport:Z

    if-eqz v2, :cond_6

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WebRTC-Video-Frame-Elapsed-Time-Report/Enabled/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    sget v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmNackBufferLimit:I

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmNackBufferSalt:I

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    sget v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->hmNackBufferForceLimit:I

    .line 21
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "WebRTC-NACK-Buffer-Limit/%d/WebRTC-NACK-Buffer-Salt/%d/WebRTC-NACK-Buffer-Force-Limit/%d/"

    .line 22
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 23
    sget-boolean v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSmoothlyDecoding:Z

    if-eqz v4, :cond_7

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    sget v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMaxDecoderBuffers:I

    .line 25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v6

    sget v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMinDecoderBuffers:I

    .line 26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v8

    sget v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMaxWaitDelay:I

    .line 27
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    sget v5, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcSmoothlyMinWaitDelay:I

    .line 28
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v0

    const-string v0, "WebRTC-Smoothly-Decoding-On/Enabled/WebRTC-Smoothly-Decoding-Max-Buffers/%d/WebRTC-Smoothly-Decoding-Min-Buffers/%d/WebRTC-Smoothly-Decoding-Max-Delay/%d/WebRTC-Smoothly-Decoding-Min-Delay/%d/"

    .line 29
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSmoothlyDecodingDebug:Z

    if-eqz v0, :cond_7

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WebRTC-Smoothly-Decoding-Debug/Enabled/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 32
    :cond_7
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNackReportDelayTime:I

    if-lez v0, :cond_8

    const/16 v4, 0x64

    if-ge v0, v4, :cond_8

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v8, [Ljava/lang/Object;

    sget v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNackReportDelayTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "WebRTC-SendNackDelayMs/%d/"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 34
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebRTC-SendNackDelayMs is incorrect: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcNackReportDelayTime:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :goto_1
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcMaxWaitForFrameMs:I

    if-lez v0, :cond_9

    const/16 v4, 0xbb8

    if-gt v0, v4, :cond_9

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v8, [Ljava/lang/Object;

    sget v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcMaxWaitForFrameMs:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "WebRTC-MaxWaitForFrameMs/%d/"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 37
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebRTC-MaxWaitForFrameMs is incorrect: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcMaxWaitForFrameMs:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_2
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcRtcpIntervalTime:I

    if-lez v0, :cond_a

    const/16 v4, 0x3e8

    if-gt v0, v4, :cond_a

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v8, [Ljava/lang/Object;

    sget v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcRtcpIntervalTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "WebRTC-RtcpIntervalTime/%d/"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 40
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebRTC-RtcpIntervalTime is incorrect: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcRtcpIntervalTime:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_3
    sget-object v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig;

    invoke-virtual {v0}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v8, [Ljava/lang/Object;

    sget-object v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcOperationDelaySdk:Lorg/webrtc/haima/HmOperationDelayConfig;

    invoke-virtual {v4}, Lorg/webrtc/haima/HmOperationDelayConfig;->isDebugLog()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v6

    const-string v4, "WebRTC-RtcOperationDelaySdk/enable:true,debug_log:%b/"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    :cond_b
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableRemoveSei:Z

    if-eqz v0, :cond_c

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WebRTC-RtcEnableRemoveSei/Enabled/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    :cond_c
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableShareStreaming:Z

    if-eqz v0, :cond_d

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WebRTC-RtcEnableShareStreaming/Enabled/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseGlobalConfig PlayoutDelayMode value: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->playout_delay_mode:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/hmwebrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->playout_delay_mode:I

    const-string v3, "WebRTC-ForcePlayoutDelay/min_ms:%d,max_ms:%d/"

    if-eq v0, v8, :cond_f

    if-ne v0, v7, :cond_e

    goto :goto_4

    .line 49
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v7, [Ljava/lang/Object;

    .line 50
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    .line 51
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 52
    :cond_f
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WebRTC-LowLatencyRenderer/enabled:false/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    sget v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->playout_delay_mode:I

    if-ne v2, v7, :cond_10

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v7, [Ljava/lang/Object;

    sget v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->forced_playout_delay_min:I

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v6

    sget v4, Lorg/webrtc/haima/HmRtcGlobalConfig;->forced_playout_delay_max:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v8

    .line 56
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    :cond_10
    :goto_5
    sget v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->max_allowed_framebuffer_size_in_normal:I

    if-lez v2, :cond_11

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v8, [Ljava/lang/Object;

    sget v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->max_allowed_framebuffer_size_in_normal:I

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    const-string v3, "WebRTC-MaxAllowedFrameBufferSizeInNormalCase/max_allowed_framebuffer_size_in_normal:%d/"

    .line 60
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getCloudRtcFieldTrials()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HMRTC_VideoJank_V1"

    .line 62
    invoke-static {v2, v1}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHMRTCValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "HMRTC-VideoJank-V1/"

    const-string v5, "/"

    if-nez v3, :cond_12

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "HMRTC_VideoJank_V1/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_12
    iget-boolean p0, p0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->enableRtcEventLog:Z

    if-nez p0, :cond_13

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WebRTC-RtcEventLogKillSwitch/Enabled/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_13
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->videoRemoteResourceAdaptationOn:Z

    if-nez p0, :cond_14

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WebRTC-VideoRemoteResourceAdaptation/Disabled/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_14
    sget-boolean p0, Lorg/webrtc/haima/HmRtcGlobalConfig;->updateNeworksContinuableOn:Z

    if-eqz p0, :cond_15

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WebRTC-UpdateNetworksContinuable/Enabled/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_15
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHMRTCValueNativeMap()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_16

    goto :goto_7

    .line 73
    :cond_16
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_6

    .line 76
    :cond_18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_19
    :goto_7
    return-object v0
.end method

.method private getRemoteVideoTrack()Lorg/hmwebrtc/VideoTrack;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/hmwebrtc/PeerConnection;->getTransceivers()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/hmwebrtc/RtpTransceiver;

    .line 22
    .line 23
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getReceiver()Lorg/hmwebrtc/RtpReceiver;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpReceiver;->track()Lorg/hmwebrtc/MediaStreamTrack;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    instance-of v2, v1, Lorg/hmwebrtc/VideoTrack;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    check-cast v1, Lorg/hmwebrtc/VideoTrack;

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_1
    const/4 v0, 0x0

    .line 39
    return-object v0
.end method

.method private static getSdpVideoCodecName(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoCodec:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-string v1, "H265"

    .line 11
    .line 12
    const-string v2, "VP9"

    .line 13
    .line 14
    const-string v3, "VP8"

    .line 15
    .line 16
    const/4 v4, -0x1

    .line 17
    sparse-switch v0, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :sswitch_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x4

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v4, 0x3

    .line 38
    goto :goto_0

    .line 39
    :sswitch_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-nez p0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v4, 0x2

    .line 47
    goto :goto_0

    .line 48
    :sswitch_3
    const-string v0, "H264 Baseline"

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-nez p0, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v4, 0x1

    .line 58
    goto :goto_0

    .line 59
    :sswitch_4
    const-string v0, "H264 High"

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-nez p0, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 v4, 0x0

    .line 69
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    const-string p0, ""

    .line 73
    .line 74
    return-object p0

    .line 75
    :pswitch_0
    return-object v1

    .line 76
    :pswitch_1
    return-object v2

    .line 77
    :pswitch_2
    return-object v3

    .line 78
    :pswitch_3
    const-string p0, "H264"

    .line 79
    .line 80
    return-object p0

    .line 81
    :sswitch_data_0
    .sparse-switch
        -0x7f944246 -> :sswitch_4
        -0x3d7405a3 -> :sswitch_3
        0x14cbe -> :sswitch_2
        0x14cbf -> :sswitch_1
        0x217d29 -> :sswitch_0
    .end sparse-switch

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getStats()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$6;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lorg/webrtc/haima/PeerConnectionClient$6;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/hmwebrtc/PeerConnection;->getStats(Lorg/hmwebrtc/StatsObserver;Lorg/hmwebrtc/MediaStreamTrack;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "getStats() returns false!"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    return-void
.end method

.method private getTerminalDevJsonInfo()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "os_type"

    .line 7
    .line 8
    const-string v2, "android"

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "os_version"

    .line 14
    .line 15
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "os_api_level"

    .line 27
    .line 28
    invoke-static {v0, v2, v1}, Lorg/webrtc/haima/PeerConnectionClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "dev_brand"

    .line 32
    .line 33
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "dev_model"

    .line 39
    .line 40
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, "_"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "cpu_model"

    .line 70
    .line 71
    invoke-static {v0, v2, v1}, Lorg/webrtc/haima/PeerConnectionClient;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    return-object v0
.end method

.method public static synthetic h(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$createPeerConnection$2()V

    return-void
.end method

.method public static synthetic i(Lorg/webrtc/haima/PeerConnectionClient;[BLorg/webrtc/haima/HaimaDataChannel$Listener;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$x86SendLargeDataBlcok$3([BLorg/webrtc/haima/HaimaDataChannel$Listener;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private internalX86SendLargeDataBlcok([BLorg/webrtc/haima/HaimaDataChannel$Listener;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mx86SendLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mx86SendLargeDataBlcokListener:Lorg/webrtc/haima/HaimaDataChannel$Listener;

    .line 5
    .line 6
    if-eq v1, p2, :cond_0

    .line 7
    .line 8
    iput-object p2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mx86SendLargeDataBlcokListener:Lorg/webrtc/haima/HaimaDataChannel$Listener;

    .line 9
    .line 10
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 p2, 0x0

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return p2

    .line 15
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 16
    .line 17
    const/4 v1, -0x1

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    sget-object p2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "internalX86SendLargeDataBlcok: length="

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    array-length p1, p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, ",mDataChannel: is null"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :cond_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    new-instance v0, Lorg/hmwebrtc/DataChannel$SendOptoins;

    .line 54
    .line 55
    const-wide/32 v2, 0x3e800

    .line 56
    .line 57
    .line 58
    invoke-direct {v0, v2, v3}, Lorg/hmwebrtc/DataChannel$SendOptoins;-><init>(J)V

    .line 59
    .line 60
    .line 61
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 62
    .line 63
    new-instance v3, Lorg/hmwebrtc/DataChannel$Buffer;

    .line 64
    .line 65
    const/4 v4, 0x1

    .line 66
    invoke-direct {v3, p1, v4}, Lorg/hmwebrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3, v0}, Lorg/hmwebrtc/DataChannel;->send(Lorg/hmwebrtc/DataChannel$Buffer;Lorg/hmwebrtc/DataChannel$SendOptoins;)Lorg/hmwebrtc/DataChannel$SendResult;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget p1, p1, Lorg/hmwebrtc/DataChannel$SendResult;->result:I

    .line 74
    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/4 p2, 0x2

    .line 79
    if-ne p1, p2, :cond_4

    .line 80
    .line 81
    const/4 p2, 0x1

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/4 p2, -0x1

    .line 84
    :goto_0
    return p2

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p1
.end method

.method private static isOutputJson(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    const-string v1, "hm_internal_use"

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_3

    .line 26
    .line 27
    const-string v1, "{"

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const-string v1, "}"

    .line 36
    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    :cond_1
    const-string v1, "["

    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_3

    .line 50
    .line 51
    const-string v1, "]"

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3

    .line 58
    .line 59
    :cond_2
    const/4 v0, 0x1

    .line 60
    :cond_3
    :goto_0
    return v0
.end method

.method public static synthetic j(Lorg/webrtc/haima/PeerConnectionClient;[Lorg/hmwebrtc/IceCandidate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$removeRemoteIceCandidates$6([Lorg/hmwebrtc/IceCandidate;)V

    return-void
.end method

.method private static joinString(Ljava/lang/Iterable;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p0, ""

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/CharSequence;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/CharSequence;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-eqz p2, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method private static jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 9
    .line 10
    .line 11
    throw p1
.end method

.method public static synthetic k(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$createAnswer$4()V

    return-void
.end method

.method public static synthetic l(Lorg/webrtc/haima/PeerConnectionClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->closeInternal()V

    return-void
.end method

.method private synthetic lambda$ConnectAccProxy$10(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyIp:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyPort:I

    .line 8
    .line 9
    iput-object p3, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyUser:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p4, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyPW:Ljava/lang/String;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/hmwebrtc/PeerConnection;->ConnectAccPorxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private synthetic lambda$DisconnectAccProxy$11()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/hmwebrtc/PeerConnection;->DisconnectAccPorxy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyIp:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyPort:I

    .line 14
    .line 15
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyUser:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyPW:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private synthetic lambda$SwitchToCellularConnection$12(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheSwitchToCellularConnection:Z

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/PeerConnection;->SwitchToCellularConnection(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$addRemoteIceCandidate$5(Lorg/hmwebrtc/IceCandidate;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 6
    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->queuedRemoteCandidates:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "Add candidate into peer connection: "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-interface {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/PeerConnection;->addIceCandidate(Lorg/hmwebrtc/IceCandidate;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "HM_RET_OK"

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 56
    .line 57
    const-string v0, "Add candidate into peer connection failed: unknown_error"

    .line 58
    .line 59
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 60
    .line 61
    invoke-interface {p1, v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "Add candidate succeed."

    .line 68
    .line 69
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v1, "PeerConnection is null when add remote candidate, isError: "

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 95
    .line 96
    invoke-interface {p1, v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void
.end method

.method private synthetic lambda$createAnswer$4()V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_e

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 6
    .line 7
    if-nez v0, :cond_e

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "PeerConnection prepare to create answer, isError: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, ",this:"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/16 v1, 0x34f4

    .line 37
    .line 38
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    const-string v1, "PC create ANSWER"

    .line 44
    .line 45
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->INACTIVE:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 49
    .line 50
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mVideoDirection:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 51
    .line 52
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mAudioDirection:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 53
    .line 54
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 55
    .line 56
    invoke-virtual {v0}, Lorg/hmwebrtc/PeerConnection;->getTransceivers()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_c

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lorg/hmwebrtc/RtpTransceiver;

    .line 75
    .line 76
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getMediaType()Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    sget-object v3, Lorg/hmwebrtc/MediaStreamTrack$MediaType;->MEDIA_TYPE_AUDIO:Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 81
    .line 82
    const-string v4, "transceiver with type["

    .line 83
    .line 84
    if-ne v2, v3, :cond_1

    .line 85
    .line 86
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_download_audio_on:Z

    .line 87
    .line 88
    if-eqz v2, :cond_2

    .line 89
    .line 90
    :cond_1
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getMediaType()Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    sget-object v5, Lorg/hmwebrtc/MediaStreamTrack$MediaType;->MEDIA_TYPE_VIDEO:Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 95
    .line 96
    if-ne v2, v5, :cond_4

    .line 97
    .line 98
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_download_video_on:Z

    .line 99
    .line 100
    if-nez v2, :cond_4

    .line 101
    .line 102
    :cond_2
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getDirection()Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    sget-object v5, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->SEND_RECV:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 107
    .line 108
    if-ne v2, v5, :cond_3

    .line 109
    .line 110
    sget-object v2, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->SEND_ONLY:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/RtpTransceiver;->setDirection(Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;)Z

    .line 113
    .line 114
    .line 115
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 116
    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getMediaType()Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v6, "] is changed to SEND_ONLY from SEND_RECV."

    .line 133
    .line 134
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-static {v2, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getDirection()Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    sget-object v5, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->RECV_ONLY:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 150
    .line 151
    if-ne v2, v5, :cond_4

    .line 152
    .line 153
    sget-object v2, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->INACTIVE:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/RtpTransceiver;->setDirection(Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;)Z

    .line 156
    .line 157
    .line 158
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 159
    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getMediaType()Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v6, "] is changed to INACTIVE from RECV_ONLY."

    .line 176
    .line 177
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-static {v2, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getMediaType()Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    if-ne v2, v3, :cond_5

    .line 192
    .line 193
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    .line 194
    .line 195
    if-eqz v2, :cond_6

    .line 196
    .line 197
    :cond_5
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getMediaType()Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    sget-object v5, Lorg/hmwebrtc/MediaStreamTrack$MediaType;->MEDIA_TYPE_VIDEO:Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 202
    .line 203
    if-ne v2, v5, :cond_8

    .line 204
    .line 205
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 206
    .line 207
    if-nez v2, :cond_8

    .line 208
    .line 209
    :cond_6
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getDirection()Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    sget-object v5, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->SEND_RECV:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 214
    .line 215
    if-ne v2, v5, :cond_7

    .line 216
    .line 217
    sget-object v2, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->RECV_ONLY:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 218
    .line 219
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/RtpTransceiver;->setDirection(Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;)Z

    .line 220
    .line 221
    .line 222
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 223
    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getMediaType()Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    const-string v4, "] is changed to RECV_ONLY from SEND_RECV."

    .line 240
    .line 241
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-static {v2, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_7
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getDirection()Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    sget-object v5, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->SEND_ONLY:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 257
    .line 258
    if-ne v2, v5, :cond_8

    .line 259
    .line 260
    sget-object v2, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->INACTIVE:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 261
    .line 262
    invoke-virtual {v1, v2}, Lorg/hmwebrtc/RtpTransceiver;->setDirection(Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;)Z

    .line 263
    .line 264
    .line 265
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 266
    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getMediaType()Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    const-string v4, "] is changed to INACTIVE from SEND_ONLY."

    .line 283
    .line 284
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-static {v2, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :cond_8
    :goto_2
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getMediaType()Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    sget-object v4, Lorg/hmwebrtc/MediaStreamTrack$MediaType;->MEDIA_TYPE_VIDEO:Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 299
    .line 300
    if-ne v2, v4, :cond_a

    .line 301
    .line 302
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getDirection()Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    sget-object v4, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->INACTIVE:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 307
    .line 308
    if-eq v2, v4, :cond_a

    .line 309
    .line 310
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getDirection()Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mVideoDirection:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 315
    .line 316
    invoke-virtual {p0}, Lorg/webrtc/haima/PeerConnectionClient;->isRtcUploadVideoChannelAvailable()Z

    .line 317
    .line 318
    .line 319
    move-result v2

    .line 320
    if-eqz v2, :cond_9

    .line 321
    .line 322
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    sget-object v4, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->RTC_MEDIA_CHANNEL:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 327
    .line 328
    invoke-virtual {v2, v4}, Lorg/webrtc/haima/HmDataChannelManager;->setVideoVirtualDeviceTransportType(Lorg/webrtc/haima/enums/VirtualDeviceTransportType;)V

    .line 329
    .line 330
    .line 331
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 332
    .line 333
    const-string v4, "isRtcUploadVideoChannelAvailable return true."

    .line 334
    .line 335
    invoke-static {v2, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    goto :goto_3

    .line 339
    :cond_9
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 340
    .line 341
    .line 342
    move-result-object v2

    .line 343
    sget-object v4, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->RTC_DATA_CHANNEL:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 344
    .line 345
    invoke-virtual {v2, v4}, Lorg/webrtc/haima/HmDataChannelManager;->setVideoVirtualDeviceTransportType(Lorg/webrtc/haima/enums/VirtualDeviceTransportType;)V

    .line 346
    .line 347
    .line 348
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 349
    .line 350
    const-string v4, "isRtcUploadVideoChannelAvailable return false."

    .line 351
    .line 352
    invoke-static {v2, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    :cond_a
    :goto_3
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getMediaType()Lorg/hmwebrtc/MediaStreamTrack$MediaType;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    if-ne v2, v3, :cond_0

    .line 360
    .line 361
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getDirection()Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    sget-object v3, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->INACTIVE:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 366
    .line 367
    if-eq v2, v3, :cond_0

    .line 368
    .line 369
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getDirection()Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 370
    .line 371
    .line 372
    move-result-object v2

    .line 373
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mAudioDirection:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 374
    .line 375
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 376
    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v4, "Direction: "

    .line 383
    .line 384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getDirection()Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v4, ", CurrentDirection: "

    .line 395
    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->getCurrentDirection()Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 400
    .line 401
    .line 402
    move-result-object v4

    .line 403
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    const-string v4, ", Stopped: "

    .line 407
    .line 408
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v1}, Lorg/hmwebrtc/RtpTransceiver;->isStopped()Z

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {p0}, Lorg/webrtc/haima/PeerConnectionClient;->isRtcUploadAudioChannelAvailable()Z

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    if-eqz v1, :cond_b

    .line 430
    .line 431
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    sget-object v3, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->RTC_MEDIA_CHANNEL:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 436
    .line 437
    invoke-virtual {v1, v3}, Lorg/webrtc/haima/HmDataChannelManager;->setAudioVirtualDeviceTransportType(Lorg/webrtc/haima/enums/VirtualDeviceTransportType;)V

    .line 438
    .line 439
    .line 440
    const-string v1, "isRtcUploadAudioChannelAvailable return true."

    .line 441
    .line 442
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    goto/16 :goto_0

    .line 446
    .line 447
    :cond_b
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    sget-object v3, Lorg/webrtc/haima/enums/VirtualDeviceTransportType;->WS_SOCKET:Lorg/webrtc/haima/enums/VirtualDeviceTransportType;

    .line 452
    .line 453
    invoke-virtual {v1, v3}, Lorg/webrtc/haima/HmDataChannelManager;->setAudioVirtualDeviceTransportType(Lorg/webrtc/haima/enums/VirtualDeviceTransportType;)V

    .line 454
    .line 455
    .line 456
    const-string v1, "isRtcUploadAudioChannelAvailable return false."

    .line 457
    .line 458
    invoke-static {v2, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    goto/16 :goto_0

    .line 462
    .line 463
    :cond_c
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 464
    .line 465
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->answerObserver:Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;

    .line 466
    .line 467
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->sdpMediaConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 468
    .line 469
    invoke-virtual {v0, v1, v2}, Lorg/hmwebrtc/PeerConnection;->createAnswer(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/MediaConstraints;)V

    .line 470
    .line 471
    .line 472
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->getRemoteVideoTrack()Lorg/hmwebrtc/VideoTrack;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->remoteVideoTrack:Lorg/hmwebrtc/VideoTrack;

    .line 477
    .line 478
    if-eqz v0, :cond_d

    .line 479
    .line 480
    iget-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->renderVideo:Z

    .line 481
    .line 482
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/MediaStreamTrack;->setEnabled(Z)Z

    .line 483
    .line 484
    .line 485
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 486
    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    .line 488
    .line 489
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    .line 491
    .line 492
    const-string v2, "Get the remote Video Track when create ANSWER msg, isError: "

    .line 493
    .line 494
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    iget-boolean v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 498
    .line 499
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 507
    .line 508
    invoke-interface {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    .line 510
    .line 511
    goto :goto_4

    .line 512
    :cond_d
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 513
    .line 514
    const-string v1, "Can\'t get the remote Video Track when create ANSWER msg."

    .line 515
    .line 516
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 520
    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    const-string v2, "Can\'t get the remote Video Track when create ANSWER msg, isError: "

    .line 527
    .line 528
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    iget-boolean v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 532
    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 541
    .line 542
    invoke-interface {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 543
    .line 544
    .line 545
    goto :goto_4

    .line 546
    :cond_e
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 547
    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    const-string v2, "PeerConnection is null when create answer, isError: "

    .line 554
    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    iget-boolean v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 559
    .line 560
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 568
    .line 569
    invoke-interface {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 570
    .line 571
    .line 572
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .line 576
    .line 577
    const-string v1, "PeerConnection finish to create answer, isError: "

    .line 578
    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    const/16 v1, 0x34f5

    .line 590
    .line 591
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 592
    .line 593
    .line 594
    return-void
.end method

.method private synthetic lambda$createPeerConnection$2()V
    .locals 5

    .line 1
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Begin to create a peer connection."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 14
    .line 15
    const-string v3, "PeerConnection already created."

    .line 16
    .line 17
    iget-object v4, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-interface {v2, v3, v4}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeerConnectionLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    iput-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeeConnectionOpening:Z

    .line 26
    .line 27
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeerConnectionLock:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 30
    .line 31
    .line 32
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :try_start_2
    const-string v2, "End to create a peer connection: existed."

    .line 34
    .line 35
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 41
    :try_start_4
    throw v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lorg/webrtc/haima/PeerConnectionClient;->createMediaConstraintsInternal()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lorg/webrtc/haima/PeerConnectionClient;->createPeerConnectionInternal()V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeerConnectionLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 51
    :try_start_5
    iput-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeeConnectionOpening:Z

    .line 52
    .line 53
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeerConnectionLock:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 56
    .line 57
    .line 58
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 59
    :try_start_6
    const-string v2, "End to create a peer connection: succeed."

    .line 60
    .line 61
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v2, "PeerConnection created:"

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/16 v2, 0x34e6

    .line 82
    .line 83
    invoke-static {v2, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :catchall_1
    move-exception v0

    .line 88
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 89
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeerConnectionLock:Ljava/lang/Object;

    .line 92
    .line 93
    monitor-enter v2

    .line 94
    :try_start_9
    iput-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeeConnectionOpening:Z

    .line 95
    .line 96
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeerConnectionLock:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 99
    .line 100
    .line 101
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 102
    sget-object v1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 103
    .line 104
    const-string v2, "End to create a peer connection: failed."

    .line 105
    .line 106
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v2, "Failed to create peer connection: "

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-direct {p0, v1}, Lorg/webrtc/haima/PeerConnectionClient;->reportError(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :catchall_2
    move-exception v0

    .line 135
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 136
    throw v0
.end method

.method private synthetic lambda$createPeerConnectionFactory$1(Lorg/hmwebrtc/PeerConnectionFactory$Options;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->createPeerConnectionFactoryInternal(Lorg/hmwebrtc/PeerConnectionFactory$Options;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Initialize WebRTC. Field trials: "

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
    const-string v2, ", haimaCloudId: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p2, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->haimaCloudId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v1, "begin Initialize WebRTC:"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ".haimaCloudId:"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p2, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->haimaCloudId:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ",elapsedRealtime:"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/16 v1, 0x34df

    .line 73
    .line 74
    invoke-static {v1, v0}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {p3}, Lorg/hmwebrtc/PeerConnectionFactory$InitializationOptions;->builder(Landroid/content/Context;)Lorg/hmwebrtc/PeerConnectionFactory$InitializationOptions$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p3, p1}, Lorg/hmwebrtc/PeerConnectionFactory$InitializationOptions$Builder;->setFieldTrials(Ljava/lang/String;)Lorg/hmwebrtc/PeerConnectionFactory$InitializationOptions$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/PeerConnectionFactory$InitializationOptions$Builder;->setEnableInternalTracer(Z)Lorg/hmwebrtc/PeerConnectionFactory$InitializationOptions$Builder;

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mWebrtcLoggable:Lorg/hmwebrtc/log/WebrtcLoggableHelp;

    .line 90
    .line 91
    if-eqz p1, :cond_0

    .line 92
    .line 93
    invoke-virtual {p1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->getLevel()Lorg/hmwebrtc/Logging$Severity;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {p3, p1, v0}, Lorg/hmwebrtc/PeerConnectionFactory$InitializationOptions$Builder;->setInjectableLogger(Lorg/hmwebrtc/Loggable;Lorg/hmwebrtc/Logging$Severity;)Lorg/hmwebrtc/PeerConnectionFactory$InitializationOptions$Builder;

    .line 98
    .line 99
    .line 100
    :cond_0
    invoke-virtual {p3}, Lorg/hmwebrtc/PeerConnectionFactory$InitializationOptions$Builder;->createInitializationOptions()Lorg/hmwebrtc/PeerConnectionFactory$InitializationOptions;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lorg/hmwebrtc/PeerConnectionFactory;->initialize(Lorg/hmwebrtc/PeerConnectionFactory$InitializationOptions;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mWebrtcLoggable:Lorg/hmwebrtc/log/WebrtcLoggableHelp;

    .line 108
    .line 109
    if-nez p1, :cond_1

    .line 110
    .line 111
    sget-object p1, Lorg/hmwebrtc/Logging$Severity;->LS_INFO:Lorg/hmwebrtc/Logging$Severity;

    .line 112
    .line 113
    invoke-static {p1}, Lorg/hmwebrtc/Logging;->enableLogToDebugOutput(Lorg/hmwebrtc/Logging$Severity;)V

    .line 114
    .line 115
    .line 116
    :cond_1
    iget-object p1, p2, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->haimaCloudId:Ljava/lang/String;

    .line 117
    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    invoke-static {p1}, Lorg/hmwebrtc/PeerConnection;->setNativeHaimaCloudId(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 124
    .line 125
    sget-object p2, Lorg/webrtc/haima/beans/GamePlatformType;->ARM:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 126
    .line 127
    if-ne p1, p2, :cond_2

    .line 128
    .line 129
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getRtcMaxMediaPackets()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getRtcMaxFecPackets()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-static {p1, p2}, Lorg/hmwebrtc/PeerConnection;->setNativeFecParams(II)V

    .line 138
    .line 139
    .line 140
    :cond_2
    sget-object p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcStunReqResendCfg:Lorg/webrtc/haima/HmRtcStunRequestResendCfg;

    .line 141
    .line 142
    invoke-virtual {p1}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_3

    .line 147
    .line 148
    sget-object p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcStunReqResendCfg:Lorg/webrtc/haima/HmRtcStunRequestResendCfg;

    .line 149
    .line 150
    invoke-virtual {p1}, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->getResendRto()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    sget-object p2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcStunReqResendCfg:Lorg/webrtc/haima/HmRtcStunRequestResendCfg;

    .line 155
    .line 156
    invoke-virtual {p2}, Lorg/webrtc/haima/HmRtcStunRequestResendCfg;->getResendCount()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    invoke-static {p1, p2}, Lorg/hmwebrtc/PeerConnection;->setNativeSetStunRequestResendParams(II)V

    .line 161
    .line 162
    .line 163
    :cond_3
    sget-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableNetworkAccelerate:Z

    .line 164
    .line 165
    invoke-static {p1}, Lorg/hmwebrtc/PeerConnection;->EnableNetAccelerate(Z)V

    .line 166
    .line 167
    .line 168
    :cond_4
    sget-boolean p1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSrtpCipherReport:Z

    .line 169
    .line 170
    invoke-static {p1}, Lorg/hmwebrtc/PeerConnection;->enableNativeSrtpCipherReport(Z)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method private synthetic lambda$removeRemoteIceCandidates$6([Lorg/hmwebrtc/IceCandidate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->drainCandidates()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/PeerConnection;->removeIceCandidates([Lorg/hmwebrtc/IceCandidate;)Z

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "Remove candidate failed, isError: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-interface {p1, v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private synthetic lambda$reportError$9(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-interface {v0, p1, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onPeerConnectionError(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private synthetic lambda$reportErrorOnly$13(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-interface {v0, p1, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$setRemoteDescription$7(Lorg/hmwebrtc/SessionDescription;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {v0}, Lorg/hmwebrtc/PeerConnection;->getRemoteDescription()Lorg/hmwebrtc/SessionDescription;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 18
    .line 19
    const-string v0, "There is no need to set remote description when peerconnection has one,"

    .line 20
    .line 21
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-interface {p1, v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p1, Lorg/hmwebrtc/SessionDescription;->description:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/hmwebrtc/SessionDescription;->Deserialize()Lorg/hmwebrtc/SessionDescription$Attribute;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {p0, v1}, Lorg/webrtc/haima/PeerConnectionClient;->receiveRemoteSessionAttribule(Lorg/hmwebrtc/SessionDescription$Attribute;)V

    .line 34
    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const-string v3, "input"

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Lorg/hmwebrtc/SessionDescription$Attribute;->GetAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v1, v2

    .line 47
    :goto_0
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->mInputHelper:Lorg/webrtc/haima/HmInputHelper;

    .line 48
    .line 49
    invoke-virtual {v3, v2, v1}, Lorg/webrtc/haima/HmInputHelper;->setRemoteVersion(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mInputHelper:Lorg/webrtc/haima/HmInputHelper;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lorg/webrtc/haima/HmInputHelper;->newInputchannel(Ljava/util/concurrent/ExecutorService;)Z

    .line 55
    .line 56
    .line 57
    iget-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->preferIsac:Z

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    const-string v1, "ISAC"

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient;->preferCodec(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_3
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 69
    .line 70
    iget-object v1, v1, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->videoCodec:Ljava/lang/String;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 82
    .line 83
    invoke-static {v1}, Lorg/webrtc/haima/PeerConnectionClient;->getSdpVideoCodecName(Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient;->preferCodec(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_4
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 92
    .line 93
    iget v1, v1, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->audioStartBitrate:I

    .line 94
    .line 95
    if-lez v1, :cond_5

    .line 96
    .line 97
    const-string v3, "opus"

    .line 98
    .line 99
    invoke-static {v3, v2, v0, v1}, Lorg/webrtc/haima/PeerConnectionClient;->setStartBitrate(Ljava/lang/String;ZLjava/lang/String;I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :cond_5
    sget-object v1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 104
    .line 105
    const-string v2, "Set remote SDP."

    .line 106
    .line 107
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lorg/hmwebrtc/SessionDescription;

    .line 111
    .line 112
    iget-object p1, p1, Lorg/hmwebrtc/SessionDescription;->type:Lorg/hmwebrtc/SessionDescription$Type;

    .line 113
    .line 114
    invoke-direct {v1, p1, v0}, Lorg/hmwebrtc/SessionDescription;-><init>(Lorg/hmwebrtc/SessionDescription$Type;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 118
    .line 119
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->offerObserver:Lorg/webrtc/haima/PeerConnectionClient$SDPObserver;

    .line 120
    .line 121
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/PeerConnection;->setRemoteDescription(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/SessionDescription;)V

    .line 122
    .line 123
    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v0, "Set remote SDP finished:"

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const/16 v0, 0x34ef

    .line 142
    .line 143
    invoke-static {v0, p1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_6
    :goto_1
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 148
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v1, "PeerConnection is null when set remote SDP, isError: "

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 169
    .line 170
    invoke-interface {p1, v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method private synthetic lambda$setX86RemoteDescription$8(Lorg/hmwebrtc/SessionDescription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "Set remote SDP received from x86 http."

    .line 13
    .line 14
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 18
    .line 19
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mRemoteObserver:Lorg/webrtc/haima/PeerConnectionClient$X86RemoteSDPObserver;

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lorg/hmwebrtc/PeerConnection;->setRemoteDescription(Lorg/hmwebrtc/SdpObserver;Lorg/hmwebrtc/SessionDescription;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "PeerConnection is null when set remote SDP, isError: "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-interface {p1, v0, v1}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private synthetic lambda$x86SendLargeDataBlcok$3([BLorg/webrtc/haima/HaimaDataChannel$Listener;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/haima/PeerConnectionClient;->internalX86SendLargeDataBlcok([BLorg/webrtc/haima/HaimaDataChannel$Listener;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public static synthetic m(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/PeerConnectionFactory$Options;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$createPeerConnectionFactory$1(Lorg/hmwebrtc/PeerConnectionFactory$Options;)V

    return-void
.end method

.method private static movePayloadTypesToFront(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const-string v0, " "

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x3

    .line 16
    if-gt v2, v3, :cond_0

    .line 17
    .line 18
    sget-object p0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "Wrong SDP media description format: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    return-object p0

    .line 42
    :cond_0
    const/4 p1, 0x0

    .line 43
    invoke-interface {v1, p1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v4, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    invoke-interface {v1, v3, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v4, p0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    .line 76
    .line 77
    invoke-static {v1, v0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->joinString(Ljava/lang/Iterable;Ljava/lang/String;Z)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    return-object p0
.end method

.method public static synthetic n(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$ConnectAccProxy$10(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic o(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->lambda$reportErrorOnly$13(Ljava/lang/String;)V

    return-void
.end method

.method private static preferCodec(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    .line 1
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "start to change sdp preferred codec to : "

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
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_6

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_0
    const-string v1, "\r\n"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {p2, v2}, Lorg/webrtc/haima/PeerConnectionClient;->findMediaDescriptionLine(Z[Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    const/4 v3, -0x1

    .line 44
    if-ne p2, v3, :cond_1

    .line 45
    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "No mediaDescription line, so can\'t prefer "

    .line 52
    .line 53
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object p0

    .line 67
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v4, "^a=rtpmap:(\\d+) "

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, "(/\\d+)+[\r]?$"

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    array-length v4, v2

    .line 99
    const/4 v5, 0x0

    .line 100
    :goto_0
    const/4 v6, 0x1

    .line 101
    if-ge v5, v4, :cond_3

    .line 102
    .line 103
    aget-object v7, v2, v5

    .line 104
    .line 105
    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    .line 110
    .line 111
    .line 112
    move-result v8

    .line 113
    if-eqz v8, :cond_2

    .line 114
    .line 115
    invoke-virtual {v7, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_4

    .line 130
    .line 131
    sget-object p2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "No payload types with name "

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-object p0

    .line 154
    :cond_4
    aget-object p1, v2, p2

    .line 155
    .line 156
    invoke-static {v0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->movePayloadTypesToFront(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-nez p1, :cond_5

    .line 161
    .line 162
    return-object p0

    .line 163
    :cond_5
    sget-object p0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v3, "Change media description from: "

    .line 171
    .line 172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    aget-object v3, v2, p2

    .line 176
    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v3, " to "

    .line 181
    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {p0, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    aput-object p1, v2, p2

    .line 196
    .line 197
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object p0

    .line 201
    invoke-static {p0, v1, v6}, Lorg/webrtc/haima/PeerConnectionClient;->joinString(Ljava/lang/Iterable;Ljava/lang/String;Z)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    return-object p0

    .line 206
    :cond_6
    :goto_1
    const-string p1, "change sdp preferred codec failed because expected codec is null"

    .line 207
    .line 208
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    return-object p0
.end method

.method private receiveRemoteSessionAttribule(Lorg/hmwebrtc/SessionDescription$Attribute;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/hmwebrtc/SessionDescription$Attribute;->GetDeviceModel()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, ""

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "model="

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :cond_1
    invoke-virtual {p1}, Lorg/hmwebrtc/SessionDescription$Attribute;->GetDeviceVersion()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "device="

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_2
    invoke-virtual {p1}, Lorg/hmwebrtc/SessionDescription$Attribute;->GetLibVersion()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, "lib="

    .line 73
    .line 74
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :cond_3
    invoke-virtual {p1}, Lorg/hmwebrtc/SessionDescription$Attribute;->GetDebugInfo()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, "debuginfo="

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {p1}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->DispatchCommand(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_4
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 114
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v2, " receiveRemoteSessionAttr: "

    .line 121
    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method private reportError(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Peerconnection error: "

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
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance v1, Lorg/webrtc/haima/q;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/q;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private reportErrorOnly(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "Peer connection error, report error only: "

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
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance v1, Lorg/webrtc/haima/z;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/z;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private sendLocalSessionAttribule(Lorg/hmwebrtc/SessionDescription$Attribute;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "."

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/SessionDescription$Attribute;->SetDeviceModel(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "3.0.2.8.5396d74.12041040"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/SessionDescription$Attribute;->SetLibVersion(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/SessionDescription$Attribute;->SetDeviceVersion(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    const-string v0, " sendLocalSessionAttribule: true "

    .line 43
    .line 44
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    return p1

    .line 49
    :cond_0
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    const-string v0, " sendLocalSessionAttribule: false "

    .line 52
    .line 53
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    return p1
.end method

.method private static setStartBitrate(Ljava/lang/String;ZLjava/lang/String;I)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "\r\n"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v3, "^a=rtpmap:(\\d+) "

    .line 13
    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v3, "(/\\d+)+[\r]?$"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    :goto_0
    array-length v5, v1

    .line 36
    const/4 v6, 0x1

    .line 37
    if-ge v4, v5, :cond_1

    .line 38
    .line 39
    aget-object v5, v1, v4

    .line 40
    .line 41
    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_0

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const/4 v4, -0x1

    .line 60
    const/4 v2, 0x0

    .line 61
    :goto_1
    if-nez v2, :cond_2

    .line 62
    .line 63
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 64
    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v0, "No rtpmap for "

    .line 71
    .line 72
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p0, " codec"

    .line 79
    .line 80
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {p1, p0}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object p2

    .line 91
    :cond_2
    sget-object p2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v7, "Found "

    .line 99
    .line 100
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v8, " rtpmap "

    .line 107
    .line 108
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v8, " at "

    .line 115
    .line 116
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    aget-object v8, v1, v4

    .line 120
    .line 121
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {p2, v5}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    const-string v5, "^a=fmtp:"

    .line 137
    .line 138
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v5, " \\w+=\\d+.*[\r]?$"

    .line 145
    .line 146
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    const/4 v5, 0x0

    .line 158
    :goto_2
    array-length v8, v1

    .line 159
    const-string v9, " "

    .line 160
    .line 161
    if-ge v5, v8, :cond_5

    .line 162
    .line 163
    aget-object v8, v1, v5

    .line 164
    .line 165
    invoke-virtual {p2, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    .line 170
    .line 171
    .line 172
    move-result v8

    .line 173
    if-eqz v8, :cond_4

    .line 174
    .line 175
    sget-object p2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 176
    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    aget-object p0, v1, v5

    .line 192
    .line 193
    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-static {p2, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    if-eqz p1, :cond_3

    .line 204
    .line 205
    new-instance p0, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    aget-object v7, v1, v5

    .line 211
    .line 212
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v7, "; x-google-start-bitrate="

    .line 216
    .line 217
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    aput-object p0, v1, v5

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .line 234
    .line 235
    aget-object v7, v1, v5

    .line 236
    .line 237
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v7, "; maxaveragebitrate="

    .line 241
    .line 242
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    mul-int/lit16 v7, p3, 0x3e8

    .line 246
    .line 247
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0

    .line 254
    aput-object p0, v1, v5

    .line 255
    .line 256
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v7, "Update remote SDP line: "

    .line 262
    .line 263
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    aget-object v5, v1, v5

    .line 267
    .line 268
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-static {p2, p0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_5
    const/4 v6, 0x0

    .line 283
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    :goto_5
    array-length p2, v1

    .line 289
    if-ge v3, p2, :cond_8

    .line 290
    .line 291
    aget-object p2, v1, v3

    .line 292
    .line 293
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    if-nez v6, :cond_7

    .line 300
    .line 301
    if-ne v3, v4, :cond_7

    .line 302
    .line 303
    const-string p2, "="

    .line 304
    .line 305
    const-string v5, "a=fmtp:"

    .line 306
    .line 307
    if-eqz p1, :cond_6

    .line 308
    .line 309
    new-instance v7, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v5, "x-google-start-bitrate"

    .line 324
    .line 325
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p2

    .line 338
    goto :goto_6

    .line 339
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v5, "maxaveragebitrate"

    .line 354
    .line 355
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    mul-int/lit16 p2, p3, 0x3e8

    .line 362
    .line 363
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p2

    .line 370
    :goto_6
    sget-object v5, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 371
    .line 372
    new-instance v7, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    const-string v8, "Add remote SDP line: "

    .line 378
    .line 379
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v7

    .line 389
    invoke-static {v5, v7}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object p0

    .line 405
    return-object p0
.end method

.method private setUserInfo()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "user.brand"

    .line 9
    .line 10
    invoke-virtual {v0, v2, v1}, Lorg/hmwebrtc/PeerConnection;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "."

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "user.model"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lorg/hmwebrtc/PeerConnection;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 43
    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v2, "andr"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "user.os"

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lorg/hmwebrtc/PeerConnection;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 69
    .line 70
    iget-object v0, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->haimaCloudId:Ljava/lang/String;

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 75
    .line 76
    const-string v2, "user.cid"

    .line 77
    .line 78
    invoke-virtual {v1, v2, v0}, Lorg/hmwebrtc/PeerConnection;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-static {}, Lorg/webrtc/haima/HmUtilsHelper;->getTotalMemory()J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v4, "getTotalMemory:"

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-wide/16 v3, 0x0

    .line 108
    .line 109
    cmp-long v5, v0, v3

    .line 110
    .line 111
    if-lez v5, :cond_3

    .line 112
    .line 113
    const-wide/32 v6, 0x3b9aca00

    .line 114
    .line 115
    .line 116
    add-long/2addr v0, v6

    .line 117
    const-wide/16 v8, 0x1

    .line 118
    .line 119
    sub-long/2addr v0, v8

    .line 120
    div-long/2addr v0, v6

    .line 121
    cmp-long v6, v0, v3

    .line 122
    .line 123
    if-nez v6, :cond_2

    .line 124
    .line 125
    if-lez v5, :cond_2

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    move-wide v8, v0

    .line 129
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v1, "user.device.mem:"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v2, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 150
    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v2, ""

    .line 157
    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const-string v2, "user.device.mem"

    .line 169
    .line 170
    invoke-virtual {v0, v2, v1}, Lorg/hmwebrtc/PeerConnection;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    :cond_3
    return-void
.end method


# virtual methods
.method public ConnectAccProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v7, Lorg/webrtc/haima/r;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move-object v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lorg/webrtc/haima/r;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public DisconnectAccProxy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/m;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/webrtc/haima/m;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public SwitchToCellularConnection(Z)V
    .locals 2

    .line 1
    sget-boolean v0, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcEnableSwitchCellularNetwork:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v1, Lorg/webrtc/haima/t;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/t;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Z)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public addRemoteIceCandidate(Lorg/hmwebrtc/IceCandidate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/p;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/p;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/IceCandidate;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public close()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->statsTimer:Ljava/util/Timer;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    new-instance v1, Lorg/webrtc/haima/y;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lorg/webrtc/haima/y;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 30
    .line 31
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    const-wide/16 v3, 0x2

    .line 34
    .line 35
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :goto_0
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "closing peer connection client timeout:"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/16 v2, 0x34e8

    .line 61
    .line 62
    invoke-static {v2, v1}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :goto_1
    return-void

    .line 67
    :goto_2
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 68
    .line 69
    throw v1

    .line 70
    :cond_0
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    const-string v1, "Fatal error: repeat call close."

    .line 73
    .line 74
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public createAnswer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/o;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/webrtc/haima/o;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public createHmDCDevice(Ljava/lang/String;)Lorg/webrtc/haima/HmDCDevice;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Lorg/webrtc/haima/HmDataChannelManager;->createDataChannel(Lorg/hmwebrtc/PeerConnection;Ljava/lang/String;)Lorg/webrtc/haima/HmDCDevice;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_1
    :goto_0
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "Creating data channel without non peer connection or in error state."

    .line 24
    .line 25
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    return-object p1
.end method

.method createJavaAudioDevice()Lorg/hmwebrtc/audio/AudioDeviceModule;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 2
    .line 3
    iget-boolean v0, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->useOpenSLES:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "External OpenSLES ADM not implemented yet."

    .line 10
    .line 11
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v0, Lorg/webrtc/haima/PeerConnectionClient$2;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lorg/webrtc/haima/PeerConnectionClient$2;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$3;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lorg/webrtc/haima/PeerConnectionClient$3;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    .line 22
    .line 23
    .line 24
    new-instance v2, Lorg/webrtc/haima/PeerConnectionClient$4;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lorg/webrtc/haima/PeerConnectionClient$4;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    .line 27
    .line 28
    .line 29
    new-instance v3, Lorg/webrtc/haima/PeerConnectionClient$5;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lorg/webrtc/haima/PeerConnectionClient$5;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    .line 32
    .line 33
    .line 34
    iget-object v4, p0, Lorg/webrtc/haima/PeerConnectionClient;->appContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v4}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule;->builder(Landroid/content/Context;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 41
    .line 42
    iget-boolean v5, v5, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->disableBuiltInAEC:Z

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    xor-int/2addr v5, v6

    .line 46
    invoke-virtual {v4, v5}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setUseHardwareAcousticEchoCanceler(Z)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v5, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 51
    .line 52
    iget-boolean v5, v5, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->disableBuiltInNS:Z

    .line 53
    .line 54
    xor-int/2addr v5, v6

    .line 55
    invoke-virtual {v4, v5}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setUseHardwareNoiseSuppressor(Z)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4, v0}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setAudioRecordErrorCallback(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordErrorCallback;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setAudioTrackErrorCallback(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, v2}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setAudioRecordStateCallback(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioRecordStateCallback;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v3}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setAudioTrackStateCallback(Lorg/hmwebrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, v6}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setUseStereoOutput(Z)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sget-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    .line 80
    .line 81
    const/4 v2, 0x2

    .line 82
    const-string v3, ", flags: "

    .line 83
    .line 84
    const-string v4, ", ContentType: "

    .line 85
    .line 86
    const-string v5, "Using external AudioAttributes with Usage: "

    .line 87
    .line 88
    if-eqz v1, :cond_2

    .line 89
    .line 90
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapter;->externalAudioAttributes:Landroid/media/AudioAttributes;

    .line 91
    .line 92
    if-nez v1, :cond_1

    .line 93
    .line 94
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 95
    .line 96
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 113
    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getContentType()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_0
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v6}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setAudioSource(I)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 160
    .line 161
    .line 162
    invoke-static {}, Lorg/webrtc/haima/audio/HmAudioManager;->getInstance()Lorg/webrtc/haima/audio/HmAudioManager;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    const/4 v2, 0x0

    .line 167
    invoke-virtual {v1, v2, v0}, Lorg/webrtc/haima/audio/HmAudioManager;->prepare(Lorg/webrtc/haima/audio/HmAudioConfig$AudioConroller$Config;Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    sget-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_download_audio_on:Z

    .line 172
    .line 173
    if-eqz v1, :cond_4

    .line 174
    .line 175
    sget-object v1, Lorg/webrtc/haima/HmRtcAdapter;->externalAudioAttributes:Landroid/media/AudioAttributes;

    .line 176
    .line 177
    if-nez v1, :cond_3

    .line 178
    .line 179
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    .line 180
    .line 181
    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    goto :goto_1

    .line 197
    :cond_3
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 198
    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getContentType()I

    .line 218
    .line 219
    .line 220
    move-result v4

    .line 221
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getFlags()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-static {v2, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    :goto_1
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;

    .line 242
    .line 243
    .line 244
    :cond_4
    :goto_2
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/JavaAudioDeviceModule$Builder;->createAudioDeviceModule()Lorg/hmwebrtc/audio/JavaAudioDeviceModule;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    sget-boolean v1, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    .line 249
    .line 250
    if-eqz v1, :cond_5

    .line 251
    .line 252
    invoke-static {}, Lorg/webrtc/haima/audio/HmAudioManager;->getInstance()Lorg/webrtc/haima/audio/HmAudioManager;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v1, v0}, Lorg/webrtc/haima/audio/HmAudioManager;->setAdm(Lorg/hmwebrtc/audio/JavaAudioDeviceModule;)V

    .line 257
    .line 258
    .line 259
    :cond_5
    return-object v0
.end method

.method protected createMediaConstraintsInternal()V
    .locals 8

    .line 1
    new-instance v0, Lorg/hmwebrtc/MediaConstraints;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/hmwebrtc/MediaConstraints;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->audioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 9
    .line 10
    iget-boolean v0, v0, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->noAudioProcessing:Z

    .line 11
    .line 12
    const-string v1, "googNoiseSuppression"

    .line 13
    .line 14
    const-string v2, "googHighpassFilter"

    .line 15
    .line 16
    const-string v3, "googAutoGainControl"

    .line 17
    .line 18
    const-string v4, "googEchoCancellation"

    .line 19
    .line 20
    const-string v5, "true"

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    const-string v6, "Disabling audio processing"

    .line 27
    .line 28
    invoke-static {v0, v6}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->audioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 32
    .line 33
    iget-object v0, v0, Lorg/hmwebrtc/MediaConstraints;->mandatory:Ljava/util/List;

    .line 34
    .line 35
    new-instance v6, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;

    .line 36
    .line 37
    const-string v7, "false"

    .line 38
    .line 39
    invoke-direct {v6, v4, v7}, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->audioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 46
    .line 47
    iget-object v0, v0, Lorg/hmwebrtc/MediaConstraints;->mandatory:Ljava/util/List;

    .line 48
    .line 49
    new-instance v4, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;

    .line 50
    .line 51
    invoke-direct {v4, v3, v7}, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->audioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 58
    .line 59
    iget-object v0, v0, Lorg/hmwebrtc/MediaConstraints;->mandatory:Ljava/util/List;

    .line 60
    .line 61
    new-instance v3, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;

    .line 62
    .line 63
    invoke-direct {v3, v2, v7}, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->audioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 70
    .line 71
    iget-object v0, v0, Lorg/hmwebrtc/MediaConstraints;->mandatory:Ljava/util/List;

    .line 72
    .line 73
    new-instance v2, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;

    .line 74
    .line 75
    invoke-direct {v2, v1, v7}, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    const-string v6, "Enabling audio processing"

    .line 85
    .line 86
    invoke-static {v0, v6}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->audioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 90
    .line 91
    iget-object v0, v0, Lorg/hmwebrtc/MediaConstraints;->mandatory:Ljava/util/List;

    .line 92
    .line 93
    new-instance v6, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;

    .line 94
    .line 95
    invoke-direct {v6, v4, v5}, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->audioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 102
    .line 103
    iget-object v0, v0, Lorg/hmwebrtc/MediaConstraints;->mandatory:Ljava/util/List;

    .line 104
    .line 105
    new-instance v4, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;

    .line 106
    .line 107
    invoke-direct {v4, v3, v5}, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->audioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 114
    .line 115
    iget-object v0, v0, Lorg/hmwebrtc/MediaConstraints;->mandatory:Ljava/util/List;

    .line 116
    .line 117
    new-instance v3, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;

    .line 118
    .line 119
    invoke-direct {v3, v2, v5}, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->audioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 126
    .line 127
    iget-object v0, v0, Lorg/hmwebrtc/MediaConstraints;->mandatory:Ljava/util/List;

    .line 128
    .line 129
    new-instance v2, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;

    .line 130
    .line 131
    invoke-direct {v2, v1, v5}, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :goto_0
    new-instance v0, Lorg/hmwebrtc/MediaConstraints;

    .line 138
    .line 139
    invoke-direct {v0}, Lorg/hmwebrtc/MediaConstraints;-><init>()V

    .line 140
    .line 141
    .line 142
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->sdpMediaConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 143
    .line 144
    iget-object v0, v0, Lorg/hmwebrtc/MediaConstraints;->mandatory:Ljava/util/List;

    .line 145
    .line 146
    new-instance v1, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;

    .line 147
    .line 148
    const-string v2, "OfferToReceiveAudio"

    .line 149
    .line 150
    invoke-direct {v1, v2, v5}, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->sdpMediaConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 157
    .line 158
    iget-object v0, v0, Lorg/hmwebrtc/MediaConstraints;->mandatory:Ljava/util/List;

    .line 159
    .line 160
    new-instance v1, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;

    .line 161
    .line 162
    const-string v2, "OfferToReceiveVideo"

    .line 163
    .line 164
    invoke-direct {v1, v2, v5}, Lorg/hmwebrtc/MediaConstraints$KeyValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public createPeerConnection(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/VideoSink;",
            ">;",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0, p1, v0, p2}, Lorg/webrtc/haima/PeerConnectionClient;->createPeerConnection(Lorg/hmwebrtc/VideoSink;Ljava/util/List;Lorg/hmwebrtc/VideoCapturer;Ljava/util/List;)V

    return-void
.end method

.method public createPeerConnection(Lorg/hmwebrtc/VideoSink;Ljava/util/List;Lorg/hmwebrtc/VideoCapturer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hmwebrtc/VideoSink;",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/VideoSink;",
            ">;",
            "Lorg/hmwebrtc/VideoCapturer;",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeeConnectionOpening:Z

    .line 2
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    const-string p2, "Creating peer connection without initializing factory."

    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iput-object p4, p0, Lorg/webrtc/haima/PeerConnectionClient;->iceServers:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lorg/webrtc/haima/PeerConnectionClient;->remoteSinks:Ljava/util/List;

    if-eqz p3, :cond_1

    .line 6
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lorg/webrtc/haima/camera/HmCameraManager;->setVideo(Lorg/hmwebrtc/VideoCapturer;Lorg/hmwebrtc/VideoSink;)V

    .line 7
    :cond_1
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lorg/webrtc/haima/v;

    invoke-direct {p2, p0}, Lorg/webrtc/haima/v;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    const-string p2, "Begin to waiting a peer connection creation."

    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeerConnectionLock:Ljava/lang/Object;

    monitor-enter p1

    .line 10
    :goto_0
    :try_start_0
    iget-boolean p2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeeConnectionOpening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 11
    :try_start_1
    iget-object p2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mPeerConnectionLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :catch_0
    :try_start_2
    sget-object p2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    const-string p3, "Call createPeerConnection interrupted while waiting for done."

    invoke-static {p2, p3}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 14
    monitor-exit p1

    return-void

    .line 15
    :cond_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    const-string p2, "End to waiting a peer connection creation."

    invoke-static {p1, p2}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    .line 17
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method public createPeerConnectionFactory(Lorg/hmwebrtc/PeerConnectionFactory$Options;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    new-instance v1, Lorg/webrtc/haima/s;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/s;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/PeerConnectionFactory$Options;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "PeerConnectionFactory has already been constructed"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1
.end method

.method protected createPeerConnectionInternal()V
    .locals 10

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 2
    .line 3
    if-eqz v0, :cond_14

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "Create peer connection."

    .line 14
    .line 15
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mIsRTCConnected:Z

    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->queuedRemoteCandidates:Ljava/util/List;

    .line 27
    .line 28
    new-instance v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;

    .line 29
    .line 30
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->iceServers:Ljava/util/List;

    .line 31
    .line 32
    invoke-direct {v2, v3}, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    .line 33
    .line 34
    .line 35
    sget-object v3, Lorg/hmwebrtc/PeerConnection$TcpCandidatePolicy;->DISABLED:Lorg/hmwebrtc/PeerConnection$TcpCandidatePolicy;

    .line 36
    .line 37
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->tcpCandidatePolicy:Lorg/hmwebrtc/PeerConnection$TcpCandidatePolicy;

    .line 38
    .line 39
    sget-object v3, Lorg/hmwebrtc/PeerConnection$BundlePolicy;->MAXBUNDLE:Lorg/hmwebrtc/PeerConnection$BundlePolicy;

    .line 40
    .line 41
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->bundlePolicy:Lorg/hmwebrtc/PeerConnection$BundlePolicy;

    .line 42
    .line 43
    sget-object v3, Lorg/hmwebrtc/PeerConnection$RtcpMuxPolicy;->REQUIRE:Lorg/hmwebrtc/PeerConnection$RtcpMuxPolicy;

    .line 44
    .line 45
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->rtcpMuxPolicy:Lorg/hmwebrtc/PeerConnection$RtcpMuxPolicy;

    .line 46
    .line 47
    sget-object v3, Lorg/hmwebrtc/PeerConnection$ContinualGatheringPolicy;->GATHER_CONTINUALLY:Lorg/hmwebrtc/PeerConnection$ContinualGatheringPolicy;

    .line 48
    .line 49
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/hmwebrtc/PeerConnection$ContinualGatheringPolicy;

    .line 50
    .line 51
    sget-object v3, Lorg/hmwebrtc/PeerConnection$KeyType;->ECDSA:Lorg/hmwebrtc/PeerConnection$KeyType;

    .line 52
    .line 53
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->keyType:Lorg/hmwebrtc/PeerConnection$KeyType;

    .line 54
    .line 55
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 56
    .line 57
    iget-boolean v3, v3, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->loopback:Z

    .line 58
    .line 59
    const/4 v4, 0x1

    .line 60
    xor-int/2addr v3, v4

    .line 61
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->enableDtlsSrtp:Ljava/lang/Boolean;

    .line 66
    .line 67
    sget-object v3, Lorg/hmwebrtc/PeerConnection$SdpSemantics;->UNIFIED_PLAN:Lorg/hmwebrtc/PeerConnection$SdpSemantics;

    .line 68
    .line 69
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lorg/hmwebrtc/PeerConnection$SdpSemantics;

    .line 70
    .line 71
    sget-object v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUdpPortCfg:Lorg/webrtc/haima/HmRtcUdpPortCfg;

    .line 72
    .line 73
    invoke-virtual {v3}, Lorg/webrtc/haima/HMRTConfig;->isEnable()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    sget-object v3, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtcUdpPortCfg:Lorg/webrtc/haima/HmRtcUdpPortCfg;

    .line 80
    .line 81
    invoke-virtual {v3}, Lorg/webrtc/haima/HmRtcUdpPortCfg;->getPortRange()Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget v5, v3, Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;->udpMinPort:I

    .line 86
    .line 87
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    iput-object v5, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->udpMinPort:Ljava/lang/Integer;

    .line 92
    .line 93
    iget v3, v3, Lorg/webrtc/haima/HmRtcUdpPortCfg$HmRtcUdpPortRangeCfg;->udpMaxPort:I

    .line 94
    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->udpMaxPort:Ljava/lang/Integer;

    .line 100
    .line 101
    :cond_1
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getConnectionPingInterval()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-lez v3, :cond_2

    .line 106
    .line 107
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getConnectionPingInterval()I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceStableWritableConnectionPingInterval:Ljava/lang/Integer;

    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v5, "Set connection ping interval by Saas: "

    .line 123
    .line 124
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v5, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceStableWritableConnectionPingInterval:Ljava/lang/Integer;

    .line 128
    .line 129
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-static {v0, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceStableWritableConnectionPingInterval:Ljava/lang/Integer;

    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    const/16 v5, 0x1e0

    .line 146
    .line 147
    if-gt v3, v5, :cond_2

    .line 148
    .line 149
    const-string v0, "StableWritableConnectionPingInterval from Saas is incorrect, it have to longer than 480."

    .line 150
    .line 151
    invoke-direct {p0, v0}, Lorg/webrtc/haima/PeerConnectionClient;->reportErrorOnly(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    return-void

    .line 155
    :cond_2
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnectionParameters:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;

    .line 156
    .line 157
    iget-boolean v3, v3, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionParameters;->isDirectSurfaceOn:Z

    .line 158
    .line 159
    if-nez v3, :cond_3

    .line 160
    .line 161
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHmBadFrameDetectConfigParams()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-lez v3, :cond_3

    .line 170
    .line 171
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getHmBadFrameDetectConfigParams()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->rtcBadFrameDetectConfig:Ljava/lang/String;

    .line 176
    .line 177
    :cond_3
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getIceUnwritableMinChecks()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-lez v3, :cond_4

    .line 182
    .line 183
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getIceUnwritableMinChecks()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceUnwritableMinChecks:Ljava/lang/Integer;

    .line 192
    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v5, "Set un-writable min checks by Saas: "

    .line 199
    .line 200
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    iget-object v5, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceUnwritableMinChecks:Ljava/lang/Integer;

    .line 204
    .line 205
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-static {v0, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    :cond_4
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getIceUnwritableTimeMs()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-lez v3, :cond_5

    .line 220
    .line 221
    invoke-static {}, Lorg/webrtc/haima/HmRtcGlobalConfig;->getIceUnwritableTimeMs()I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceUnwritableTimeMs:Ljava/lang/Integer;

    .line 230
    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v5, "Set un-writable timeout by Saas: "

    .line 237
    .line 238
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v5, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceUnwritableTimeMs:Ljava/lang/Integer;

    .line 242
    .line 243
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    invoke-static {v0, v3}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->iceUnwritableTimeMs:Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    const/16 v5, 0x3a98

    .line 260
    .line 261
    if-le v3, v5, :cond_5

    .line 262
    .line 263
    const-string v0, "Unwritable timeout from Saas is incorrect, it have to less than 15000 ms"

    .line 264
    .line 265
    invoke-direct {p0, v0}, Lorg/webrtc/haima/PeerConnectionClient;->reportErrorOnly(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :cond_5
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->pcCountlyObserver:Lorg/webrtc/haima/PeerConnectionClient$PCCountlyObserver;

    .line 270
    .line 271
    iput-object v3, v2, Lorg/hmwebrtc/PeerConnection$RTCConfiguration;->countlyObserver:Lorg/hmwebrtc/CountlyObserver;

    .line 272
    .line 273
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 274
    .line 275
    iget-object v5, p0, Lorg/webrtc/haima/PeerConnectionClient;->pcObserver:Lorg/webrtc/haima/PeerConnectionClient$PCObserver;

    .line 276
    .line 277
    invoke-virtual {v3, v2, v5}, Lorg/hmwebrtc/PeerConnectionFactory;->createPeerConnection(Lorg/hmwebrtc/PeerConnection$RTCConfiguration;Lorg/hmwebrtc/PeerConnection$Observer;)Lorg/hmwebrtc/PeerConnection;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 282
    .line 283
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCountlyController:Lorg/webrtc/haima/PeerConnectionClient$CountlyController;

    .line 284
    .line 285
    if-eqz v2, :cond_6

    .line 286
    .line 287
    invoke-virtual {v2, v1}, Lorg/webrtc/haima/PeerConnectionClient$CountlyController;->enableUpstreamInternal(Z)V

    .line 288
    .line 289
    .line 290
    :cond_6
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 291
    .line 292
    if-nez v2, :cond_7

    .line 293
    .line 294
    const-string v0, "Create peer connection failed. Maybe some config from Saas is incorrect."

    .line 295
    .line 296
    invoke-direct {p0, v0}, Lorg/webrtc/haima/PeerConnectionClient;->reportErrorOnly(Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    return-void

    .line 300
    :cond_7
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->setUserInfo()V

    .line 301
    .line 302
    .line 303
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 304
    .line 305
    if-eqz v2, :cond_8

    .line 306
    .line 307
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 312
    .line 313
    invoke-virtual {v2, v3}, Lorg/webrtc/haima/camera/HmCameraManager;->addPeerConnectTrack(Lorg/hmwebrtc/PeerConnection;)V

    .line 314
    .line 315
    .line 316
    :cond_8
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_audio_on:Z

    .line 317
    .line 318
    if-eqz v2, :cond_9

    .line 319
    .line 320
    invoke-static {}, Lorg/webrtc/haima/audio/HmAudioManager;->getInstance()Lorg/webrtc/haima/audio/HmAudioManager;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 325
    .line 326
    iget-object v5, p0, Lorg/webrtc/haima/PeerConnectionClient;->audioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 327
    .line 328
    iget-object v6, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 329
    .line 330
    invoke-virtual {v2, v3, v5, v6}, Lorg/webrtc/haima/audio/HmAudioManager;->addPeerConnectTrack(Lorg/hmwebrtc/PeerConnection;Lorg/hmwebrtc/MediaConstraints;Lorg/hmwebrtc/PeerConnectionFactory;)V

    .line 331
    .line 332
    .line 333
    :cond_9
    const-string v2, "Peer connection created."

    .line 334
    .line 335
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    sget-object v2, Lorg/webrtc/haima/PeerConnectionClient;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 339
    .line 340
    sget-object v3, Lorg/webrtc/haima/beans/GamePlatformType;->X86:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 341
    .line 342
    if-ne v2, v3, :cond_a

    .line 343
    .line 344
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 345
    .line 346
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 347
    .line 348
    invoke-interface {v2, v3}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onCreatePeerConnectionSuccess(Ljava/lang/Object;)V

    .line 349
    .line 350
    .line 351
    goto :goto_0

    .line 352
    :cond_a
    invoke-direct {p0}, Lorg/webrtc/haima/PeerConnectionClient;->getRemoteVideoTrack()Lorg/hmwebrtc/VideoTrack;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->remoteVideoTrack:Lorg/hmwebrtc/VideoTrack;

    .line 357
    .line 358
    if-eqz v2, :cond_b

    .line 359
    .line 360
    iget-boolean v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->renderVideo:Z

    .line 361
    .line 362
    invoke-virtual {v2, v3}, Lorg/hmwebrtc/MediaStreamTrack;->setEnabled(Z)Z

    .line 363
    .line 364
    .line 365
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 366
    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    const-string v5, "Get the remote Video Track when create ANSWER msg, isError: "

    .line 373
    .line 374
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    iget-boolean v5, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 378
    .line 379
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    iget-object v5, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 387
    .line 388
    invoke-interface {v2, v3, v5}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    .line 390
    .line 391
    goto :goto_0

    .line 392
    :cond_b
    const-string v2, "Can\'t get the remote Video Track when create ANSWER msg."

    .line 393
    .line 394
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 398
    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    const-string v5, "Can\'t get the remote Video Track when create ANSWER msg, isError: "

    .line 405
    .line 406
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    iget-boolean v5, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 410
    .line 411
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    iget-object v5, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 419
    .line 420
    invoke-interface {v2, v3, v5}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 421
    .line 422
    .line 423
    :goto_0
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_debug_mode:Z

    .line 424
    .line 425
    if-eqz v2, :cond_c

    .line 426
    .line 427
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mWebrtcLoggable:Lorg/hmwebrtc/log/WebrtcLoggableHelp;

    .line 428
    .line 429
    if-eqz v2, :cond_c

    .line 430
    .line 431
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 436
    .line 437
    const-string v5, "log_upload_dc"

    .line 438
    .line 439
    invoke-virtual {v2, v3, v5, v4}, Lorg/webrtc/haima/HmDataChannelManager;->createDataChannel(Lorg/hmwebrtc/PeerConnection;Ljava/lang/String;I)Lorg/webrtc/haima/HmDCDevice;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->mWebrtcLoggable:Lorg/hmwebrtc/log/WebrtcLoggableHelp;

    .line 444
    .line 445
    new-instance v5, Lorg/webrtc/haima/HmDCLog;

    .line 446
    .line 447
    invoke-direct {v5, v2}, Lorg/webrtc/haima/HmDCLog;-><init>(Lorg/webrtc/haima/HmDCDevice;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v3, v5}, Lorg/hmwebrtc/log/WebrtcLoggableHelp;->setLogMemSinkCB(Lorg/hmwebrtc/log/LogUploadCallBack;)V

    .line 451
    .line 452
    .line 453
    :cond_c
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    iget-object v2, v2, Lorg/webrtc/haima/HmDataChannelManager;->disposed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 458
    .line 459
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 460
    .line 461
    .line 462
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyIp:Ljava/lang/String;

    .line 463
    .line 464
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    if-nez v2, :cond_d

    .line 469
    .line 470
    iget v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyPort:I

    .line 471
    .line 472
    if-eqz v2, :cond_d

    .line 473
    .line 474
    iget-object v3, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 475
    .line 476
    iget-object v5, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyIp:Ljava/lang/String;

    .line 477
    .line 478
    iget-object v6, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyUser:Ljava/lang/String;

    .line 479
    .line 480
    iget-object v7, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheAccProxyPW:Ljava/lang/String;

    .line 481
    .line 482
    invoke-virtual {v3, v5, v2, v6, v7}, Lorg/hmwebrtc/PeerConnection;->ConnectAccPorxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :cond_d
    iget-boolean v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheSwitchToCellularConnection:Z

    .line 486
    .line 487
    if-eqz v2, :cond_e

    .line 488
    .line 489
    invoke-virtual {p0, v2}, Lorg/webrtc/haima/PeerConnectionClient;->SwitchToCellularConnection(Z)V

    .line 490
    .line 491
    .line 492
    iput-boolean v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCacheSwitchToCellularConnection:Z

    .line 493
    .line 494
    :cond_e
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDCManager:Lorg/webrtc/haima/PeerConnectionClient$DCManager;

    .line 495
    .line 496
    if-eqz v2, :cond_f

    .line 497
    .line 498
    const-string v2, "Peerconnection dcmanager already created"

    .line 499
    .line 500
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDCManager:Lorg/webrtc/haima/PeerConnectionClient$DCManager;

    .line 504
    .line 505
    invoke-static {v2}, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->access$1400(Lorg/webrtc/haima/PeerConnectionClient$DCManager;)V

    .line 506
    .line 507
    .line 508
    :cond_f
    new-instance v2, Lorg/webrtc/haima/PeerConnectionClient$DCManager;

    .line 509
    .line 510
    const/4 v3, 0x0

    .line 511
    invoke-direct {v2, v3}, Lorg/webrtc/haima/PeerConnectionClient$DCManager;-><init>(Lorg/webrtc/haima/PeerConnectionClient$1;)V

    .line 512
    .line 513
    .line 514
    iput-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDCManager:Lorg/webrtc/haima/PeerConnectionClient$DCManager;

    .line 515
    .line 516
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 517
    .line 518
    const-string v5, "fectl_chn"

    .line 519
    .line 520
    invoke-static {v2, v5, v4}, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->createChannel(Lorg/hmwebrtc/PeerConnection;Ljava/lang/String;Z)Lorg/hmwebrtc/DataChannel;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    if-eqz v2, :cond_10

    .line 525
    .line 526
    iget-object v6, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDCManager:Lorg/webrtc/haima/PeerConnectionClient$DCManager;

    .line 527
    .line 528
    new-instance v7, Lorg/webrtc/haima/HmDCSimple;

    .line 529
    .line 530
    new-instance v8, Lorg/webrtc/haima/HmDCObserverFectl;

    .line 531
    .line 532
    iget-object v9, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 533
    .line 534
    invoke-direct {v8, v9}, Lorg/webrtc/haima/HmDCObserverFectl;-><init>(Lorg/hmwebrtc/PeerConnection;)V

    .line 535
    .line 536
    .line 537
    invoke-direct {v7, v5, v2, v8, v3}, Lorg/webrtc/haima/HmDCSimple;-><init>(Ljava/lang/String;Lorg/hmwebrtc/DataChannel;Lorg/webrtc/haima/HmDCSimple$Observer;Ljava/lang/Object;)V

    .line 538
    .line 539
    .line 540
    invoke-static {v6, v5, v7}, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->access$1600(Lorg/webrtc/haima/PeerConnectionClient$DCManager;Ljava/lang/String;Lorg/webrtc/haima/HmDCBase;)Z

    .line 541
    .line 542
    .line 543
    :cond_10
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 544
    .line 545
    const-string v5, "vqa_chn"

    .line 546
    .line 547
    invoke-static {v2, v5, v4}, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->createChannel(Lorg/hmwebrtc/PeerConnection;Ljava/lang/String;Z)Lorg/hmwebrtc/DataChannel;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    if-eqz v2, :cond_11

    .line 552
    .line 553
    new-instance v4, Lorg/webrtc/haima/HmDCObserverVQA;

    .line 554
    .line 555
    invoke-direct {v4}, Lorg/webrtc/haima/HmDCObserverVQA;-><init>()V

    .line 556
    .line 557
    .line 558
    iput-object v4, p0, Lorg/webrtc/haima/PeerConnectionClient;->mHmRemoteVQAStats:Lorg/webrtc/haima/HmDCObserverVQA;

    .line 559
    .line 560
    iget-object v6, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDCManager:Lorg/webrtc/haima/PeerConnectionClient$DCManager;

    .line 561
    .line 562
    new-instance v7, Lorg/webrtc/haima/HmDCSimple;

    .line 563
    .line 564
    invoke-direct {v7, v5, v2, v4, v3}, Lorg/webrtc/haima/HmDCSimple;-><init>(Ljava/lang/String;Lorg/hmwebrtc/DataChannel;Lorg/webrtc/haima/HmDCSimple$Observer;Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    invoke-static {v6, v5, v7}, Lorg/webrtc/haima/PeerConnectionClient$DCManager;->access$1600(Lorg/webrtc/haima/PeerConnectionClient$DCManager;Ljava/lang/String;Lorg/webrtc/haima/HmDCBase;)Z

    .line 568
    .line 569
    .line 570
    :cond_11
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mTransDeviceManager:Lorg/webrtc/haima/HmTransDeviceManager;

    .line 571
    .line 572
    if-eqz v2, :cond_12

    .line 573
    .line 574
    const-string v2, "Transport device manager already created"

    .line 575
    .line 576
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mTransDeviceManager:Lorg/webrtc/haima/HmTransDeviceManager;

    .line 580
    .line 581
    invoke-virtual {v0}, Lorg/webrtc/haima/HmTransDeviceManager;->release()V

    .line 582
    .line 583
    .line 584
    :cond_12
    new-instance v0, Lorg/webrtc/haima/HmTransDeviceManager;

    .line 585
    .line 586
    invoke-direct {v0}, Lorg/webrtc/haima/HmTransDeviceManager;-><init>()V

    .line 587
    .line 588
    .line 589
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mTransDeviceManager:Lorg/webrtc/haima/HmTransDeviceManager;

    .line 590
    .line 591
    invoke-virtual {p0}, Lorg/webrtc/haima/PeerConnectionClient;->isRealX86()Z

    .line 592
    .line 593
    .line 594
    move-result v0

    .line 595
    if-nez v0, :cond_13

    .line 596
    .line 597
    const-string v0, "HaimaTransInput"

    .line 598
    .line 599
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCommandChannel:Lorg/webrtc/haima/HmRtcCommandChannel;

    .line 600
    .line 601
    invoke-direct {p0, v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient;->createTransDevice(Ljava/lang/String;ILorg/webrtc/haima/HmTransDevice$Observer;)Lorg/webrtc/haima/HmTransDevice;

    .line 602
    .line 603
    .line 604
    move-result-object v3

    .line 605
    :cond_13
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCommandChannel:Lorg/webrtc/haima/HmRtcCommandChannel;

    .line 606
    .line 607
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCommandListener:Lorg/webrtc/haima/HmRtcCommandListener;

    .line 608
    .line 609
    invoke-virtual {v0, v3, v1}, Lorg/webrtc/haima/HmRtcCommandChannel;->init(Lorg/webrtc/haima/HmTransDevice;Lorg/webrtc/haima/HmRtcCommandListener;)Z

    .line 610
    .line 611
    .line 612
    return-void

    .line 613
    :cond_14
    :goto_1
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 614
    .line 615
    const-string v1, "Peerconnection factory is not created"

    .line 616
    .line 617
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->events:Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;

    .line 621
    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    .line 623
    .line 624
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .line 626
    .line 627
    const-string v2, "createPeerConnectionInternal error: "

    .line 628
    .line 629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 633
    .line 634
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    const-string v2, ", isError: "

    .line 638
    .line 639
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    iget-boolean v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->isError:Z

    .line 643
    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    iget-object v2, p0, Lorg/webrtc/haima/PeerConnectionClient;->myself:Ljava/lang/Object;

    .line 652
    .line 653
    invoke-interface {v0, v1, v2}, Lorg/webrtc/haima/PeerConnectionClient$PeerConnectionEvents;->onThrowPeerExceptionMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    return-void
.end method

.method public enableStatsEvents(ZI)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->statsTimer:Ljava/util/Timer;

    .line 4
    .line 5
    new-instance v1, Lorg/webrtc/haima/PeerConnectionClient$7;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lorg/webrtc/haima/PeerConnectionClient$7;-><init>(Lorg/webrtc/haima/PeerConnectionClient;)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    int-to-long v4, p2

    .line 13
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    sget-object p2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "Can not schedule statistics timer"

    .line 21
    .line 22
    invoke-static {p2, v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->statsTimer:Ljava/util/Timer;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method protected getInUsedAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->webRtcAudioTrackRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->getInUsedAudioAttributes()Landroid/media/AudioAttributes;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method public isICEConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mIsRTCConnected:Z

    .line 2
    .line 3
    return v0
.end method

.method isRealX86()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->mRealGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

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
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method protected isRtcUploadAudioChannelAvailable()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->SEND_RECV:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mAudioDirection:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->SEND_ONLY:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method protected isRtcUploadVideoChannelAvailable()Z
    .locals 2

    .line 1
    sget-object v0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->SEND_RECV:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mVideoDirection:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v0, Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;->SEND_ONLY:Lorg/hmwebrtc/RtpTransceiver$RtpTransceiverDirection;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public peerconnectionCreated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->peerConnection:Lorg/hmwebrtc/PeerConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public removeRemoteIceCandidates([Lorg/hmwebrtc/IceCandidate;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/w;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/w;-><init>(Lorg/webrtc/haima/PeerConnectionClient;[Lorg/hmwebrtc/IceCandidate;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method sendData([B)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/webrtc/haima/PeerConnectionClient;->isRealX86()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->sendDataX86([B)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCommandChannel:Lorg/webrtc/haima/HmRtcCommandChannel;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcCommandChannel;->sendData([B)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method sendDataX86([B)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p1, v1}, Lorg/hmwebrtc/DataChannel;->send([BZ)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method sendText(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/webrtc/haima/PeerConnectionClient;->isRealX86()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/webrtc/haima/PeerConnectionClient;->sendTextX86(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mCommandChannel:Lorg/webrtc/haima/HmRtcCommandChannel;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lorg/webrtc/haima/HmRtcCommandChannel;->sendText(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method sendTextX86(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    array-length v0, p1

    .line 22
    if-gtz v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Lorg/hmwebrtc/DataChannel;->send([BZ)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_2
    :goto_0
    return v1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    sget-object v0, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "sendText str getBytes Exception"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    return v1
.end method

.method public sendToRemoteInput(I[B)I
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mIsRTCConnected:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    array-length v0, p2

    .line 9
    const/16 v2, 0x400

    .line 10
    .line 11
    if-ge v0, v2, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mInputHelper:Lorg/webrtc/haima/HmInputHelper;

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/webrtc/haima/HmInputHelper;->isValidInputChannel()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->mInputHelper:Lorg/webrtc/haima/HmInputHelper;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v0, v2, p1, p2}, Lorg/webrtc/haima/HmInputHelper;->sendToRemoteInput(Ljava/util/concurrent/ExecutorService;I[B)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    return v1

    .line 31
    :cond_0
    iget-boolean p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->mIsRTCConnected:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, p2}, Lorg/webrtc/haima/PeerConnectionClient;->sendData([B)Z

    .line 36
    .line 37
    .line 38
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    return v1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    sget-object p2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, "SendToRemoteInput ex:"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    const/4 p1, -0x1

    .line 70
    return p1
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->webRtcAudioTrackRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/hmwebrtc/audio/WebRtcAudioTrack;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "setAudioAttributes"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/audio/WebRtcAudioTrack;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->factory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->adm:Lorg/hmwebrtc/audio/AudioDeviceModule;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Lorg/hmwebrtc/audio/AudioDeviceModule;->getNativeAudioDeviceModulePointer()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/PeerConnectionFactory;->restartAudioTrack(J)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object p1, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v0, "Not setAudioAttributes"

    .line 40
    .line 41
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method public setGamePlatform(Lorg/webrtc/haima/beans/GamePlatformType;)V
    .locals 0

    .line 1
    sput-object p1, Lorg/webrtc/haima/PeerConnectionClient;->mGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 2
    .line 3
    return-void
.end method

.method public setRealGamePlatform(Lorg/webrtc/haima/beans/GamePlatformType;)V
    .locals 0

    .line 1
    sput-object p1, Lorg/webrtc/haima/PeerConnectionClient;->mRealGamePlatformType:Lorg/webrtc/haima/beans/GamePlatformType;

    .line 2
    .line 3
    return-void
.end method

.method public setRemoteDescription(Lorg/hmwebrtc/SessionDescription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/u;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/u;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/SessionDescription;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setX86RemoteDescription(Lorg/hmwebrtc/SessionDescription;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    new-instance v1, Lorg/webrtc/haima/a0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lorg/webrtc/haima/a0;-><init>(Lorg/webrtc/haima/PeerConnectionClient;Lorg/hmwebrtc/SessionDescription;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public x86SendLargeDataBlcok([BLorg/webrtc/haima/HaimaDataChannel$Listener;)I
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lorg/webrtc/haima/x;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/haima/x;-><init>(Lorg/webrtc/haima/PeerConnectionClient;[BLorg/webrtc/haima/HaimaDataChannel$Listener;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object p1, p0, Lorg/webrtc/haima/PeerConnectionClient;->executor:Ljava/util/concurrent/ExecutorService;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Ljava/util/concurrent/Future;

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return p1

    .line 38
    :catch_0
    move-exception p1

    .line 39
    sget-object p2, Lorg/webrtc/haima/PeerConnectionClient;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "x86SendLargeDataBlcok failed: ex="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const/4 p1, -0x1

    .line 66
    return p1
.end method
