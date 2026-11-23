.class public Lorg/webrtc/haima/camera/HmCameraManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/camera/HmCameraManager$CameraEventObserver;
    }
.end annotation


# static fields
.field public static final AUDIO_TRACK_ID:Ljava/lang/String; = "ARDAMSa0"

.field private static final BPS_IN_KBPS:I = 0x3e8

.field public static final EXTRA_CAMERA2:Ljava/lang/String; = "org.appspot.apprtc.CAMERA2"

.field public static final EXTRA_CAPTURETOTEXTURE_ENABLED:Ljava/lang/String; = "org.appspot.apprtc.CAPTURETOTEXTURE"

.field public static final EXTRA_HWCODEC_ENABLED:Ljava/lang/String; = "org.appspot.apprtc.HWGCODEC"

.field public static final EXTRA_VIDEO_FILE_AS_CAMERA:Ljava/lang/String; = "org.appspot.apprtc.VIDEO_FILE_AS_CAMERA"

.field public static final MAX_BITRATE_FLAG:I = 0x1

.field public static final MIN_BITRATE_FLAG:I = 0x0

.field public static final VIDEO_TRACK_ID:Ljava/lang/String; = "ARDAMSv0"

.field public static final VIDEO_TRACK_TYPE:Ljava/lang/String; = "video"

.field private static mInstance:Lorg/webrtc/haima/camera/HmCameraManager; = null

.field private static final mVideoCapturerStartingLockWaitTimeoutMillis:J = 0x1388L

.field public static useFrontCamera:Z


# instance fields
.field private final DEFAULT_CAMERA_VIDEO_FRAME_RATE:I

.field private final DEFAULT_CAMERA_VIDEO_HEIGHT:I

.field private final DEFAULT_CAMERA_VIDEO_WIDTH:I

.field private final DEFAULT_MAX_BITRATE:I

.field private final DEFAULT_MIN_BITRATE:I

.field private final TAG:Ljava/lang/String;

.field private audioSource:Lorg/hmwebrtc/AudioSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private backCameraName:Ljava/lang/String;

.field private enableAudio:Z

.field private enableVideo:Z

.field private frontCameraName:Ljava/lang/String;

.field private localAudioTrack:Lorg/hmwebrtc/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private localRender:Lorg/hmwebrtc/VideoSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private localVideoTrack:Lorg/hmwebrtc/VideoTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mActivityIntent:Landroid/content/Intent;

.field private mAudioConstraints:Lorg/hmwebrtc/MediaConstraints;

.field private mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

.field private mCameraObserver:Lorg/webrtc/haima/camera/HmCameraManager$CameraEventObserver;

.field private mCameraOperationCmdCnt:I

.field private final mCameraOperationCmdExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mCameraOperationCmdLock:Ljava/lang/Object;

.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mFactory:Lorg/hmwebrtc/PeerConnectionFactory;

.field private mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapterImpl;

.field private mLocalProxyVideoSink:Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

.field private mLocalSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

.field private mLocalTextureRender:Lorg/hmwebrtc/TextureViewRenderer;

.field private mLocalVideoSender:Lorg/hmwebrtc/RtpSender;

.field private mPeerConnectionRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/hmwebrtc/PeerConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mPeerConnectionRefLock:Ljava/lang/Object;

.field private mSurfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mVideoCapturer:Lorg/hmwebrtc/VideoCapturer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mVideoCapturerStarting:Z

.field private final mVideoCapturerStartingLock:Ljava/lang/Object;

.field private mVideoCapturerStopped:Z

.field private mVideoFps:I

.field private mVideoHeight:I

.field private mVideoSource:Lorg/hmwebrtc/VideoSource;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mVideoWidth:I

.field private maxBitrate:I

.field private minBitrate:I

.field private rootEglBase:Lorg/hmwebrtc/EglBase;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lorg/webrtc/haima/camera/HmCameraManager;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStopped:Z

    .line 14
    .line 15
    const/16 v1, 0x500

    .line 16
    .line 17
    iput v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->DEFAULT_CAMERA_VIDEO_WIDTH:I

    .line 18
    .line 19
    const/16 v1, 0x2d0

    .line 20
    .line 21
    iput v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->DEFAULT_CAMERA_VIDEO_HEIGHT:I

    .line 22
    .line 23
    const/16 v1, 0x1e

    .line 24
    .line 25
    iput v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->DEFAULT_CAMERA_VIDEO_FRAME_RATE:I

    .line 26
    .line 27
    const/16 v1, 0x9c4

    .line 28
    .line 29
    iput v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->DEFAULT_MIN_BITRATE:I

    .line 30
    .line 31
    iput v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->DEFAULT_MAX_BITRATE:I

    .line 32
    .line 33
    iput v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->minBitrate:I

    .line 34
    .line 35
    iput v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->maxBitrate:I

    .line 36
    .line 37
    iput-boolean v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->enableVideo:Z

    .line 38
    .line 39
    iput-boolean v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->enableAudio:Z

    .line 40
    .line 41
    const-string v0, ""

    .line 42
    .line 43
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->frontCameraName:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->backCameraName:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v0, Ljava/lang/Object;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mPeerConnectionRefLock:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdExecutor:Ljava/util/concurrent/ExecutorService;

    .line 59
    .line 60
    new-instance v0, Ljava/lang/Object;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdLock:Ljava/lang/Object;

    .line 66
    .line 67
    new-instance v0, Ljava/lang/Object;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStartingLock:Ljava/lang/Object;

    .line 73
    .line 74
    return-void
.end method

.method public static synthetic a(Lorg/webrtc/haima/camera/HmCameraManager;IIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/webrtc/haima/camera/HmCameraManager;->lambda$startVideoSource$0(IIIZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/haima/camera/HmCameraManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lorg/webrtc/haima/camera/HmCameraManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/camera/HmCameraManager;->requestLocalEncoderSendKeyFrame()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/haima/camera/HmCameraManager;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStartingLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$302(Lorg/webrtc/haima/camera/HmCameraManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStarting:Z

    .line 2
    .line 3
    return p1
.end method

.method public static synthetic b(Lorg/webrtc/haima/camera/HmCameraManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/webrtc/haima/camera/HmCameraManager;->lambda$stopVideoSource$1()V

    return-void
.end method

.method private captureToTexture()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mActivityIntent:Landroid/content/Intent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "org.appspot.apprtc.CAPTURETOTEXTURE"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    :goto_0
    return v0
.end method

.method private createAudioTrack()Lorg/hmwebrtc/AudioTrack;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mFactory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mAudioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/PeerConnectionFactory;->createAudioSource(Lorg/hmwebrtc/MediaConstraints;)Lorg/hmwebrtc/AudioSource;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->audioSource:Lorg/hmwebrtc/AudioSource;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mFactory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 12
    .line 13
    const-string v2, "ARDAMSa0"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Lorg/hmwebrtc/PeerConnectionFactory;->createAudioTrack(Ljava/lang/String;Lorg/hmwebrtc/AudioSource;)Lorg/hmwebrtc/AudioTrack;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->localAudioTrack:Lorg/hmwebrtc/AudioTrack;

    .line 20
    .line 21
    iget-boolean v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->enableAudio:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/MediaStreamTrack;->setEnabled(Z)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->localAudioTrack:Lorg/hmwebrtc/AudioTrack;

    .line 27
    .line 28
    return-object v0
.end method

.method private createCameraCapturer(Lorg/hmwebrtc/CameraEnumerator;)Lorg/hmwebrtc/VideoCapturer;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/hmwebrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "Looking though all cameras."

    .line 8
    .line 9
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v1, :cond_2

    .line 16
    .line 17
    aget-object v4, v0, v3

    .line 18
    .line 19
    iget-object v5, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v7, "camera deviceName: "

    .line 27
    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v7, ", isFrontFacing: "

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v4}, Lorg/hmwebrtc/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v7, ", isBackFacing: "

    .line 47
    .line 48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-interface {p1, v4}, Lorg/hmwebrtc/CameraEnumerator;->isBackFacing(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v5, v6}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v4}, Lorg/hmwebrtc/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    const-string v6, ""

    .line 70
    .line 71
    if-eqz v5, :cond_0

    .line 72
    .line 73
    iget-object v5, p0, Lorg/webrtc/haima/camera/HmCameraManager;->frontCameraName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_0

    .line 80
    .line 81
    iput-object v4, p0, Lorg/webrtc/haima/camera/HmCameraManager;->frontCameraName:Ljava/lang/String;

    .line 82
    .line 83
    :cond_0
    invoke-interface {p1, v4}, Lorg/hmwebrtc/CameraEnumerator;->isBackFacing(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_1

    .line 88
    .line 89
    iget-object v5, p0, Lorg/webrtc/haima/camera/HmCameraManager;->backCameraName:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_1

    .line 96
    .line 97
    iput-object v4, p0, Lorg/webrtc/haima/camera/HmCameraManager;->backCameraName:Ljava/lang/String;

    .line 98
    .line 99
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    sget-boolean v1, Lorg/webrtc/haima/camera/HmCameraManager;->useFrontCamera:Z

    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    if-eqz v1, :cond_4

    .line 106
    .line 107
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 108
    .line 109
    const-string v4, "Looking for front facing cameras."

    .line 110
    .line 111
    invoke-static {v1, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    array-length v1, v0

    .line 115
    :goto_1
    if-ge v2, v1, :cond_6

    .line 116
    .line 117
    aget-object v4, v0, v2

    .line 118
    .line 119
    invoke-interface {p1, v4}, Lorg/hmwebrtc/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-eqz v5, :cond_3

    .line 124
    .line 125
    iget-object v5, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 126
    .line 127
    const-string v6, "Creating front facing camera capture."

    .line 128
    .line 129
    invoke-static {v5, v6}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v4, v3}, Lorg/hmwebrtc/CameraEnumerator;->createCapturer(Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;)Lorg/hmwebrtc/CameraVideoCapturer;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    if-eqz v4, :cond_3

    .line 137
    .line 138
    return-object v4

    .line 139
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_4
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 143
    .line 144
    const-string v4, "Looking for back  other cameras."

    .line 145
    .line 146
    invoke-static {v1, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    array-length v1, v0

    .line 150
    :goto_2
    if-ge v2, v1, :cond_6

    .line 151
    .line 152
    aget-object v4, v0, v2

    .line 153
    .line 154
    invoke-interface {p1, v4}, Lorg/hmwebrtc/CameraEnumerator;->isBackFacing(Ljava/lang/String;)Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_5

    .line 159
    .line 160
    iget-object v5, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 161
    .line 162
    const-string v6, "Creating back camera capture."

    .line 163
    .line 164
    invoke-static {v5, v6}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {p1, v4, v3}, Lorg/hmwebrtc/CameraEnumerator;->createCapturer(Ljava/lang/String;Lorg/hmwebrtc/CameraVideoCapturer$CameraEventsHandler;)Lorg/hmwebrtc/CameraVideoCapturer;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    if-eqz v4, :cond_5

    .line 172
    .line 173
    return-object v4

    .line 174
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    return-object v3
.end method

.method private createVideoTrack(Lorg/hmwebrtc/VideoCapturer;)Lorg/hmwebrtc/VideoTrack;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->rootEglBase:Lorg/hmwebrtc/EglBase;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const-string v1, "CaptureThread"

    .line 6
    .line 7
    invoke-interface {v0}, Lorg/hmwebrtc/EglBase;->getEglBaseContext()Lorg/hmwebrtc/EglBase$Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v1, v0}, Lorg/hmwebrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/hmwebrtc/EglBase$Context;)Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mSurfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "Failed to create SurfaceViewRenderer."

    .line 22
    .line 23
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    return-object p1

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mFactory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 29
    .line 30
    invoke-interface {p1}, Lorg/hmwebrtc/VideoCapturer;->isScreencast()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Lorg/hmwebrtc/PeerConnectionFactory;->createVideoSource(Z)Lorg/hmwebrtc/VideoSource;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoSource:Lorg/hmwebrtc/VideoSource;

    .line 39
    .line 40
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mSurfaceTextureHelper:Lorg/hmwebrtc/SurfaceTextureHelper;

    .line 41
    .line 42
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoSource:Lorg/hmwebrtc/VideoSource;

    .line 55
    .line 56
    invoke-virtual {v2}, Lorg/hmwebrtc/VideoSource;->getCapturerObserver()Lorg/hmwebrtc/CapturerObserver;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {p1, v0, v1, v2}, Lorg/hmwebrtc/VideoCapturer;->initialize(Lorg/hmwebrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/hmwebrtc/CapturerObserver;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 64
    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    const/16 p1, 0x500

    .line 68
    .line 69
    const/16 v0, 0x2d0

    .line 70
    .line 71
    const/16 v1, 0x1e

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p1}, Lorg/webrtc/haima/camera/HmCameraSettings;->getWidth()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 79
    .line 80
    invoke-virtual {v0}, Lorg/webrtc/haima/camera/HmCameraSettings;->getHeight()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 85
    .line 86
    invoke-virtual {v1}, Lorg/webrtc/haima/camera/HmCameraSettings;->getFrameRate()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    :goto_0
    iget-object v2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v4, "createCameraVideoTrack "

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, "x"

    .line 106
    .line 107
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p1, ":"

    .line 114
    .line 115
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, "fps."

    .line 122
    .line 123
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {v2, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mFactory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 134
    .line 135
    const-string v0, "ARDAMSv0"

    .line 136
    .line 137
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoSource:Lorg/hmwebrtc/VideoSource;

    .line 138
    .line 139
    invoke-virtual {p1, v0, v1}, Lorg/hmwebrtc/PeerConnectionFactory;->createVideoTrack(Ljava/lang/String;Lorg/hmwebrtc/VideoSource;)Lorg/hmwebrtc/VideoTrack;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->localVideoTrack:Lorg/hmwebrtc/VideoTrack;

    .line 144
    .line 145
    iget-boolean v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->enableVideo:Z

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/MediaStreamTrack;->setEnabled(Z)Z

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->localRender:Lorg/hmwebrtc/VideoSink;

    .line 151
    .line 152
    if-eqz p1, :cond_2

    .line 153
    .line 154
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->localVideoTrack:Lorg/hmwebrtc/VideoTrack;

    .line 155
    .line 156
    invoke-virtual {v0, p1}, Lorg/hmwebrtc/VideoTrack;->addSink(Lorg/hmwebrtc/VideoSink;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStopped:Z

    .line 161
    .line 162
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->localVideoTrack:Lorg/hmwebrtc/VideoTrack;

    .line 163
    .line 164
    return-object p1

    .line 165
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 166
    .line 167
    const-string v0, "rootEglBase is null, create video track failed."

    .line 168
    .line 169
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1
.end method

.method private findVideoSender(Lorg/hmwebrtc/PeerConnection;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mPeerConnectionRefLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lorg/hmwebrtc/PeerConnection;->getSenders()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lorg/hmwebrtc/RtpSender;

    .line 23
    .line 24
    invoke-virtual {v2}, Lorg/hmwebrtc/RtpSender;->track()Lorg/hmwebrtc/MediaStreamTrack;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2}, Lorg/hmwebrtc/RtpSender;->track()Lorg/hmwebrtc/MediaStreamTrack;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lorg/hmwebrtc/MediaStreamTrack;->kind()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "video"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    iget-object v3, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string v4, "Found video sender."

    .line 49
    .line 50
    invoke-static {v3, v4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput-object v2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalVideoSender:Lorg/hmwebrtc/RtpSender;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 56
    .line 57
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mPeerConnectionRef:Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    sget-boolean v2, Lorg/webrtc/haima/HmRtcGlobalConfig;->rtc_upload_video_on:Z

    .line 63
    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    invoke-static {}, Lorg/webrtc/haima/camera/HmCameraManager;->getInstance()Lorg/webrtc/haima/camera/HmCameraManager;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lorg/webrtc/haima/camera/HmCameraManager;->doSetVideoBitrate()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p1
.end method

.method public static getInstance()Lorg/webrtc/haima/camera/HmCameraManager;
    .locals 1

    .line 1
    sget-object v0, Lorg/webrtc/haima/camera/HmCameraManager;->mInstance:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/webrtc/haima/camera/HmCameraManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/webrtc/haima/camera/HmCameraManager;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lorg/webrtc/haima/camera/HmCameraManager;->mInstance:Lorg/webrtc/haima/camera/HmCameraManager;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method private innerSetVideoBitrate(II)V
    .locals 5

    .line 1
    if-gez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "Requested video bitrate: "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalVideoSender:Lorg/hmwebrtc/RtpSender;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0}, Lorg/hmwebrtc/RtpSender;->getParameters()Lorg/hmwebrtc/RtpParameters;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, v0, Lorg/hmwebrtc/RtpParameters;->encodings:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v1, v0, Lorg/hmwebrtc/RtpParameters;->encodings:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_6

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lorg/hmwebrtc/RtpParameters$Encoding;

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    const/4 v4, -0x1

    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    if-ne p2, v4, :cond_3

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    mul-int/lit16 v3, p2, 0x3e8

    .line 61
    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :goto_1
    iput-object v3, v2, Lorg/hmwebrtc/RtpParameters$Encoding;->minBitrateBps:Ljava/lang/Integer;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    if-ne p2, v4, :cond_5

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_5
    mul-int/lit16 v3, p2, 0x3e8

    .line 73
    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :goto_2
    iput-object v3, v2, Lorg/hmwebrtc/RtpParameters$Encoding;->maxBitrateBps:Ljava/lang/Integer;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_6
    sget-object p1, Lorg/hmwebrtc/RtpParameters$DegradationPreference;->DISABLED:Lorg/hmwebrtc/RtpParameters$DegradationPreference;

    .line 82
    .line 83
    iput-object p1, v0, Lorg/hmwebrtc/RtpParameters;->degradationPreference:Lorg/hmwebrtc/RtpParameters$DegradationPreference;

    .line 84
    .line 85
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalVideoSender:Lorg/hmwebrtc/RtpSender;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/RtpSender;->setParameters(Lorg/hmwebrtc/RtpParameters;)Z

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private synthetic lambda$startVideoSource$0(IIIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdCnt:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-le v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/webrtc/haima/camera/HmCameraManager;->startVideoSourceInternal(IIIZ)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter p1

    .line 21
    :try_start_1
    iget p2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdCnt:I

    .line 22
    .line 23
    sub-int/2addr p2, v2

    .line 24
    iput p2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdCnt:I

    .line 25
    .line 26
    monitor-exit p1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p2

    .line 29
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p2

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    throw p1
.end method

.method private synthetic lambda$stopVideoSource$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdCnt:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-le v1, v2, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lorg/webrtc/haima/camera/HmCameraManager;->stopVideoSourceInternal()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_1
    iget v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdCnt:I

    .line 22
    .line 23
    sub-int/2addr v0, v2

    .line 24
    iput v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdCnt:I

    .line 25
    .line 26
    monitor-exit v1

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0

    .line 31
    :catchall_1
    move-exception v1

    .line 32
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 33
    throw v1
.end method

.method private requestLocalEncoderSendKeyFrame()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mPeerConnectionRefLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v2, "try request local encoder send a key frame."

    .line 7
    .line 8
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mPeerConnectionRef:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/hmwebrtc/PeerConnection;

    .line 22
    .line 23
    :goto_0
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v1}, Lorg/hmwebrtc/PeerConnection;->getSenders()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lorg/hmwebrtc/RtpSender;

    .line 44
    .line 45
    invoke-virtual {v2}, Lorg/hmwebrtc/RtpSender;->track()Lorg/hmwebrtc/MediaStreamTrack;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2}, Lorg/hmwebrtc/RtpSender;->track()Lorg/hmwebrtc/MediaStreamTrack;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Lorg/hmwebrtc/MediaStreamTrack;->kind()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v4, "video"

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {v2}, Lorg/hmwebrtc/RtpSender;->requestEncoderSendKeyFrame()V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "requested local encoder sending a key frame on sender with id: "

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Lorg/hmwebrtc/RtpSender;->id()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v3, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    const-string v2, "Not requestLocalEncoderSendKeyFrame as PeerConnection is null."

    .line 100
    .line 101
    invoke-static {v1, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    monitor-exit v0

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw v1
.end method

.method private startVideoSourceInternal(IIIZ)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Start starting video source. mVideoCapturerStopped = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStopped:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturer:Lorg/hmwebrtc/VideoCapturer;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStarting:Z

    .line 22
    .line 23
    iget-boolean v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStopped:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lorg/webrtc/haima/camera/HmCameraManager;->stopVideoSourceInternal()V

    .line 28
    .line 29
    .line 30
    :cond_0
    sput-boolean p4, Lorg/webrtc/haima/camera/HmCameraManager;->useFrontCamera:Z

    .line 31
    .line 32
    if-eqz p4, :cond_1

    .line 33
    .line 34
    const-string p4, ""

    .line 35
    .line 36
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->frontCameraName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    if-nez p4, :cond_1

    .line 43
    .line 44
    iget-object p4, p0, Lorg/webrtc/haima/camera/HmCameraManager;->frontCameraName:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object p4, p0, Lorg/webrtc/haima/camera/HmCameraManager;->backCameraName:Ljava/lang/String;

    .line 48
    .line 49
    :goto_0
    move-object v5, p4

    .line 50
    const-string p4, ""

    .line 51
    .line 52
    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    if-nez p4, :cond_2

    .line 57
    .line 58
    new-instance p4, Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 59
    .line 60
    invoke-direct {p4, p1, p2, p3}, Lorg/webrtc/haima/camera/HmCameraSettings;-><init>(III)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p4}, Lorg/webrtc/haima/camera/HmCameraManager;->setCameraCaptureFormat(Lorg/webrtc/haima/camera/HmCameraSettings;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 67
    .line 68
    invoke-virtual {p1}, Lorg/webrtc/haima/camera/HmCameraSettings;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 73
    .line 74
    invoke-virtual {p1}, Lorg/webrtc/haima/camera/HmCameraSettings;->getHeight()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 79
    .line 80
    invoke-virtual {p1}, Lorg/webrtc/haima/camera/HmCameraSettings;->getFrameRate()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    new-instance v1, Lorg/webrtc/haima/camera/HmCameraManager$1;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lorg/webrtc/haima/camera/HmCameraManager$1;-><init>(Lorg/webrtc/haima/camera/HmCameraManager;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturer:Lorg/hmwebrtc/VideoCapturer;

    .line 90
    .line 91
    move-object v0, p1

    .line 92
    check-cast v0, Lorg/hmwebrtc/CameraVideoCapturer;

    .line 93
    .line 94
    invoke-interface/range {v0 .. v5}, Lorg/hmwebrtc/CameraVideoCapturer;->startCaptureWithSpecifiedCamera(Lorg/hmwebrtc/CameraVideoCapturer$CameraSwitchHandler;IIILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraObserver:Lorg/webrtc/haima/camera/HmCameraManager$CameraEventObserver;

    .line 98
    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    invoke-interface {p1}, Lorg/webrtc/haima/camera/HmCameraManager$CameraEventObserver;->onOpen()V

    .line 102
    .line 103
    .line 104
    :cond_2
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStartingLock:Ljava/lang/Object;

    .line 105
    .line 106
    monitor-enter p1

    .line 107
    :goto_1
    :try_start_0
    iget-boolean p2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStarting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    if-eqz p2, :cond_4

    .line 110
    .line 111
    const/4 p2, 0x0

    .line 112
    :try_start_1
    iget-object p3, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStartingLock:Ljava/lang/Object;

    .line 113
    .line 114
    const-wide/16 v0, 0x1388

    .line 115
    .line 116
    invoke-virtual {p3, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 117
    .line 118
    .line 119
    iget-boolean p3, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStarting:Z

    .line 120
    .line 121
    if-nez p3, :cond_3

    .line 122
    .line 123
    iget-object p3, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 124
    .line 125
    const-string p4, "Start video source completed successfully."

    .line 126
    .line 127
    invoke-static {p3, p4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iput-boolean p2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStopped:Z

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    iget-object p3, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 134
    .line 135
    const-string p4, "Start video source completed failedly as waiting 5000 ms timeout."

    .line 136
    .line 137
    invoke-static {p3, p4}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iput-boolean p2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStarting:Z

    .line 141
    .line 142
    invoke-direct {p0}, Lorg/webrtc/haima/camera/HmCameraManager;->stopVideoSourceInternal()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_0
    :try_start_2
    iget-object p3, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 147
    .line 148
    const-string p4, "Start capture interrupted while waiting for the last session to open."

    .line 149
    .line 150
    invoke-static {p3, p4}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    .line 158
    .line 159
    .line 160
    iput-boolean p2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStarting:Z

    .line 161
    .line 162
    invoke-direct {p0}, Lorg/webrtc/haima/camera/HmCameraManager;->stopVideoSourceInternal()V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string p2, "Finished starting video source. mVideoCapturerStopped = "

    .line 173
    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget-boolean p2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStopped:Z

    .line 178
    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    return-void

    .line 183
    :catchall_0
    move-exception p2

    .line 184
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    throw p2
.end method

.method private stopVideoSourceInternal()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Start stopping video source. mVideoCapturerStopped = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStopped:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturer:Lorg/hmwebrtc/VideoCapturer;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturer:Lorg/hmwebrtc/VideoCapturer;

    .line 21
    .line 22
    invoke-interface {v0}, Lorg/hmwebrtc/VideoCapturer;->dispose()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraObserver:Lorg/webrtc/haima/camera/HmCameraManager$CameraEventObserver;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Lorg/webrtc/haima/camera/HmCameraManager$CameraEventObserver;->onClose()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStopped:Z

    .line 34
    .line 35
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "end Stop video source. mVideoCapturerStopped = "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-boolean v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStopped:Z

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method private useCamera2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mActivityIntent:Landroid/content/Intent;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Enumerator;->isSupported(Landroid/content/Context;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mActivityIntent:Landroid/content/Intent;

    .line 20
    .line 21
    const-string v1, "org.appspot.apprtc.CAMERA2"

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_0
    return v2

    .line 33
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v0}, Lorg/hmwebrtc/Camera2Enumerator;->isSupported(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    return v0
.end method


# virtual methods
.method public addPeerConnectTrack(Lorg/hmwebrtc/PeerConnection;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturer:Lorg/hmwebrtc/VideoCapturer;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v0, "ARDAMS"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    const-string v0, "ARDAMS_VIDEO"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "ARDAMS_AUDIO"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    new-instance v2, Ljava/util/Random;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturer:Lorg/hmwebrtc/VideoCapturer;

    .line 46
    .line 47
    invoke-direct {p0, v1}, Lorg/webrtc/haima/camera/HmCameraManager;->createVideoTrack(Lorg/hmwebrtc/VideoCapturer;)Lorg/hmwebrtc/VideoTrack;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1, v1, v0}, Lorg/hmwebrtc/PeerConnection;->addTrack(Lorg/hmwebrtc/MediaStreamTrack;Ljava/util/List;)Lorg/hmwebrtc/RtpSender;

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Lorg/webrtc/haima/camera/HmCameraManager;->findVideoSender(Lorg/hmwebrtc/PeerConnection;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    const-string v0, "Failed to createVideoTrack."

    .line 63
    .line 64
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method public changeCameraCaptureFormat(Lorg/webrtc/haima/camera/HmCameraSettings;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cameraSettings:"

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
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturer:Lorg/hmwebrtc/VideoCapturer;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lorg/webrtc/haima/camera/HmCameraSettings;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-boolean v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStopped:Z

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p1}, Lorg/webrtc/haima/camera/HmCameraSettings;->getWidth()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p1}, Lorg/webrtc/haima/camera/HmCameraSettings;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p1}, Lorg/webrtc/haima/camera/HmCameraSettings;->getFrameRate()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    iget-object v2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturer:Lorg/hmwebrtc/VideoCapturer;

    .line 52
    .line 53
    invoke-interface {v2, v0, v1, p1}, Lorg/hmwebrtc/VideoCapturer;->changeCaptureFormat(III)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public createVideoCapturer()Lorg/hmwebrtc/VideoCapturer;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mActivityIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v2, "org.appspot.apprtc.VIDEO_FILE_AS_CAMERA"

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    :try_start_0
    new-instance v2, Lorg/hmwebrtc/FileVideoCapturer;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Lorg/hmwebrtc/FileVideoCapturer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_2

    .line 22
    :catch_0
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 23
    .line 24
    const-string v2, "Failed to open video file for emulated camera"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->reportError(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    invoke-direct {p0}, Lorg/webrtc/haima/camera/HmCameraManager;->useCamera2()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    invoke-direct {p0}, Lorg/webrtc/haima/camera/HmCameraManager;->captureToTexture()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    const-string v2, "Camera2 only supports capturing to texture. Either disable Camera2 or enable capturing to texture in the options."

    .line 45
    .line 46
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object v1

    .line 50
    :cond_2
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 51
    .line 52
    const-string v2, "Creating capture using camera2 API."

    .line 53
    .line 54
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    move-object v0, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Landroid/content/Context;

    .line 68
    .line 69
    :goto_1
    new-instance v2, Lorg/hmwebrtc/Camera2Enumerator;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Lorg/hmwebrtc/Camera2Enumerator;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0, v2}, Lorg/webrtc/haima/camera/HmCameraManager;->createCameraCapturer(Lorg/hmwebrtc/CameraEnumerator;)Lorg/hmwebrtc/VideoCapturer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 80
    .line 81
    const-string v2, "Creating capture using camera1 API."

    .line 82
    .line 83
    invoke-static {v0, v2}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lorg/hmwebrtc/Camera1Enumerator;

    .line 87
    .line 88
    invoke-direct {p0}, Lorg/webrtc/haima/camera/HmCameraManager;->captureToTexture()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    invoke-direct {v0, v2}, Lorg/hmwebrtc/Camera1Enumerator;-><init>(Z)V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0, v0}, Lorg/webrtc/haima/camera/HmCameraManager;->createCameraCapturer(Lorg/hmwebrtc/CameraEnumerator;)Lorg/hmwebrtc/VideoCapturer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :goto_2
    if-nez v2, :cond_5

    .line 100
    .line 101
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 102
    .line 103
    const-string v2, "Failed to open camera"

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lorg/webrtc/haima/HmRtcAdapterImpl;->reportError(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object v1

    .line 109
    :cond_5
    return-object v2
.end method

.method public doSetVideoBitrate()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->minBitrate:I

    .line 3
    .line 4
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/camera/HmCameraManager;->innerSetVideoBitrate(II)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iget v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->maxBitrate:I

    .line 9
    .line 10
    invoke-direct {p0, v0, v1}, Lorg/webrtc/haima/camera/HmCameraManager;->innerSetVideoBitrate(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getHmCameraSettings()Lorg/webrtc/haima/camera/HmCameraSettings;
    .locals 4

    .line 1
    new-instance v0, Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 4
    .line 5
    invoke-virtual {v1}, Lorg/webrtc/haima/camera/HmCameraSettings;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 10
    .line 11
    invoke-virtual {v2}, Lorg/webrtc/haima/camera/HmCameraSettings;->getHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 16
    .line 17
    invoke-virtual {v3}, Lorg/webrtc/haima/camera/HmCameraSettings;->getFrameRate()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/haima/camera/HmCameraSettings;-><init>(III)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public getLocalProxyVideoSink()Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalProxyVideoSink:Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->maxBitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public getMinBitrate()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->minBitrate:I

    .line 2
    .line 3
    return v0
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "release"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mPeerConnectionRefLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iput-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mPeerConnectionRef:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    iget-object v2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStartingLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_1
    iget-boolean v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStarting:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStartingLock:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 25
    .line 26
    .line 27
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-direct {p0}, Lorg/webrtc/haima/camera/HmCameraManager;->stopVideoSourceInternal()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lorg/hmwebrtc/SurfaceViewRenderer;->release()V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalTextureRender:Lorg/hmwebrtc/TextureViewRenderer;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lorg/hmwebrtc/TextureViewRenderer;->release()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalTextureRender:Lorg/hmwebrtc/TextureViewRenderer;

    .line 48
    .line 49
    :cond_2
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    throw v0

    .line 53
    :catchall_1
    move-exception v1

    .line 54
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    throw v1
.end method

.method public reset()V
    .locals 4

    .line 1
    const/16 v0, 0x9c4

    .line 2
    .line 3
    iput v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->minBitrate:I

    .line 4
    .line 5
    iput v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->maxBitrate:I

    .line 6
    .line 7
    new-instance v0, Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 8
    .line 9
    const/16 v1, 0x2d0

    .line 10
    .line 11
    const/16 v2, 0x1e

    .line 12
    .line 13
    const/16 v3, 0x500

    .line 14
    .line 15
    invoke-direct {v0, v3, v1, v2}, Lorg/webrtc/haima/camera/HmCameraSettings;-><init>(III)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 19
    .line 20
    return-void
.end method

.method public setActivityIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mActivityIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-void
.end method

.method public setAdapter(Lorg/webrtc/haima/HmRtcAdapterImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mHmRtcAdapter:Lorg/webrtc/haima/HmRtcAdapterImpl;

    .line 2
    .line 3
    return-void
.end method

.method public setAudioConstraints(Lorg/hmwebrtc/MediaConstraints;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mAudioConstraints:Lorg/hmwebrtc/MediaConstraints;

    .line 2
    .line 3
    return-void
.end method

.method public setCameraCaptureFormat(Lorg/webrtc/haima/camera/HmCameraSettings;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "cameraSettings:"

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
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    new-instance p1, Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 26
    .line 27
    const/16 v0, 0x2d0

    .line 28
    .line 29
    const/16 v1, 0x1e

    .line 30
    .line 31
    const/16 v2, 0x500

    .line 32
    .line 33
    invoke-direct {p1, v2, v0, v1}, Lorg/webrtc/haima/camera/HmCameraSettings;-><init>(III)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 40
    .line 41
    :goto_0
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "mCameraCaptureFormat"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {p1, v0}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public setCameraExternalControlDefaultValue(IIZZIIZZ)V
    .locals 3

    .line 1
    const/16 v0, 0x10e

    .line 2
    .line 3
    const/16 v1, 0xb4

    .line 4
    .line 5
    const/16 v2, 0x5a

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    if-eq p1, v2, :cond_0

    .line 10
    .line 11
    if-eq p1, v1, :cond_0

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    :cond_0
    sput p1, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationFrontCamera1:I

    .line 16
    .line 17
    :cond_1
    if-eqz p2, :cond_2

    .line 18
    .line 19
    if-eq p2, v2, :cond_2

    .line 20
    .line 21
    if-eq p2, v1, :cond_2

    .line 22
    .line 23
    if-ne p2, v0, :cond_3

    .line 24
    .line 25
    :cond_2
    sput p2, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationBackCamera1:I

    .line 26
    .line 27
    :cond_3
    sput-boolean p3, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isFrontMirrorCamera1:Z

    .line 28
    .line 29
    sput-boolean p4, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isBackMirrorCamera1:Z

    .line 30
    .line 31
    if-eqz p5, :cond_4

    .line 32
    .line 33
    if-eq p5, v2, :cond_4

    .line 34
    .line 35
    if-eq p5, v1, :cond_4

    .line 36
    .line 37
    if-ne p5, v0, :cond_5

    .line 38
    .line 39
    :cond_4
    sput p5, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationFrontCamera2:I

    .line 40
    .line 41
    :cond_5
    if-eqz p6, :cond_6

    .line 42
    .line 43
    if-eq p6, v2, :cond_6

    .line 44
    .line 45
    if-eq p6, v1, :cond_6

    .line 46
    .line 47
    if-ne p6, v0, :cond_7

    .line 48
    .line 49
    :cond_6
    sput p6, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationBackCamera2:I

    .line 50
    .line 51
    :cond_7
    sput-boolean p7, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isFrontMirrorCamera2:Z

    .line 52
    .line 53
    sput-boolean p8, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isBackMirrorCamera2:Z

    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string p2, "set CameraExternalControl: externalForcedlyFrameOrientationFrontCamera1: "

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    sget p2, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationFrontCamera1:I

    .line 66
    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p2, "externalForcedlyFrameOrientationBackCamera1: "

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    sget p2, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationBackCamera1:I

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p2, ", CameraExternalControl.isFrontMirrorCamera1: "

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    sget-boolean p2, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isFrontMirrorCamera1:Z

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p2, ", CameraExternalControl.isBackMirrorCamera1: "

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    sget-boolean p2, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isBackMirrorCamera1:Z

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p2, "externalForcedlyFrameOrientationFrontCamera2: "

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    sget p2, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationFrontCamera2:I

    .line 106
    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p2, "externalForcedlyFrameOrientationBackCamera2: "

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    sget p2, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->externalForcedlyFrameOrientationBackCamera2:I

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string p2, ", CameraExternalControl.isFrontMirrorCamera2: "

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    sget-boolean p2, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isFrontMirrorCamera2:Z

    .line 126
    .line 127
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p2, ", CameraExternalControl.isBackMirrorCamera2: "

    .line 131
    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    sget-boolean p2, Lorg/hmwebrtc/CameraVideoCapturer$CameraExternalControl;->isBackMirrorCamera2:Z

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-void
.end method

.method public setEglBase(Lorg/hmwebrtc/EglBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->rootEglBase:Lorg/hmwebrtc/EglBase;

    .line 2
    .line 3
    return-void
.end method

.method public setEventObserver(Lorg/webrtc/haima/camera/HmCameraManager$CameraEventObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraObserver:Lorg/webrtc/haima/camera/HmCameraManager$CameraEventObserver;

    .line 2
    .line 3
    return-void
.end method

.method public setLocalProxyVideoSinkTarget(Lorg/hmwebrtc/VideoSink;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalProxyVideoSink:Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->setTarget(Lorg/hmwebrtc/VideoSink;Lorg/hmwebrtc/VideoSink;Landroid/os/Handler;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public setLocalRenderer(Lorg/hmwebrtc/VideoSink;)V
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
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

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
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalTextureRender:Lorg/hmwebrtc/TextureViewRenderer;

    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public setLocalVideoSink(Lorg/hmwebrtc/EglBase;Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "setLocalVideoSink"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->rootEglBase:Lorg/hmwebrtc/EglBase;

    .line 14
    .line 15
    invoke-interface {p1}, Lorg/hmwebrtc/EglBase;->getEglBaseContext()Lorg/hmwebrtc/EglBase$Context;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2, v1}, Lorg/hmwebrtc/SurfaceViewRenderer;->init(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 23
    .line 24
    sget-object v2, Lorg/hmwebrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/hmwebrtc/RendererCommon$ScalingType;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lorg/hmwebrtc/SurfaceViewRenderer;->setScalingType(Lorg/hmwebrtc/RendererCommon$ScalingType;)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalProxyVideoSink:Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    .line 30
    .line 31
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalSurfaceRenderer:Lorg/hmwebrtc/SurfaceViewRenderer;

    .line 32
    .line 33
    invoke-virtual {p2, v0, v1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->setTarget(Lorg/hmwebrtc/VideoSink;Lorg/hmwebrtc/VideoSink;Landroid/os/Handler;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalTextureRender:Lorg/hmwebrtc/TextureViewRenderer;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->rootEglBase:Lorg/hmwebrtc/EglBase;

    .line 41
    .line 42
    invoke-interface {p1}, Lorg/hmwebrtc/EglBase;->getEglBaseContext()Lorg/hmwebrtc/EglBase$Context;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v0, p1, v1}, Lorg/hmwebrtc/TextureViewRenderer;->init(Lorg/hmwebrtc/EglBase$Context;Lorg/hmwebrtc/RendererCommon$RendererEvents;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalTextureRender:Lorg/hmwebrtc/TextureViewRenderer;

    .line 50
    .line 51
    sget-object v0, Lorg/hmwebrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lorg/hmwebrtc/RendererCommon$ScalingType;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lorg/hmwebrtc/TextureViewRenderer;->setScalingType(Lorg/hmwebrtc/RendererCommon$ScalingType;)V

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalProxyVideoSink:Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;

    .line 57
    .line 58
    iget-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mLocalTextureRender:Lorg/hmwebrtc/TextureViewRenderer;

    .line 59
    .line 60
    invoke-virtual {p2, p1, v1, v1}, Lorg/webrtc/haima/HmRtcAdapterImpl$ProxyVideoSink;->setTarget(Lorg/hmwebrtc/VideoSink;Lorg/hmwebrtc/VideoSink;Landroid/os/Handler;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method public setPeerConnectFactory(Lorg/hmwebrtc/PeerConnectionFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mFactory:Lorg/hmwebrtc/PeerConnectionFactory;

    .line 2
    .line 3
    return-void
.end method

.method public setVideo(Lorg/hmwebrtc/VideoCapturer;Lorg/hmwebrtc/VideoSink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturer:Lorg/hmwebrtc/VideoCapturer;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->localRender:Lorg/hmwebrtc/VideoSink;

    .line 4
    .line 5
    return-void
.end method

.method public setVideoBitrate(Ljava/lang/Integer;I)V
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->minBitrate:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    if-ne p2, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->maxBitrate:I

    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public startVideoSource()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturer:Lorg/hmwebrtc/VideoCapturer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mVideoCapturerStopped:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lorg/webrtc/haima/camera/HmCameraSettings;

    const/16 v1, 0x2d0

    const/16 v2, 0x1e

    const/16 v3, 0x500

    invoke-direct {v0, v3, v1, v2}, Lorg/webrtc/haima/camera/HmCameraSettings;-><init>(III)V

    iput-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    invoke-virtual {v0}, Lorg/webrtc/haima/camera/HmCameraSettings;->getWidth()I

    move-result v0

    .line 5
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    invoke-virtual {v1}, Lorg/webrtc/haima/camera/HmCameraSettings;->getHeight()I

    move-result v1

    .line 6
    iget-object v2, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraCaptureFormat:Lorg/webrtc/haima/camera/HmCameraSettings;

    invoke-virtual {v2}, Lorg/webrtc/haima/camera/HmCameraSettings;->getFrameRate()I

    move-result v2

    .line 7
    sget-boolean v3, Lorg/webrtc/haima/camera/HmCameraManager;->useFrontCamera:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/webrtc/haima/camera/HmCameraManager;->startVideoSource(IIIZ)V

    :cond_1
    return-void
.end method

.method public startVideoSource(IIIZ)V
    .locals 9

    .line 8
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdCnt:I

    .line 10
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lorg/webrtc/haima/camera/b;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/webrtc/haima/camera/b;-><init>(Lorg/webrtc/haima/camera/HmCameraManager;IIIZ)V

    invoke-interface {v1, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopVideoSource()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdCnt:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    iput v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdCnt:I

    .line 9
    .line 10
    iget-object v1, p0, Lorg/webrtc/haima/camera/HmCameraManager;->mCameraOperationCmdExecutor:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    new-instance v2, Lorg/webrtc/haima/camera/a;

    .line 13
    .line 14
    invoke-direct {v2, p0}, Lorg/webrtc/haima/camera/a;-><init>(Lorg/webrtc/haima/camera/HmCameraManager;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method
