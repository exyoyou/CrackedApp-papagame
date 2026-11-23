.class public abstract Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;
.super Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;
.source "SourceFile"

# interfaces
.implements Lv7/a;


# static fields
.field public static final CHANGE_DELAY_TIME:I = 0x7d0

.field public static final CURRENT_STATE_AUTO_COMPLETE:I = 0x6

.field public static final CURRENT_STATE_ERROR:I = 0x7

.field public static final CURRENT_STATE_NORMAL:I = 0x0

.field public static final CURRENT_STATE_PAUSE:I = 0x5

.field public static final CURRENT_STATE_PLAYING:I = 0x2

.field public static final CURRENT_STATE_PLAYING_BUFFERING_START:I = 0x3

.field public static final CURRENT_STATE_PREPAREING:I = 0x1


# instance fields
.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mBackUpPlayingBufferState:I

.field protected mBufferPoint:I

.field protected mCache:Z

.field protected mCachePath:Ljava/io/File;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentPosition:J

.field protected mCurrentState:I

.field protected mHadPlay:Z

.field protected mHadPrepared:Z

.field protected mIfCurrentIsFullscreen:Z

.field protected mLooping:Z

.field protected mMapHeadData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetChanged:Z

.field protected mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/NetInfoModule;

.field protected mNetSate:Ljava/lang/String;

.field protected mOriginUrl:Ljava/lang/String;

.field protected mOverrideExtension:Ljava/lang/String;

.field protected mPauseBeforePrepared:Z

.field protected mPlayPosition:I

.field protected mPlayTag:Ljava/lang/String;

.field protected mReleaseWhenLossAudio:Z

.field protected mSaveChangeViewTIme:J

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mSeekOnStart:J

.field protected mShowPauseCover:Z

.field protected mSoundTouch:Z

.field protected mSpeed:F

.field protected mStartAfterPrepared:Z

.field protected mTitle:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected mVideoAllCallBack:Lv7/h;

.field protected onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v1, -0x16

    .line 3
    iput v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 4
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 9
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 10
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 11
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 12
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 13
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 14
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 15
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 17
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 18
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string v0, "NORMAL"

    .line 20
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 22
    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 23
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 25
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v0, -0x16

    .line 26
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 27
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 28
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 30
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 32
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 33
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 34
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 35
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 36
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 37
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 38
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 40
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 41
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string p2, ""

    .line 42
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string p2, "NORMAL"

    .line 43
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 44
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 45
    new-instance p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;

    invoke-direct {p2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 46
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 48
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 p3, -0x16

    .line 49
    iput p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 50
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 p2, -0x1

    .line 51
    iput-wide p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 p2, 0x0

    .line 52
    iput-wide p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 p2, 0x3f800000    # 1.0f

    .line 53
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 p2, 0x0

    .line 54
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 55
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 56
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 57
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 58
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 59
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 60
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 61
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 p3, 0x1

    .line 62
    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 63
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 64
    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string p2, ""

    .line 65
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string p2, "NORMAL"

    .line 66
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 67
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 68
    new-instance p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;

    invoke-direct {p2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 69
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/16 v1, -0x16

    .line 72
    iput v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 73
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    const-wide/16 v0, -0x1

    .line 74
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 78
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 79
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 80
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 81
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 82
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 83
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 84
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 86
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 87
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    const-string v0, ""

    .line 88
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    const-string v0, "NORMAL"

    .line 89
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 91
    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 92
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 93
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected abstract backFromFull(Landroid/content/Context;)Z
.end method

.method public clearCurrentCache()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->A()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "Play Error "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v0, v1, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->e(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 56
    .line 57
    const-string v1, "127.0.0.1"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {v0, v1, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->e(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method protected createNetWorkState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/NetInfoModule;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/NetInfoModule;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$d;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/NetInfoModule;-><init>(Landroid/content/Context;Lcom/papa/gsyvideoplayer/utils/NetInfoModule$b;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/NetInfoModule;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/NetInfoModule;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method protected deleteCacheFileWhenError()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->clearCurrentCache()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "Link Or mCache Error, Please Try Again "

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "mCache Link "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 55
    .line 56
    return-void
.end method

.method protected getActivityContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->d(Landroid/content/Context;)Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getBuffterPoint()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBufferPoint:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentPositionWhenPlaying()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getCurrentPosition()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    long-to-int v2, v0

    .line 19
    :cond_1
    if-nez v2, :cond_2

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    cmp-long v5, v0, v3

    .line 26
    .line 27
    if-lez v5, :cond_2

    .line 28
    .line 29
    long-to-int v1, v0

    .line 30
    return v1

    .line 31
    :cond_2
    return v2

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    return v2
.end method

.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getVideoHeight()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getVideoWidth()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public getDuration()I
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    long-to-int v1, v0

    .line 10
    return v1

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public abstract getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;
.end method

.method public abstract getLayoutId()I
.end method

.method public getMapHeadData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNetSpeed()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->d()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getNetSpeedText()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getNetSpeed()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/papa/gsyvideoplayer/utils/b;->j(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getOverrideExtension()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOverrideExtension:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlayPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public getPlayTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSeekOnStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    .line 2
    .line 3
    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getVideoSarDen()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getVideoSarNum()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    :goto_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->initInflate(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->surface_container:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/view/ViewGroup;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49
    .line 50
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenWidth:I

    .line 51
    .line 52
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 63
    .line 64
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenHeight:I

    .line 65
    .line 66
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "audio"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/media/AudioManager;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 81
    .line 82
    return-void
.end method

.method protected initInflate(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getLayoutId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "GSYImageCover"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v0, "********************\n*****   \u6ce8\u610f   *************************\n*\u8be5\u7248\u672c\u9700\u8981\u6e05\u9664\u5e03\u5c40\u6587\u4ef6\u4e2d\u7684GSYImageCover\n****  Attention  ***\n*Please remove GSYImageCover from Layout in this Version\n********************\n"

    .line 27
    .line 28
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    new-instance p1, Landroid/view/InflateException;

    .line 35
    .line 36
    const-string v0, "\u8be5\u7248\u672c\u9700\u8981\u6e05\u9664\u5e03\u5c40\u6587\u4ef6\u4e2d\u7684GSYImageCover\uff0cplease remove GSYImageCover from your layout"

    .line 37
    .line 38
    invoke-direct {p1, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method protected isCurrentMediaListener()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->w()Lv7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->w()Lv7/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-ne v0, p0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public isIfCurrentIsFullscreen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInPlayingState()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x6

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x7

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public isLooping()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 2
    .line 3
    return v0
.end method

.method public isReleaseWhenLossAudio()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowPauseCover()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStartAfterPrepared()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 2
    .line 3
    return v0
.end method

.method protected listenerNetWorkState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/NetInfoModule;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/NetInfoModule;->g()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected netWorkErrorLogic()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentPositionWhenPlaying()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v3, "******* Net State Changed. renew player to connect *******"

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Lcom/papa/gsyvideoplayer/video/base/a;->y()V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;

    .line 34
    .line 35
    invoke-direct {v2, p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$c;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;J)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v0, 0x1f4

    .line 39
    .line 40
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public onAutoCompletion()V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 3
    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-interface {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/a;->z(Lv7/a;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    instance-of v1, v0, Landroid/app/Activity;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/16 v1, 0x80

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseNetWorkState()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    const-string v0, "onAutoComplete"

    .line 79
    .line 80
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 86
    .line 87
    const/4 v2, 0x2

    .line 88
    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    .line 90
    const/4 v3, 0x0

    .line 91
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 92
    .line 93
    aput-object v4, v2, v3

    .line 94
    .line 95
    const/4 v3, 0x1

    .line 96
    aput-object p0, v2, v3

    .line 97
    .line 98
    invoke-interface {v0, v1, v2}, Lv7/h;->onAutoComplete(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    return-void
.end method

.method public onCompletion()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 3
    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    iput-wide v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 10
    .line 11
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-interface {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/a;->x(Lv7/a;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1, v2}, Lcom/papa/gsyvideoplayer/video/base/a;->z(Lv7/a;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1, v0}, Lcom/papa/gsyvideoplayer/video/base/a;->o(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1, v0}, Lcom/papa/gsyvideoplayer/video/base/a;->r(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    instance-of v1, v0, Landroid/app/Activity;

    .line 67
    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/16 v1, 0x80

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseNetWorkState()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public onError(II)V
    .locals 4

    .line 1
    iget-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x2

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iput-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->netWorkErrorLogic()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 18
    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 22
    .line 23
    aput-object v3, v1, v2

    .line 24
    .line 25
    aput-object p0, v1, v0

    .line 26
    .line 27
    invoke-interface {p1, p2, v1}, Lv7/h;->onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    const/16 p2, 0x26

    .line 32
    .line 33
    if-eq p1, p2, :cond_2

    .line 34
    .line 35
    const/16 p2, -0x26

    .line 36
    .line 37
    if-eq p1, p2, :cond_2

    .line 38
    .line 39
    const/4 p1, 0x7

    .line 40
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->deleteCacheFileWhenError()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 51
    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 55
    .line 56
    aput-object v3, v1, v2

    .line 57
    .line 58
    aput-object p0, v1, v0

    .line 59
    .line 60
    invoke-interface {p1, p2, v1}, Lv7/h;->onPlayError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method protected onGankAudio()V
    .locals 0

    return-void
.end method

.method public onInfo(II)V
    .locals 3

    .line 1
    const/16 v0, 0x2bd

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 8
    .line 9
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 10
    .line 11
    iget-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 12
    .line 13
    if-eqz p2, :cond_4

    .line 14
    .line 15
    if-eq p1, v2, :cond_4

    .line 16
    .line 17
    if-lez p1, :cond_4

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0x2be

    .line 24
    .line 25
    if-ne p1, v0, :cond_3

    .line 26
    .line 27
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 28
    .line 29
    const/4 p2, -0x1

    .line 30
    if-eq p1, p2, :cond_4

    .line 31
    .line 32
    if-ne p1, v1, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x2

    .line 35
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 36
    .line 37
    :cond_1
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 42
    .line 43
    if-eq p1, v2, :cond_2

    .line 44
    .line 45
    if-lez p1, :cond_2

    .line 46
    .line 47
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->n()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-ne p1, v0, :cond_4

    .line 64
    .line 65
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    .line 66
    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v0, "Video Rotate Info "

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    .line 92
    .line 93
    int-to-float p2, p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/papa/gsyvideoplayer/render/a;->w(F)V

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_0
    return-void
.end method

.method protected onLossAudio()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$b;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onLossTransientAudio()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method protected onLossTransientCanDuck()V
    .locals 0

    return-void
.end method

.method public onPrepared()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, "onPrepared"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    new-array v3, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 33
    .line 34
    aput-object v5, v3, v4

    .line 35
    .line 36
    aput-object p0, v3, v1

    .line 37
    .line 38
    invoke-interface {v0, v2, v3}, Lv7/h;->onPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    const/4 v0, 0x5

    .line 46
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startAfterPrepared()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public onSeekComplete()V
    .locals 1

    .line 1
    const-string v0, "onSeekComplete"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onVideoPause()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 7
    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->isPlaying()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getCurrentPosition()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public onVideoReset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onVideoResume()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    return-void
.end method

.method public onVideoResume(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoResume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_3

    .line 5
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J

    invoke-interface {p1, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/a;->seekTo(J)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/video/base/a;->start()V

    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 11
    :cond_2
    iput-wide v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentPosition:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->getCurrentVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/papa/gsyvideoplayer/video/base/a;->getCurrentVideoHeight()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/render/a;->o()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method protected prepareVideo()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startPrepare()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public release()V
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-wide v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 16
    .line 17
    sub-long/2addr v0, v2

    .line 18
    const-wide/16 v2, 0x7d0

    .line 19
    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-lez v4, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseVideos()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method protected releaseNetWorkState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/NetInfoModule;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/NetInfoModule;->f()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/NetInfoModule;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected releasePauseCover()V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return-void
.end method

.method protected releaseSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/video/base/a;->t(Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected abstract releaseVideos()V
.end method

.method public seekTo(J)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    cmp-long v2, p1, v0

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/a;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :goto_0
    return-void
.end method

.method protected setDisplay(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/video/base/a;->q(Landroid/view/Surface;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setIfCurrentIsFullscreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMapHeadData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public setOverrideExtension(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOverrideExtension:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPlayPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public setPlayTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setReleaseWhenLossAudio(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSeekOnStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    .line 2
    .line 3
    return-void
.end method

.method public setShowPauseCover(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(FZ)V

    return-void
.end method

.method public setSpeed(FZ)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    .line 3
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/a;->a(FZ)V

    :cond_0
    return-void
.end method

.method public setSpeedPlaying(FZ)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(FZ)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/a;->c(FZ)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setStartAfterPrepared(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 2
    .line 3
    return-void
.end method

.method protected abstract setStateAndUi(I)V
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;Z)Z
    .locals 4

    .line 8
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 9
    iput-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 10
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    return p3

    .line 13
    :cond_0
    iput p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 14
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    if-eqz p5, :cond_1

    .line 16
    invoke-virtual {p0, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    :goto_0
    if-eqz p4, :cond_1

    .line 6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setVideoAllCallBack(Lv7/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 2
    .line 3
    return-void
.end method

.method protected showPauseCover()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mSurface:Landroid/view/Surface;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->g()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/render/a;->h()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    int-to-float v1, v1

    .line 49
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/render/a;->c()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    int-to-float v2, v2

    .line 56
    const/4 v3, 0x0

    .line 57
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mSurface:Landroid/view/Surface;

    .line 61
    .line 62
    new-instance v2, Landroid/graphics/Rect;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/render/a;->h()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    .line 71
    .line 72
    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/render/a;->c()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    const/4 v5, 0x0

    .line 77
    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_0

    .line 85
    .line 86
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-virtual {v1, v2, v3, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mSurface:Landroid/view/Surface;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 100
    .line 101
    .line 102
    :cond_0
    :goto_0
    return-void
.end method

.method public startAfterPrepared()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->start()V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    .line 32
    .line 33
    const-wide/16 v2, 0x0

    .line 34
    .line 35
    cmp-long v4, v0, v2

    .line 36
    .line 37
    if-lez v4, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-wide v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J

    .line 44
    .line 45
    invoke-interface {v0, v4, v5}, Lcom/papa/gsyvideoplayer/video/base/a;->seekTo(J)V

    .line 46
    .line 47
    .line 48
    iput-wide v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSeekOnStart:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->createNetWorkState()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->listenerNetWorkState()V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 66
    .line 67
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/render/a;->m()V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 83
    .line 84
    :cond_4
    return-void
.end method

.method protected startButtonLogic()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v5, 0x6

    .line 13
    if-ne v4, v5, :cond_1

    .line 14
    .line 15
    :cond_0
    const-string v0, "onClickStartIcon"

    .line 16
    .line 17
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 23
    .line 24
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 27
    .line 28
    aput-object v5, v3, v2

    .line 29
    .line 30
    aput-object p0, v3, v1

    .line 31
    .line 32
    invoke-interface {v0, v4, v3}, Lv7/h;->onClickStartIcon(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const-string v0, "onClickStartError"

    .line 39
    .line 40
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 44
    .line 45
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 46
    .line 47
    new-array v3, v3, [Ljava/lang/Object;

    .line 48
    .line 49
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 50
    .line 51
    aput-object v5, v3, v2

    .line 52
    .line 53
    aput-object p0, v3, v1

    .line 54
    .line 55
    invoke-interface {v0, v4, v3}, Lv7/h;->onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public abstract startPlayLogic()V
.end method

.method protected startPrepare()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->w()Lv7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->w()Lv7/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lv7/a;->onCompletion()V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    const/4 v2, 0x2

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "onStartPrepared"

    .line 29
    .line 30
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 36
    .line 37
    new-array v4, v2, [Ljava/lang/Object;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    iget-object v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 41
    .line 42
    aput-object v6, v4, v5

    .line 43
    .line 44
    aput-object p0, v4, v1

    .line 45
    .line 46
    invoke-interface {v0, v3, v4}, Lv7/h;->onStartPrepared(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/a;->x(Lv7/a;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 61
    .line 62
    invoke-interface {v0, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->i(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 70
    .line 71
    invoke-interface {v0, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->v(I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 75
    .line 76
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 77
    .line 78
    const/4 v4, 0x3

    .line 79
    invoke-virtual {v0, v3, v4, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 80
    .line 81
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    instance-of v2, v0, Landroid/app/Activity;

    .line 85
    .line 86
    if-eqz v2, :cond_2

    .line 87
    .line 88
    check-cast v0, Landroid/app/Activity;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/16 v2, 0x80

    .line 95
    .line 96
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 114
    .line 115
    if-nez v0, :cond_3

    .line 116
    .line 117
    new-instance v0, Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    .line 121
    .line 122
    :cond_3
    move-object v4, v0

    .line 123
    iget-boolean v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mLooping:Z

    .line 124
    .line 125
    iget v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSpeed:F

    .line 126
    .line 127
    iget-boolean v7, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 128
    .line 129
    iget-object v8, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 130
    .line 131
    iget-object v9, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOverrideExtension:Ljava/lang/String;

    .line 132
    .line 133
    invoke-interface/range {v2 .. v9}, Lcom/papa/gsyvideoplayer/video/base/a;->k(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setStateAndUi(I)V

    .line 137
    .line 138
    .line 139
    return-void
.end method

.method protected unListenerNetWorkState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetInfoModule:Lcom/papa/gsyvideoplayer/utils/NetInfoModule;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/NetInfoModule;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected updatePauseCover()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method
