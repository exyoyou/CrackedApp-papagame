.class public Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;
.super Lcom/haima/hmcp/rtmp/widgets/RtmpCustomVideoViewPlatform;
.source "SourceFile"


# static fields
.field public static final STATE_CLOUD_SERVICE_PREPARED:I = 0x2

.field public static final STATE_CONNECT_PREPARED:I = 0x1

.field public static final STATE_GAME_OVER:I = 0x5

.field public static final STATE_SHOW_PROMPT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BaseRtmpCustomVideoView"


# instance fields
.field protected SHOW_MOUSE_TIME:I

.field private customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

.field private dpadKeyDown:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAudioUrl:Ljava/lang/String;

.field private mClockDiffTime:J

.field private mClockDiffUse:I

.field protected mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

.field protected mVideoUrl:Ljava/lang/String;

.field protected nativeDpadGame:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/RtmpCustomVideoViewPlatform;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1f4

    .line 2
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->SHOW_MOUSE_TIME:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mClockDiffTime:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mClockDiffUse:I

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->dpadKeyDown:Ljava/util/HashSet;

    .line 6
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    const-string v1, "BaseRtmpARVideoView"

    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/rtmp/widgets/RtmpCustomVideoViewPlatform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x1f4

    .line 9
    iput p2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->SHOW_MOUSE_TIME:I

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mClockDiffTime:J

    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mClockDiffUse:I

    .line 12
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->dpadKeyDown:Ljava/util/HashSet;

    .line 13
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/haima/hmcp/rtmp/widgets/RtmpCustomVideoViewPlatform;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x1f4

    .line 15
    iput p2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->SHOW_MOUSE_TIME:I

    const-wide/16 p2, 0x0

    .line 16
    iput-wide p2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mClockDiffTime:J

    const/4 p2, 0x0

    .line 17
    iput p2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mClockDiffUse:I

    .line 18
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->dpadKeyDown:Ljava/util/HashSet;

    .line 19
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$102(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mResfreshStokenReasons:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$200(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendScreenBrightness()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$600(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$700(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->refreshStoken(ILjava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$902(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method private cleanListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOnLivingListener:Lcom/haima/hmcp/listeners/OnLivingListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOnLivingListener:Lcom/haima/hmcp/listeners/OnLivingListener;

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOnContronListener:Lcom/haima/hmcp/listeners/OnContronListener;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iput-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOnContronListener:Lcom/haima/hmcp/listeners/OnContronListener;

    .line 13
    .line 14
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCloudOperationListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iput-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCloudOperationListener:Lcom/haima/hmcp/listeners/CloudOperationListener;

    .line 19
    .line 20
    :cond_2
    return-void
.end method

.method private formatValue(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const p1, 0x3f7ff972    # 0.9999f

    :cond_1
    :goto_0
    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "HmcpUIManager"

    .line 2
    .line 3
    const-string v1, "HmcpVideoView.init"

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
    new-instance v0, Landroid/os/Handler;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initView(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initIME(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 28
    .line 29
    invoke-direct {p1}, Lcom/haima/hmcp/beans/CloudPlayInfo;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initHandler()V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/haima/hmcp/widgets/EmptyImpStreamMode;

    .line 38
    .line 39
    invoke-direct {p1}, Lcom/haima/hmcp/widgets/EmptyImpStreamMode;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamModel:Lcom/haima/hmcp/listeners/IStreamModel;

    .line 43
    .line 44
    return-void
.end method

.method private isRtmpValidate(Lcom/haima/hmcp/beans/PlayStreamPayload;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 6
    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    iget-object v1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->videoUrl:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->audioUrl:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->inputUrl:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    :cond_2
    return v0
.end method


# virtual methods
.method protected calculatePoint(Landroid/view/MotionEvent;I)Lcom/haima/hmcp/beans/FPoint;
    .locals 9

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/FPoint;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {p1, p2}, Landroidx/core/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    new-instance p2, Landroid/graphics/Point;

    .line 20
    .line 21
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 25
    .line 26
    invoke-interface {v2}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iput v2, p2, Landroid/graphics/Point;->x:I

    .line 35
    .line 36
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 37
    .line 38
    invoke-interface {v2}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    iput v2, p2, Landroid/graphics/Point;->y:I

    .line 47
    .line 48
    iget-object v2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget-object v3, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 59
    .line 60
    invoke-interface {v3}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    sget-object v4, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v6, ", "

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v7, p2, Landroid/graphics/Point;->x:I

    .line 102
    .line 103
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v6, p2, Landroid/graphics/Point;->y:I

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v4, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 122
    .line 123
    invoke-interface {v4}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    int-to-float v4, v4

    .line 132
    iget-object v5, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mRenderView:Lcom/haima/hmcp/rtmp/widgets/IRenderView;

    .line 133
    .line 134
    invoke-interface {v5}, Lcom/haima/hmcp/listeners/IRenderViewBase;->getView()Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    .line 139
    .line 140
    .line 141
    move-result v5

    .line 142
    int-to-float v5, v5

    .line 143
    iget-object v6, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOrientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 144
    .line 145
    sget-object v7, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 146
    .line 147
    const/high16 v8, 0x42c80000    # 100.0f

    .line 148
    .line 149
    if-ne v6, v7, :cond_1

    .line 150
    .line 151
    add-float/2addr v3, v4

    .line 152
    iget v4, p2, Landroid/graphics/Point;->x:I

    .line 153
    .line 154
    int-to-float v6, v4

    .line 155
    sub-float/2addr v3, v6

    .line 156
    const/high16 v6, 0x40000000    # 2.0f

    .line 157
    .line 158
    div-float/2addr v3, v6

    .line 159
    sub-float/2addr p1, v3

    .line 160
    int-to-float v3, v4

    .line 161
    div-float/2addr p1, v3

    .line 162
    mul-float p1, p1, v8

    .line 163
    .line 164
    div-float/2addr p1, v8

    .line 165
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 166
    .line 167
    int-to-float v3, p2

    .line 168
    add-float/2addr v2, v5

    .line 169
    int-to-float v4, p2

    .line 170
    sub-float/2addr v2, v4

    .line 171
    div-float/2addr v2, v6

    .line 172
    sub-float/2addr v1, v2

    .line 173
    sub-float/2addr v3, v1

    .line 174
    int-to-float p2, p2

    .line 175
    div-float/2addr v3, p2

    .line 176
    mul-float v3, v3, v8

    .line 177
    .line 178
    div-float/2addr v3, v8

    .line 179
    goto :goto_0

    .line 180
    :cond_1
    sub-float/2addr v1, v2

    .line 181
    iget v2, p2, Landroid/graphics/Point;->x:I

    .line 182
    .line 183
    int-to-float v2, v2

    .line 184
    div-float/2addr v1, v2

    .line 185
    mul-float v1, v1, v8

    .line 186
    .line 187
    div-float/2addr v1, v8

    .line 188
    sub-float/2addr p1, v3

    .line 189
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 190
    .line 191
    int-to-float p2, p2

    .line 192
    div-float/2addr p1, p2

    .line 193
    mul-float p1, p1, v8

    .line 194
    .line 195
    div-float v3, p1, v8

    .line 196
    .line 197
    move p1, v1

    .line 198
    :goto_0
    invoke-direct {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->formatValue(F)F

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iput p1, v0, Lcom/haima/hmcp/beans/FPoint;->x:F

    .line 203
    .line 204
    invoke-direct {p0, v3}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->formatValue(F)F

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    iput p1, v0, Lcom/haima/hmcp/beans/FPoint;->y:F

    .line 209
    .line 210
    return-object v0
.end method

.method protected calculateUpPointer(Landroid/view/MotionEvent;)Lcom/haima/hmcp/beans/FPoint;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->calculatePoint(Landroid/view/MotionEvent;)Lcom/haima/hmcp/beans/FPoint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "send movePoint : "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHistoryPoints:Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method protected controlLost(Lcom/haima/hmcp/beans/PlayStreamPayload;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOnContronListener:Lcom/haima/hmcp/listeners/OnContronListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/OnContronListener;->contronLost()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const-string p1, "139102"

    .line 9
    .line 10
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->stopPlay()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x5

    .line 19
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setPlayerState(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->onStopInternal()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public contronPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/haima/hmcp/listeners/OnContronListener;)V
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p8

    .line 3
    .line 4
    iget-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBackground:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 10
    .line 11
    .line 12
    sget-boolean v1, Lcom/haima/hmcp/HmcpManager;->INIT_SUCCESS:Z

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    if-eqz v7, :cond_1

    .line 18
    .line 19
    sget v1, Lcom/haima/hmcp/R$string;->Error_000003:I

    .line 20
    .line 21
    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v7, v2, v1}, Lcom/haima/hmcp/listeners/OnContronListener;->contronResult(ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void

    .line 29
    :cond_2
    const/4 v1, 0x1

    .line 30
    iput-boolean v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGetControl:Z

    .line 31
    .line 32
    iput-object v7, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mOnContronListener:Lcom/haima/hmcp/listeners/OnContronListener;

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initManager()V

    .line 35
    .line 36
    .line 37
    iget-object v3, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 38
    .line 39
    iget-object v4, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mUserInfo:Lcom/haima/hmcp/beans/UserInfo;

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Lcom/haima/hmcp/business/HmcpRequestManager;->setUserInfo(Lcom/haima/hmcp/beans/UserInfo;)V

    .line 42
    .line 43
    .line 44
    sput-object p5, Lcom/haima/hmcp/business/HmcpRequestManager;->clientISP:Ljava/lang/String;

    .line 45
    .line 46
    sput-object p6, Lcom/haima/hmcp/business/HmcpRequestManager;->clientProvince:Ljava/lang/String;

    .line 47
    .line 48
    sput-object p7, Lcom/haima/hmcp/business/HmcpRequestManager;->clientCity:Ljava/lang/String;

    .line 49
    .line 50
    const-string v3, ""

    .line 51
    .line 52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_3

    .line 57
    .line 58
    if-eqz p4, :cond_3

    .line 59
    .line 60
    const/4 v5, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 v5, 0x0

    .line 63
    :goto_0
    iget-object v1, v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 64
    .line 65
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    .line 67
    new-instance v8, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$2;

    .line 68
    .line 69
    invoke-direct {v8, p0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$2;-><init>(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)V

    .line 70
    .line 71
    .line 72
    const/4 v9, 0x0

    .line 73
    move-object v2, p1

    .line 74
    move-object v3, p2

    .line 75
    move-object v4, p3

    .line 76
    move-object/from16 v7, p8

    .line 77
    .line 78
    invoke-virtual/range {v1 .. v9}, Lcom/haima/hmcp/business/HmcpRequestManager;->requestControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Lcom/haima/hmcp/listeners/OnContronListener;Lcom/haima/hmcp/listeners/OnGetControlResultListener;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method protected doOperationPausedSaasServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->SASS_SERVER_MAINTENANCE:Z

    .line 3
    .line 4
    const-class v0, Lcom/haima/hmcp/beans/StopServicePayload;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/haima/hmcp/beans/StopServicePayload;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, p1, Lcom/haima/hmcp/beans/StopServicePayload;->data:Lcom/haima/hmcp/beans/StopServicePayloadData;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v0, "tips_saas_already_stopped"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMetaInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p1, p1, Lcom/haima/hmcp/beans/StopServicePayload;->data:Lcom/haima/hmcp/beans/StopServicePayloadData;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/haima/hmcp/beans/StopServicePayloadData;->endTimeText:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/StringUtils;->replaceString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->chooseMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->promptMsg:Ljava/lang/String;

    .line 37
    .line 38
    const/4 p2, 0x4

    .line 39
    iput p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 40
    .line 41
    const/16 p2, 0x13

    .line 42
    .line 43
    invoke-virtual {p0, p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string p1, "139102"

    .line 51
    .line 52
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 56
    .line 57
    invoke-interface {p1}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->stopPlay()V

    .line 58
    .line 59
    .line 60
    :cond_0
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_start:I

    .line 61
    .line 62
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneMaitMessage(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method protected doPlayerRelease()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getClockDiffVideoLatencyInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getInstance()Lcom/haima/hmcp/utils/FrameNetDelayInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/FrameNetDelayInfo;->getClockDiffTime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    new-instance v0, Lcom/haima/hmcp/beans/FrameDelayInfo;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/haima/hmcp/beans/FrameDelayInfo;-><init>()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "frameDelayInfo :"

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v1, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;

    .line 47
    .line 48
    invoke-direct {v1, v0}, Lcom/haima/hmcp/rtmp/widgets/beans/RtmpVideoDelayInfo;-><init>(Lcom/haima/hmcp/beans/FrameDelayInfo;)V

    .line 49
    .line 50
    .line 51
    iget v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mFPSPeriod:I

    .line 52
    .line 53
    if-lez v0, :cond_0

    .line 54
    .line 55
    iget-wide v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerFPS:J

    .line 56
    .line 57
    int-to-long v4, v0

    .line 58
    div-long/2addr v2, v4

    .line 59
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setVideoFps(J)V

    .line 60
    .line 61
    .line 62
    :cond_0
    iget v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mBandWidthPeriod:I

    .line 63
    .line 64
    if-lez v0, :cond_1

    .line 65
    .line 66
    iget-wide v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerBitRate:J

    .line 67
    .line 68
    int-to-long v4, v0

    .line 69
    div-long/2addr v2, v4

    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/haima/hmcp/beans/VideoDelayInfo;->setBitRate(J)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-object v1

    .line 74
    :cond_2
    const/4 v0, 0x0

    .line 75
    return-object v0
.end method

.method public getCloudPlayStatusCode()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->toStatusCode()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "cloudPlayInfo == null,can\'t get cloudPlayInfo.toStatusCode()"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    return-object v0
.end method

.method public getLivingCapabilityStatus()Lcom/haima/hmcp/enums/ELivingCapabilityStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mLivingCapabilityStatus:Lcom/haima/hmcp/enums/ELivingCapabilityStatus;

    .line 2
    .line 3
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

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mVideoUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mVideoUrl:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return-object v0
.end method

.method public getVideoLatency()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->isPlaying()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mClockDiffTime:J

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v0, v2, v4

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->videoViewDelayReportManager:Lcom/haima/hmcp/business/VideoViewDelayReportManager;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->videoViewDelayReportManager:Lcom/haima/hmcp/business/VideoViewDelayReportManager;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->getReportDelayInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->videoViewDelayReportManager:Lcom/haima/hmcp/business/VideoViewDelayReportManager;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/haima/hmcp/business/VideoViewDelayReportManager;->getReportDelayInfo()Lcom/haima/hmcp/beans/VideoDelayInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/VideoDelayInfo;->getNetDelay()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    return v0

    .line 46
    :cond_2
    :goto_1
    return v1
.end method

.method public handleMessage(Ljava/lang/String;)V
    .locals 24

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v1, "operation"

    .line 6
    .line 7
    const-string v2, "data"

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-string v9, "12230"

    .line 14
    .line 15
    const-string v10, "-1000"

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    new-instance v0, Lcom/haima/hmcp/beans/ReportBaseError;

    .line 20
    .line 21
    const-string v1, "empty"

    .line 22
    .line 23
    invoke-direct {v0, v10, v1}, Lcom/haima/hmcp/beans/ReportBaseError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v9, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    :try_start_0
    const-class v3, Lcom/haima/hmcp/beans/Message;

    .line 35
    .line 36
    invoke-static {v0, v3}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/haima/hmcp/beans/Message;

    .line 41
    .line 42
    sget-object v4, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v6, "handleMessage: "

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v0, v3, Lcom/haima/hmcp/beans/Message;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 65
    .line 66
    const-string v5, "12054"

    .line 67
    .line 68
    const-string v6, ""

    .line 69
    .line 70
    const/4 v7, 0x2

    .line 71
    if-ne v0, v7, :cond_26

    .line 72
    .line 73
    :try_start_1
    iget-object v0, v3, Lcom/haima/hmcp/beans/Message;->payload:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    if-eqz v12, :cond_27

    .line 84
    .line 85
    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v12, "errorCode"

    .line 90
    .line 91
    invoke-virtual {v11, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    const-string v13, "msg"

    .line 96
    .line 97
    invoke-virtual {v11, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    const-string v14, "errorMsg"

    .line 102
    .line 103
    invoke-virtual {v11, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v15

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 114
    .line 115
    .line 116
    move-object/from16 v16, v9

    .line 117
    .line 118
    :try_start_2
    const-string v9, "error code: "

    .line 119
    .line 120
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v9, "  msg: "

    .line 127
    .line 128
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    invoke-static {v4, v7}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    new-instance v7, Lcom/haima/hmcp/beans/ReportSaasWSMessage;

    .line 142
    .line 143
    new-instance v9, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .line 150
    .line 151
    move-object/from16 v17, v10

    .line 152
    .line 153
    :try_start_3
    iget v10, v3, Lcom/haima/hmcp/beans/Message;->type:I

    .line 154
    .line 155
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    new-instance v10, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    move-object/from16 v18, v15

    .line 178
    .line 179
    iget-object v15, v3, Lcom/haima/hmcp/beans/Message;->payload:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v15}, Lcom/haima/hmcp/utils/StringUtils;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v15

    .line 185
    invoke-direct {v7, v9, v10, v15}, Lcom/haima/hmcp/beans/ReportSaasWSMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-static {v7}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-static {v5, v7}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 199
    const/16 v9, 0x12

    .line 200
    .line 201
    if-eq v7, v9, :cond_25

    .line 202
    .line 203
    const/16 v10, 0x13

    .line 204
    .line 205
    if-eq v7, v10, :cond_24

    .line 206
    .line 207
    const/16 v10, 0x15

    .line 208
    .line 209
    if-eq v7, v10, :cond_23

    .line 210
    .line 211
    const/16 v10, 0x16

    .line 212
    .line 213
    if-eq v7, v10, :cond_22

    .line 214
    .line 215
    const/16 v10, 0x20

    .line 216
    .line 217
    const-wide/16 v19, 0x3e8

    .line 218
    .line 219
    const-string v15, "prompt_hmcp_error"

    .line 220
    .line 221
    if-eq v7, v10, :cond_21

    .line 222
    .line 223
    const/16 v10, 0x2d

    .line 224
    .line 225
    const-class v9, Lcom/haima/hmcp/beans/PlayStreamPayload;

    .line 226
    .line 227
    move-object/from16 v21, v5

    .line 228
    .line 229
    if-eq v7, v10, :cond_1e

    .line 230
    .line 231
    const/16 v10, 0x3e

    .line 232
    .line 233
    if-eq v7, v10, :cond_1b

    .line 234
    .line 235
    const/16 v10, 0x41

    .line 236
    .line 237
    if-eq v7, v10, :cond_1a

    .line 238
    .line 239
    const/16 v10, 0x64

    .line 240
    .line 241
    if-eq v7, v10, :cond_19

    .line 242
    .line 243
    const/16 v10, 0x39

    .line 244
    .line 245
    const-string v5, "currentNetType"

    .line 246
    .line 247
    move-object/from16 v22, v15

    .line 248
    .line 249
    const/4 v15, 0x3

    .line 250
    if-eq v7, v10, :cond_12

    .line 251
    .line 252
    const/16 v10, 0x3a

    .line 253
    .line 254
    if-eq v7, v10, :cond_11

    .line 255
    .line 256
    const/4 v10, 0x4

    .line 257
    packed-switch v7, :pswitch_data_0

    .line 258
    .line 259
    .line 260
    packed-switch v7, :pswitch_data_1

    .line 261
    .line 262
    .line 263
    const-string v10, "saas msg must be wrong"

    .line 264
    .line 265
    const-string v15, "mRequestKeepAliveListener = null"

    .line 266
    .line 267
    move-object/from16 v23, v13

    .line 268
    .line 269
    const-class v13, Lcom/haima/hmcp/beans/KeepAlivePayload;

    .line 270
    .line 271
    packed-switch v7, :pswitch_data_2

    .line 272
    .line 273
    .line 274
    packed-switch v7, :pswitch_data_3

    .line 275
    .line 276
    .line 277
    goto/16 :goto_d

    .line 278
    .line 279
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    .line 280
    goto/16 :goto_3

    .line 281
    .line 282
    :pswitch_1
    :try_start_4
    const-string v1, "13315"

    .line 283
    .line 284
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-static {v0, v9}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Lcom/haima/hmcp/beans/PlayStreamPayload;

    .line 292
    .line 293
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->controlLost(Lcom/haima/hmcp/beans/PlayStreamPayload;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_d

    .line 297
    .line 298
    :pswitch_2
    invoke-virtual {v8, v11, v12, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationStopLiving(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_d

    .line 302
    .line 303
    :pswitch_3
    invoke-virtual {v8, v0, v11, v12, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationPinCode(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_d

    .line 307
    .line 308
    :pswitch_4
    invoke-virtual {v8, v11, v12, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationStartLiving(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_d

    .line 312
    .line 313
    :pswitch_5
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    invoke-virtual {v0, v2, v13}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    check-cast v0, Lcom/haima/hmcp/beans/KeepAlivePayload;

    .line 322
    .line 323
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestKeepAliveListener:Lcom/haima/hmcp/listeners/OnRequestAliveListener;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 324
    .line 325
    const-string v2, "13326"

    .line 326
    .line 327
    if-nez v1, :cond_1

    .line 328
    .line 329
    :try_start_5
    invoke-static {v2, v15}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    return-void

    .line 333
    :cond_1
    if-nez v0, :cond_2

    .line 334
    .line 335
    const/4 v0, 0x0

    .line 336
    invoke-interface {v1, v0, v10}, Lcom/haima/hmcp/listeners/OnRequestAliveListener;->onStopAliveResult(ZLjava/lang/String;)V

    .line 337
    .line 338
    .line 339
    goto/16 :goto_d

    .line 340
    .line 341
    :cond_2
    iget-boolean v3, v0, Lcom/haima/hmcp/beans/KeepAlivePayload;->flag:Z

    .line 342
    .line 343
    if-eqz v3, :cond_3

    .line 344
    .line 345
    goto :goto_1

    .line 346
    :cond_3
    const-string v6, "stop keepAlive failed"

    .line 347
    .line 348
    :goto_1
    invoke-interface {v1, v3, v6}, Lcom/haima/hmcp/listeners/OnRequestAliveListener;->onStopAliveResult(ZLjava/lang/String;)V

    .line 349
    .line 350
    .line 351
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mStopAliveTimer:Ljava/lang/Runnable;

    .line 352
    .line 353
    if-eqz v1, :cond_4

    .line 354
    .line 355
    invoke-virtual {v8, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 356
    .line 357
    .line 358
    :cond_4
    iget-boolean v0, v0, Lcom/haima/hmcp/beans/KeepAlivePayload;->flag:Z

    .line 359
    .line 360
    if-nez v0, :cond_27

    .line 361
    .line 362
    const-string v0, "stop-alive flag is false"

    .line 363
    .line 364
    invoke-static {v2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    goto/16 :goto_d

    .line 368
    .line 369
    :pswitch_6
    invoke-virtual {v8, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->keepAliveTimeUp(Lcom/haima/hmcp/beans/Message;)V

    .line 370
    .line 371
    .line 372
    iget-object v0, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestKeepAliveListener:Lcom/haima/hmcp/listeners/OnRequestAliveListener;

    .line 373
    .line 374
    if-eqz v0, :cond_27

    .line 375
    .line 376
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/OnRequestAliveListener;->onKeepAliveTimeUp()V

    .line 377
    .line 378
    .line 379
    goto/16 :goto_d

    .line 380
    .line 381
    :pswitch_7
    invoke-static {v0}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0, v2, v13}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    check-cast v0, Lcom/haima/hmcp/beans/KeepAlivePayload;

    .line 390
    .line 391
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestKeepAliveListener:Lcom/haima/hmcp/listeners/OnRequestAliveListener;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 392
    .line 393
    const-string v2, "13319"

    .line 394
    .line 395
    if-nez v1, :cond_5

    .line 396
    .line 397
    :try_start_6
    invoke-static {v2, v15}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :cond_5
    if-nez v0, :cond_6

    .line 402
    .line 403
    const/4 v0, 0x0

    .line 404
    invoke-interface {v1, v0, v10}, Lcom/haima/hmcp/listeners/OnRequestAliveListener;->onRequestAliveResult(ZLjava/lang/String;)V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_d

    .line 408
    .line 409
    :cond_6
    iget-boolean v3, v0, Lcom/haima/hmcp/beans/KeepAlivePayload;->flag:Z

    .line 410
    .line 411
    if-eqz v3, :cond_7

    .line 412
    .line 413
    goto :goto_2

    .line 414
    :cond_7
    const-string v6, "request keepAlive failed"

    .line 415
    .line 416
    :goto_2
    invoke-interface {v1, v3, v6}, Lcom/haima/hmcp/listeners/OnRequestAliveListener;->onRequestAliveResult(ZLjava/lang/String;)V

    .line 417
    .line 418
    .line 419
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestAliveTimer:Ljava/lang/Runnable;

    .line 420
    .line 421
    if-eqz v1, :cond_8

    .line 422
    .line 423
    invoke-virtual {v8, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 424
    .line 425
    .line 426
    :cond_8
    iget-boolean v0, v0, Lcom/haima/hmcp/beans/KeepAlivePayload;->flag:Z

    .line 427
    .line 428
    if-nez v0, :cond_27

    .line 429
    .line 430
    const-string v0, "keep-alive flag is false"

    .line 431
    .line 432
    invoke-static {v2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_d

    .line 436
    .line 437
    :pswitch_8
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationNoInputTimeout(Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    goto/16 :goto_d

    .line 441
    .line 442
    :pswitch_9
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationGameTimeHighlight(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    goto/16 :goto_d

    .line 446
    .line 447
    :pswitch_a
    invoke-static {v0, v9}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    check-cast v0, Lcom/haima/hmcp/beans/PlayStreamPayload;

    .line 452
    .line 453
    iget-object v0, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 454
    .line 455
    if-eqz v0, :cond_27

    .line 456
    .line 457
    iget-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->tip:Ljava/lang/String;

    .line 458
    .line 459
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 460
    .line 461
    .line 462
    move-result v1

    .line 463
    if-nez v1, :cond_27

    .line 464
    .line 465
    new-instance v1, Lorg/json/JSONObject;

    .line 466
    .line 467
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 468
    .line 469
    .line 470
    iput-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 471
    .line 472
    const-string v2, "tip"

    .line 473
    .line 474
    iget-object v0, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->tip:Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    .line 478
    .line 479
    iget-object v0, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 480
    .line 481
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    const/16 v1, 0x1f

    .line 486
    .line 487
    invoke-virtual {v8, v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    goto/16 :goto_d

    .line 495
    .line 496
    :pswitch_b
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationGameTimeCountDown(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    goto/16 :goto_d

    .line 500
    .line 501
    :pswitch_c
    invoke-virtual {v8, v0, v14}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->doOperationPausedSaasServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    goto/16 :goto_d

    .line 505
    .line 506
    :pswitch_d
    const-string v0, "tips_saas_to_stop"

    .line 507
    .line 508
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMetaInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-virtual {v8, v14, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->chooseMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    iput-object v0, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->promptMsg:Ljava/lang/String;

    .line 517
    .line 518
    new-instance v0, Lorg/json/JSONObject;

    .line 519
    .line 520
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 521
    .line 522
    .line 523
    iput-object v0, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 524
    .line 525
    const-string v1, "errorMessage"

    .line 526
    .line 527
    iget-object v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->promptMsg:Ljava/lang/String;

    .line 528
    .line 529
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 530
    .line 531
    .line 532
    iget-object v0, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 533
    .line 534
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    const/16 v1, 0x12

    .line 539
    .line 540
    invoke-virtual {v8, v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    iget v0, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 548
    .line 549
    if-eq v0, v15, :cond_27

    .line 550
    .line 551
    iput v10, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 552
    .line 553
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_soon:I

    .line 554
    .line 555
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneMaitMessage(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    goto/16 :goto_d

    .line 563
    .line 564
    :pswitch_e
    invoke-virtual {v8, v0, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationReadyPauseSaasServer(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    goto/16 :goto_d

    .line 568
    .line 569
    :pswitch_f
    const-string v0, "===================OPERATION_RESUME_SAAS_SERVER==============="

    .line 570
    .line 571
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_d

    .line 575
    .line 576
    :pswitch_10
    const-string v0, "timeframe===================OPERATION_SWITCHING_RESOLUTION==============="

    .line 577
    .line 578
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .line 580
    .line 581
    goto/16 :goto_d

    .line 582
    .line 583
    :pswitch_11
    const/4 v0, 0x0

    .line 584
    iput v0, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 585
    .line 586
    const/16 v0, 0x8

    .line 587
    .line 588
    invoke-virtual {v8, v0, v6}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v0

    .line 592
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_wait:I

    .line 596
    .line 597
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v0

    .line 601
    const/4 v1, 0x0

    .line 602
    invoke-virtual {v8, v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    iput-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCurResolution:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 606
    .line 607
    goto/16 :goto_d

    .line 608
    .line 609
    :pswitch_12
    const-string v0, "timeframe--OPERATION_INSTANCE_INITIATING---10"

    .line 610
    .line 611
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_wait:I

    .line 615
    .line 616
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    const/4 v1, 0x0

    .line 621
    invoke-virtual {v8, v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    iput-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCurResolution:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 625
    .line 626
    goto/16 :goto_d

    .line 627
    .line 628
    :pswitch_13
    iput v10, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 629
    .line 630
    const-string v0, "toast_instance_apply"

    .line 631
    .line 632
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMetaInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {v8, v14, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->chooseMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    iput-object v0, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->promptMsg:Ljava/lang/String;

    .line 641
    .line 642
    const/16 v1, 0x10

    .line 643
    .line 644
    invoke-virtual {v8, v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 649
    .line 650
    .line 651
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_wait:I

    .line 652
    .line 653
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v0

    .line 657
    const/4 v1, 0x0

    .line 658
    invoke-virtual {v8, v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .line 660
    .line 661
    iput-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCurResolution:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 662
    .line 663
    goto/16 :goto_d

    .line 664
    .line 665
    :pswitch_14
    const/4 v0, 0x2

    .line 666
    iput v0, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curCloudServiceState:I

    .line 667
    .line 668
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->CloudStateSend(I)V

    .line 669
    .line 670
    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cancelRefreshStokenTask()V

    .line 672
    .line 673
    .line 674
    const-string v0, "139102"

    .line 675
    .line 676
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    iget-object v0, v8, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 680
    .line 681
    invoke-interface {v0}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->stopPlay()V

    .line 682
    .line 683
    .line 684
    goto/16 :goto_d

    .line 685
    .line 686
    :pswitch_15
    invoke-virtual {v8, v0, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationRefuseQueue(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    goto/16 :goto_d

    .line 690
    .line 691
    :pswitch_16
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationQueue(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    goto/16 :goto_d

    .line 695
    .line 696
    :pswitch_17
    move-object/from16 v23, v13

    .line 697
    .line 698
    const-string v2, "=OperationStream==receive op5"

    .line 699
    .line 700
    invoke-static {v4, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    const/4 v2, 0x1

    .line 704
    iput-boolean v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isOperationStreamUrlReceived:Z

    .line 705
    .line 706
    goto/16 :goto_0

    .line 707
    .line 708
    :goto_3
    iput v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 709
    .line 710
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 711
    .line 712
    .line 713
    move-result-wide v2

    .line 714
    sput-wide v2, Lcom/haima/hmcp/utils/TimeUtil;->StreamUrl:J

    .line 715
    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimer()V

    .line 717
    .line 718
    .line 719
    new-instance v2, Lorg/json/JSONObject;

    .line 720
    .line 721
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 722
    .line 723
    .line 724
    iput-object v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 725
    .line 726
    iget v3, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentNetType:I

    .line 727
    .line 728
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 729
    .line 730
    .line 731
    iget-object v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 732
    .line 733
    const-string v3, "currentApkType"

    .line 734
    .line 735
    iget v5, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentApkType:I

    .line 736
    .line 737
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 738
    .line 739
    .line 740
    invoke-static {v0, v9}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    check-cast v0, Lcom/haima/hmcp/beans/PlayStreamPayload;

    .line 745
    .line 746
    if-eqz v0, :cond_27

    .line 747
    .line 748
    iget-object v2, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 749
    .line 750
    if-nez v2, :cond_9

    .line 751
    .line 752
    goto/16 :goto_d

    .line 753
    .line 754
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 755
    .line 756
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 757
    .line 758
    .line 759
    const-string v3, "receive op5, reconnectStream = "

    .line 760
    .line 761
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    iget-object v3, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 765
    .line 766
    iget-boolean v3, v3, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->reconnectStream:Z

    .line 767
    .line 768
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v2

    .line 775
    const-string v3, "12242"

    .line 776
    .line 777
    invoke-static {v3, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    iget-object v2, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 781
    .line 782
    iget-boolean v2, v2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->reconnectStream:Z

    .line 783
    .line 784
    if-eqz v2, :cond_a

    .line 785
    .line 786
    const-string v2, "reconnectStream call rePreparation() =OperationStream"

    .line 787
    .line 788
    invoke-static {v4, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->rePreparation()V

    .line 792
    .line 793
    .line 794
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 795
    .line 796
    .line 797
    move-result v1

    .line 798
    const/16 v2, 0x37

    .line 799
    .line 800
    if-ne v1, v2, :cond_d

    .line 801
    .line 802
    const-string v1, "code"

    .line 803
    .line 804
    invoke-virtual {v11, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 809
    .line 810
    .line 811
    move-result v1

    .line 812
    if-nez v1, :cond_b

    .line 813
    .line 814
    const/4 v1, 0x1

    .line 815
    goto :goto_4

    .line 816
    :cond_b
    const/4 v1, 0x0

    .line 817
    :goto_4
    if-eqz v1, :cond_c

    .line 818
    .line 819
    const-string v2, "13313"

    .line 820
    .line 821
    invoke-static {v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    move-object/from16 v2, v23

    .line 825
    .line 826
    invoke-virtual {v8, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getContronResult(ZLjava/lang/String;)V

    .line 827
    .line 828
    .line 829
    :goto_5
    const/4 v1, 0x2

    .line 830
    goto :goto_6

    .line 831
    :cond_c
    const-string v2, "13314"

    .line 832
    .line 833
    invoke-static {v2, v12}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_pin_code_error:I

    .line 837
    .line 838
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    invoke-virtual {v8, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getContronResult(ZLjava/lang/String;)V

    .line 843
    .line 844
    .line 845
    goto :goto_5

    .line 846
    :goto_6
    iput v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curCloudServiceState:I

    .line 847
    .line 848
    invoke-virtual {v8, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->CloudStateSend(I)V

    .line 849
    .line 850
    .line 851
    iget-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 852
    .line 853
    if-eqz v1, :cond_d

    .line 854
    .line 855
    iget-object v1, v1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 856
    .line 857
    if-eqz v1, :cond_d

    .line 858
    .line 859
    iget-object v1, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 860
    .line 861
    iput-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currenteResolutionID:Ljava/lang/String;

    .line 862
    .line 863
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpManager:Lcom/haima/hmcp/HmcpManager;

    .line 864
    .line 865
    invoke-virtual {v1}, Lcom/haima/hmcp/HmcpManager;->getResolutionDatas()Ljava/util/List;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    iget-object v2, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 870
    .line 871
    iget-object v2, v2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 872
    .line 873
    iget-object v2, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 874
    .line 875
    const/4 v3, 0x0

    .line 876
    invoke-virtual {v8, v1, v2, v3, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setResolutionList(Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 877
    .line 878
    .line 879
    :cond_d
    iget v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentApkType:I

    .line 880
    .line 881
    const/4 v2, 0x1

    .line 882
    if-ne v1, v2, :cond_f

    .line 883
    .line 884
    iget-boolean v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAudioMute:Z

    .line 885
    .line 886
    if-nez v1, :cond_e

    .line 887
    .line 888
    const-string v1, "=OperationStream==turn on Video and Sound"

    .line 889
    .line 890
    invoke-static {v4, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->turnOnSound()V

    .line 894
    .line 895
    .line 896
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->turnOnVideo()V

    .line 897
    .line 898
    .line 899
    const/4 v1, 0x2

    .line 900
    iput v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentApkType:I

    .line 901
    .line 902
    const-string v1, "12045"

    .line 903
    .line 904
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 908
    .line 909
    .line 910
    move-result-object v1

    .line 911
    iget-object v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 912
    .line 913
    invoke-static {v1, v2}, Lcom/haima/hmcp/business/SendSceneState;->firstFrameArrival(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 914
    .line 915
    .line 916
    const/16 v1, 0x66

    .line 917
    .line 918
    invoke-virtual {v8, v1, v6}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    invoke-virtual {v8, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 926
    .line 927
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    .line 929
    .line 930
    const-string v2, "OperationStream--OPERATION_STREAM_URL---5==="

    .line 931
    .line 932
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    .line 934
    .line 935
    iget v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 936
    .line 937
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    const-string v2, "  "

    .line 941
    .line 942
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    iget v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentApkType:I

    .line 946
    .line 947
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v1

    .line 954
    invoke-static {v4, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    iget-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 958
    .line 959
    if-eqz v1, :cond_10

    .line 960
    .line 961
    iget v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 962
    .line 963
    if-nez v2, :cond_10

    .line 964
    .line 965
    const/4 v2, 0x2

    .line 966
    invoke-virtual {v8, v2, v1}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 967
    .line 968
    .line 969
    :cond_10
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 970
    .line 971
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 972
    .line 973
    .line 974
    move-result-object v1

    .line 975
    const/16 v2, 0xe

    .line 976
    .line 977
    invoke-virtual {v8, v2, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v1

    .line 981
    invoke-virtual {v8, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 982
    .line 983
    .line 984
    iget-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 985
    .line 986
    if-eqz v1, :cond_27

    .line 987
    .line 988
    iget-object v1, v1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->kqiInfoList:Ljava/lang/String;

    .line 989
    .line 990
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 991
    .line 992
    .line 993
    move-result v1

    .line 994
    if-nez v1, :cond_27

    .line 995
    .line 996
    iget-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 997
    .line 998
    iget-object v1, v1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->kqiInfoList:Ljava/lang/String;

    .line 999
    .line 1000
    const/16 v2, 0x30

    .line 1001
    .line 1002
    invoke-virtual {v8, v2, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(ILjava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1008
    .line 1009
    .line 1010
    const-string v2, "OP-5,KQIInfoList = "

    .line 1011
    .line 1012
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    .line 1014
    .line 1015
    iget-object v0, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1016
    .line 1017
    iget-object v0, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->kqiInfoList:Ljava/lang/String;

    .line 1018
    .line 1019
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v0

    .line 1026
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    goto/16 :goto_d

    .line 1030
    .line 1031
    :pswitch_18
    invoke-virtual {v8, v0, v12, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationGameOver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    goto/16 :goto_d

    .line 1035
    .line 1036
    :pswitch_19
    const-string v0, "==OPERATION_HMCP_ERROR==="

    .line 1037
    .line 1038
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    move-object/from16 v0, v22

    .line 1042
    .line 1043
    invoke-virtual {v8, v0, v12, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->showRetryPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    .line 1045
    .line 1046
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1047
    .line 1048
    .line 1049
    move-result-wide v0

    .line 1050
    iget-wide v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->startPlayTime:J

    .line 1051
    .line 1052
    sub-long/2addr v0, v2

    .line 1053
    div-long v0, v0, v19

    .line 1054
    .line 1055
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_instance_err:I

    .line 1056
    .line 1057
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v2

    .line 1061
    invoke-virtual {v8, v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneStopMessage(JLjava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v0

    .line 1068
    if-nez v0, :cond_27

    .line 1069
    .line 1070
    const/16 v0, 0x30

    .line 1071
    .line 1072
    move-object/from16 v1, v18

    .line 1073
    .line 1074
    invoke-virtual {v8, v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(ILjava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1078
    .line 1079
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    .line 1081
    .line 1082
    const-string v2, "OP-3,KQIInfoList = "

    .line 1083
    .line 1084
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v0

    .line 1094
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    .line 1096
    .line 1097
    goto/16 :goto_d

    .line 1098
    .line 1099
    :pswitch_1a
    invoke-virtual {v8, v12, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationKicked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    .line 1101
    .line 1102
    goto/16 :goto_d

    .line 1103
    .line 1104
    :pswitch_1b
    invoke-virtual {v8, v0, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationIntervalTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    goto/16 :goto_d

    .line 1108
    .line 1109
    :cond_11
    invoke-virtual {v8, v0, v12, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationStateChangeReason(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    goto/16 :goto_d

    .line 1113
    .line 1114
    :cond_12
    const/4 v1, 0x0

    .line 1115
    iput v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 1116
    .line 1117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1118
    .line 1119
    .line 1120
    move-result-wide v1

    .line 1121
    sput-wide v1, Lcom/haima/hmcp/utils/TimeUtil;->StreamUrl:J

    .line 1122
    .line 1123
    new-instance v1, Lorg/json/JSONObject;

    .line 1124
    .line 1125
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1126
    .line 1127
    .line 1128
    iput-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 1129
    .line 1130
    iget v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentNetType:I

    .line 1131
    .line 1132
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1133
    .line 1134
    .line 1135
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 1136
    .line 1137
    const-string v2, "currentApkType"

    .line 1138
    .line 1139
    iget v3, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentApkType:I

    .line 1140
    .line 1141
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1142
    .line 1143
    .line 1144
    invoke-static {v0, v9}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v0

    .line 1148
    check-cast v0, Lcom/haima/hmcp/beans/PlayStreamPayload;

    .line 1149
    .line 1150
    invoke-direct {v8, v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->isRtmpValidate(Lcom/haima/hmcp/beans/PlayStreamPayload;)Z

    .line 1151
    .line 1152
    .line 1153
    move-result v1

    .line 1154
    if-eqz v1, :cond_16

    .line 1155
    .line 1156
    iget-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1157
    .line 1158
    iget-boolean v1, v1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->restore:Z

    .line 1159
    .line 1160
    if-nez v1, :cond_13

    .line 1161
    .line 1162
    const/4 v1, 0x1

    .line 1163
    iput-boolean v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isExchangeControl:Z

    .line 1164
    .line 1165
    const-string v1, "13321"

    .line 1166
    .line 1167
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1171
    .line 1172
    .line 1173
    move-result-object v1

    .line 1174
    iget-object v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1175
    .line 1176
    invoke-static {v1, v2}, Lcom/haima/hmcp/business/SendSceneState;->exchangeControlSuccess(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 1177
    .line 1178
    .line 1179
    :goto_7
    const/4 v1, 0x2

    .line 1180
    goto :goto_8

    .line 1181
    :cond_13
    const/4 v1, 0x0

    .line 1182
    iput-boolean v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isExchangeControl:Z

    .line 1183
    .line 1184
    const-string v1, "13323"

    .line 1185
    .line 1186
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 1187
    .line 1188
    .line 1189
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1190
    .line 1191
    .line 1192
    move-result-object v1

    .line 1193
    iget-object v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1194
    .line 1195
    invoke-static {v1, v2}, Lcom/haima/hmcp/business/SendSceneState;->exchangeControlRestoreSuccess(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 1196
    .line 1197
    .line 1198
    iput v15, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 1199
    .line 1200
    goto :goto_7

    .line 1201
    :goto_8
    iput v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curCloudServiceState:I

    .line 1202
    .line 1203
    invoke-virtual {v8, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->CloudStateSend(I)V

    .line 1204
    .line 1205
    .line 1206
    iget-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1207
    .line 1208
    if-eqz v1, :cond_14

    .line 1209
    .line 1210
    iget-object v1, v1, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 1211
    .line 1212
    if-eqz v1, :cond_14

    .line 1213
    .line 1214
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpManager:Lcom/haima/hmcp/HmcpManager;

    .line 1215
    .line 1216
    invoke-virtual {v1}, Lcom/haima/hmcp/HmcpManager;->getResolutionDatas()Ljava/util/List;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v1

    .line 1220
    iget-object v2, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1221
    .line 1222
    iget-object v2, v2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 1223
    .line 1224
    iget-object v2, v2, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 1225
    .line 1226
    const/4 v3, 0x0

    .line 1227
    invoke-virtual {v8, v1, v2, v3, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setResolutionList(Ljava/util/List;Ljava/lang/String;ZZ)V

    .line 1228
    .line 1229
    .line 1230
    :cond_14
    iget-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1231
    .line 1232
    if-eqz v1, :cond_15

    .line 1233
    .line 1234
    iget-object v1, v8, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 1235
    .line 1236
    invoke-interface {v1}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->release()V

    .line 1237
    .line 1238
    .line 1239
    const/4 v1, 0x1

    .line 1240
    invoke-virtual {v8, v1, v1, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->disconnectSocketIo(ZZZ)V

    .line 1241
    .line 1242
    .line 1243
    iget-object v0, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1244
    .line 1245
    const/4 v1, 0x2

    .line 1246
    invoke-virtual {v8, v1, v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 1247
    .line 1248
    .line 1249
    :cond_15
    iget-object v0, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 1250
    .line 1251
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    const/16 v1, 0xe

    .line 1256
    .line 1257
    invoke-virtual {v8, v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v0

    .line 1261
    invoke-virtual {v8, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 1262
    .line 1263
    .line 1264
    goto/16 :goto_d

    .line 1265
    .line 1266
    :cond_16
    if-eqz v0, :cond_18

    .line 1267
    .line 1268
    iget-object v0, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1269
    .line 1270
    if-eqz v0, :cond_18

    .line 1271
    .line 1272
    iget-boolean v0, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->restore:Z

    .line 1273
    .line 1274
    if-nez v0, :cond_17

    .line 1275
    .line 1276
    const-string v0, "13322"

    .line 1277
    .line 1278
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 1279
    .line 1280
    .line 1281
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v0

    .line 1285
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1286
    .line 1287
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->exchangeControlFail(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 1288
    .line 1289
    .line 1290
    goto :goto_9

    .line 1291
    :cond_17
    const-string v0, "13324"

    .line 1292
    .line 1293
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v0

    .line 1300
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1301
    .line 1302
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->exchangeControlRestoreFail(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 1303
    .line 1304
    .line 1305
    goto :goto_9

    .line 1306
    :cond_18
    const-string v0, "13317"

    .line 1307
    .line 1308
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 1309
    .line 1310
    .line 1311
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 1312
    .line 1313
    .line 1314
    move-result-object v0

    .line 1315
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 1316
    .line 1317
    invoke-static {v0, v1}, Lcom/haima/hmcp/business/SendSceneState;->exchangeControlOtherFail(Landroid/content/Context;Lcom/haima/hmcp/listeners/HmcpPlayerListener;)V

    .line 1318
    .line 1319
    .line 1320
    :goto_9
    iput v15, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 1321
    .line 1322
    return-void

    .line 1323
    :cond_19
    const-string v0, "===================OPERATION_DEBUG_SWITCH==============="

    .line 1324
    .line 1325
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    .line 1327
    .line 1328
    goto/16 :goto_d

    .line 1329
    .line 1330
    :cond_1a
    move-object/from16 v1, v18

    .line 1331
    .line 1332
    invoke-virtual {v8, v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->maintenanceInQueued(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    .line 1334
    .line 1335
    goto/16 :goto_d

    .line 1336
    .line 1337
    :cond_1b
    const-string v1, "=OperationStream==receive op4.5"

    .line 1338
    .line 1339
    invoke-static {v4, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    .line 1341
    .line 1342
    const-string v1, "12241"

    .line 1343
    .line 1344
    const-string v2, "receive op4.5"

    .line 1345
    .line 1346
    invoke-static {v1, v2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    .line 1348
    .line 1349
    iget-boolean v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isOperationStreamUrlReceived:Z

    .line 1350
    .line 1351
    if-eqz v1, :cond_1c

    .line 1352
    .line 1353
    const-string v0, "already receive op5, this op4.5 is untreated"

    .line 1354
    .line 1355
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    move-object/from16 v1, v21

    .line 1359
    .line 1360
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    .line 1362
    .line 1363
    goto/16 :goto_d

    .line 1364
    .line 1365
    :cond_1c
    const/4 v1, 0x1

    .line 1366
    iput-boolean v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isOperationStreamUrlPreReceived:Z

    .line 1367
    .line 1368
    invoke-static {v0, v9}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v0

    .line 1372
    check-cast v0, Lcom/haima/hmcp/beans/PlayStreamPayload;

    .line 1373
    .line 1374
    if-eqz v0, :cond_1d

    .line 1375
    .line 1376
    iget-object v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1377
    .line 1378
    if-eqz v1, :cond_1d

    .line 1379
    .line 1380
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->rePreparation()V

    .line 1381
    .line 1382
    .line 1383
    iget-object v0, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1384
    .line 1385
    const/4 v1, 0x1

    .line 1386
    invoke-virtual {v8, v1, v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 1387
    .line 1388
    .line 1389
    :cond_1d
    sget-wide v4, Lcom/haima/hmcp/Constants;->FIRST_FRAME_TIMEOUT:J

    .line 1390
    .line 1391
    const/4 v6, 0x3

    .line 1392
    const-string v7, "wait operation five"

    .line 1393
    .line 1394
    move-object/from16 v1, p0

    .line 1395
    .line 1396
    move-wide v2, v4

    .line 1397
    invoke-virtual/range {v1 .. v7}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->startTimer(JJILjava/lang/String;)V

    .line 1398
    .line 1399
    .line 1400
    goto/16 :goto_d

    .line 1401
    .line 1402
    :cond_1e
    const/4 v3, 0x0

    .line 1403
    iget-object v1, v8, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mVideoUrl:Ljava/lang/String;

    .line 1404
    .line 1405
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1406
    .line 1407
    .line 1408
    move-result v1

    .line 1409
    if-eqz v1, :cond_1f

    .line 1410
    .line 1411
    return-void

    .line 1412
    :cond_1f
    invoke-static {v0, v9}, Lcom/alibaba/fastjson/a;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v0

    .line 1416
    check-cast v0, Lcom/haima/hmcp/beans/PlayStreamPayload;

    .line 1417
    .line 1418
    iget-object v0, v0, Lcom/haima/hmcp/beans/PlayStreamPayload;->data:Lcom/haima/hmcp/beans/PlayStreamPayloadData;

    .line 1419
    .line 1420
    if-eqz v0, :cond_20

    .line 1421
    .line 1422
    iget v5, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->traceTimes:I

    .line 1423
    .line 1424
    iget-object v6, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->host:Ljava/lang/String;

    .line 1425
    .line 1426
    iget v1, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->pingTimes:I

    .line 1427
    .line 1428
    iget v0, v0, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->pingSize:I

    .line 1429
    .line 1430
    move v3, v5

    .line 1431
    move v5, v1

    .line 1432
    goto :goto_a

    .line 1433
    :cond_20
    const/4 v0, 0x0

    .line 1434
    const/4 v5, 0x0

    .line 1435
    :goto_a
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v1

    .line 1439
    const/4 v2, 0x0

    .line 1440
    invoke-virtual {v1, v6, v5, v0, v2}, Lcom/haima/hmcp/HmcpManager;->doNetPing(Ljava/lang/String;IILcom/haima/hmcp/listeners/OnNetPingListener;)V

    .line 1441
    .line 1442
    .line 1443
    invoke-static {}, Lcom/haima/hmcp/HmcpManager;->getInstance()Lcom/haima/hmcp/HmcpManager;

    .line 1444
    .line 1445
    .line 1446
    move-result-object v0

    .line 1447
    iget-object v1, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppContext:Landroid/content/Context;

    .line 1448
    .line 1449
    iget-object v4, v8, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mVideoUrl:Ljava/lang/String;

    .line 1450
    .line 1451
    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/haima/hmcp/HmcpManager;->doTraceRoute(Landroid/content/Context;Ljava/lang/String;ILcom/haima/hmcp/listeners/OnTraceRouteListener;)V

    .line 1452
    .line 1453
    .line 1454
    goto/16 :goto_d

    .line 1455
    .line 1456
    :cond_21
    move-object v0, v15

    .line 1457
    const-string v1, "==OPERATION_GAME_ARCHIVING==="

    .line 1458
    .line 1459
    invoke-static {v4, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    .line 1461
    .line 1462
    invoke-virtual {v8, v0, v12, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->showRetryPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    .line 1464
    .line 1465
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1466
    .line 1467
    .line 1468
    move-result-wide v0

    .line 1469
    iget-wide v2, v8, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->startPlayTime:J

    .line 1470
    .line 1471
    sub-long/2addr v0, v2

    .line 1472
    div-long v0, v0, v19

    .line 1473
    .line 1474
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_instance_err:I

    .line 1475
    .line 1476
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v2

    .line 1480
    invoke-virtual {v8, v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneStopMessage(JLjava/lang/String;)V

    .line 1481
    .line 1482
    .line 1483
    goto :goto_d

    .line 1484
    :cond_22
    invoke-virtual {v8, v12, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationForcedOffline(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    .line 1486
    .line 1487
    goto :goto_d

    .line 1488
    :cond_23
    invoke-virtual {v8, v12, v14}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doOperationOpenMoreSameGame(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    .line 1490
    .line 1491
    goto :goto_d

    .line 1492
    :cond_24
    const-string v0, "==OPERATION_GAME_RESTART==="

    .line 1493
    .line 1494
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    .line 1496
    .line 1497
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneGameRestart()V

    .line 1498
    .line 1499
    .line 1500
    goto :goto_d

    .line 1501
    :cond_25
    const-string v0, "==OPERATION_GAME_CRASH==="

    .line 1502
    .line 1503
    invoke-static {v4, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    .line 1505
    .line 1506
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneGameRestart()V

    .line 1507
    .line 1508
    .line 1509
    goto :goto_d

    .line 1510
    :catch_0
    move-exception v0

    .line 1511
    goto :goto_b

    .line 1512
    :cond_26
    move-object v1, v5

    .line 1513
    move-object/from16 v16, v9

    .line 1514
    .line 1515
    move-object/from16 v17, v10

    .line 1516
    .line 1517
    new-instance v0, Lcom/haima/hmcp/beans/ReportSaasWSMessage;

    .line 1518
    .line 1519
    const-string v2, "1"

    .line 1520
    .line 1521
    iget-object v4, v3, Lcom/haima/hmcp/beans/Message;->payload:Ljava/lang/String;

    .line 1522
    .line 1523
    invoke-static {v4}, Lcom/haima/hmcp/utils/StringUtils;->encodeToBase64String(Ljava/lang/String;)Ljava/lang/String;

    .line 1524
    .line 1525
    .line 1526
    move-result-object v4

    .line 1527
    invoke-direct {v0, v2, v6, v4}, Lcom/haima/hmcp/beans/ReportSaasWSMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    .line 1529
    .line 1530
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v0

    .line 1534
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    .line 1536
    .line 1537
    invoke-virtual {v8, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->forwardMessageToApplication(Lcom/haima/hmcp/beans/Message;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1538
    .line 1539
    .line 1540
    goto :goto_d

    .line 1541
    :catch_1
    move-exception v0

    .line 1542
    goto :goto_c

    .line 1543
    :catch_2
    move-exception v0

    .line 1544
    move-object/from16 v16, v9

    .line 1545
    .line 1546
    :goto_b
    move-object/from16 v17, v10

    .line 1547
    .line 1548
    :goto_c
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 1549
    .line 1550
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 1551
    .line 1552
    .line 1553
    move-result-object v2

    .line 1554
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    new-instance v1, Lcom/haima/hmcp/beans/ReportBaseError;

    .line 1558
    .line 1559
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1560
    .line 1561
    .line 1562
    move-result-object v0

    .line 1563
    move-object/from16 v2, v17

    .line 1564
    .line 1565
    invoke-direct {v1, v2, v0}, Lcom/haima/hmcp/beans/ReportBaseError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    .line 1567
    .line 1568
    invoke-static {v1}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 1569
    .line 1570
    .line 1571
    move-result-object v0

    .line 1572
    move-object/from16 v1, v16

    .line 1573
    .line 1574
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    .line 1576
    .line 1577
    :cond_27
    :goto_d
    return-void

    .line 1578
    nop

    .line 1579
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    :pswitch_data_1
    .packed-switch 0x23
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    :pswitch_data_2
    .packed-switch 0x28
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    :pswitch_data_3
    .packed-switch 0x33
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handlePermissionResult(Ljava/lang/String;Z)V
    .locals 0

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

.method public isNativeDpadGame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->nativeDpadGame:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected notifyNetworkChanged()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNetworkOk:Z

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "===notifyNetworkChanged  showNetworkErrorPrompt  = "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, "prompt_network_unavailable"

    .line 18
    .line 19
    invoke-virtual {p0, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMetaInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

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
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 34
    .line 35
    const-string v1, "100099011"

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "-"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 81
    .line 82
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v2, "["

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, "]"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-instance v1, Lorg/json/JSONObject;

    .line 107
    .line 108
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 112
    .line 113
    :try_start_0
    const-string v2, "errorMsg"

    .line 114
    .line 115
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    .line 122
    .line 123
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 124
    .line 125
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const/4 v2, 0x6

    .line 130
    invoke-virtual {p0, v2, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 138
    .line 139
    if-eqz v1, :cond_1

    .line 140
    .line 141
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 142
    .line 143
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-interface {v1, v0, v2}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onPlayerError(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 151
    .line 152
    if-eqz v0, :cond_2

    .line 153
    .line 154
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    const-string v0, "139102"

    .line 160
    .line 161
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 165
    .line 166
    const/4 v1, 0x0

    .line 167
    const/4 v2, 0x1

    .line 168
    invoke-interface {v0, v1, v2}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->stopPlay(ZZ)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetState()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cancelRefreshStokenTask()V

    .line 175
    .line 176
    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 178
    .line 179
    .line 180
    move-result-wide v0

    .line 181
    iget-wide v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->startPlayTime:J

    .line 182
    .line 183
    sub-long/2addr v0, v2

    .line 184
    const-wide/16 v2, 0x3e8

    .line 185
    .line 186
    div-long/2addr v0, v2

    .line 187
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_network_off:I

    .line 188
    .line 189
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {p0, v0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneStopMessage(JLjava/lang/String;)V

    .line 194
    .line 195
    .line 196
    const/4 v0, 0x4

    .line 197
    iput v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 198
    .line 199
    :cond_3
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "=====onAttachedToWindow==========="

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->registerReceiver()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    const-string v0, "onDestroy"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->recordLifeCycleEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->localKeyboardModel:Lcom/haima/hmcp/model/LocalKeyboardModel;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/model/LocalKeyboardModel;->release()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/haima/hmcp/business/GamePadManager;->getInstance()Lcom/haima/hmcp/business/GamePadManager;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/haima/hmcp/business/GamePadManager;->sendStopAllGamePad(Lcom/haima/hmcp/business/IWebSocket;Z)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimer()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/haima/hmcp/utils/CountDownUtil;->cancelAll()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->stop()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpManager:Lcom/haima/hmcp/HmcpManager;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->stopTraceRoute()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHmcpManager:Lcom/haima/hmcp/HmcpManager;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/haima/hmcp/HmcpManager;->stopNetPing()V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->cleanListeners()V

    .line 46
    .line 47
    .line 48
    invoke-super {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onDestroy()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "=====onDetachedFromWindow==========="

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->unregisterReceiver()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onReceiveMetaInfos(ILjava/util/HashMap;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/TipsInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/ResolutionInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/beans/IntroImageInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "--------------onReceiveMetaInfos--------"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    invoke-super/range {p0 .. p5}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onReceiveMetaInfos(ILjava/util/HashMap;Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    const v1, -0xff0100

    .line 29
    .line 30
    .line 31
    if-eq p1, v1, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mMetaInfos:Ljava/util/HashMap;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mTipsInfo:Ljava/util/List;

    .line 37
    .line 38
    const-string p1, "RTMP"

    .line 39
    .line 40
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ljava/util/List;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mResolutionList:Ljava/util/List;

    .line 47
    .line 48
    if-eqz p5, :cond_1

    .line 49
    .line 50
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-lez p1, :cond_1

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Lcom/haima/hmcp/beans/IntroImageInfo;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mIntroImageInfo:Lcom/haima/hmcp/beans/IntroImageInfo;

    .line 64
    .line 65
    :cond_1
    const/16 p1, 0x21

    .line 66
    .line 67
    const-string p2, ""

    .line 68
    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p1, "key_map_content_tv"

    .line 77
    .line 78
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMetaInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public onResponse(ILjava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq p1, v0, :cond_7

    .line 5
    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_5

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    if-eq p1, v0, :cond_4

    .line 13
    .line 14
    if-eq p1, v1, :cond_3

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_2

    .line 18
    .line 19
    const/16 v0, 0x66

    .line 20
    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    const/16 p2, 0xc9

    .line 24
    .line 25
    if-eq p1, p2, :cond_0

    .line 26
    .line 27
    goto/16 :goto_1

    .line 28
    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onSwitchResolutionError()V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_1

    .line 33
    .line 34
    :cond_1
    sget-object p1, Lcom/haima/hmcp/Constants;->MINIMUM_BITRATE:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_b

    .line 41
    .line 42
    const-string p1, "toast_speed_lower_bitrate"

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getMetaInfoByKey(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/16 p2, 0x1a

    .line 49
    .line 50
    invoke-virtual {p0, p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_start_less_minimum:I

    .line 58
    .line 59
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-wide/16 v0, 0x0

    .line 64
    .line 65
    invoke-virtual {p0, v0, v1, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneStopMessage(JLjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doSwitchStreamType()V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :cond_3
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->doStateChangeReason(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :catch_0
    move-exception p1

    .line 81
    sget-object p2, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_4
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 93
    .line 94
    const-string p2, "--------------connect2Access---------heartBeatSuccess--"

    .line 95
    .line 96
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iput v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWsReconnectCount:I

    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :cond_5
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGameStart:Z

    .line 104
    .line 105
    if-nez p1, :cond_b

    .line 106
    .line 107
    const/16 p1, 0x8

    .line 108
    .line 109
    const-string p2, ""

    .line 110
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_6
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    const-string p2, "--------------connect2Access---------refreshStoken--"

    .line 123
    .line 124
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string p1, "connect2Access Success type OPTYPE_REFRESH"

    .line 128
    .line 129
    invoke-virtual {p0, v2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->refreshStoken(ILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_7
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBackground:Z

    .line 135
    .line 136
    if-nez p1, :cond_b

    .line 137
    .line 138
    iget p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWsReconnectCount:I

    .line 139
    .line 140
    sget v0, Lcom/haima/hmcp/Constants;->SAAS_WS_MAX_TIMES:I

    .line 141
    .line 142
    if-ge p1, v0, :cond_8

    .line 143
    .line 144
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 145
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v2, "--------------connect2Access---------refresh after 1s--"

    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v2, " mWsReconnectCount = "

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWsReconnectCount:I

    .line 167
    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 179
    .line 180
    if-gt p1, v1, :cond_b

    .line 181
    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v0, "access disconnect "

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->reconnectAccess(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_8
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 204
    .line 205
    const-string p2, "100099001"

    .line 206
    .line 207
    if-eqz p1, :cond_9

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    if-nez p1, :cond_9

    .line 218
    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string p2, "-"

    .line 228
    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 233
    .line 234
    invoke-virtual {p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object p2

    .line 238
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    :cond_9
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGetControl:Z

    .line 246
    .line 247
    if-eqz p1, :cond_a

    .line 248
    .line 249
    invoke-virtual {p0, v2, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getContronResult(ZLjava/lang/String;)V

    .line 250
    .line 251
    .line 252
    goto :goto_0

    .line 253
    :cond_a
    sget p1, Lcom/haima/hmcp/R$string;->haima_hmcp_net_timeout:I

    .line 254
    .line 255
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    const-string v0, "prompt_hmcp_error"

    .line 260
    .line 261
    invoke-virtual {p0, v0, p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->showRetryPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :goto_0
    const-string p1, "12050"

    .line 265
    .line 266
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    :cond_b
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    const-string v0, "onStop"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->recordLifeCycleEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->startExitQueueInBGTimer()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBackground:Z

    .line 11
    .line 12
    const-string v1, "12041"

    .line 13
    .line 14
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopSensor()V

    .line 18
    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->closeStream:Z

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 26
    .line 27
    const-string v2, "===onStop===="

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    iput v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->doPlayerRelease()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimer()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/haima/hmcp/business/RecordHelper;->getsInstance()Lcom/haima/hmcp/business/RecordHelper;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, v0}, Lcom/haima/hmcp/business/RecordHelper;->stop(Z)V

    .line 46
    .line 47
    .line 48
    const-string v0, "cidCacheTimer"

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/CountDownUtil;->cancel(Ljava/lang/String;Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method protected onStopInternal()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetState()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopRomRecord()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->disconnectWebSocket()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopReportClockDiffLatency()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimer()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/haima/hmcp/utils/HmIMEManager;->getInstance()Lcom/haima/hmcp/utils/HmIMEManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/HmIMEManager;->hideInput()Z

    .line 21
    .line 22
    .line 23
    const-string v0, "cidCacheTimer"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/haima/hmcp/utils/CountDownUtil;->cancel(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onSwitchResolution(ILcom/haima/hmcp/beans/ResolutionInfo;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->onSwitchResolution(ILcom/haima/hmcp/beans/ResolutionInfo;ILcom/haima/hmcp/beans/ResolutionInfoExtra;)Z

    move-result p1

    return p1
.end method

.method public onSwitchResolution(ILcom/haima/hmcp/beans/ResolutionInfo;ILcom/haima/hmcp/beans/ResolutionInfoExtra;)Z
    .locals 3

    const-string p1, "onSwitchResolution_level"

    .line 2
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->recordLifeCycleEvent(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isWaitStreamUrlPre()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    const-string p2, "onSwitchResolution cancel because pooled restart receive op4.5 but not receive op5"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "12200"

    .line 5
    invoke-static {p1, p2}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isExchangeControl:Z

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    const-string p2, "exchange control, can not switch resolution!"

    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->onSwitchResolutionError()V

    return v0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    if-nez p1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->callbackSwitchResolutionFailed()V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSwitchResolution() mRequestManager == null : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    return v0

    :cond_2
    const/16 v1, 0xc9

    .line 12
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->preCheck(I)Lcom/haima/hmcp/beans/RequestPreCheck;

    move-result-object p1

    .line 13
    iget-boolean v1, p1, Lcom/haima/hmcp/beans/RequestPreCheck;->requestAllow:Z

    if-nez v1, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->callbackSwitchResolutionFailed()V

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSwitchResolution() failed, cause: quest pre check "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    return v0

    :cond_3
    if-eqz p2, :cond_6

    const/4 p1, -0x1

    .line 16
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setSupportLiving(I)V

    .line 17
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetState()V

    .line 18
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mSetResolution:Lcom/haima/hmcp/beans/ResolutionInfo;

    const/4 p1, 0x1

    .line 19
    invoke-virtual {p0, p1, p1, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->disconnectSocketIo(ZZZ)V

    .line 20
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNeedShowSwitchSuccess:Z

    if-eqz p4, :cond_4

    .line 21
    iget p4, p4, Lcom/haima/hmcp/beans/ResolutionInfoExtra;->viewFrameRate:I

    goto :goto_0

    :cond_4
    const/4 p4, 0x0

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    iget-object v2, p2, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, p3, p4}, Lcom/haima/hmcp/business/HmcpRequestManager;->switchResolution(Ljava/lang/String;II)V

    .line 23
    iget-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCurResolution:Lcom/haima/hmcp/beans/ResolutionInfo;

    if-eqz p3, :cond_5

    .line 24
    iget-object p4, p3, Lcom/haima/hmcp/beans/ResolutionInfo;->bitRate:Ljava/lang/String;

    .line 25
    iget-object p4, p3, Lcom/haima/hmcp/beans/ResolutionInfo;->id:Ljava/lang/String;

    .line 26
    iget-object p3, p3, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string p3, ""

    .line 27
    :goto_1
    new-instance p4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 28
    sget v1, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_source:I

    invoke-static {v1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget p3, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_des:I

    invoke-static {p3}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p2, p2, Lcom/haima/hmcp/beans/ResolutionInfo;->peakBitRate:Ljava/lang/String;

    invoke-virtual {p4, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_method:I

    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-boolean p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mSwitchAuto:Z

    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 32
    invoke-virtual {p4, p2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_scene_crst:I

    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-virtual {p4}, Lcom/alibaba/fastjson/a;->toJSONString()Ljava/lang/String;

    move-result-object p3

    .line 35
    invoke-virtual {p0, p2, p3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendSceneChangedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mSwitchAuto:Z

    return p1

    :cond_6
    return v0
.end method

.method public playForTesting(Lcom/haima/hmcp/beans/PlayTestData;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "===playForTesting===="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->initManager()V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x22

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p1, Lcom/haima/hmcp/beans/PlayTestData;->videoUrl:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mVideoUrl:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/haima/hmcp/beans/PlayTestData;->audioUrl:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mAudioUrl:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/haima/hmcp/beans/PlayTestData;->inputUrl:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mVInputUrl:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/haima/hmcp/beans/PlayTestData;->orientation:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setOrientationInit(Lcom/haima/hmcp/enums/ScreenOrientation;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    sput-boolean p1, Lcom/haima/hmcp/Constants;->PLAY_PREPARE:Z

    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->start2Play(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public playPreparation(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_1

    .line 3
    .line 4
    sget-object p1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iput-boolean v0, p1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetStreamUrlSuccess:Z

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    const-string p2, "cloudPlayInfo == null,can\'t set cloudPlayInfo.isGetStreamUrlSuccess = false"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    sget-object v1, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    iput-boolean v2, v1, Lcom/haima/hmcp/beans/CloudPlayInfo;->isGetStreamUrlSuccess:Z

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    const-string v3, "cloudPlayInfo == null,can\'t set cloudPlayInfo.isGetStreamUrlSuccess = true"

    .line 30
    .line 31
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :goto_1
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mEntryQueue:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mInQueued:Z

    .line 37
    .line 38
    sget-object v1, Lcom/haima/hmcp/enums/ExitQueueInBGCancelType;->QUEUE_COMPLETE:Lcom/haima/hmcp/enums/ExitQueueInBGCancelType;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cancelExitQueueInBGTimer(Lcom/haima/hmcp/enums/ExitQueueInBGCancelType;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v4, "reset mRefreshStokenCount: "

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRefreshStokenCount:I

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, " -> 0reset mInstanceReconnectCount: "

    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mInstanceReconnectCount:I

    .line 66
    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, " -> 0reset mInstanceWsReconnectCount: "

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mInstanceWsReconnectCount:I

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, " -> 0"

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-static {v1, v3}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iput v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRefreshStokenCount:I

    .line 93
    .line 94
    iput v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mInstanceReconnectCount:I

    .line 95
    .line 96
    iput v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mInstanceWsReconnectCount:I

    .line 97
    .line 98
    const-string v3, "RTMP"

    .line 99
    .line 100
    iget-object v4, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->streamType:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    sget-object v4, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 107
    .line 108
    if-eqz v4, :cond_3

    .line 109
    .line 110
    iput-boolean v3, v4, Lcom/haima/hmcp/beans/CloudPlayInfo;->isMatchStreamType:Z

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    const-string v4, "cloudPlayInfo == null,can\'t set cloudPlayInfo.isMatchStreamType"

    .line 114
    .line 115
    invoke-static {v1, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    if-nez v3, :cond_4

    .line 119
    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->changeStreamType(ILcom/haima/hmcp/beans/PlayStreamPayloadData;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_4
    iput p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentApkType:I

    .line 125
    .line 126
    iget-object v1, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->videoUrl:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mVideoUrl:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v1, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->audioUrl:Ljava/lang/String;

    .line 131
    .line 132
    iput-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mAudioUrl:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v1, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->inputUrl:Ljava/lang/String;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mVInputUrl:Ljava/lang/String;

    .line 137
    .line 138
    iget-object v1, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->screenUrl:Ljava/lang/String;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenUrl:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v1, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->idcId:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_5

    .line 149
    .line 150
    iget-object v1, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->idcName:Ljava/lang/String;

    .line 151
    .line 152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_5

    .line 157
    .line 158
    new-instance v1, Lorg/json/JSONObject;

    .line 159
    .line 160
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 161
    .line 162
    .line 163
    :try_start_0
    const-string v3, "idcId"

    .line 164
    .line 165
    iget-object v4, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->idcId:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    .line 169
    .line 170
    const-string v3, "idcName"

    .line 171
    .line 172
    iget-object v4, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->idcName:Ljava/lang/String;

    .line 173
    .line 174
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    :catch_0
    const/16 v3, 0x2c

    .line 178
    .line 179
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {p0, v3, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_5
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->markWebSocketUrlTimeStamp()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->checkHangUpTask()V

    .line 194
    .line 195
    .line 196
    iget v1, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->supportLiving:I

    .line 197
    .line 198
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setSupportLiving(I)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->resolutionInfo:Lcom/haima/hmcp/beans/ResolutionInfo;

    .line 202
    .line 203
    if-nez v1, :cond_6

    .line 204
    .line 205
    const-string v1, ""

    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_6
    iget-object v1, v1, Lcom/haima/hmcp/beans/ResolutionInfo;->resolution:Ljava/lang/String;

    .line 209
    .line 210
    :goto_3
    iput-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenResolution:Ljava/lang/String;

    .line 211
    .line 212
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    const/4 v3, 0x2

    .line 217
    if-nez v1, :cond_7

    .line 218
    .line 219
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenResolution:Ljava/lang/String;

    .line 220
    .line 221
    const-string v4, "x"

    .line 222
    .line 223
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    array-length v4, v1

    .line 228
    if-ne v4, v3, :cond_7

    .line 229
    .line 230
    aget-object v4, v1, v2

    .line 231
    .line 232
    invoke-virtual {p0, v4}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->parseScreenResolution(Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    iput v4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamHeight:I

    .line 237
    .line 238
    aget-object v0, v1, v0

    .line 239
    .line 240
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->parseScreenResolution(Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    iput v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamWidth:I

    .line 245
    .line 246
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 247
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    const-string v4, "parse screen resolution streamWidth = "

    .line 254
    .line 255
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    iget v4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamWidth:I

    .line 259
    .line 260
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v4, ", streamHeight"

    .line 264
    .line 265
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget v4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->streamHeight:I

    .line 269
    .line 270
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_7
    iget-object p2, p2, Lcom/haima/hmcp/beans/PlayStreamPayloadData;->encryption:Ljava/lang/String;

    .line 281
    .line 282
    iput-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->encryption:Ljava/lang/String;

    .line 283
    .line 284
    iget-object p2, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mVideoUrl:Ljava/lang/String;

    .line 285
    .line 286
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p2

    .line 290
    new-instance v0, Lcom/haima/hmcp/beans/ReportGetStreamSuc;

    .line 291
    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    .line 293
    .line 294
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .line 296
    .line 297
    const-string v4, "videoUrl="

    .line 298
    .line 299
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string p2, "; apkType = "

    .line 306
    .line 307
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    const-string p2, "; "

    .line 314
    .line 315
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentStatusInfo()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p2

    .line 322
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    const-string v1, "rtmp"

    .line 330
    .line 331
    invoke-direct {v0, p2, v1}, Lcom/haima/hmcp/beans/ReportGetStreamSuc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string p2, "12044"

    .line 335
    .line 336
    invoke-static {v0}, Lcom/haima/hmcp/utils/JsonUtil;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {p2, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 344
    .line 345
    const/4 v0, 0x5

    .line 346
    if-eq p2, v0, :cond_8

    .line 347
    .line 348
    iput v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 349
    .line 350
    :cond_8
    sget-object p2, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 351
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .line 356
    .line 357
    const-string v1, "=OperationStream==playPreparation() curCloudServiceState : "

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    iget v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curCloudServiceState:I

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    const-string v1, " apkType : "

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curCloudServiceState:I

    .line 383
    .line 384
    if-ne v0, v3, :cond_9

    .line 385
    .line 386
    invoke-virtual {p0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->syncSpeedVsPlay()V

    .line 387
    .line 388
    .line 389
    :cond_9
    if-ne p1, v2, :cond_a

    .line 390
    .line 391
    const-string p1, "=OperationStream==turn off Video and Sound"

    .line 392
    .line 393
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->turnOffSound()V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->turnOffVideo()V

    .line 400
    .line 401
    .line 402
    goto :goto_4

    .line 403
    :cond_a
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimer()V

    .line 404
    .line 405
    .line 406
    :goto_4
    return-void
.end method

.method protected rePlay()V
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "===rePlay ===="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isWaitStreamUrlPre()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v1, "rePlay cancel because pooled restart receive op4.5 but not receive op5"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "12200"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/haima/hmcp/business/HmcpRequestManager;->isGetCloudServiceRequestV2Requesting()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    const-string v1, "replay cancel because last 211 not response"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCurrentNetType()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-gez v1, :cond_2

    .line 46
    .line 47
    new-instance v0, Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 53
    .line 54
    :try_start_0
    const-string v1, "errorCode"

    .line 55
    .line 56
    const-string v2, "100099011"

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 62
    .line 63
    const-string v1, "errorMessage"

    .line 64
    .line 65
    sget v2, Lcom/haima/hmcp/R$string;->haima_hmcp_net_error:I

    .line 66
    .line 67
    invoke-static {v2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 80
    .line 81
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x6

    .line 86
    invoke-virtual {p0, v1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppName:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mGid:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_3

    .line 109
    .line 110
    const-string v1, "===rePlay mAppName==null =="

    .line 111
    .line 112
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 117
    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v2, "===rePlay mWebSocketManager===="

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 131
    .line 132
    sget-object v3, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_ACCESS:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 133
    .line 134
    invoke-interface {v2, v3}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, ":"

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHMInput:Lcom/haima/hmcp/input/HMInput;

    .line 147
    .line 148
    if-nez v4, :cond_4

    .line 149
    .line 150
    const-string v4, "false"

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_4
    invoke-virtual {v4}, Lcom/haima/hmcp/input/HMInput;->isConnected()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 168
    .line 169
    sget-object v4, Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;->TYPE_INSTANCE_WS_SERVER:Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;

    .line 170
    .line 171
    invoke-interface {v2, v4}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetState()V

    .line 186
    .line 187
    .line 188
    const/4 v0, 0x0

    .line 189
    iput v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 190
    .line 191
    iput-boolean v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isNeedShowSwitchSuccess:Z

    .line 192
    .line 193
    const/4 v1, 0x1

    .line 194
    invoke-virtual {p0, v1, v1, v1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->disconnectSocketIo(ZZZ)V

    .line 195
    .line 196
    .line 197
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 198
    .line 199
    if-eqz v2, :cond_6

    .line 200
    .line 201
    iget-boolean v4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGetControl:Z

    .line 202
    .line 203
    if-eqz v4, :cond_5

    .line 204
    .line 205
    invoke-virtual {v2, v0, v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudService(IIZ)V

    .line 206
    .line 207
    .line 208
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 209
    .line 210
    invoke-interface {v2, v3}, Lcom/haima/hmcp/business/IWebSocket;->isConnect(Lcom/haima/hmcp/business/WebSocketManager$WebSocketType;)Z

    .line 211
    .line 212
    .line 213
    move-result v2

    .line 214
    if-nez v2, :cond_6

    .line 215
    .line 216
    iget-object v2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 217
    .line 218
    invoke-virtual {v2, v1, v0}, Lcom/haima/hmcp/business/HmcpRequestManager;->connect2Access(IZ)V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_5
    invoke-virtual {v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getReCloudServiceRequestV2()V

    .line 223
    .line 224
    .line 225
    :cond_6
    :goto_2
    return-void
.end method

.method public refreshStoken(ILjava/lang/String;ZZ)V
    .locals 7

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "===start refresh stoken===="

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isBackground:Z

    .line 9
    .line 10
    if-nez v1, :cond_6

    .line 11
    .line 12
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-boolean v1, v1, Lcom/haima/hmcp/business/HmcpRequestManager;->isStopPlay:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    iget-boolean v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGameStart:Z

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    if-eqz p3, :cond_1

    .line 28
    .line 29
    const-string p3, "139102"

    .line 30
    .line 31
    invoke-static {p3}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p3, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 35
    .line 36
    invoke-interface {p3, p4, v2}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->stopPlay(ZZ)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 40
    .line 41
    const/4 p4, 0x5

    .line 42
    if-eq p3, p4, :cond_5

    .line 43
    .line 44
    iget p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 45
    .line 46
    if-ne p3, p4, :cond_2

    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_2
    iget p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRefreshStokenCount:I

    .line 51
    .line 52
    sget p4, Lcom/haima/hmcp/Constants;->REFRESH_STOKEN_MAX_TIMES:I

    .line 53
    .line 54
    if-lt p3, p4, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 57
    .line 58
    const-string p2, "100099010"

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p2, "-"

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object p2, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/haima/hmcp/business/HmcpRequestManager;->getCloudId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    :cond_3
    new-instance p1, Lcom/haima/hmcp/utils/ErrorInfo;

    .line 99
    .line 100
    invoke-direct {p1}, Lcom/haima/hmcp/utils/ErrorInfo;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string p3, "errorCode"

    .line 104
    .line 105
    invoke-virtual {p1, p3, p2}, Lcom/haima/hmcp/utils/ErrorInfo;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/haima/hmcp/utils/ErrorInfo;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string p2, "rootCause"

    .line 110
    .line 111
    iget-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mResfreshStokenReasons:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1, p2, p3}, Lcom/haima/hmcp/utils/ErrorInfo;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/haima/hmcp/utils/ErrorInfo;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    sget p2, Lcom/haima/hmcp/R$string;->haima_hmcp_refresh_stoken_over_max:I

    .line 118
    .line 119
    invoke-static {p2}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    const-string p3, "errorMessage"

    .line 124
    .line 125
    invoke-virtual {p1, p3, p2}, Lcom/haima/hmcp/utils/ErrorInfo;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/haima/hmcp/utils/ErrorInfo;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    const/16 p2, 0x17

    .line 130
    .line 131
    invoke-virtual {p0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->callbackHmcpError(Lcom/haima/hmcp/utils/ErrorInfo;I)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->object:Lorg/json/JSONObject;

    .line 136
    .line 137
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->release(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 p1, 0x4

    .line 145
    iput p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 146
    .line 147
    return-void

    .line 148
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-object p4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mResfreshStokenReasons:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string p4, "("

    .line 159
    .line 160
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget p4, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRefreshStokenCount:I

    .line 164
    .line 165
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string p4, ":"

    .line 169
    .line 170
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string p4, ")"

    .line 177
    .line 178
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    iput-object p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mResfreshStokenReasons:Ljava/lang/String;

    .line 186
    .line 187
    iget p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRefreshStokenCount:I

    .line 188
    .line 189
    add-int/2addr p3, v2

    .line 190
    iput p3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRefreshStokenCount:I

    .line 191
    .line 192
    const/4 p3, -0x1

    .line 193
    invoke-virtual {p0, p3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->setSupportLiving(I)V

    .line 194
    .line 195
    .line 196
    int-to-long v3, p1

    .line 197
    const/4 v5, 0x0

    .line 198
    move-object v0, p0

    .line 199
    move-wide v1, v3

    .line 200
    move-object v6, p2

    .line 201
    invoke-virtual/range {v0 .. v6}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->startTimer(JJILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    return-void

    .line 205
    :cond_5
    :goto_0
    const-string p1, "===game over no refresh ===="

    .line 206
    .line 207
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimer()V

    .line 211
    .line 212
    .line 213
    :cond_6
    :goto_1
    return-void
.end method

.method public release(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "release: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->recordLifeCycleEvent(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "==release==="

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "1 ; "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentStatusInfo()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "12053"

    .line 57
    .line 58
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 62
    .line 63
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "errorCode"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    const-string v0, ""

    .line 78
    .line 79
    :goto_0
    const-string v1, "null"

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-virtual {p0, v0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->recordStopGameError(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cancelRefreshStokenTask()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopRomRecord()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->disconnectWebSocket()V

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 98
    .line 99
    if-eqz p1, :cond_1

    .line 100
    .line 101
    sget-object v0, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 107
    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/haima/hmcp/business/HmcpRequestManager;->stopCloudService()V

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimer()V

    .line 114
    .line 115
    .line 116
    const-string p1, "139102"

    .line 117
    .line 118
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 122
    .line 123
    invoke-interface {p1}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->release()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetState()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public releaseNotStop()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 3
    .line 4
    sget-object v0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cloudPlayInfo:Lcom/haima/hmcp/beans/CloudPlayInfo;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/CloudPlayInfo;->reset()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cancelRefreshStokenTask()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopRomRecord()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->disconnectWebSocket()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->cleanTimer()V

    .line 21
    .line 22
    .line 23
    const-string v0, "139102"

    .line 24
    .line 25
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 29
    .line 30
    invoke-interface {v0}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->stopPlay()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->resetState()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setCustomVideoView(Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;)V
    .locals 3

    .line 1
    const-string v0, "139001"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 7
    .line 8
    instance-of v0, p1, Landroid/view/View;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 13
    .line 14
    const/16 v1, 0x11

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-le v1, v2, :cond_0

    .line 26
    .line 27
    check-cast p1, Landroid/view/View;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    check-cast p1, Landroid/view/View;

    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method protected setHmcpIJKVideoViewListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "139103"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 11
    .line 12
    new-instance v1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView$1;-><init>(Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->setHmcpIJKVideoViewListener(Lcom/haima/hmcp/rtmp/widgets/HmcpIJKVideoViewListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setImageSize()V
    .locals 0

    return-void
.end method

.method public setRenderView(Lcom/haima/hmcp/listeners/IRenderViewBase;)V
    .locals 0

    return-void
.end method

.method public start2Play(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "==== start2Play ====="

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mWebSocketManager:Lcom/haima/hmcp/business/IWebSocket;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    const-string p1, "139101"

    .line 13
    .line 14
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mVideoUrl:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->mAudioUrl:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p1, v0, v1}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->startPlay(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    const-string v0, ""

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getCallbackData(ILjava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->UiMessageSend(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mIsFirstGetCloudService:Z

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    iput-wide v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->startPlayTime:J

    .line 45
    .line 46
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mListener:Lcom/haima/hmcp/listeners/HmcpPlayerListener;

    .line 47
    .line 48
    invoke-interface {p1}, Lcom/haima/hmcp/listeners/HmcpPlayerListener;->onSuccess()V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isGameStart:Z

    .line 53
    .line 54
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mVInputUrl:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->connect2Instance(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenUrl:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->connectWsServer(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->screenUrl:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->connectTransferServer(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v0, "start2Play() mWebSocketManager == null"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    new-instance v0, Ljava/lang/Throwable;

    .line 81
    .line 82
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_0
    return-void
.end method

.method protected stop()V
    .locals 4

    .line 1
    sget-object v0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "timeframe====stop======"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mAppName:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "0 ; "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->currentStatusInfo()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "12053"

    .line 33
    .line 34
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p0, v1, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->recordStopGameError(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mRequestManager:Lcom/haima/hmcp/business/HmcpRequest;

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/business/HmcpRequestManager;->isAllowConnect2Access(Z)V

    .line 49
    .line 50
    .line 51
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mFileDownloadUtil:Lcom/haima/hmcp/utils/FileDownloadUtil;

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/FileDownloadUtil;->stopSpeedTest()V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lorg/json/JSONObject;

    .line 59
    .line 60
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .line 62
    .line 63
    :try_start_0
    const-string v2, "status"

    .line 64
    .line 65
    const-string v3, "stop"

    .line 66
    .line 67
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string v2, "stopByApp"

    .line 71
    .line 72
    const-string v3, "0"

    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    const-string v2, "msg"

    .line 78
    .line 79
    const-string v3, "internal stop called"

    .line 80
    .line 81
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :goto_0
    const-string v2, "13704"

    .line 90
    .line 91
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-static {v2, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->unregisterReceiver()V

    .line 99
    .line 100
    .line 101
    const-string v1, "139102"

    .line 102
    .line 103
    invoke-static {v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->customIJKVideoView:Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;

    .line 107
    .line 108
    invoke-interface {v1}, Lcom/haima/hmcp/rtmp/widgets/IHmcpIJKVideoView;->stopPlay()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->stopRomRecord()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getTransferDelegate()Lcom/haima/hmcp/business/TransferHelper;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_2

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getTransferDelegate()Lcom/haima/hmcp/business/TransferHelper;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/haima/hmcp/business/TransferHelper;->disconnect()V

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->quitManager()V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mHandler:Landroid/os/Handler;

    .line 131
    .line 132
    if-eqz v1, :cond_3

    .line 133
    .line 134
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    .line 136
    .line 137
    :cond_3
    iget-object v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mCloudFileManager:Lcom/haima/hmcp/cloud/CloudFileManager;

    .line 138
    .line 139
    if-eqz v0, :cond_4

    .line 140
    .line 141
    sget-object v1, Lcom/haima/hmcp/enums/CloudOperation;->DOWNLOAD:Lcom/haima/hmcp/enums/CloudOperation;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/cloud/CloudFileManager;->cancel(Lcom/haima/hmcp/enums/CloudOperation;)V

    .line 144
    .line 145
    .line 146
    :cond_4
    return-void
.end method

.method public syncSpeedVsPlay()V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->CloudStateSend(I)V

    .line 3
    .line 4
    .line 5
    iput v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curCloudServiceState:I

    .line 6
    .line 7
    sget-object v1, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-boolean v3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mIsFirstGetCloudService:Z

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v3, ":"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget v3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, "--------------- = syncSpeedVsPlay = "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget v3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mBitRate:I

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, "=curConnectState="

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v3, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    if-eq v1, v2, :cond_0

    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget v1, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->mPlayerState:I

    .line 63
    .line 64
    const/4 v2, 0x5

    .line 65
    if-ne v1, v2, :cond_1

    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/rtmp/widgets/BaseRtmpCustomVideoView;->start2Play(Lcom/haima/hmcp/beans/SdkStreamPayloadData;)V

    .line 70
    .line 71
    .line 72
    iput v0, p0, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->curConnectState:I

    .line 73
    .line 74
    return-void
.end method
