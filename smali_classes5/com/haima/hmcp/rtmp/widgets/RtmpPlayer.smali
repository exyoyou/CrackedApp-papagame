.class public Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Lcom/haima/hmcp/utils/CcallJava$RtmpOnFrameDelayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;
    }
.end annotation


# static fields
.field public static final APK_TYPE_NON_POOL:I = 0x3

.field public static final APK_TYPE_POOL_BINTANG:I = 0x1

.field public static final APK_TYPE_POOL_NON_BINTANG:I = 0x2

.field private static final FIRST_FRAME_TIMEOUT_ERROR:I = -0x1

.field public static final RENDER_NONE:I = 0x0

.field public static final RENDER_SURFACE_VIEW:I = 0x1

.field public static final RENDER_TEXTURE_VIEW:I = 0x2

.field public static final ROM_ORIENTATION_HANDSTAND:I = 0x2

.field public static final ROM_ORIENTATION_PORTRAIT:I = 0x3

.field public static final ROM_ORIENTATION_PORTRAIT_NAGTIVE:I = 0x1

.field protected static final SCENE_NO:I = 0x0

.field protected static final SCENE_YES:I = 0x1

.field private static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RtmpPlayer"

.field private static final s_allAspectRatio:[I


# instance fields
.field private hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

.field private ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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

.field private mAudioErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mAudioPath:Ljava/lang/String;

.field private mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

.field private mAudioPrepareStartTime:J

.field mAudioPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field public mBitRate:I

.field private mBufferingUpdateListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field protected mContext:Landroid/content/Context;

.field private mCurrentAspectRatio:I

.field private mCurrentAspectRatioIndex:I

.field private mCurrentBufferPercentage:I

.field private mCurrentRender:I

.field private mCurrentRenderIndex:I

.field private mErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

.field private mFirstFrameTimer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;

.field protected mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mInfoListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field protected mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

.field public mMetaInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mMinResolutionLevel:Ljava/lang/String;

.field private mOnCompletionListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

.field private mOnInfoListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field private mOnTimedTextListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnTimedTextListener;

.field protected mPlayerDecodeTime:J

.field protected mPlayerFrameSize:Ljava/lang/String;

.field private mPrepareEndTime:J

.field private mPrepareStartTime:J

.field mPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

.field protected mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

.field protected mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

.field mSHCallback:Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;

.field private mSeekCompleteListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

.field private mSeekEndTime:J

.field private mSeekStartTime:J

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field protected mSurfaceHolder:Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;

.field private mSurfaceWidth:I

.field protected mTimer:Ljava/util/Timer;

.field private mVideoHeight:I

.field private mVideoHost:Ljava/lang/String;

.field private mVideoPath:Ljava/lang/String;

.field private mVideoPort:I

.field private mVideoResloveIp:Ljava/lang/String;

.field private mVideoRotationDegree:I

.field private mVideoSarDen:I

.field private mVideoSarNum:I

.field private mVideoWidth:I

.field private mWidth:I

.field public object:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x2

    .line 6
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->s_allAspectRatio:[I

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/haima/hmcp/widgets/AbsIjkVideoView;Lcom/haima/hmcp/business/HmcpRequest;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSurfaceHolder:Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCanPause:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCanSeekBack:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCanSeekForward:Z

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mPrepareStartTime:J

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPrepareStartTime:J

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mPrepareEndTime:J

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSeekStartTime:J

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSeekEndTime:J

    .line 29
    .line 30
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$2;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$2;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSizeChangedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 36
    .line 37
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$3;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 43
    .line 44
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$4;

    .line 45
    .line 46
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$4;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 50
    .line 51
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$5;

    .line 52
    .line 53
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$5;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCompletionListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 57
    .line 58
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$6;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mInfoListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 64
    .line 65
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$7;

    .line 66
    .line 67
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$7;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 71
    .line 72
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$8;

    .line 73
    .line 74
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$8;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 78
    .line 79
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$9;

    .line 80
    .line 81
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$9;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mBufferingUpdateListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 85
    .line 86
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$10;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$10;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSeekCompleteListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;

    .line 92
    .line 93
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$11;

    .line 94
    .line 95
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$11;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mOnTimedTextListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnTimedTextListener;

    .line 99
    .line 100
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;

    .line 101
    .line 102
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$12;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSHCallback:Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;

    .line 106
    .line 107
    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentAspectRatioIndex:I

    .line 109
    .line 110
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->s_allAspectRatio:[I

    .line 111
    .line 112
    aget v1, v1, v0

    .line 113
    .line 114
    iput v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentAspectRatio:I

    .line 115
    .line 116
    new-instance v1, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAllRenders:Ljava/util/List;

    .line 122
    .line 123
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentRenderIndex:I

    .line 124
    .line 125
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentRender:I

    .line 126
    .line 127
    if-nez p1, :cond_0

    .line 128
    .line 129
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 130
    .line 131
    const-string p2, "rtmpPlayer init fail, context is null"

    .line 132
    .line 133
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string p1, "12200"

    .line 137
    .line 138
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_0
    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 143
    .line 144
    iput-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 145
    .line 146
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->lambda$convertVideoAndAudioPathASync$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMeasuredWidth:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMeasuredWidth:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMeasuredHeight:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMeasuredHeight:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1100(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mPrepareStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1200(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mOnPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1300(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSeekWhenPrepared:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1400(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSurfaceWidth:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1402(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSurfaceWidth:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1500(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSurfaceHeight:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1502(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSurfaceHeight:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1600(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPrepareStartTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$1700(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Ltv/haima/ijk/media/player/IMediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1800(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mOnCompletionListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1900(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mOnInfoListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mWidth:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2000(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoRotationDegree:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$2002(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoRotationDegree:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$202(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mWidth:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2100(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->updateVideoSize(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2200(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->cancelFirstFrameTimer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2300(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->onVideoError(IILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2402(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentBufferPercentage:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2502(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSeekEndTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$2600(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->doRelease(ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mHeight:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mHeight:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$500(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoWidth:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$502(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoWidth:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$600(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHeight:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$602(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHeight:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$700(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoSarNum:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$702(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoSarNum:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoSarDen:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$802(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoSarDen:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$902(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mPrepareEndTime:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static synthetic b(Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->lambda$convertVideoAndAudioPathASync$1(Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;)V

    return-void
.end method

.method private cancelFirstFrameTimer()V
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mFirstFrameTimer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mFirstFrameTimer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;

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
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mFirstFrameTimer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;

    .line 84
    .line 85
    :cond_0
    return-void
.end method

.method private declared-synchronized doRelease(ZZ)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->cancelFirstFrameTimer()V

    .line 5
    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->onPlayerRelease()V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-interface {p2}, Ltv/haima/ijk/media/player/IMediaPlayer;->reset()V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 19
    .line 20
    invoke-interface {p2}, Ltv/haima/ijk/media/player/IMediaPlayer;->release()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p2, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 39
    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    invoke-interface {p1}, Ltv/haima/ijk/media/player/IMediaPlayer;->reset()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 46
    .line 47
    invoke-interface {p1}, Ltv/haima/ijk/media/player/IMediaPlayer;->release()V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 51
    .line 52
    :cond_2
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 53
    .line 54
    const-string p2, "audio"

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/media/AudioManager;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 66
    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCloudFileManager()Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCloudFileManager()Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object p2, Lcom/haima/hmcp/enums/CloudOperation;->UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCloudFileManager()Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    sget-object p2, Lcom/haima/hmcp/enums/CloudOperation;->BATCH_UPLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopAllPhoneVibrators()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 105
    :cond_4
    :goto_0
    monitor-exit p0

    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    monitor-exit p0

    .line 109
    throw p1
.end method

.method private faultTolerant(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    array-length v1, v1

    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    if-lt v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "--------reportFrameDelayInfo lastIndex= "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, " info:"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :cond_0
    return-object p1
.end method

.method private initRenders()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAllRenders:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAllRenders:Ljava/util/List;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAllRenders:Ljava/util/List;

    .line 15
    .line 16
    iget v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentRender:I

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAllRenders:Ljava/util/List;

    .line 26
    .line 27
    iget v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentRenderIndex:I

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
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentRender:I

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->setRender(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private synthetic lambda$convertVideoAndAudioPathASync$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "convertVideoAndAudioPathASync with DnsManager result:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_0

    .line 40
    .line 41
    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p6, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoResloveIp:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/haima/hmcp/utils/Utils;->isIpv4Address(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    invoke-static {v1}, Lcom/haima/hmcp/utils/Utils;->getIpv6AddressStyle(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :cond_1
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 67
    .line 68
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    invoke-virtual {p6, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    iput-object p4, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p6, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/haima/hmcp/utils/Utils;->isIpv4Address(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result p6

    .line 99
    if-nez p6, :cond_3

    .line 100
    .line 101
    invoke-static {p1}, Lcom/haima/hmcp/utils/Utils;->getIpv6AddressStyle(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    :cond_3
    invoke-virtual {p4, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 110
    .line 111
    :goto_1
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 112
    .line 113
    const/4 p3, 0x4

    .line 114
    new-array p6, p3, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const/4 v2, 0x0

    .line 121
    aput-object v1, p6, v2

    .line 122
    .line 123
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 124
    .line 125
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const/4 v3, 0x1

    .line 130
    aput-object v1, p6, v3

    .line 131
    .line 132
    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const/4 v4, 0x2

    .line 137
    aput-object v1, p6, v4

    .line 138
    .line 139
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const/4 v5, 0x3

    .line 146
    aput-object v1, p6, v5

    .line 147
    .line 148
    const-string v1, "convertVideoAndAudioPathASync videoPath %s -> %s, audioPath %s -> %s"

    .line 149
    .line 150
    invoke-static {p1, v1, p6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string p6, "12512"

    .line 155
    .line 156
    invoke-static {p6, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const/4 p1, 0x6

    .line 160
    new-array p1, p1, [Ljava/lang/Object;

    .line 161
    .line 162
    iget-object p6, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHost:Ljava/lang/String;

    .line 163
    .line 164
    aput-object p6, p1, v2

    .line 165
    .line 166
    iget p6, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPort:I

    .line 167
    .line 168
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object p6

    .line 172
    aput-object p6, p1, v3

    .line 173
    .line 174
    aput-object p2, p1, v4

    .line 175
    .line 176
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 177
    .line 178
    aput-object p2, p1, v5

    .line 179
    .line 180
    aput-object p4, p1, p3

    .line 181
    .line 182
    const/4 p2, 0x5

    .line 183
    iget-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 184
    .line 185
    aput-object p3, p1, p2

    .line 186
    .line 187
    const-string p2, "convertVideoAndAudioPathASync with DnsManager mVideoHost: %s, mVideoPort: %s, videoPath %s -> %s, audioPath %s -> %s"

    .line 188
    .line 189
    invoke-static {v0, p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    if-eqz p5, :cond_4

    .line 193
    .line 194
    const-string p1, "setVideoAndAudioPathAsync success then convertFinish"

    .line 195
    .line 196
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {p5}, Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;->convertFinish()V

    .line 200
    .line 201
    .line 202
    :cond_4
    return-void
.end method

.method private static synthetic lambda$convertVideoAndAudioPathASync$1(Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;)V
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v1, "convertVideoAndAudioPath happened exception then convertFinish"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;->convertFinish()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private onVideoError(IILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    aput-object v4, v2, v3

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    aput-object v4, v2, v3

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    aput-object p3, v2, v3

    .line 24
    .line 25
    const-string v3, "onVideoError what: %d, extra: %d, error: %s"

    .line 26
    .line 27
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/haima/hmcp/beans/ReportBaseFailed;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, ""

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v7, 0x0

    .line 54
    move-object v2, v0

    .line 55
    move-object v4, p3

    .line 56
    move v5, p2

    .line 57
    move-object v6, p3

    .line 58
    invoke-direct/range {v2 .. v7}, Lcom/haima/hmcp/beans/ReportBaseFailed;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

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
    iget-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 71
    .line 72
    const/4 v0, -0x1

    .line 73
    invoke-virtual {p3, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 74
    .line 75
    .line 76
    iget-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 77
    .line 78
    invoke-virtual {p3, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 79
    .line 80
    .line 81
    iget-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHost:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result p3

    .line 87
    if-nez p3, :cond_0

    .line 88
    .line 89
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHost:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoResloveIp:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p3, v0, v1, v2}, Lcom/haima/hmcp/dns/DnsManager;->networkFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/haima/hmcp/utils/ConnectivityCheck;->getInstance()Lcom/haima/hmcp/utils/ConnectivityCheck;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoResloveIp:Ljava/lang/String;

    .line 107
    .line 108
    iget v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPort:I

    .line 109
    .line 110
    const-string v2, "rtmpVideo"

    .line 111
    .line 112
    invoke-virtual {p3, v2, v0, v1}, Lcom/haima/hmcp/utils/ConnectivityCheck;->postCheckTask(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    :cond_0
    iget-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

    .line 116
    .line 117
    if-eqz p3, :cond_1

    .line 118
    .line 119
    invoke-interface {p3, p1, p2}, Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;->onError(II)V

    .line 120
    .line 121
    .line 122
    :cond_1
    return-void
.end method

.method private openVideoAndAudio()V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_8

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_8

    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->release(Z)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->startFirstFrameTimer()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    new-instance v1, Lcom/haima/hmcp/beans/ReportStartPlayStream;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    iget-object v2, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    iget-object v3, v3, Lcom/haima/hmcp/beans/ResolutionInfo;->bitRate:Ljava/lang/String;

    .line 55
    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v5, ""

    .line 62
    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    iget v5, v5, Lcom/haima/hmcp/beans/ResolutionInfo;->frameRate:I

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-direct {v1, v2, v3, v4}, Lcom/haima/hmcp/beans/ReportStartPlayStream;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v2, "12039"

    .line 85
    .line 86
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    const/4 v1, 0x1

    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/4 v3, 0x3

    .line 101
    const/4 v4, 0x0

    .line 102
    if-nez v2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->createPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iput-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 109
    .line 110
    sget-object v2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 111
    .line 112
    const-string v5, "createPlayer===mMediaPlayer"

    .line 113
    .line 114
    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 118
    .line 119
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 120
    .line 121
    invoke-interface {v2, v5}, Ltv/haima/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 125
    .line 126
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSizeChangedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;

    .line 127
    .line 128
    invoke-interface {v2, v5}, Ltv/haima/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 132
    .line 133
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCompletionListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 134
    .line 135
    invoke-interface {v2, v5}, Ltv/haima/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 139
    .line 140
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 141
    .line 142
    invoke-interface {v2, v5}, Ltv/haima/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 146
    .line 147
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mInfoListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 148
    .line 149
    invoke-interface {v2, v5}, Ltv/haima/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 153
    .line 154
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mBufferingUpdateListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;

    .line 155
    .line 156
    invoke-interface {v2, v5}, Ltv/haima/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 157
    .line 158
    .line 159
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentBufferPercentage:I

    .line 160
    .line 161
    const-string v2, "12087"

    .line 162
    .line 163
    invoke-static {v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 167
    .line 168
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 169
    .line 170
    iget-object v6, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-interface {v2, v5, v6, v4}, Ltv/haima/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 177
    .line 178
    .line 179
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSurfaceHolder:Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;

    .line 180
    .line 181
    if-eqz v2, :cond_2

    .line 182
    .line 183
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 184
    .line 185
    invoke-virtual {p0, v5, v2, v4}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->bindSurfaceHolder(Ltv/haima/ijk/media/player/IMediaPlayer;Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;Landroid/graphics/SurfaceTexture;)V

    .line 186
    .line 187
    .line 188
    :cond_2
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 189
    .line 190
    invoke-interface {v2, v3}, Ltv/haima/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 191
    .line 192
    .line 193
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 194
    .line 195
    invoke-interface {v2, v1}, Ltv/haima/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 196
    .line 197
    .line 198
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 199
    .line 200
    check-cast v2, Ltv/haima/ijk/media/player/IjkMediaPlayer;

    .line 201
    .line 202
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 203
    .line 204
    invoke-virtual {v5}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isWakeLockPermission()Z

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    invoke-virtual {v2, v5}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setWakeLockEnable(Z)V

    .line 209
    .line 210
    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide v5

    .line 215
    iput-wide v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mPrepareStartTime:J

    .line 216
    .line 217
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 218
    .line 219
    if-eqz v2, :cond_3

    .line 220
    .line 221
    const-string v7, "videoUrl"

    .line 222
    .line 223
    iget-object v8, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v2, v7, v8, v5, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->setStartNetData(Ljava/lang/String;Ljava/lang/String;J)V

    .line 226
    .line 227
    .line 228
    :cond_3
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 229
    .line 230
    invoke-interface {v2}, Ltv/haima/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 231
    .line 232
    .line 233
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 234
    .line 235
    invoke-virtual {v2, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_0

    .line 239
    :cond_4
    sget-object v2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 240
    .line 241
    const-string v5, "mVideoPath is null!"

    .line 242
    .line 243
    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    :goto_0
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-nez v2, :cond_6

    .line 253
    .line 254
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 255
    .line 256
    const-string v5, "audio"

    .line 257
    .line 258
    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    check-cast v2, Landroid/media/AudioManager;

    .line 263
    .line 264
    invoke-virtual {v2, v4, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    sget-object v5, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 269
    .line 270
    new-instance v6, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .line 274
    .line 275
    const-string v7, "AudioManager===result=>"

    .line 276
    .line 277
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-static {v5, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->createPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    iput-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 295
    .line 296
    iget-object v6, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 297
    .line 298
    invoke-interface {v2, v6}, Ltv/haima/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 299
    .line 300
    .line 301
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 302
    .line 303
    iget-object v6, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 304
    .line 305
    invoke-interface {v2, v6}, Ltv/haima/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 306
    .line 307
    .line 308
    const-string v2, "createPlayer===mAudioPlayer"

    .line 309
    .line 310
    invoke-static {v5, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const-string v2, "12086"

    .line 314
    .line 315
    invoke-static {v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 319
    .line 320
    iget-object v6, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 321
    .line 322
    iget-object v7, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 323
    .line 324
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    invoke-interface {v2, v6, v7, v4}, Ltv/haima/ijk/media/player/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 329
    .line 330
    .line 331
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 332
    .line 333
    invoke-interface {v2, v3}, Ltv/haima/ijk/media/player/IMediaPlayer;->setAudioStreamType(I)V

    .line 334
    .line 335
    .line 336
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 337
    .line 338
    check-cast v2, Ltv/haima/ijk/media/player/IjkMediaPlayer;

    .line 339
    .line 340
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 341
    .line 342
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isWakeLockPermission()Z

    .line 343
    .line 344
    .line 345
    move-result v3

    .line 346
    invoke-virtual {v2, v3}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setWakeLockEnable(Z)V

    .line 347
    .line 348
    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 350
    .line 351
    .line 352
    move-result-wide v2

    .line 353
    iput-wide v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPrepareStartTime:J

    .line 354
    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v3, "audioUrl:"

    .line 361
    .line 362
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    iget-wide v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPrepareStartTime:J

    .line 366
    .line 367
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-static {v5, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 378
    .line 379
    if-eqz v2, :cond_5

    .line 380
    .line 381
    const-string v3, "audioUrl"

    .line 382
    .line 383
    iget-object v4, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 384
    .line 385
    iget-wide v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPrepareStartTime:J

    .line 386
    .line 387
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/haima/hmcp/business/HmcpRequestManager;->setStartNetData(Ljava/lang/String;Ljava/lang/String;J)V

    .line 388
    .line 389
    .line 390
    :cond_5
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 391
    .line 392
    invoke-interface {v2}, Ltv/haima/ijk/media/player/IMediaPlayer;->prepareAsync()V

    .line 393
    .line 394
    .line 395
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 396
    .line 397
    if-eqz v2, :cond_7

    .line 398
    .line 399
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAudioMute()Z

    .line 400
    .line 401
    .line 402
    move-result v3

    .line 403
    invoke-virtual {v2, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setAudioMute(Z)V

    .line 404
    .line 405
    .line 406
    goto :goto_1

    .line 407
    :cond_6
    sget-object v2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 408
    .line 409
    const-string v3, "mAudioPath is null!"

    .line 410
    .line 411
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .line 413
    .line 414
    goto :goto_1

    .line 415
    :catch_0
    move-exception v2

    .line 416
    sget-object v3, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 417
    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    .line 419
    .line 420
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .line 422
    .line 423
    const-string v5, "Unable to open content: "

    .line 424
    .line 425
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 429
    .line 430
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    invoke-static {v3, v4, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 438
    .line 439
    .line 440
    invoke-direct {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->cancelFirstFrameTimer()V

    .line 441
    .line 442
    .line 443
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 444
    .line 445
    const/4 v4, -0x1

    .line 446
    invoke-virtual {v3, v4}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 447
    .line 448
    .line 449
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 450
    .line 451
    invoke-virtual {v3, v4}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 452
    .line 453
    .line 454
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mErrorListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;

    .line 455
    .line 456
    iget-object v4, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 457
    .line 458
    invoke-interface {v3, v4, v1, v0}, Ltv/haima/ijk/media/player/IMediaPlayer$OnErrorListener;->onError(Ltv/haima/ijk/media/player/IMediaPlayer;II)Z

    .line 459
    .line 460
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .line 465
    .line 466
    const-string v1, "openVideoAndAudio:: mMediaPlayer error=>"

    .line 467
    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :cond_7
    :goto_1
    return-void

    .line 486
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 487
    .line 488
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .line 490
    .line 491
    const-string v1, "openVideoAndAudio got bad mVideoPath: "

    .line 492
    .line 493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 497
    .line 498
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v1, " OR bad mAudioPath: "

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 507
    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    return-void
.end method

.method private rotateOrientation()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "==rotateOrientation===="

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x2

    .line 27
    new-array v1, v1, [F

    .line 28
    .line 29
    fill-array-data v1, :array_0

    .line 30
    .line 31
    .line 32
    const-string v2, "rotation"

    .line 33
    .line 34
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :array_0
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data
.end method

.method private setRenderView(Lcom/haima/hmcp/rtmp/widgets/IRenderView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ltv/haima/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSHCallback:Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;

    .line 27
    .line 28
    invoke-interface {v2, v3}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->removeRenderCallback(Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    if-nez p1, :cond_3

    .line 39
    .line 40
    return-void

    .line 41
    :cond_3
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmScreenShotManager()Lcom/haima/hmcp/utils/ScreenShotManager;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmScreenShotConfig()Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "RTMP"

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->setStreamType(Ljava/lang/String;)Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;->setRtmpRender(Lcom/haima/hmcp/rtmp/widgets/IRenderView;)Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/utils/ScreenShotManager;->setConfig(Lcom/haima/hmcp/utils/ScreenShotManager$ScreenShotConfig;)V

    .line 68
    .line 69
    .line 70
    iget v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentAspectRatio:I

    .line 71
    .line 72
    invoke-interface {p1, v0}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->setAspectRatio(I)V

    .line 73
    .line 74
    .line 75
    iget v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoWidth:I

    .line 76
    .line 77
    if-lez v0, :cond_4

    .line 78
    .line 79
    iget v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHeight:I

    .line 80
    .line 81
    if-lez v1, :cond_4

    .line 82
    .line 83
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->setVideoSize(II)V

    .line 84
    .line 85
    .line 86
    :cond_4
    iget v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoSarNum:I

    .line 87
    .line 88
    if-lez v0, :cond_5

    .line 89
    .line 90
    iget v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoSarDen:I

    .line 91
    .line 92
    if-lez v1, :cond_5

    .line 93
    .line 94
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->setVideoSampleAspectRatio(II)V

    .line 95
    .line 96
    .line 97
    :cond_5
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 98
    .line 99
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-instance v2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$1;

    .line 108
    .line 109
    invoke-direct {v2, p0, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$1;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    .line 117
    const/16 v2, 0x11

    .line 118
    .line 119
    const/4 v3, -0x2

    .line 120
    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSHCallback:Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;

    .line 135
    .line 136
    invoke-interface {v0, v1}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->addRenderCallback(Lcom/haima/hmcp/rtmp/widgets/IRenderView$IRenderCallback;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 140
    .line 141
    iget v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoRotationDegree:I

    .line 142
    .line 143
    invoke-interface {v0, v1}, Lcom/haima/hmcp/listeners/IRenderViewBase;->setVideoRotation(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 147
    .line 148
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setRenderView(Lcom/haima/hmcp/listeners/IRenderViewBase;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method private setVideoURI()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSeekWhenPrepared:I

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->openVideoAndAudio()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private startFirstFrameTimer()V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "startFirstFrameTimer is call, mFirstFrameTimer: "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mFirstFrameTimer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;

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
    invoke-direct {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->cancelFirstFrameTimer()V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mFirstFrameTimer:Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$FirstFrameTimer;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/CountDownTimer;->start()Lcom/haima/hmcp/widgets/CountDownTimer;

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private updateVideoSize(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    mul-int v1, v1, p1

    .line 83
    .line 84
    div-int/2addr v1, p2

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenHeight()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    mul-int v1, v1, p1

    .line 99
    .line 100
    div-int/2addr v1, p2

    .line 101
    :goto_1
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmShowWidth(I)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 107
    .line 108
    invoke-virtual {v2, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmShowHeight(I)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v3, "Streaming size[ width="

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p1, ", height="

    .line 125
    .line 126
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p2, "], RenderView size[ width="

    .line 133
    .line 134
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p1, "]"

    .line 147
    .line 148
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string p2, "13422"

    .line 156
    .line 157
    invoke-static {p2, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sget-object p2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 161
    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    const-string v3, "==onMeasure: "

    .line 168
    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 183
    .line 184
    invoke-interface {p1, v1, v0}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->setVideoSize(II)V

    .line 185
    .line 186
    .line 187
    return-void
.end method


# virtual methods
.method protected CloudStateSend(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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

.method protected UiMessageSend(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected bindSurfaceHolder(Ltv/haima/ijk/media/player/IMediaPlayer;Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    invoke-interface {p1, p2}, Ltv/haima/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-interface {p2, p1, p3}, Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/haima/ijk/media/player/IMediaPlayer;Landroid/graphics/SurfaceTexture;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public canPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCanPause:Z

    .line 2
    .line 3
    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCanSeekBack:Z

    .line 2
    .line 3
    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCanSeekForward:Z

    .line 2
    .line 3
    return v0
.end method

.method protected convertVideoAndAudioPathASync(Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;)V
    .locals 12

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    iput-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHost:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPort:I

    .line 17
    .line 18
    new-instance v0, Ljava/net/URI;

    .line 19
    .line 20
    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    iget-object v9, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 43
    .line 44
    const-string v10, "convertVideoAndAudioPath"

    .line 45
    .line 46
    new-instance v11, Lcom/haima/hmcp/rtmp/widgets/b;

    .line 47
    .line 48
    move-object v1, v11

    .line 49
    move-object v2, p0

    .line 50
    move-object v4, p1

    .line 51
    move-object v6, p2

    .line 52
    move-object v7, p3

    .line 53
    invoke-direct/range {v1 .. v7}, Lcom/haima/hmcp/rtmp/widgets/b;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8, v9, v10, v0, v11}, Lcom/haima/hmcp/dns/DnsManager;->getHostAddressListASync(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/haima/hmcp/dns/interfaces/DnsAsyncCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v2, "setVideoAndAudioPathAsync with DnsManager got Exception: "

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lcom/haima/hmcp/utils/Utils;->exceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 89
    .line 90
    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHost:Ljava/lang/String;

    .line 94
    .line 95
    const/4 p1, -0x1

    .line 96
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPort:I

    .line 97
    .line 98
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mHandler:Landroid/os/Handler;

    .line 99
    .line 100
    new-instance p2, Lcom/haima/hmcp/rtmp/widgets/c;

    .line 101
    .line 102
    invoke-direct {p2, p3}, Lcom/haima/hmcp/rtmp/widgets/c;-><init>(Lcom/haima/hmcp/dns/interfaces/DnsConvertCallback;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void
.end method

.method protected convertVideoAndAudioPathSync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHost:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPort:I

    .line 17
    .line 18
    new-instance v0, Ljava/net/URI;

    .line 19
    .line 20
    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/haima/hmcp/dns/DnsManager;->getInstance()Lcom/haima/hmcp/dns/DnsManager;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3, v2}, Lcom/haima/hmcp/dns/DnsManager;->getHostAddressListSync(Ljava/util/List;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    sget-object v4, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string v5, "convertVideoAndAudioPathSync with DnsManager hosts: %s -> ips: %s"

    .line 49
    .line 50
    const/4 v6, 0x2

    .line 51
    new-array v7, v6, [Ljava/lang/Object;

    .line 52
    .line 53
    const/4 v8, 0x0

    .line 54
    aput-object v2, v7, v8

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    aput-object v3, v7, v2

    .line 58
    .line 59
    invoke-static {v4, v5, v7}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Ljava/lang/String;

    .line 67
    .line 68
    iput-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoResloveIp:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-nez v5, :cond_0

    .line 75
    .line 76
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_0

    .line 87
    .line 88
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {v5}, Lcom/haima/hmcp/utils/Utils;->isIpv4Address(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-nez v7, :cond_1

    .line 102
    .line 103
    invoke-static {v5}, Lcom/haima/hmcp/utils/Utils;->getIpv6AddressStyle(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    :cond_1
    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iput-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 112
    .line 113
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_2

    .line 118
    .line 119
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    if-eqz v1, :cond_2

    .line 130
    .line 131
    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v1}, Lcom/haima/hmcp/utils/Utils;->isIpv4Address(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_3

    .line 145
    .line 146
    invoke-static {v1}, Lcom/haima/hmcp/utils/Utils;->getIpv6AddressStyle(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    :cond_3
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 155
    .line 156
    :goto_1
    const-string v0, "12512"

    .line 157
    .line 158
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 159
    .line 160
    const-string v3, "convertVideoAndAudioPathSync videoPath %s -> %s, audioPath %s -> %s"

    .line 161
    .line 162
    const/4 v5, 0x4

    .line 163
    new-array v7, v5, [Ljava/lang/Object;

    .line 164
    .line 165
    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    aput-object v9, v7, v8

    .line 170
    .line 171
    iget-object v9, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    aput-object v9, v7, v2

    .line 178
    .line 179
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v9

    .line 183
    aput-object v9, v7, v6

    .line 184
    .line 185
    iget-object v9, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    const/4 v10, 0x3

    .line 192
    aput-object v9, v7, v10

    .line 193
    .line 194
    invoke-static {v1, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v0, "convertVideoAndAudioPathSync with DnsManager mVideoHost: %s, mVideoPort: %s, videoPath %s -> %s, audioPath %s -> %s"

    .line 202
    .line 203
    const/4 v1, 0x6

    .line 204
    new-array v1, v1, [Ljava/lang/Object;

    .line 205
    .line 206
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHost:Ljava/lang/String;

    .line 207
    .line 208
    aput-object v3, v1, v8

    .line 209
    .line 210
    iget v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPort:I

    .line 211
    .line 212
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    aput-object v3, v1, v2

    .line 217
    .line 218
    aput-object p1, v1, v6

    .line 219
    .line 220
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 221
    .line 222
    aput-object v2, v1, v10

    .line 223
    .line 224
    aput-object p2, v1, v5

    .line 225
    .line 226
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 227
    .line 228
    const/4 v3, 0x5

    .line 229
    aput-object v2, v1, v3

    .line 230
    .line 231
    invoke-static {v4, v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->ifmt(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    .line 233
    .line 234
    goto :goto_2

    .line 235
    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v2, "convertVideoAndAudioPathSync with DnsManager got Exception: "

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-static {v0}, Lcom/haima/hmcp/utils/Utils;->exceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 261
    .line 262
    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 263
    .line 264
    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHost:Ljava/lang/String;

    .line 266
    .line 267
    const/4 p1, -0x1

    .line 268
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPort:I

    .line 269
    .line 270
    :goto_2
    return-void
.end method

.method public createPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;
    .locals 14

    .line 1
    new-instance v0, Ltv/haima/ijk/media/player/IjkMediaPlayer;

    .line 2
    .line 3
    invoke-direct {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "screenCap useSurfaceTextureFlag: "

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    sget v3, Lcom/haima/hmcp/Constants;->USE_SURFACE_TEXTURE_FLAG:I

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    if-lez v3, :cond_0

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v3, 0x0

    .line 27
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget v2, Lcom/haima/hmcp/Constants;->USE_SURFACE_TEXTURE_FLAG:I

    .line 38
    .line 39
    if-lez v2, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v2, 0x0

    .line 44
    :goto_1
    invoke-virtual {v0, v2}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setUseSurfaceTextureFlag(Z)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$16;

    .line 48
    .line 49
    invoke-direct {v2, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$16;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setFirstFrameRenderedCallback(Ltv/haima/ijk/media/player/ijkFrameRenderingStartedCallback;)V

    .line 53
    .line 54
    .line 55
    sget-boolean v2, Lcom/haima/hmcp/Constants;->IS_DEBUG:Z

    .line 56
    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    invoke-static {v5}, Lcom/haima/hmcp/utils/CcallJava;->setIjkplayLog(Z)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    invoke-static {v2}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-static {v4}, Lcom/haima/hmcp/utils/CcallJava;->setIjkplayLog(Z)V

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x5

    .line 71
    invoke-static {v2}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->native_setLogLevel(I)V

    .line 72
    .line 73
    .line 74
    :goto_2
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getDecodeType()I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {}, Lcom/haima/hmcp/utils/Utils;->isTV()Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    sget-boolean v3, Lcom/haima/hmcp/Constants;->rtmpUseSoftwareDecoder:Z

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v6, "rtmp mediacodec: "

    .line 97
    .line 98
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    if-ne v2, v5, :cond_4

    .line 102
    .line 103
    const-string v6, "\u786c\u89e3\u7801"

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    const-string v6, "\u8f6f\u89e3\u7801"

    .line 107
    .line 108
    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const-string v3, "mediacodec"

    .line 119
    .line 120
    int-to-long v6, v2

    .line 121
    const/4 v2, 0x4

    .line 122
    invoke-virtual {v0, v2, v3, v6, v7}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 123
    .line 124
    .line 125
    const-string v3, "opensles"

    .line 126
    .line 127
    const-wide/16 v6, 0x1

    .line 128
    .line 129
    invoke-virtual {v0, v2, v3, v6, v7}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 130
    .line 131
    .line 132
    const-string v3, "overlay-format"

    .line 133
    .line 134
    const-wide/32 v8, 0x32335652

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2, v3, v8, v9}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 138
    .line 139
    .line 140
    const-string v3, "framedrop"

    .line 141
    .line 142
    invoke-virtual {v0, v2, v3, v6, v7}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 143
    .line 144
    .line 145
    const-string v3, "start-on-prepared"

    .line 146
    .line 147
    const-wide/16 v8, 0x0

    .line 148
    .line 149
    invoke-virtual {v0, v2, v3, v8, v9}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 150
    .line 151
    .line 152
    const-string v3, "http-detect-range-support"

    .line 153
    .line 154
    invoke-virtual {v0, v5, v3, v8, v9}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 155
    .line 156
    .line 157
    const-string v3, "skip_loop_filter"

    .line 158
    .line 159
    const-wide/16 v10, 0x30

    .line 160
    .line 161
    const/4 v12, 0x2

    .line 162
    invoke-virtual {v0, v12, v3, v10, v11}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 163
    .line 164
    .line 165
    const-string v3, "packet-buffering"

    .line 166
    .line 167
    invoke-virtual {v0, v2, v3, v8, v9}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 168
    .line 169
    .line 170
    const-string v3, "first-high-water-mark-ms"

    .line 171
    .line 172
    invoke-virtual {v0, v2, v3, v8, v9}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 173
    .line 174
    .line 175
    const-string v3, "next-high-water-mark-ms"

    .line 176
    .line 177
    invoke-virtual {v0, v2, v3, v8, v9}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 178
    .line 179
    .line 180
    const-string v3, "last-high-water-mark-ms"

    .line 181
    .line 182
    invoke-virtual {v0, v2, v3, v8, v9}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 183
    .line 184
    .line 185
    const-string v3, "min-frames"

    .line 186
    .line 187
    const-wide/16 v10, 0x3c

    .line 188
    .line 189
    invoke-virtual {v0, v2, v3, v10, v11}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 190
    .line 191
    .line 192
    const-string v3, "max-buffer-size"

    .line 193
    .line 194
    const-wide/32 v12, 0x100000

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v2, v3, v12, v13}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 198
    .line 199
    .line 200
    const-string v3, "video-pictq-size"

    .line 201
    .line 202
    invoke-virtual {v0, v2, v3, v10, v11}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 203
    .line 204
    .line 205
    const-string v3, "probesize"

    .line 206
    .line 207
    const-wide/16 v10, 0x400

    .line 208
    .line 209
    invoke-virtual {v0, v5, v3, v10, v11}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 210
    .line 211
    .line 212
    const-string v3, "analyzeduration"

    .line 213
    .line 214
    invoke-virtual {v0, v5, v3, v8, v9}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 215
    .line 216
    .line 217
    const-string v3, "fpsprobesize"

    .line 218
    .line 219
    invoke-virtual {v0, v5, v3, v8, v9}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 220
    .line 221
    .line 222
    const-string v3, "formatprobesize"

    .line 223
    .line 224
    invoke-virtual {v0, v5, v3, v8, v9}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 225
    .line 226
    .line 227
    if-eqz p1, :cond_5

    .line 228
    .line 229
    const-string p1, "fflags"

    .line 230
    .line 231
    const-string v3, "nobuffer"

    .line 232
    .line 233
    invoke-virtual {v0, v5, p1, v3}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    goto :goto_4

    .line 237
    :cond_5
    const-string p1, "mediacodec-handle-resolution-change"

    .line 238
    .line 239
    invoke-virtual {v0, v2, p1, v6, v7}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 240
    .line 241
    .line 242
    :goto_4
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    sget-object v3, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 247
    .line 248
    if-ne p1, v3, :cond_6

    .line 249
    .line 250
    const/16 v4, 0x5a

    .line 251
    .line 252
    :cond_6
    iput v4, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoRotationDegree:I

    .line 253
    .line 254
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 255
    .line 256
    instance-of p1, p1, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;

    .line 257
    .line 258
    if-eqz p1, :cond_7

    .line 259
    .line 260
    if-lez v4, :cond_7

    .line 261
    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v3, "amc degree create "

    .line 268
    .line 269
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    iget v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoRotationDegree:I

    .line 273
    .line 274
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    invoke-static {v1, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoRotationDegree:I

    .line 285
    .line 286
    int-to-long v3, p1

    .line 287
    const-string p1, "rotate-layout"

    .line 288
    .line 289
    invoke-virtual {v0, v2, p1, v3, v4}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 290
    .line 291
    .line 292
    const-string p1, "mediacodec-auto-rotate"

    .line 293
    .line 294
    invoke-virtual {v0, v2, p1, v6, v7}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setOption(ILjava/lang/String;J)V

    .line 295
    .line 296
    .line 297
    :cond_7
    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentBufferPercentage:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getCurrentBitRate()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    :try_start_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/haima/hmcp/beans/ResolutionInfo;->bitRate:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "getCurrentBitRate::"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "getCurrentBitRate -------"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    div-int/lit16 v1, v1, 0x1f40

    .line 70
    .line 71
    return v1
.end method

.method public getCurrentPosition()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->isInPlaybackState()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 8
    .line 9
    invoke-interface {v0}, Ltv/haima/ijk/media/player/IMediaPlayer;->getCurrentPosition()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    long-to-int v1, v0

    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->isInPlaybackState()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 8
    .line 9
    invoke-interface {v0}, Ltv/haima/ijk/media/player/IMediaPlayer;->getDuration()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    long-to-int v1, v0

    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v0, -0x1

    .line 16
    return v0
.end method

.method public getIMediaPlayer(Z)Ltv/haima/ijk/media/player/IMediaPlayer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.haima.me.saas_sdk"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return-object p1

    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 23
    .line 24
    return-object p1
.end method

.method protected getMetaInfoByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==getMetaInfoByKey===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getMetaInfoByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getMetaInfoByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 3
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==getMetaInfoByKey====key==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "===value==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    const-string v2, "value is null"

    const-string v3, "getMetaInfoByKey::key = "

    const-string v4, "bw_check_large_file_url"

    const-string v5, ""

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v1, "==getMetaInfoByKey====mMetaInfos == null"

    .line 9
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "prompt_network_unavailable"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_network_unavailable_prompt:I

    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_1
    const-string v1, "revolveTime"

    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 15
    :cond_2
    :goto_1
    invoke-static {v5, p2}, Lcom/haima/hmcp/utils/StringUtils;->replaceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==getMetaInfoByKey====tip==value="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

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

.method public getRenderView()Lcom/haima/hmcp/rtmp/widgets/IRenderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

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
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-ge v1, v2, :cond_5

    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_2

    .line 32
    .line 33
    iget-object v3, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->defaultChoice:Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "1"

    .line 36
    .line 37
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 44
    .line 45
    iget-object p2, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setCurrenteResolutionID(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v2

    .line 51
    :cond_2
    if-eqz p2, :cond_3

    .line 52
    .line 53
    iget-object v3, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_3

    .line 60
    .line 61
    return-object v2

    .line 62
    :cond_3
    if-eqz p3, :cond_4

    .line 63
    .line 64
    iget-object v3, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_4

    .line 71
    .line 72
    return-object v2

    .line 73
    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    return-object v0
.end method

.method public getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;->getBitmap()Landroid/graphics/Bitmap;

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

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
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

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public initVideoView(Landroid/content/Context;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/haima/hmcp/enums/ScreenOrientation;->LANDSCAPE:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenOrientation(Lcom/haima/hmcp/enums/ScreenOrientation;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/haima/hmcp/HmcpManager;->getVideoViewType()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentRender:I

    .line 27
    .line 28
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "initVideoView-> set render type: "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentRender:I

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    if-ne v1, v2, :cond_1

    .line 44
    .line 45
    const-string v1, "Surface View"

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string v1, "Texture View"

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Landroid/os/Handler;

    .line 61
    .line 62
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mHandler:Landroid/os/Handler;

    .line 66
    .line 67
    new-instance p1, Ljava/util/Timer;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mTimer:Ljava/util/Timer;

    .line 73
    .line 74
    invoke-direct {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->initRenders()V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoWidth:I

    .line 79
    .line 80
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoHeight:I

    .line 81
    .line 82
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method protected isInPlaybackState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCurrentState()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCurrentState()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCurrentState()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eq v0, v1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    return v1
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->isInPlaybackState()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 8
    .line 9
    invoke-interface {v0}, Ltv/haima/ijk/media/player/IMediaPlayer;->isPlaying()Z

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

.method public notifyRtmpFrameDelayInfo(Lcom/haima/hmcp/beans/FrameDelayInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->notifyRtmpFrameDelayInfo(Lcom/haima/hmcp/beans/FrameDelayInfo;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public notifyStasticInfo(IJLjava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v7, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;

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
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$15;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;JILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onFirstFrameArrival()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->cancelFirstFrameTimer()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;->onFirstFrameArrival()V

    .line 14
    .line 15
    .line 16
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sput-wide v0, Lcom/haima/hmcp/utils/TimeUtil;->FirstFrameArrival:J

    .line 21
    .line 22
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {}, Lcom/haima/hmcp/utils/TimeUtil;->logString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurrentApkType()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne v1, v2, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    const-string v1, "timeframe---onFirstFrameArrival"

    .line 42
    .line 43
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "12045"

    .line 47
    .line 48
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getHmcpPlayerListener()Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->firstFrameArrival(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mHandler:Landroid/os/Handler;

    .line 63
    .line 64
    new-instance v1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$14;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$14;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public onFrameDelay(IIIF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getCurrentBitRate()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    int-to-float v0, v0

    .line 18
    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    .line 20
    sub-float/2addr v1, p4

    .line 21
    mul-float v0, v0, v1

    .line 22
    .line 23
    float-to-int v0, v0

    .line 24
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "===onFrameDelay====mBitRate = "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mBitRate:I

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " :mCurrentSpeed===>"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v3, " :scale====>"

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    invoke-static {v1, p4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    new-instance p4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string p1, ","

    .line 73
    .line 74
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string p3, "12038"

    .line 91
    .line 92
    invoke-static {p3, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getResolutionList()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getMinBitRate(Ljava/util/List;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMinResolutionLevel:Ljava/lang/String;

    .line 106
    .line 107
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 108
    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string p4, ""

    .line 115
    .line 116
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmDelayThresholdPercent(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-static {v0}, Lcom/haima/hmcp/utils/ConfigUtil;->isAllowedPlay(I)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mHandler:Landroid/os/Handler;

    .line 134
    .line 135
    if-eqz p2, :cond_1

    .line 136
    .line 137
    new-instance p3, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;

    .line 138
    .line 139
    invoke-direct {p3, p0, p1, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer$13;-><init>(Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;ZI)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    .line 144
    .line 145
    :cond_1
    return-void

    .line 146
    :cond_2
    :goto_0
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 147
    .line 148
    const-string p2, "===onFrameDelay====resolution level===>mCurResolution == null"

    .line 149
    .line 150
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method protected onPlayerRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

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

.method public onSwitchResolution(ILcom/haima/hmcp/beans/ResolutionInfo;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "===pause===="

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method protected rePlay()V
    .locals 0

    return-void
.end method

.method public release(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->doRelease(ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public releaseWithoutStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, v1}, Ltv/haima/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public reportFrameDelayInfo(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "--------reportFrameDelayInfo = "

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
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->faultTolerant(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "\\|"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    array-length v2, v1

    .line 34
    const/4 v3, 0x2

    .line 35
    if-ne v2, v3, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    aget-object p1, v1, p1

    .line 39
    .line 40
    const-string v0, "12037"

    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    aget-object p1, v1, p1

    .line 47
    .line 48
    const-string v0, "12042"

    .line 49
    .line 50
    invoke-static {v0, p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v3, "reportFrameDelayInfo error len = "

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    array-length v1, v1

    .line 65
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v1, "reportFrameDelayInfo::"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->isInPlaybackState()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSeekStartTime:J

    .line 12
    .line 13
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 14
    .line 15
    int-to-long v1, p1

    .line 16
    invoke-interface {v0, v1, v2}, Ltv/haima/ijk/media/player/IMediaPlayer;->seekTo(J)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSeekWhenPrepared:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mSeekWhenPrepared:I

    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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

.method public setHmcpVideoPlayerListener(Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->hmcpVideoPlayerListener:Lcom/haima/hmcp/listeners/HmcpVideoPlayerListener;

    .line 2
    .line 3
    return-void
.end method

.method public setImageSize()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getScreenWidth()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setScreenHeight(I)V

    .line 102
    .line 103
    .line 104
    :cond_4
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

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
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

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

.method public setOnCompletionListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mOnCompletionListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnCompletionListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnInfoListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mOnInfoListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnInfoListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnPreparedListener(Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mOnPreparedListener:Ltv/haima/ijk/media/player/IMediaPlayer$OnPreparedListener;

    .line 2
    .line 3
    return-void
.end method

.method public setRender(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v1, :cond_3

    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq p1, v2, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 18
    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    aput-object p1, v1, v3

    .line 27
    .line 28
    const-string p1, "invalid render %d\n"

    .line 29
    .line 30
    invoke-static {v2, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "getModel RENDER_TEXTURE_VIEW"

    .line 41
    .line 42
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 50
    .line 51
    invoke-direct {p1, v1, v2}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;-><init>(Landroid/content/Context;Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;->getSurfaceHolder()Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 63
    .line 64
    invoke-interface {v1, v2, v0}, Lcom/haima/hmcp/rtmp/widgets/IRenderView$ISurfaceHolder;->bindToMediaPlayer(Ltv/haima/ijk/media/player/IMediaPlayer;Landroid/graphics/SurfaceTexture;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 68
    .line 69
    invoke-interface {v0}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 74
    .line 75
    invoke-interface {v1}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;->setVideoSize(II)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 83
    .line 84
    invoke-interface {v0}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoSarNum()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 89
    .line 90
    invoke-interface {v1}, Ltv/haima/ijk/media/player/IMediaPlayer;->getVideoSarDen()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p1, v0, v1}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;->setVideoSampleAspectRatio(II)V

    .line 95
    .line 96
    .line 97
    iget v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentAspectRatio:I

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/rtmp/widgets/TextureRenderView;->setAspectRatio(I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->setRenderView(Lcom/haima/hmcp/rtmp/widgets/IRenderView;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 107
    .line 108
    const-string v0, "getModel RENDER_SURFACE_VIEW"

    .line 109
    .line 110
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance p1, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;

    .line 114
    .line 115
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-direct {p1, v0}, Lcom/haima/hmcp/rtmp/widgets/SurfaceRenderView;-><init>(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->setRenderView(Lcom/haima/hmcp/rtmp/widgets/IRenderView;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_4
    invoke-direct {p0, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->setRenderView(Lcom/haima/hmcp/rtmp/widgets/IRenderView;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    return-void
.end method

.method public setmRenderView(Lcom/haima/hmcp/rtmp/widgets/IRenderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_5

    .line 16
    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "===start===="

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->isInPlaybackState()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, " mCurrentStat: "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCurrentState()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->isInPlaybackState()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v2, 0x3

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmCurrentState()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eq v1, v2, :cond_4

    .line 77
    .line 78
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurrentApkType()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const-string v3, ""

    .line 85
    .line 86
    const/4 v4, 0x1

    .line 87
    if-eq v1, v4, :cond_1

    .line 88
    .line 89
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 90
    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    const/4 v5, 0x2

    .line 94
    invoke-virtual {v1, v5, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->UiMessageSend(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    const-string v1, "==mMediaPlayer===start===="

    .line 102
    .line 103
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMediaPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 107
    .line 108
    invoke-interface {v1}, Ltv/haima/ijk/media/player/IMediaPlayer;->start()V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iget-object v1, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 134
    .line 135
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    iget-object v5, v5, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_2

    .line 148
    .line 149
    const-string v1, "===isNeedShowSwitchSuccess===="

    .line 150
    .line 151
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 155
    .line 156
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 157
    .line 158
    .line 159
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_result:I

    .line 160
    .line 161
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cur_id:I

    .line 173
    .line 174
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 179
    .line 180
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    iget-object v3, v3, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cur_rate:I

    .line 190
    .line 191
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 196
    .line 197
    invoke-virtual {v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    iget-object v3, v3, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cred:I

    .line 207
    .line 208
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    .line 221
    .line 222
    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 226
    .line 227
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    if-eqz v1, :cond_3

    .line 232
    .line 233
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    iget-object v3, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    .line 240
    .line 241
    :cond_3
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_cur_rate:I

    .line 242
    .line 243
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v0, v1, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_play:I

    .line 251
    .line 252
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    invoke-virtual {v0}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 264
    .line 265
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurrentState(I)V

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 269
    .line 270
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getSetResolution()Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmCurResolution(Lcom/haima/hmcp/beans/ResolutionInfo;)V

    .line 275
    .line 276
    .line 277
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 278
    .line 279
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 280
    .line 281
    .line 282
    :cond_5
    :goto_1
    return-void
.end method

.method protected start2Play()V
    .locals 0

    return-void
.end method

.method protected startPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "startPlay===>"

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
    const-string v2, "===audioPath==>"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_a

    .line 36
    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_a

    .line 42
    .line 43
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_0
    const/4 p1, 0x0

    .line 50
    invoke-static {p1}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->loadLibrariesOnce(Ltv/haima/ijk/media/player/IjkLibLoader;)V

    .line 51
    .line 52
    .line 53
    const-string p1, "player/libijkplayer_haima.so"

    .line 54
    .line 55
    invoke-static {p1}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->native_profileBegin(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    .line 59
    .line 60
    if-eqz p1, :cond_8

    .line 61
    .line 62
    const-string p2, "switchBR_duration"

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Ljava/lang/String;

    .line 69
    .line 70
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 71
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const-string v2, "0"

    .line 77
    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    move-object p1, v2

    .line 81
    :cond_1
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmAutoSwitchDuration(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    .line 85
    .line 86
    const-string p2, "detect_interval"

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Ljava/lang/String;

    .line 93
    .line 94
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 95
    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    .line 102
    const-string p1, "500"

    .line 103
    .line 104
    :cond_2
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmAutoSwitchDetectInterval(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    .line 108
    .line 109
    const-string p2, "frameDelayInfo_triggerDelayTimeSinceLastCheck"

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Ljava/lang/String;

    .line 116
    .line 117
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 118
    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_3

    .line 124
    .line 125
    const-string p1, "150"

    .line 126
    .line 127
    :cond_3
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmAutoSwitchPlayTimeDelay(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    .line 131
    .line 132
    const-string p2, "switchBR_frozentime"

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Ljava/lang/String;

    .line 139
    .line 140
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 141
    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    move-object p1, v2

    .line 149
    :cond_4
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmAutoSwitchFrozentime(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    .line 153
    .line 154
    const-string p2, "frameDelayInfo_interval"

    .line 155
    .line 156
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Ljava/lang/String;

    .line 161
    .line 162
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 163
    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_5

    .line 169
    .line 170
    move-object p1, v2

    .line 171
    :cond_5
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmDelayCalculateInterval(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    .line 175
    .line 176
    const-string p2, "frameDelayInfo_isReportDetailInfo"

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Ljava/lang/String;

    .line 183
    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 185
    .line 186
    .line 187
    move-result p2

    .line 188
    if-eqz p2, :cond_6

    .line 189
    .line 190
    move-object p1, v2

    .line 191
    :cond_6
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mMetaInfos:Ljava/util/HashMap;

    .line 192
    .line 193
    const-string v1, "frameDelayStartDelayTime"

    .line 194
    .line 195
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    check-cast p2, Ljava/lang/String;

    .line 200
    .line 201
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    if-eqz v1, :cond_7

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :cond_7
    move-object v2, p2

    .line 209
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v1, "mAutoSwitchDuration = "

    .line 215
    .line 216
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 220
    .line 221
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmAutoSwitchDuration()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const-string v1, ";mAutoSwitchDetectInterval = "

    .line 229
    .line 230
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmAutoSwitchDetectInterval()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v1, ";mAutoSwitchPlayTimeDelay = "

    .line 243
    .line 244
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmAutoSwitchPlayTimeDelay()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v1, ";mAutoSwitchFrozentime = "

    .line 257
    .line 258
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 262
    .line 263
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmAutoSwitchFrozentime()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v1, ";mDelayCalculateInterval = "

    .line 271
    .line 272
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 276
    .line 277
    invoke-virtual {v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getmDelayCalculateInterval()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v1, ";mFrameDelayInfo_isReportDetailInfo = "

    .line 285
    .line 286
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string p1, ";mFrameDelayStartDelayTime = "

    .line 293
    .line 294
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string p1, ";"

    .line 301
    .line 302
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    :cond_8
    invoke-static {p0}, Lcom/haima/hmcp/utils/CcallJava;->setOnFrameDelayListener(Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;)V

    .line 313
    .line 314
    .line 315
    const-string p1, "delay_time"

    .line 316
    .line 317
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->getMetaInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 322
    .line 323
    .line 324
    move-result p2

    .line 325
    if-nez p2, :cond_9

    .line 326
    .line 327
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    if-lez p1, :cond_9

    .line 332
    .line 333
    invoke-static {p1}, Lcom/haima/hmcp/utils/CcallJava;->setFrameDelayMillis(I)Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p2

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    const-string v2, "setFrameDelayMillis===>"

    .line 343
    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    const-string p1, "return==>:"

    .line 351
    .line 352
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .line 364
    .line 365
    goto :goto_1

    .line 366
    :catch_0
    move-exception p1

    .line 367
    sget-object p2, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    new-instance p2, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .line 380
    .line 381
    const-string v0, "delayTimeMillis::NumberFormatException=>"

    .line 382
    .line 383
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->setVideoURI()V

    .line 401
    .line 402
    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 404
    .line 405
    .line 406
    move-result-wide p1

    .line 407
    sput-wide p1, Lcom/haima/hmcp/utils/TimeUtil;->MediaCodecCreate:J

    .line 408
    .line 409
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->start()V

    .line 410
    .line 411
    .line 412
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 413
    .line 414
    const/4 p2, 0x3

    .line 415
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setmTargetState(I)V

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    .line 423
    .line 424
    const-string v1, "startPlay got bad videoPath: "

    .line 425
    .line 426
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string p1, " OR bad audioPath: "

    .line 433
    .line 434
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    return-void
.end method

.method protected stopPlay()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->stopPlay(ZZ)V

    return-void
.end method

.method public stopPlay(ZZ)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/haima/hmcp/utils/HmIMEManager;->getInstance()Lcom/haima/hmcp/utils/HmIMEManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haima/hmcp/utils/HmIMEManager;->hideInput()Z

    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setStartIM(Z)V

    .line 5
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==stopPlay==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "===audioPath==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCloudPlayInfo()Lcom/haima/hmcp/beans/CloudPlayInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->reset()V

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->onPlayerStop()V

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 10
    invoke-direct {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->initRenders()V

    .line 11
    :cond_4
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->stopPlayback()V

    const/4 p1, 0x0

    .line 12
    invoke-static {p1}, Lcom/haima/hmcp/utils/CcallJava;->setOnFrameDelayListener(Lcom/haima/hmcp/utils/CcallJava$OnFrameDelayListener;)V

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->release(Z)V

    .line 14
    invoke-static {}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->native_profileEnd()V

    .line 15
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mVideoPath:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPath:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, v0}, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->doRelease(ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public toggleAspectRatio()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentAspectRatioIndex:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentAspectRatioIndex:I

    .line 6
    .line 7
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->s_allAspectRatio:[I

    .line 8
    .line 9
    array-length v2, v1

    .line 10
    rem-int/2addr v0, v2

    .line 11
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentAspectRatioIndex:I

    .line 12
    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentAspectRatio:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v1, v0}, Lcom/haima/hmcp/rtmp/widgets/IRenderView;->setAspectRatio(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mCurrentAspectRatio:I

    .line 25
    .line 26
    return v0
.end method

.method public turnDownSound()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "===turnDownSound===="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "turnDownSound:"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/haima/hmcp/utils/VolumeUtils;->getCurrentMediaVolume(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "13425"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 41
    .line 42
    const v1, 0x3e4ccccd    # 0.2f

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v1, v1}, Ltv/haima/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setCurrentSound(F)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public turnOffSound()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "turnOffSound:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/haima/hmcp/utils/VolumeUtils;->getCurrentMediaVolume(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "13425"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-interface {v0, v1, v1}, Ltv/haima/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setCurrentSound(F)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public turnOnSound()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "turnOnSound:"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAppContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/haima/hmcp/utils/VolumeUtils;->getCurrentMediaVolume(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "13425"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->mAudioPlayer:Ltv/haima/ijk/media/player/IMediaPlayer;

    .line 34
    .line 35
    const/high16 v1, 0x3f800000    # 1.0f

    .line 36
    .line 37
    invoke-interface {v0, v1, v1}, Ltv/haima/ijk/media/player/IMediaPlayer;->setVolume(FF)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/RtmpPlayer;->ijkVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setCurrentSound(F)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
