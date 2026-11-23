.class public Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;
.super Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "SourceFile"


# static fields
.field public static mute:Z = false

.field private static muteFullScrBak:Z = true


# instance fields
.field public backButton:Landroid/widget/ImageView;

.field public batteryTimeLayout:Landroid/widget/LinearLayout;

.field public battery_level:Landroid/widget/ImageView;

.field public bottomProgressBar:Landroid/widget/ProgressBar;

.field public clarity:Landroid/widget/TextView;

.field public cover:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private fixedHeight:I

.field private fixedWidth:I

.field private heightRatio:I

.field public loadingProgressBar:Landroid/widget/ProgressBar;

.field protected mAutoPlay:Landroid/widget/ImageView;

.field private matrix:Landroid/graphics/Matrix;

.field public muteImageView:Landroid/widget/ImageView;

.field private muteWhenPlay:Z

.field protected noneNetFinishActivity:Z

.field public retryTextView:Landroid/widget/TextView;

.field public thumbImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public tinyBackImageView:Landroid/widget/ImageView;

.field public titleTextView:Landroid/widget/TextView;

.field public url:Ljava/lang/String;

.field public video_current_time:Landroid/widget/TextView;

.field private widthRatio:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->noneNetFinishActivity:Z

    .line 3
    iput-boolean p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteWhenPlay:Z

    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->noneNetFinishActivity:Z

    .line 7
    iput-boolean p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteWhenPlay:Z

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->url:Ljava/lang/String;

    return-void
.end method

.method private transformVideo(II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoWidth",
            "videoHeight"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedWidth()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    int-to-float v0, v0

    .line 19
    int-to-float v1, p1

    .line 20
    div-float/2addr v0, v1

    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedHeight()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    int-to-float v2, v2

    .line 26
    int-to-float v3, p2

    .line 27
    div-float/2addr v2, v3

    .line 28
    if-le p1, p2, :cond_1

    .line 29
    .line 30
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    new-instance v2, Landroid/graphics/Matrix;

    .line 44
    .line 45
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 52
    .line 53
    .line 54
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedWidth()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    sub-int/2addr v4, p1

    .line 61
    div-int/lit8 v4, v4, 0x2

    .line 62
    .line 63
    int-to-float p1, v4

    .line 64
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedHeight()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    sub-int/2addr v4, p2

    .line 69
    div-int/lit8 v4, v4, 0x2

    .line 70
    .line 71
    int-to-float p2, v4

    .line 72
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedWidth()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    int-to-float p2, p2

    .line 82
    div-float/2addr v1, p2

    .line 83
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedHeight()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    int-to-float p2, p2

    .line 88
    div-float/2addr v3, p2

    .line 89
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedWidth()I

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    div-int/lit8 p2, p2, 0x2

    .line 99
    .line 100
    int-to-float p2, p2

    .line 101
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->getResizedHeight()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    div-int/lit8 v1, v1, 0x2

    .line 106
    .line 107
    int-to-float v1, v1

    .line 108
    invoke-virtual {p1, v0, v0, p2, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    .line 112
    .line 113
    if-eqz p1, :cond_3

    .line 114
    .line 115
    iget-object p2, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->matrix:Landroid/graphics/Matrix;

    .line 116
    .line 117
    invoke-virtual {p1, p2}, Lcom/papa/gsyvideoplayer/render/a;->x(Landroid/graphics/Matrix;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected changeUiToCompleteShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/16 v1, 0x8

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 57
    .line 58
    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 63
    .line 64
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->m()V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method protected changeUiToError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 35
    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/16 v1, 0x8

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 57
    .line 58
    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 63
    .line 64
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->m()V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method protected changeUiToNormal()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/16 v1, 0x8

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 60
    .line 61
    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 66
    .line 67
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->m()V

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method protected changeUiToPauseShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/16 v1, 0x8

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 57
    .line 58
    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 63
    .line 64
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->m()V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->updatePauseCover()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method protected changeUiToPlayingBufferingShow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 48
    .line 49
    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 54
    .line 55
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->getCurrentState()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 62
    .line 63
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 64
    .line 65
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->n()V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/16 v1, 0x8

    .line 52
    .line 53
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 57
    .line 58
    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 63
    .line 64
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->m()V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->updateStartImage()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method protected changeUiToPreparingShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 41
    .line 42
    const/16 v1, 0x8

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 48
    .line 49
    instance-of v1, v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 54
    .line 55
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->getCurrentState()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 62
    .line 63
    check-cast v0, Lmoe/codeest/enviews/ENDownloadView;

    .line 64
    .line 65
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENDownloadView;->n()V

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void
.end method

.method public clickPlay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0864

    return v0
.end method

.method public getResizedHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->fixedHeight:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    return v0
.end method

.method public getResizedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->fixedWidth:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    return v0
.end method

.method protected hideAllWidget()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->init(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0a013b

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a1747

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->thumbImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    if-eq v2, v3, :cond_0

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x7

    .line 38
    if-ne v2, v3, :cond_1

    .line 39
    .line 40
    :cond_0
    const/4 v2, 0x0

    .line 41
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v2, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView$1;

    .line 49
    .line 50
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView$1;-><init>(Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setLooping(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->initCustomView()V

    .line 61
    .line 62
    .line 63
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/f;->l(I)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method initCustomView()V
    .locals 2

    .line 1
    const v0, 0x7f0a10c6

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteImageView:Landroid/widget/ImageView;

    .line 11
    .line 12
    const v0, 0x7f0a0130

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/ImageView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mAutoPlay:Landroid/widget/ImageView;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteImageView:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mAutoPlay:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    sget-boolean v0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mute:Z

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMuteView(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mAutoPlay:Landroid/widget/ImageView;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onAutoCompletion()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onAutoCompletion()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCompletion()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onCompletion()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->fixedWidth:I

    .line 9
    .line 10
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->fixedHeight:I

    .line 15
    .line 16
    return-void
.end method

.method public onPrepared()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onPrepared()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteWhenPlay:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMute(Z)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteWhenPlay:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-boolean v0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mute:Z

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMute(Z)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "w",
            "h",
            "oldw",
            "oldh"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->onSurfaceAvailable(Landroid/view/Surface;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/papa/gsyvideoplayer/utils/f;->e()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public onSurfaceUpdated(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->onSurfaceUpdated(Landroid/view/Surface;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setCover(Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cover"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->cover:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMuteOnly(Z)V

    .line 2
    .line 3
    .line 4
    sput-boolean p1, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->mute:Z

    .line 5
    .line 6
    return-void
.end method

.method public setMuteOnly(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/papa/gsyvideoplayer/d;->e0()Lcom/papa/gsyvideoplayer/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->setMuteView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setMuteView(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteImageView:Landroid/widget/ImageView;

    .line 4
    .line 5
    const v0, 0x7f080d9e

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/FulllScreenVideoView;->muteImageView:Landroid/widget/ImageView;

    .line 13
    .line 14
    const v0, 0x7f080d9d

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method protected setViewShowState(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "visibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
