.class public abstract Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
.super Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;
.source "SourceFile"


# instance fields
.field protected isNeedAutoAdaptation:Z

.field protected mActionBar:Z

.field protected mAutoFullWithSize:Z

.field protected mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

.field protected mCheckoutTask:Ljava/lang/Runnable;

.field protected mFullAnimEnd:Z

.field protected mInnerHandler:Landroid/os/Handler;

.field private mIsOnlyRotateLand:Z

.field protected mListItemRect:[I

.field protected mListItemSize:[I

.field protected mLockLand:Z

.field protected mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

.field protected mRotateViewAuto:Z

.field protected mRotateWithSystem:Z

.field protected mShowFullAnimation:Z

.field protected mSmallClose:Landroid/view/View;

.field protected mStatusBar:Z

.field protected mSystemUiVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 16
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 18
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 19
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 20
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 21
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 22
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    .line 23
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    .line 24
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 26
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 29
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 30
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 31
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 32
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 33
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 34
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 35
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    .line 36
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    .line 37
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 39
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 42
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 43
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 44
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 45
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 46
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 47
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 48
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    .line 49
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    .line 50
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 52
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;-><init>(Landroid/content/Context;Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 3
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 5
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 6
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 7
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 8
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 9
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    .line 10
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    .line 11
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 12
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 13
    new-instance p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;

    invoke-direct {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$e;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p1, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureView:Lcom/papa/gsyvideoplayer/render/a;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->initCover()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method private c(Landroid/view/ViewGroup;I)V
    .locals 1

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Landroid/view/ViewGroup;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private d(Landroid/content/Context;ZZ)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroid/app/Activity;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->i(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    check-cast p1, Landroid/app/Activity;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->c(Landroid/app/Activity;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 31
    .line 32
    const/high16 v4, 0x4000000

    .line 33
    .line 34
    and-int/2addr p1, v4

    .line 35
    if-ne p1, v4, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v5, "*************isTranslucent*************** "

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v4}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    if-eqz p2, :cond_1

    .line 61
    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    .line 65
    .line 66
    aget p2, p1, v2

    .line 67
    .line 68
    sub-int/2addr p2, v0

    .line 69
    aput p2, p1, v2

    .line 70
    .line 71
    :cond_1
    if-eqz p3, :cond_2

    .line 72
    .line 73
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    .line 74
    .line 75
    aget p2, p1, v2

    .line 76
    .line 77
    sub-int/2addr p2, v3

    .line 78
    aput p2, p1, v2

    .line 79
    .line 80
    :cond_2
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    aput p2, p1, v1

    .line 87
    .line 88
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    aput p2, p1, v2

    .line 95
    .line 96
    return-void
.end method

.method private getViewGroup()Landroid/view/ViewGroup;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x1020002

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method protected autoAdaptation()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalVideo()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [I

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    aget v3, v1, v2

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->i(Landroid/content/Context;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    .line 29
    .line 30
    const-string v0, "\u7ad6\u5c4f\uff0c\u7cfb\u7edf\u672a\u5c06\u5e03\u5c40\u4e0b\u79fb"

    .line 31
    .line 32
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "\u7ad6\u5c4f\uff0c\u7cfb\u7edf\u5c06\u5e03\u5c40\u4e0b\u79fb\uff1by:"

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    aget v1, v1, v2

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method

.method protected backToNormal()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    move-object v2, v1

    .line 16
    check-cast v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 17
    .line 18
    invoke-direct {p0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->a(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 19
    .line 20
    .line 21
    iget-boolean v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    aget v6, v4, v5

    .line 38
    .line 39
    const/4 v7, 0x1

    .line 40
    aget v4, v4, v7

    .line 41
    .line 42
    invoke-virtual {v3, v6, v4, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    .line 46
    .line 47
    aget v6, v4, v5

    .line 48
    .line 49
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 50
    .line 51
    aget v4, v4, v7

    .line 52
    .line 53
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 54
    .line 55
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 61
    .line 62
    new-instance v4, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;

    .line 63
    .line 64
    invoke-direct {v4, p0, v1, v0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$d;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    .line 65
    .line 66
    .line 67
    const-wide/16 v0, 0x190

    .line 68
    .line 69
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, v1, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method protected checkAutoFullSizeWhenFull()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "GSYVideoBase onPrepared isVerticalFullByVideoSize "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->q()I

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullWithSizeAndAdaptation(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method protected checkAutoFullWithSizeAndAdaptation(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isAutoFullWithSize()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalVideo()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isFullHideStatusBar()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 26
    .line 27
    new-instance v1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$i;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$i;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v2, 0x64

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method protected checkoutState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mCheckoutTask:Ljava/lang/Runnable;

    .line 9
    .line 10
    const-wide/16 v2, 0x1f4

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method protected clearFullscreenLayout()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

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
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/utils/n;->q()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 23
    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/utils/n;->D()V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x0

    .line 34
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 35
    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :cond_3
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    check-cast v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 54
    .line 55
    iput-boolean v0, v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 58
    .line 59
    new-instance v2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$c;

    .line 60
    .line 61
    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$c;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 62
    .line 63
    .line 64
    int-to-long v3, v1

    .line 65
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method protected cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 7

    .line 1
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 2
    .line 3
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPlay:Z

    .line 4
    .line 5
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 8
    .line 9
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 10
    .line 11
    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 12
    .line 13
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    .line 14
    .line 15
    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mEffectFilter:Lcom/papa/gsyvideoplayer/render/view/GSYVideoGLView$c;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mFullPauseBitmap:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 22
    .line 23
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedShowWifiTip:Z

    .line 24
    .line 25
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 26
    .line 27
    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mShrinkImageRes:I

    .line 28
    .line 29
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    .line 30
    .line 31
    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mEnlargeImageRes:I

    .line 32
    .line 33
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    .line 34
    .line 35
    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    .line 36
    .line 37
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 38
    .line 39
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mShowPauseCover:Z

    .line 40
    .line 41
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    .line 42
    .line 43
    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mDismissControlTime:I

    .line 44
    .line 45
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    .line 46
    .line 47
    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSeekRatio:F

    .line 48
    .line 49
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 50
    .line 51
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetChanged:Z

    .line 52
    .line 53
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 54
    .line 55
    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mNetSate:Ljava/lang/String;

    .line 56
    .line 57
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 58
    .line 59
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 60
    .line 61
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 62
    .line 63
    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mBackUpPlayingBufferState:I

    .line 64
    .line 65
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRenderer:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 66
    .line 67
    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRenderer:Lcom/papa/gsyvideoplayer/render/glrender/a;

    .line 68
    .line 69
    iget v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    .line 70
    .line 71
    iput v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mMode:I

    .line 72
    .line 73
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    .line 74
    .line 75
    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    .line 76
    .line 77
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lv7/d;

    .line 78
    .line 79
    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mGSYVideoProgressListener:Lv7/d;

    .line 80
    .line 81
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 82
    .line 83
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mHadPrepared:Z

    .line 84
    .line 85
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 86
    .line 87
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mStartAfterPrepared:Z

    .line 88
    .line 89
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 90
    .line 91
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPauseBeforePrepared:Z

    .line 92
    .line 93
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    .line 94
    .line 95
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mReleaseWhenLossAudio:Z

    .line 96
    .line 97
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 98
    .line 99
    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 100
    .line 101
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 102
    .line 103
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 104
    .line 105
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    .line 106
    .line 107
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    .line 108
    .line 109
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 110
    .line 111
    iput-boolean v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 112
    .line 113
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOverrideExtension:Ljava/lang/String;

    .line 114
    .line 115
    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOverrideExtension:Ljava/lang/String;

    .line 116
    .line 117
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mSetUpLazy:Z

    .line 118
    .line 119
    if-eqz v0, :cond_0

    .line 120
    .line 121
    iget-object v2, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 122
    .line 123
    iget-boolean v3, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 124
    .line 125
    iget-object v4, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 126
    .line 127
    iget-object v5, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 128
    .line 129
    iget-object v6, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 130
    .line 131
    move-object v1, p2

    .line 132
    invoke-virtual/range {v1 .. v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    iget-object v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 136
    .line 137
    iput-object v0, p2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_0
    iget-object v2, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 141
    .line 142
    iget-boolean v3, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 143
    .line 144
    iget-object v4, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCachePath:Ljava/io/File;

    .line 145
    .line 146
    iget-object v5, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mMapHeadData:Ljava/util/Map;

    .line 147
    .line 148
    iget-object v6, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 149
    .line 150
    move-object v1, p2

    .line 151
    invoke-virtual/range {v1 .. v6}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    :goto_0
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isLooping()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {p2, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setLooping(Z)V

    .line 159
    .line 160
    .line 161
    iget-boolean v0, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mIsTouchWigetFull:Z

    .line 162
    .line 163
    invoke-virtual {p2, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWigetFull(Z)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getSpeed()F

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    iget-boolean v1, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSoundTouch:Z

    .line 171
    .line 172
    invoke-virtual {p2, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(FZ)V

    .line 173
    .line 174
    .line 175
    iget p1, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 176
    .line 177
    invoke-virtual {p2, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public getCurrentPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    return-object p0
.end method

.method protected abstract getFullId()I
.end method

.method public getFullWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x1020002

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    check-cast v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0
.end method

.method public getOrientationOption()Lcom/papa/gsyvideoplayer/utils/m;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSaveBeforeFullSystemUiVisibility()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    .line 2
    .line 3
    return v0
.end method

.method protected abstract getSmallId()I
.end method

.method public getSmallWindowPlayer()Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x1020002

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/view/ViewGroup;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    check-cast v0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0
.end method

.method public hideSmallVideo()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-direct {p0, v0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->c(Landroid/view/ViewGroup;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/video/base/a;->j()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0, v1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v1}, Lcom/papa/gsyvideoplayer/video/base/a;->m()Lv7/a;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/a;->x(Lv7/a;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-interface {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/a;->z(Lv7/a;)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    iput-wide v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 73
    .line 74
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    const-string v0, "onQuitSmallWidget"

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
    invoke-interface {v0, v1, v2}, Lv7/h;->onQuitSmallWidget(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_1
    return-void
.end method

.method protected init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->init(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/papa/gsyvideoplayer/R$id;->small_close:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    .line 11
    .line 12
    return-void
.end method

.method public isAutoFullWithSize()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFullHideActionBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 2
    .line 3
    return v0
.end method

.method public isFullHideStatusBar()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLockLand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 2
    .line 3
    return v0
.end method

.method protected isLockLandByAutoFullSize()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isAutoFullWithSize()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    :cond_0
    return v0
.end method

.method public isNeedAutoAdaptation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOnlyRotateLand()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRotateViewAuto()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 8
    .line 9
    return v0
.end method

.method public isRotateWithSystem()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 2
    .line 3
    return v0
.end method

.method public isShowFullAnimation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVerticalFullByVideoSize()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalVideo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isAutoFullWithSize()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

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

.method protected isVerticalVideo()Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentVideoHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "GSYVideoBase isVerticalVideo  videoHeight "

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, " videoWidth "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "GSYVideoBase isVerticalVideo  mRotate "

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    if-lez v0, :cond_2

    .line 61
    .line 62
    if-lez v1, :cond_2

    .line 63
    .line 64
    iget v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mRotate:I

    .line 65
    .line 66
    const/16 v4, 0x5a

    .line 67
    .line 68
    const/4 v5, 0x1

    .line 69
    if-eq v3, v4, :cond_1

    .line 70
    .line 71
    const/16 v4, 0x10e

    .line 72
    .line 73
    if-ne v3, v4, :cond_0

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    if-le v0, v1, :cond_2

    .line 77
    .line 78
    :goto_0
    const/4 v2, 0x1

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    :goto_1
    if-le v1, v0, :cond_2

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    :goto_2
    return v2
.end method

.method protected lockTouchLogic()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->lockTouchLogic()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isRotateViewAuto()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method public onBackFullscreen()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->clearFullscreenLayout()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/papa/gsyvideoplayer/utils/n;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/papa/gsyvideoplayer/utils/n;ZZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lcom/papa/gsyvideoplayer/utils/n;ZZ)V
    .locals 1

    .line 2
    invoke-super {p0, p2}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-nez p2, :cond_2

    .line 5
    invoke-virtual {p0, p1, p4, p5}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    move-result p2

    if-nez p2, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->backFromFull(Landroid/content/Context;)Z

    :cond_1
    if-eqz p3, :cond_2

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p3, p1}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInfo(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onInfo(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-interface {p2}, Lcom/papa/gsyvideoplayer/video/base/a;->n()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-ne p1, p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullSizeWhenFull()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onPrepared()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullSizeWhenFull()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected resolveFullVideoShow(Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 9
    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 13
    .line 14
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 15
    .line 16
    const/16 v2, 0x11

    .line 17
    .line 18
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p2, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/papa/gsyvideoplayer/utils/n;

    .line 28
    .line 29
    check-cast p1, Landroid/app/Activity;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getOrientationOption()Lcom/papa/gsyvideoplayer/utils/m;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-direct {v2, p1, p2, v3}, Lcom/papa/gsyvideoplayer/utils/n;-><init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/utils/m;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isRotateViewAuto()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {v2, p1}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 48
    .line 49
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->O(Z)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 55
    .line 56
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lcom/papa/gsyvideoplayer/utils/n;->L(Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 62
    .line 63
    iput-object p1, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isLockLandByAutoFullSize()Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isShowFullAnimation()Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_0

    .line 78
    .line 79
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 80
    .line 81
    new-instance v8, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;

    .line 82
    .line 83
    move-object v2, v8

    .line 84
    move-object v3, p0

    .line 85
    move-object v6, p2

    .line 86
    move-object v7, p3

    .line 87
    invoke-direct/range {v2 .. v7}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$b;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;ZZLcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v2, 0x12c

    .line 91
    .line 92
    invoke-virtual {p1, v8, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_0
    if-nez v4, :cond_1

    .line 97
    .line 98
    if-eqz v5, :cond_1

    .line 99
    .line 100
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 101
    .line 102
    if-eqz p1, :cond_1

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/utils/n;->E()V

    .line 105
    .line 106
    .line 107
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    :goto_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 114
    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    const-string p1, "onEnterFullscreen"

    .line 118
    .line 119
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 123
    .line 124
    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 125
    .line 126
    const/4 v2, 0x2

    .line 127
    new-array v2, v2, [Ljava/lang/Object;

    .line 128
    .line 129
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 130
    .line 131
    aput-object v3, v2, v1

    .line 132
    .line 133
    aput-object p2, v2, v0

    .line 134
    .line 135
    invoke-interface {p1, p3, v2}, Lv7/h;->onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 139
    .line 140
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkoutState()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkAutoFullWithSizeAndAdaptation(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method protected resolveNormalVideoShow(Landroid/view/View;Landroid/view/ViewGroup;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/video/base/a;->j()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 27
    .line 28
    if-eqz p3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, p3, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    const/4 p2, 0x6

    .line 38
    if-eq p1, p2, :cond_3

    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->createNetWorkState()V

    .line 41
    .line 42
    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p2}, Lcom/papa/gsyvideoplayer/video/base/a;->m()Lv7/a;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p1, p2}, Lcom/papa/gsyvideoplayer/video/base/a;->x(Lv7/a;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x0

    .line 63
    invoke-interface {p1, p2}, Lcom/papa/gsyvideoplayer/video/base/a;->z(Lv7/a;)V

    .line 64
    .line 65
    .line 66
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setStateAndUi(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 72
    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide p1

    .line 78
    iput-wide p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mSaveChangeViewTIme:J

    .line 79
    .line 80
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 81
    .line 82
    const/4 p2, 0x0

    .line 83
    if-eqz p1, :cond_4

    .line 84
    .line 85
    const-string p1, "onQuitFullscreen"

    .line 86
    .line 87
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 91
    .line 92
    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 93
    .line 94
    const/4 v0, 0x2

    .line 95
    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 98
    .line 99
    aput-object v1, v0, p2

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    aput-object p0, v0, v1

    .line 103
    .line 104
    invoke-interface {p1, p3, v0}, Lv7/h;->onQuitFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 108
    .line 109
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    .line 116
    .line 117
    invoke-static {p1, p2}, Lcom/papa/gsyvideoplayer/utils/b;->p(Landroid/content/Context;I)V

    .line 118
    .line 119
    .line 120
    :cond_5
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 121
    .line 122
    iget-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 123
    .line 124
    iget-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    .line 125
    .line 126
    invoke-static {p1, p2, p3}, Lcom/papa/gsyvideoplayer/utils/b;->q(Landroid/content/Context;ZZ)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_6

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 144
    .line 145
    .line 146
    :cond_6
    return-void
.end method

.method public setAutoFullWithSize(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mAutoFullWithSize:Z

    .line 2
    .line 3
    return-void
.end method

.method public setBackFromFullScreenListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mBackFromFullScreenListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public setFullHideActionBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 2
    .line 3
    return-void
.end method

.method public setFullHideStatusBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLockLand(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mLockLand:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNeedAutoAdaptation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isNeedAutoAdaptation:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnlyRotateLand(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mIsOnlyRotateLand:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/utils/n;->L(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setRotateViewAuto(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateViewAuto:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setRotateWithSystem(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mRotateWithSystem:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/utils/n;->O(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setSaveBeforeFullSystemUiVisibility(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    .line 2
    .line 3
    return-void
.end method

.method public setShowFullAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 2
    .line 3
    return-void
.end method

.method protected setSmallVideoTextureView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mProgressBar:Landroid/widget/SeekBar;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mFullscreenButton:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSmallClose:Landroid/view/View;

    .line 50
    .line 51
    new-instance v1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    return-void
.end method

.method public showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->c(Landroid/view/ViewGroup;I)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 23
    .line 24
    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x1

    .line 30
    new-array v3, v2, [Ljava/lang/Class;

    .line 31
    .line 32
    const-class v4, Landroid/content/Context;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    aput-object v4, v3, v5

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-array v3, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getActivityContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    aput-object v4, v3, v5

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getSmallId()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v1, v3}, Landroid/view/View;->setId(I)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 63
    .line 64
    const/4 v4, -0x1

    .line 65
    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 66
    .line 67
    .line 68
    new-instance v4, Landroid/widget/FrameLayout;

    .line 69
    .line 70
    iget-object v6, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-direct {v4, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 76
    .line 77
    iget v7, p1, Landroid/graphics/Point;->x:I

    .line 78
    .line 79
    iget v8, p1, Landroid/graphics/Point;->y:I

    .line 80
    .line 81
    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    iget-object v7, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v7}, Lcom/papa/gsyvideoplayer/utils/b;->h(Landroid/content/Context;)I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    iget v8, p1, Landroid/graphics/Point;->x:I

    .line 91
    .line 92
    sub-int/2addr v7, v8

    .line 93
    iget-object v8, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v8}, Lcom/papa/gsyvideoplayer/utils/b;->g(Landroid/content/Context;)I

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 100
    .line 101
    sub-int/2addr v8, p1

    .line 102
    if-eqz p2, :cond_1

    .line 103
    .line 104
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 105
    .line 106
    check-cast p1, Landroid/app/Activity;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->c(Landroid/app/Activity;)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    sub-int/2addr v8, p1

    .line 113
    :cond_1
    if-eqz p3, :cond_2

    .line 114
    .line 115
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->i(Landroid/content/Context;)I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    sub-int/2addr v8, p1

    .line 122
    :cond_2
    invoke-virtual {v6, v7, v8, v5, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, p0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onClickUiToggle()V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 144
    .line 145
    invoke-virtual {v1, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Lx7/a;

    .line 149
    .line 150
    invoke-direct {p1, v1, v7, v8}, Lx7/a;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;II)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setSmallVideoTextureView(Landroid/view/View$OnTouchListener;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-interface {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/a;->z(Lv7/a;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-interface {p1, v1}, Lcom/papa/gsyvideoplayer/video/base/a;->x(Lv7/a;)V

    .line 168
    .line 169
    .line 170
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 171
    .line 172
    if-eqz p1, :cond_3

    .line 173
    .line 174
    const-string p1, "onEnterSmallWidget"

    .line 175
    .line 176
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 180
    .line 181
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 182
    .line 183
    const/4 p3, 0x2

    .line 184
    new-array p3, p3, [Ljava/lang/Object;

    .line 185
    .line 186
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 187
    .line 188
    aput-object v0, p3, v5

    .line 189
    .line 190
    aput-object v1, p3, v2

    .line 191
    .line 192
    invoke-interface {p1, p2, p3}, Lv7/h;->onEnterSmallWidget(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .line 194
    .line 195
    :cond_3
    return-object v1

    .line 196
    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    .line 199
    .line 200
    const/4 p1, 0x0

    .line 201
    return-object p1
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 10

    .line 1
    const-class v0, Ljava/lang/Boolean;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    move-object v2, p1

    .line 6
    check-cast v2, Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iput v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mSystemUiVisibility:I

    .line 21
    .line 22
    invoke-static {p1, p2, p3}, Lcom/papa/gsyvideoplayer/utils/b;->l(Landroid/content/Context;ZZ)V

    .line 23
    .line 24
    .line 25
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mHideKey:Z

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mActionBar:Z

    .line 33
    .line 34
    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mStatusBar:Z

    .line 35
    .line 36
    const/4 v2, 0x2

    .line 37
    new-array v3, v2, [I

    .line 38
    .line 39
    iput-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    .line 40
    .line 41
    new-array v3, v2, [I

    .line 42
    .line 43
    iput-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemSize:[I

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getViewGroup()Landroid/view/ViewGroup;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-direct {p0, v6, v3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->c(Landroid/view/ViewGroup;I)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->b()V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 60
    .line 61
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-lez v3, :cond_1

    .line 66
    .line 67
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->mTextureViewContainer:Landroid/view/ViewGroup;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->d(Landroid/content/Context;ZZ)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->cancelProgressTimer()V

    .line 76
    .line 77
    .line 78
    const/4 p2, 0x1

    .line 79
    const/4 p3, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    new-array v4, v2, [Ljava/lang/Class;

    .line 85
    .line 86
    aput-object v1, v4, p3

    .line 87
    .line 88
    aput-object v0, v4, p2

    .line 89
    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    goto :goto_0

    .line 95
    :catch_0
    nop

    .line 96
    const/4 v3, 0x0

    .line 97
    :goto_0
    if-nez v3, :cond_2

    .line 98
    .line 99
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    new-array v2, p2, [Ljava/lang/Class;

    .line 104
    .line 105
    aput-object v1, v2, p3

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-array v1, p2, [Ljava/lang/Object;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 114
    .line 115
    aput-object v2, v1, p3

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    new-array v4, v2, [Ljava/lang/Class;

    .line 129
    .line 130
    aput-object v1, v4, p3

    .line 131
    .line 132
    aput-object v0, v4, p2

    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-array v1, v2, [Ljava/lang/Object;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    aput-object v2, v1, p3

    .line 143
    .line 144
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 145
    .line 146
    aput-object v2, v1, p2

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 153
    .line 154
    :goto_1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->getFullId()I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 162
    .line 163
    .line 164
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mVideoAllCallBack:Lv7/h;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    if-eqz v1, :cond_3

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    new-instance v2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$f;

    .line 194
    .line 195
    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$f;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .line 200
    .line 201
    :cond_3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    if-eqz v1, :cond_4

    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    new-instance v2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$g;

    .line 219
    .line 220
    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$g;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    .line 225
    .line 226
    :cond_4
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 227
    .line 228
    const/4 v2, -0x1

    .line 229
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 230
    .line 231
    .line 232
    new-instance v9, Landroid/widget/FrameLayout;

    .line 233
    .line 234
    invoke-direct {v9, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 235
    .line 236
    .line 237
    const/high16 v2, -0x1000000

    .line 238
    .line 239
    invoke-virtual {v9, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 240
    .line 241
    .line 242
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 243
    .line 244
    if-eqz v2, :cond_5

    .line 245
    .line 246
    iput-boolean p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mFullAnimEnd:Z

    .line 247
    .line 248
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 249
    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 259
    .line 260
    .line 261
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mListItemRect:[I

    .line 262
    .line 263
    aget v4, v3, p3

    .line 264
    .line 265
    aget p2, v3, p2

    .line 266
    .line 267
    invoke-virtual {v2, v4, p2, p3, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v9, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v6, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 274
    .line 275
    .line 276
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mInnerHandler:Landroid/os/Handler;

    .line 277
    .line 278
    new-instance p3, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;

    .line 279
    .line 280
    move-object v4, p3

    .line 281
    move-object v5, p0

    .line 282
    move-object v7, p1

    .line 283
    move-object v8, v0

    .line 284
    invoke-direct/range {v4 .. v9}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer$h;-><init>(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/view/ViewGroup;Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    .line 285
    .line 286
    .line 287
    const-wide/16 v1, 0x12c

    .line 288
    .line 289
    invoke-virtual {p2, p3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    .line 291
    .line 292
    goto :goto_2

    .line 293
    :cond_5
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 294
    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 296
    .line 297
    .line 298
    move-result p3

    .line 299
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    invoke-direct {p2, p3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v9, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v6, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    .line 311
    .line 312
    const/4 p2, 0x4

    .line 313
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v9, p2}, Landroid/view/View;->setVisibility(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, p1, v0, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->resolveFullVideoShow(Landroid/content/Context;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Landroid/widget/FrameLayout;)V

    .line 320
    .line 321
    .line 322
    :goto_2
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-interface {p1, p0}, Lcom/papa/gsyvideoplayer/video/base/a;->z(Lv7/a;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    invoke-interface {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/a;->x(Lv7/a;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkoutState()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    .line 344
    .line 345
    return-object v0

    .line 346
    :catch_1
    move-exception p1

    .line 347
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 348
    .line 349
    .line 350
    const/4 p1, 0x0

    .line 351
    return-object p1
.end method
