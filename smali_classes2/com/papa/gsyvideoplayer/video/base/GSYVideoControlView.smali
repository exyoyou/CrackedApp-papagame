.class public abstract Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;
.super Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field dismissControlTask:Ljava/lang/Runnable;

.field protected gestureDetector:Landroid/view/GestureDetector;

.field protected isShowDragProgressTextOnSeekBar:Z

.field protected mBackButton:Landroid/widget/ImageView;

.field protected mBottomContainer:Landroid/view/ViewGroup;

.field protected mBottomProgressBar:Landroid/widget/ProgressBar;

.field protected mBrightness:Z

.field protected mBrightnessData:F

.field protected mChangePosition:Z

.field protected mChangeVolume:Z

.field protected mCurrentTimeTextView:Landroid/widget/TextView;

.field protected mDismissControlTime:I

.field protected mDownPosition:I

.field protected mDownX:F

.field protected mDownY:F

.field protected mEnlargeImageRes:I

.field protected mFirstTouch:Z

.field protected mFullscreenButton:Landroid/widget/ImageView;

.field protected mGSYVideoProgressListener:Lv7/d;

.field protected mGestureDownVolume:I

.field protected mHadSeekTouch:Z

.field protected mHideKey:Z

.field protected mIsTouchWiget:Z

.field protected mIsTouchWigetFull:Z

.field protected mLoadingProgressBar:Landroid/view/View;

.field protected mLockClickListener:Lv7/g;

.field protected mLockCurScreen:Z

.field protected mLockScreen:Landroid/widget/ImageView;

.field protected mMoveY:F

.field protected mNeedLockFull:Z

.field protected mNeedShowWifiTip:Z

.field protected mPostDismiss:Z

.field protected mPostProgress:Z

.field protected mProgressBar:Landroid/widget/SeekBar;

.field protected mSeekEndOffset:I

.field protected mSeekRatio:F

.field protected mSeekTimePosition:I

.field protected mSetUpLazy:Z

.field protected mShowVKey:Z

.field protected mShrinkImageRes:I

.field protected mStartButton:Landroid/view/View;

.field protected mThreshold:I

.field protected mThumbImageView:Landroid/view/View;

.field protected mThumbImageViewLayout:Landroid/widget/RelativeLayout;

.field protected mThumbPlay:Z

.field protected mTitleTextView:Landroid/widget/TextView;

.field protected mTopContainer:Landroid/view/ViewGroup;

.field protected mTotalTimeTextView:Landroid/widget/TextView;

.field protected mTouchingProgressBar:Z

.field progressTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x50

    .line 2
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 4
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 5
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 6
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 9
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 10
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 11
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 12
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 13
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 15
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 16
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 17
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 18
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 19
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 20
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 21
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 22
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    .line 23
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;

    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 24
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 25
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x50

    .line 27
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 29
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 30
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 31
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 32
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 34
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 35
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 36
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 37
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 38
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 40
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 41
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 42
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 43
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 44
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 45
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 46
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 47
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    .line 48
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 49
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 50
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

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

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x50

    .line 52
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 54
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 55
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 56
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 57
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 59
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 60
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 61
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 62
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 63
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 64
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 65
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 66
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 67
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 68
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 69
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 70
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 71
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 72
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    .line 73
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;

    invoke-direct {p3, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 74
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 75
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/16 p1, 0x50

    .line 77
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 79
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    const/16 p1, 0x9c4

    .line 80
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 81
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 82
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 84
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 85
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 86
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 87
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 88
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    const/4 p2, 0x1

    .line 89
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 90
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 91
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 92
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 93
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 94
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 95
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 96
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 97
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    .line 98
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;

    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 99
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 100
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected cancelDismissControlViewTimer()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected cancelProgressTimer()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected abstract changeUiToCompleteShow()V
.end method

.method protected abstract changeUiToError()V
.end method

.method protected abstract changeUiToNormal()V
.end method

.method protected abstract changeUiToPauseShow()V
.end method

.method protected abstract changeUiToPlayingBufferingShow()V
.end method

.method protected abstract changeUiToPlayingShow()V
.end method

.method protected abstract changeUiToPreparingShow()V
.end method

.method public clearThumbImageView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected clickStartIcon()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "********"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget v2, Lcom/papa/gsyvideoplayer/R$string;->no_url:I

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 41
    .line 42
    if-eqz v0, :cond_8

    .line 43
    .line 44
    const/4 v1, 0x7

    .line 45
    if-ne v0, v1, :cond_1

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_1
    const/4 v1, 0x5

    .line 50
    const/4 v2, 0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    const/4 v4, 0x2

    .line 53
    if-ne v0, v4, :cond_3

    .line 54
    .line 55
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-virtual {p0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 67
    .line 68
    if-eqz v0, :cond_a

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_a

    .line 75
    .line 76
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 77
    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    const-string v0, "onClickStopFullscreen"

    .line 81
    .line 82
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 88
    .line 89
    new-array v4, v4, [Ljava/lang/Object;

    .line 90
    .line 91
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 92
    .line 93
    aput-object v5, v4, v3

    .line 94
    .line 95
    aput-object p0, v4, v2

    .line 96
    .line 97
    invoke-interface {v0, v1, v4}, Lv7/h;->onClickStopFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_4

    .line 101
    .line 102
    :cond_2
    const-string v0, "onClickStop"

    .line 103
    .line 104
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 110
    .line 111
    new-array v4, v4, [Ljava/lang/Object;

    .line 112
    .line 113
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 114
    .line 115
    aput-object v5, v4, v3

    .line 116
    .line 117
    aput-object p0, v4, v2

    .line 118
    .line 119
    invoke-interface {v0, v1, v4}, Lv7/h;->onClickStop(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_3
    if-ne v0, v1, :cond_7

    .line 124
    .line 125
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 126
    .line 127
    if-eqz v0, :cond_5

    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 134
    .line 135
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 136
    .line 137
    if-eqz v0, :cond_4

    .line 138
    .line 139
    const-string v0, "onClickResumeFullscreen"

    .line 140
    .line 141
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 147
    .line 148
    new-array v5, v4, [Ljava/lang/Object;

    .line 149
    .line 150
    iget-object v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 151
    .line 152
    aput-object v6, v5, v3

    .line 153
    .line 154
    aput-object p0, v5, v2

    .line 155
    .line 156
    invoke-interface {v0, v1, v5}, Lv7/h;->onClickResumeFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_4
    const-string v0, "onClickResume"

    .line 161
    .line 162
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 166
    .line 167
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 168
    .line 169
    new-array v5, v4, [Ljava/lang/Object;

    .line 170
    .line 171
    iget-object v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 172
    .line 173
    aput-object v6, v5, v3

    .line 174
    .line 175
    aput-object p0, v5, v2

    .line 176
    .line 177
    invoke-interface {v0, v1, v5}, Lv7/h;->onClickResume(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 181
    .line 182
    if-nez v0, :cond_6

    .line 183
    .line 184
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 185
    .line 186
    if-nez v0, :cond_6

    .line 187
    .line 188
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startAfterPrepared()V

    .line 189
    .line 190
    .line 191
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :catch_1
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 201
    .line 202
    .line 203
    :goto_2
    invoke-virtual {p0, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 204
    .line 205
    .line 206
    goto :goto_4

    .line 207
    :cond_7
    const/4 v1, 0x6

    .line 208
    if-ne v0, v1, :cond_a

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startButtonLogic()V

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowNetConfirm()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_9

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showWifiDialog()V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startButtonLogic()V

    .line 225
    .line 226
    .line 227
    :cond_a
    :goto_4
    return-void
.end method

.method protected abstract dismissBrightnessDialog()V
.end method

.method protected abstract dismissProgressDialog()V
.end method

.method protected abstract dismissVolumeDialog()V
.end method

.method public getBackButton()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDismissControlTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    .line 2
    .line 3
    return v0
.end method

.method public getEnlargeImageRes()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/papa/gsyvideoplayer/R$drawable;->video_enlarge:I

    .line 7
    .line 8
    :cond_0
    return v0
.end method

.method public getFullscreenButton()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSeekRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    .line 2
    .line 3
    return v0
.end method

.method public getShrinkImageRes()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/papa/gsyvideoplayer/R$drawable;->video_shrink:I

    .line 7
    .line 8
    :cond_0
    return v0
.end method

.method public getStartButton()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThumbImageView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getThumbImageViewLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract hideAllWidget()V
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->init(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->start:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 11
    .line 12
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->title:I

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    .line 21
    .line 22
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->back:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/ImageView;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    .line 31
    .line 32
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->fullscreen:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    .line 41
    .line 42
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->progress:I

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Landroid/widget/SeekBar;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 51
    .line 52
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->current:I

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 61
    .line 62
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->total:I

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 71
    .line 72
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->layout_bottom:I

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/view/ViewGroup;

    .line 79
    .line 80
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 81
    .line 82
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->layout_top:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroid/view/ViewGroup;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 91
    .line 92
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->bottom_progressbar:I

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/widget/ProgressBar;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 101
    .line 102
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->thumb:I

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 109
    .line 110
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 111
    .line 112
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->lock_screen:I

    .line 113
    .line 114
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    check-cast p1, Landroid/widget/ImageView;

    .line 119
    .line 120
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 121
    .line 122
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->loading:I

    .line 123
    .line 124
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_0

    .line 135
    .line 136
    return-void

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 138
    .line 139
    if-eqz p1, :cond_1

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    .line 145
    .line 146
    if-eqz p1, :cond_2

    .line 147
    .line 148
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    .line 155
    .line 156
    :cond_2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 157
    .line 158
    if-eqz p1, :cond_3

    .line 159
    .line 160
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 164
    .line 165
    if-eqz p1, :cond_4

    .line 166
    .line 167
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 171
    .line 172
    if-eqz p1, :cond_5

    .line 173
    .line 174
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 178
    .line 179
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    .line 181
    .line 182
    :cond_5
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 183
    .line 184
    if-eqz p1, :cond_6

    .line 185
    .line 186
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 187
    .line 188
    .line 189
    :cond_6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 190
    .line 191
    const/16 v0, 0x8

    .line 192
    .line 193
    if-eqz p1, :cond_7

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 199
    .line 200
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    :cond_7
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    .line 204
    .line 205
    if-eqz p1, :cond_8

    .line 206
    .line 207
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 208
    .line 209
    if-nez p1, :cond_8

    .line 210
    .line 211
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 212
    .line 213
    if-eqz p1, :cond_8

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 216
    .line 217
    .line 218
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    .line 219
    .line 220
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->resolveThumbImage(Landroid/view/View;)V

    .line 221
    .line 222
    .line 223
    :cond_8
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBackButton:Landroid/widget/ImageView;

    .line 224
    .line 225
    if-eqz p1, :cond_9

    .line 226
    .line 227
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    :cond_9
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 231
    .line 232
    if-eqz p1, :cond_a

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 238
    .line 239
    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$a;

    .line 240
    .line 241
    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    :cond_a
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    if-eqz p1, :cond_b

    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    const/high16 v0, 0x42480000    # 50.0f

    .line 258
    .line 259
    invoke-static {p1, v0}, Lcom/papa/gsyvideoplayer/utils/b;->b(Landroid/content/Context;F)I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    .line 264
    .line 265
    :cond_b
    return-void
.end method

.method public initUIState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public isHideKey()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNeedLockFull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNeedShowWifiTip()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowDragProgressTextOnSeekBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    .line 2
    .line 3
    return v0
.end method

.method protected isShowNetConfirm()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "file"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "android.resource"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->m(Landroid/content/Context;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 48
    .line 49
    invoke-interface {v0, v1, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0
.end method

.method public isTouchWiget()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTouchWigetFull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 2
    .line 3
    return v0
.end method

.method protected lockTouchLogic()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 6
    .line 7
    sget v1, Lcom/papa/gsyvideoplayer/R$drawable;->unlock:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 17
    .line 18
    sget v1, Lcom/papa/gsyvideoplayer/R$drawable;->lock:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->hideAllWidget()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method protected loopSetProgressAndTime()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method public onAutoCompletion()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAutoCompletion()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected onBrightnessSlide(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    check-cast v0, Landroid/app/Activity;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 14
    .line 15
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const v2, 0x3c23d70a    # 0.01f

    .line 19
    .line 20
    .line 21
    cmpg-float v1, v0, v1

    .line 22
    .line 23
    if-gtz v1, :cond_0

    .line 24
    .line 25
    const/high16 v0, 0x3f000000    # 0.5f

    .line 26
    .line 27
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    cmpg-float v0, v0, v2

    .line 31
    .line 32
    if-gez v0, :cond_1

    .line 33
    .line 34
    iput v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    check-cast v0, Landroid/app/Activity;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    .line 49
    .line 50
    add-float/2addr v1, p1

    .line 51
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 52
    .line 53
    const/high16 p1, 0x3f800000    # 1.0f

    .line 54
    .line 55
    cmpl-float v3, v1, p1

    .line 56
    .line 57
    if-lez v3, :cond_2

    .line 58
    .line 59
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    cmpg-float p1, v1, v2

    .line 63
    .line 64
    if-gez p1, :cond_3

    .line 65
    .line 66
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 67
    .line 68
    :cond_3
    :goto_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showBrightnessDialog(F)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    check-cast p1, Landroid/app/Activity;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView$c;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->start:I

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_1
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->surface_container:I

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x2

    .line 32
    if-ne p1, v0, :cond_3

    .line 33
    .line 34
    iget v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 35
    .line 36
    const/4 v5, 0x7

    .line 37
    if-ne v4, v5, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 40
    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    const-string p1, "onClickStartError"

    .line 44
    .line 45
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 51
    .line 52
    new-array v3, v3, [Ljava/lang/Object;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 55
    .line 56
    aput-object v4, v3, v2

    .line 57
    .line 58
    aput-object p0, v3, v1

    .line 59
    .line 60
    invoke-interface {p1, v0, v3}, Lv7/h;->onClickStartError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->prepareVideo()V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :cond_3
    sget v4, Lcom/papa/gsyvideoplayer/R$id;->thumb:I

    .line 69
    .line 70
    if-ne p1, v4, :cond_8

    .line 71
    .line 72
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbPlay:Z

    .line 73
    .line 74
    if-nez p1, :cond_4

    .line 75
    .line 76
    return-void

    .line 77
    :cond_4
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v0, "********"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget v1, Lcom/papa/gsyvideoplayer/R$string;->no_url:I

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_5
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 117
    .line 118
    if-nez p1, :cond_7

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowNetConfirm()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_6

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showWifiDialog()V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startPlayLogic()V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_7
    const/4 v0, 0x6

    .line 135
    if-ne p1, v0, :cond_b

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_8
    if-ne p1, v0, :cond_b

    .line 142
    .line 143
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 144
    .line 145
    if-eqz p1, :cond_a

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-eqz p1, :cond_a

    .line 152
    .line 153
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 154
    .line 155
    if-eqz p1, :cond_9

    .line 156
    .line 157
    const-string p1, "onClickBlankFullscreen"

    .line 158
    .line 159
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 163
    .line 164
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 165
    .line 166
    new-array v3, v3, [Ljava/lang/Object;

    .line 167
    .line 168
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 169
    .line 170
    aput-object v4, v3, v2

    .line 171
    .line 172
    aput-object p0, v3, v1

    .line 173
    .line 174
    invoke-interface {p1, v0, v3}, Lv7/h;->onClickBlankFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_9
    const-string p1, "onClickBlank"

    .line 179
    .line 180
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 184
    .line 185
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 186
    .line 187
    new-array v3, v3, [Ljava/lang/Object;

    .line 188
    .line 189
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 190
    .line 191
    aput-object v4, v3, v2

    .line 192
    .line 193
    aput-object p0, v3, v1

    .line 194
    .line 195
    invoke-interface {p1, v0, v3}, Lv7/h;->onClickBlank(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    :cond_a
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 199
    .line 200
    .line 201
    :cond_b
    :goto_1
    return-void
.end method

.method protected abstract onClickUiToggle()V
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

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
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "------------------------------ dismiss onDetachedFromWindow"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public onError(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onError(II)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 12
    .line 13
    const/16 p2, 0x8

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setTextAndProgress(IZ)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onPrepared()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "------------------------------ surface_container onPrepared"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showDragProgressTextOnSeekBar(ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 3
    .line 4
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x2

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const-string v0, "onClickSeekbarFullscreen"

    .line 21
    .line 22
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 28
    .line 29
    new-array v3, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 32
    .line 33
    aput-object v5, v3, v1

    .line 34
    .line 35
    aput-object p0, v3, v2

    .line 36
    .line 37
    invoke-interface {v0, v4, v3}, Lv7/h;->onClickSeekbarFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string v0, "onClickSeekbar"

    .line 42
    .line 43
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 47
    .line 48
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 49
    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 53
    .line 54
    aput-object v5, v3, v1

    .line 55
    .line 56
    aput-object p0, v3, v2

    .line 57
    .line 58
    invoke-interface {v0, v4, v3}, Lv7/h;->onClickSeekbar(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    mul-int p1, p1, v0

    .line 80
    .line 81
    div-int/lit8 p1, p1, 0x64

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    int-to-long v2, p1

    .line 88
    invoke-interface {v0, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/a;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->j(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 101
    .line 102
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 30
    .line 31
    .line 32
    return v3

    .line 33
    :cond_0
    sget v2, Lcom/papa/gsyvideoplayer/R$id;->fullscreen:I

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    if-ne p1, v2, :cond_1

    .line 37
    .line 38
    return v4

    .line 39
    :cond_1
    sget v2, Lcom/papa/gsyvideoplayer/R$id;->surface_container:I

    .line 40
    .line 41
    const/4 v5, 0x2

    .line 42
    if-ne p1, v2, :cond_9

    .line 43
    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_7

    .line 49
    .line 50
    if-eq p1, v3, :cond_6

    .line 51
    .line 52
    if-eq p1, v5, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    .line 56
    .line 57
    sub-float/2addr v0, p1

    .line 58
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    .line 59
    .line 60
    sub-float p1, v1, p1

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iget-boolean v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    iget-boolean v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 75
    .line 76
    if-nez v6, :cond_4

    .line 77
    .line 78
    :cond_3
    iget-boolean v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 79
    .line 80
    if-eqz v6, :cond_5

    .line 81
    .line 82
    if-nez v5, :cond_5

    .line 83
    .line 84
    :cond_4
    iget-boolean v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 85
    .line 86
    if-nez v5, :cond_5

    .line 87
    .line 88
    iget-boolean v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 89
    .line 90
    if-nez v5, :cond_5

    .line 91
    .line 92
    iget-boolean v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 93
    .line 94
    if-nez v5, :cond_5

    .line 95
    .line 96
    invoke-virtual {p0, v2, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMoveFullLogic(FF)V

    .line 97
    .line 98
    .line 99
    :cond_5
    invoke-virtual {p0, v0, p1, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMove(FFF)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceUp()V

    .line 107
    .line 108
    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v0, "------------------------------ surface_container ACTION_UP"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 134
    .line 135
    .line 136
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 137
    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 141
    .line 142
    if-eqz p1, :cond_8

    .line 143
    .line 144
    return v3

    .line 145
    :cond_7
    invoke-virtual {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceDown(FF)V

    .line 146
    .line 147
    .line 148
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->gestureDetector:Landroid/view/GestureDetector;

    .line 149
    .line 150
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_9
    sget v0, Lcom/papa/gsyvideoplayer/R$id;->progress:I

    .line 155
    .line 156
    if-ne p1, v0, :cond_e

    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_c

    .line 163
    .line 164
    if-eq p1, v3, :cond_a

    .line 165
    .line 166
    if-eq p1, v5, :cond_d

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_a
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 170
    .line 171
    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string p2, "------------------------------ progress ACTION_UP"

    .line 185
    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    :goto_1
    if-eqz p1, :cond_b

    .line 204
    .line 205
    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 206
    .line 207
    .line 208
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    goto :goto_1

    .line 213
    :cond_b
    const/high16 p1, -0x40800000    # -1.0f

    .line 214
    .line 215
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightnessData:F

    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_c
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    .line 219
    .line 220
    .line 221
    :cond_d
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    :goto_2
    if-eqz p1, :cond_e

    .line 229
    .line 230
    invoke-interface {p1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 231
    .line 232
    .line 233
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    goto :goto_2

    .line 238
    :cond_e
    :goto_3
    return v4
.end method

.method protected prepareVideo()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 8
    .line 9
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 14
    .line 15
    move-object v1, p0

    .line 16
    invoke-super/range {v1 .. v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->prepareVideo()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected resetProgressAndTime()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 33
    .line 34
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method protected resolveThumbImage(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    .line 15
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 16
    .line 17
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method protected resolveUIState(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_5

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_4

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_3

    .line 11
    .line 12
    const/4 v0, 0x5

    .line 13
    if-eq p1, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x6

    .line 16
    if-eq p1, v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x7

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToError()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToCompleteShow()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPauseShow()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPlayingBufferingShow()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPlayingShow()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToPreparingShow()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startDismissControlViewTimer()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->changeUiToNormal()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    .line 62
    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public setDismissControlTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    .line 2
    .line 3
    return-void
.end method

.method public setEnlargeImageRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    .line 2
    .line 3
    return-void
.end method

.method public setGSYVideoProgressListener(Lv7/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lv7/d;

    .line 2
    .line 3
    return-void
.end method

.method public setHideKey(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIsTouchWiget(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWiget:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIsTouchWigetFull(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLockClickListener(Lv7/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockClickListener:Lv7/g;

    .line 2
    .line 3
    return-void
.end method

.method public setNeedLockFull(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNeedShowWifiTip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 2
    .line 3
    return-void
.end method

.method protected setProgressAndTime(IIIIZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lv7/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1, p2, p3, p4}, Lv7/d;->a(IIII)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 14
    .line 15
    if-eqz v0, :cond_a

    .line 16
    .line 17
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    if-eqz v1, :cond_a

    .line 20
    .line 21
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHadSeekTouch:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 32
    .line 33
    if-nez v1, :cond_4

    .line 34
    .line 35
    if-nez p1, :cond_3

    .line 36
    .line 37
    if-eqz p5, :cond_4

    .line 38
    .line 39
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 40
    .line 41
    .line 42
    :cond_4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->f()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-lez v0, :cond_5

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-interface {p2}, Lcom/papa/gsyvideoplayer/video/base/a;->f()I

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    :cond_5
    const/16 v0, 0x5e

    .line 61
    .line 62
    if-le p2, v0, :cond_6

    .line 63
    .line 64
    const/16 p2, 0x64

    .line 65
    .line 66
    :cond_6
    invoke-virtual {p0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setSecondaryProgress(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-static {p4}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    if-lez p3, :cond_7

    .line 79
    .line 80
    iget-object p4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 81
    .line 82
    invoke-static {p3}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p3

    .line 86
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :cond_7
    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 90
    .line 91
    if-eqz p3, :cond_a

    .line 92
    .line 93
    if-nez p1, :cond_8

    .line 94
    .line 95
    if-eqz p5, :cond_9

    .line 96
    .line 97
    :cond_8
    invoke-virtual {p3, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 98
    .line 99
    .line 100
    :cond_9
    invoke-virtual {p0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setSecondaryProgress(I)V

    .line 101
    .line 102
    .line 103
    :cond_a
    :goto_0
    return-void
.end method

.method protected setSecondaryProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->A()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->A()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public setSeekRatio(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-gez v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    .line 8
    .line 9
    return-void
.end method

.method public setShowDragProgressTextOnSeekBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    .line 2
    .line 3
    return-void
.end method

.method public setShrinkImageRes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 2
    .line 3
    return-void
.end method

.method protected setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected setStateAndUi(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x6

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    :cond_0
    if-eq p1, v2, :cond_1

    .line 15
    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    :cond_1
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 19
    .line 20
    :cond_2
    iget v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 21
    .line 22
    if-eqz v3, :cond_a

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq v3, v1, :cond_9

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    if-eq v3, v1, :cond_8

    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    if-eq v3, v1, :cond_7

    .line 32
    .line 33
    if-eq v3, v2, :cond_4

    .line 34
    .line 35
    if-eq v3, v0, :cond_3

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_c

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->y()V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_0

    .line 53
    .line 54
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "------------------------------ dismiss CURRENT_STATE_AUTO_COMPLETE"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 82
    .line 83
    const/16 v1, 0x64

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 88
    .line 89
    .line 90
    :cond_5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 91
    .line 92
    if-eqz v0, :cond_6

    .line 93
    .line 94
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 95
    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 106
    .line 107
    if-eqz v0, :cond_c

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    .line 111
    .line 112
    goto/16 :goto_0

    .line 113
    .line 114
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, "------------------------------ CURRENT_STATE_PAUSE"

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_c

    .line 147
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, "------------------------------ CURRENT_STATE_PLAYING"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->resetProgressAndTime()V

    .line 177
    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_a
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_b

    .line 185
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v2, "------------------------------ dismiss CURRENT_STATE_NORMAL"

    .line 199
    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->y()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releasePauseCover()V

    .line 221
    .line 222
    .line 223
    iput v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBufferPoint:I

    .line 224
    .line 225
    const-wide/16 v0, 0x0

    .line 226
    .line 227
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 228
    .line 229
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 230
    .line 231
    if-eqz v0, :cond_b

    .line 232
    .line 233
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 236
    .line 237
    .line 238
    :cond_b
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->releaseNetWorkState()V

    .line 239
    .line 240
    .line 241
    :cond_c
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->resolveUIState(I)V

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method protected setTextAndProgress(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setTextAndProgress(IZ)V

    return-void
.end method

.method protected setTextAndProgress(IZ)V
    .locals 6

    .line 2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentPositionWhenPlaying()I

    move-result v3

    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    move-result v4

    mul-int/lit8 v0, v3, 0x64

    if-nez v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    .line 4
    :goto_0
    div-int v1, v0, v1

    move-object v0, p0

    move v2, p1

    move v5, p2

    .line 5
    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setProgressAndTime(IIIIZ)V

    return-void
.end method

.method public setThumbImageView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageView:Landroid/view/View;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->resolveThumbImage(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setThumbPlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbPlay:Z

    .line 2
    .line 3
    return-void
.end method

.method public setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setUp(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 2
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

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 9
    .line 10
    iput-object p5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const/4 p3, 0x0

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide p4

    .line 25
    iget-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 26
    .line 27
    sub-long/2addr p4, v0

    .line 28
    const-wide/16 v0, 0x7d0

    .line 29
    .line 30
    cmp-long p2, p4, v0

    .line 31
    .line 32
    if-gez p2, :cond_0

    .line 33
    .line 34
    return p3

    .line 35
    :cond_0
    const-string p2, "waiting"

    .line 36
    .line 37
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 38
    .line 39
    iput p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 40
    .line 41
    return p1
.end method

.method protected setViewShowState(Landroid/view/View;I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method protected abstract showBrightnessDialog(F)V
.end method

.method protected showDragProgressTextOnSeekBar(ZI)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->isShowDragProgressTextOnSeekBar:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    mul-int p2, p2, p1

    .line 16
    .line 17
    div-int/lit8 p2, p2, 0x64

    .line 18
    .line 19
    invoke-static {p2}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method protected abstract showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V
.end method

.method protected abstract showVolumeDialog(FI)V
.end method

.method protected abstract showWifiDialog()V
.end method

.method protected startDismissControlViewTimer()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelDismissControlViewTimer()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostDismiss:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissControlTask:Ljava/lang/Runnable;

    .line 8
    .line 9
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    .line 10
    .line 11
    int-to-long v1, v1

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected startProgressTimer()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mPostProgress:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->progressTask:Ljava/lang/Runnable;

    .line 8
    .line 9
    const-wide/16 v1, 0x12c

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected touchDoubleUp()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->clickStartIcon()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected touchLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected touchSurfaceDown(FF)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 3
    .line 4
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    .line 5
    .line 6
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mMoveY:F

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    .line 21
    .line 22
    return-void
.end method

.method protected touchSurfaceMove(FFF)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Activity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->f(Landroid/app/Activity;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenHeight:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenWidth:I

    .line 24
    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/app/Activity;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/b;->f(Landroid/app/Activity;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenWidth:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenHeight:I

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const/4 v0, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_1
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 46
    .line 47
    if-eqz v3, :cond_4

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownPosition:I

    .line 54
    .line 55
    int-to-float p2, p2

    .line 56
    int-to-float p3, v9

    .line 57
    mul-float p3, p3, p1

    .line 58
    .line 59
    int-to-float v0, v0

    .line 60
    div-float/2addr p3, v0

    .line 61
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    .line 62
    .line 63
    div-float/2addr p3, v0

    .line 64
    add-float/2addr p2, p3

    .line 65
    float-to-int p2, p2

    .line 66
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 67
    .line 68
    if-le p2, v9, :cond_3

    .line 69
    .line 70
    iput v9, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 71
    .line 72
    :cond_3
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 73
    .line 74
    invoke-static {p2}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-static {v9}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    iget v7, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 83
    .line 84
    move-object v4, p0

    .line 85
    move v5, p1

    .line 86
    invoke-virtual/range {v4 .. v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showProgressDialog(FLjava/lang/String;ILjava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    neg-float p1, p2

    .line 95
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 96
    .line 97
    const/4 p3, 0x3

    .line 98
    invoke-virtual {p2, p3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    int-to-float v0, p2

    .line 103
    mul-float v0, v0, p1

    .line 104
    .line 105
    const/high16 v3, 0x40400000    # 3.0f

    .line 106
    .line 107
    mul-float v0, v0, v3

    .line 108
    .line 109
    int-to-float v2, v2

    .line 110
    div-float/2addr v0, v2

    .line 111
    float-to-int v0, v0

    .line 112
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 113
    .line 114
    iget v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    .line 115
    .line 116
    add-int/2addr v5, v0

    .line 117
    invoke-virtual {v4, p3, v5, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 118
    .line 119
    .line 120
    iget p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    .line 121
    .line 122
    mul-int/lit8 p3, p3, 0x64

    .line 123
    .line 124
    div-int/2addr p3, p2

    .line 125
    int-to-float p2, p3

    .line 126
    mul-float v3, v3, p1

    .line 127
    .line 128
    const/high16 p3, 0x42c80000    # 100.0f

    .line 129
    .line 130
    mul-float v3, v3, p3

    .line 131
    .line 132
    div-float/2addr v3, v2

    .line 133
    add-float/2addr p2, v3

    .line 134
    float-to-int p2, p2

    .line 135
    neg-float p1, p1

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->showVolumeDialog(FI)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 141
    .line 142
    if-eqz p1, :cond_6

    .line 143
    .line 144
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    .line 149
    .line 150
    int-to-float v0, v0

    .line 151
    cmpl-float p1, p1, v0

    .line 152
    .line 153
    if-lez p1, :cond_6

    .line 154
    .line 155
    neg-float p1, p2

    .line 156
    int-to-float p2, v2

    .line 157
    div-float/2addr p1, p2

    .line 158
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onBrightnessSlide(F)V

    .line 159
    .line 160
    .line 161
    iput p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    .line 162
    .line 163
    :cond_6
    :goto_2
    return-void
.end method

.method protected touchSurfaceMoveFullLogic(FF)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Activity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->f(Landroid/app/Activity;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenHeight:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mScreenWidth:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    .line 28
    .line 29
    int-to-float v3, v2

    .line 30
    cmpl-float v3, p1, v3

    .line 31
    .line 32
    if-gtz v3, :cond_2

    .line 33
    .line 34
    int-to-float v2, v2

    .line 35
    cmpl-float p2, p2, v2

    .line 36
    .line 37
    if-lez p2, :cond_9

    .line 38
    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 40
    .line 41
    .line 42
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThreshold:I

    .line 43
    .line 44
    int-to-float p2, p2

    .line 45
    const/4 v2, 0x1

    .line 46
    cmpl-float p1, p1, p2

    .line 47
    .line 48
    if-ltz p1, :cond_4

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->h(Landroid/content/Context;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    int-to-float p1, p1

    .line 59
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    .line 60
    .line 61
    sub-float/2addr p1, p2

    .line 62
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    .line 67
    .line 68
    int-to-float p2, p2

    .line 69
    cmpl-float p1, p1, p2

    .line 70
    .line 71
    if-lez p1, :cond_3

    .line 72
    .line 73
    iput-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentPositionWhenPlaying()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownPosition:I

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_3
    iput-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->g(Landroid/content/Context;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    int-to-float p1, p1

    .line 94
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownY:F

    .line 95
    .line 96
    sub-float/2addr p1, p2

    .line 97
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekEndOffset:I

    .line 102
    .line 103
    int-to-float p2, p2

    .line 104
    cmpl-float p1, p1, p2

    .line 105
    .line 106
    if-lez p1, :cond_5

    .line 107
    .line 108
    const/4 p1, 0x1

    .line 109
    goto :goto_1

    .line 110
    :cond_5
    const/4 p1, 0x0

    .line 111
    :goto_1
    iget-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    .line 112
    .line 113
    if-eqz p2, :cond_7

    .line 114
    .line 115
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDownX:F

    .line 116
    .line 117
    int-to-float v0, v0

    .line 118
    const/high16 v3, 0x3f000000    # 0.5f

    .line 119
    .line 120
    mul-float v0, v0, v3

    .line 121
    .line 122
    cmpg-float p2, p2, v0

    .line 123
    .line 124
    if-gez p2, :cond_6

    .line 125
    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    const/4 p2, 0x1

    .line 129
    goto :goto_2

    .line 130
    :cond_6
    const/4 p2, 0x0

    .line 131
    :goto_2
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 132
    .line 133
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFirstTouch:Z

    .line 134
    .line 135
    :cond_7
    iget-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 136
    .line 137
    if-nez p2, :cond_8

    .line 138
    .line 139
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 140
    .line 141
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mAudioManager:Landroid/media/AudioManager;

    .line 142
    .line 143
    const/4 v0, 0x3

    .line 144
    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    iput p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGestureDownVolume:I

    .line 149
    .line 150
    :cond_8
    xor-int/2addr p1, v2

    .line 151
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShowVKey:Z

    .line 152
    .line 153
    :cond_9
    :goto_3
    return-void
.end method

.method protected touchSurfaceUp()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 11
    .line 12
    mul-int/lit8 v2, v2, 0x64

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_0
    div-int/2addr v2, v0

    .line 18
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTouchingProgressBar:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissProgressDialog()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissVolumeDialog()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->dismissBrightnessDialog()V

    .line 35
    .line 36
    .line 37
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    if-eqz v2, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_5

    .line 47
    .line 48
    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 49
    .line 50
    if-eq v2, v3, :cond_2

    .line 51
    .line 52
    const/4 v4, 0x5

    .line 53
    if-ne v2, v4, :cond_5

    .line 54
    .line 55
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 60
    .line 61
    int-to-long v4, v4

    .line 62
    invoke-interface {v2, v4, v5}, Lcom/papa/gsyvideoplayer/video/base/a;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v2

    .line 67
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iget v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekTimePosition:I

    .line 75
    .line 76
    mul-int/lit8 v4, v4, 0x64

    .line 77
    .line 78
    if-nez v2, :cond_3

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    :cond_3
    div-int/2addr v4, v2

    .line 82
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 83
    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 90
    .line 91
    if-eqz v2, :cond_7

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_7

    .line 98
    .line 99
    const-string v2, "onTouchScreenSeekPosition"

    .line 100
    .line 101
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 105
    .line 106
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 107
    .line 108
    new-array v3, v3, [Ljava/lang/Object;

    .line 109
    .line 110
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 111
    .line 112
    aput-object v5, v3, v0

    .line 113
    .line 114
    aput-object p0, v3, v1

    .line 115
    .line 116
    invoke-interface {v2, v4, v3}, Lv7/h;->onTouchScreenSeekPosition(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBrightness:Z

    .line 121
    .line 122
    if-eqz v2, :cond_6

    .line 123
    .line 124
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 125
    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_7

    .line 133
    .line 134
    const-string v2, "onTouchScreenSeekLight"

    .line 135
    .line 136
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 140
    .line 141
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 142
    .line 143
    new-array v3, v3, [Ljava/lang/Object;

    .line 144
    .line 145
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 146
    .line 147
    aput-object v5, v3, v0

    .line 148
    .line 149
    aput-object p0, v3, v1

    .line 150
    .line 151
    invoke-interface {v2, v4, v3}, Lv7/h;->onTouchScreenSeekLight(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangeVolume:Z

    .line 156
    .line 157
    if-eqz v2, :cond_7

    .line 158
    .line 159
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 160
    .line 161
    if-eqz v2, :cond_7

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isCurrentMediaListener()Z

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    if-eqz v2, :cond_7

    .line 168
    .line 169
    const-string v2, "onTouchScreenSeekVolume"

    .line 170
    .line 171
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 175
    .line 176
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 177
    .line 178
    new-array v3, v3, [Ljava/lang/Object;

    .line 179
    .line 180
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 181
    .line 182
    aput-object v5, v3, v0

    .line 183
    .line 184
    aput-object p0, v3, v1

    .line 185
    .line 186
    invoke-interface {v2, v4, v3}, Lv7/h;->onTouchScreenSeekVolume(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    :cond_7
    :goto_1
    return-void
.end method
