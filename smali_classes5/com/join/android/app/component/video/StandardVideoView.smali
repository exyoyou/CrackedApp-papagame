.class public Lcom/join/android/app/component/video/StandardVideoView;
.super Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/component/video/StandardVideoView$k;,
        Lcom/join/android/app/component/video/StandardVideoView$j;,
        Lcom/join/android/app/component/video/StandardVideoView$i;
    }
.end annotation


# static fields
.field public static D:I = 0x1

.field public static E:Z = true


# instance fields
.field A:Ljava/lang/Runnable;

.field B:Ljava/lang/String;

.field private C:Z

.field public b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field c:Landroid/widget/ImageView;

.field d:J

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/ImageView;

.field i:Lcom/join/android/app/component/video/StandardVideoView$k;

.field j:Ljava/lang/String;

.field k:J

.field l:J

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:I

.field p:Lcom/join/android/app/component/video/StandardVideoView$j;

.field q:Z

.field public r:Landroid/widget/ImageView;

.field protected s:Landroid/widget/ImageView;

.field protected t:Z

.field private u:Z

.field private v:Lcom/join/android/app/component/video/StandardVideoView$i;

.field private w:Lcom/join/android/app/component/video/StandardVideoView$i;

.field x:Landroid/os/Handler;

.field protected y:Z

.field z:Lcom/join/mgps/customview/t;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
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
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->d:J

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->j:Ljava/lang/String;

    const-wide/32 v2, 0x5f5e100

    .line 4
    iput-wide v2, p0, Lcom/join/android/app/component/video/StandardVideoView;->k:J

    .line 5
    iput-wide v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->l:J

    .line 6
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:Ljava/lang/String;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->q:Z

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->t:Z

    .line 10
    iput-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Z

    .line 11
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoView$e;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoView$e;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->x:Landroid/os/Handler;

    .line 12
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoView$h;

    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoView$h;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->A:Ljava/lang/Runnable;

    const-string v0, "StandardVideoView"

    .line 13
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->B:Ljava/lang/String;

    .line 14
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->C:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 16
    iput-wide p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->d:J

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->j:Ljava/lang/String;

    const-wide/32 v1, 0x5f5e100

    .line 18
    iput-wide v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->k:J

    .line 19
    iput-wide p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->l:J

    .line 20
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:Ljava/lang/String;

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->q:Z

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->t:Z

    .line 24
    iput-boolean p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Z

    .line 25
    new-instance p2, Lcom/join/android/app/component/video/StandardVideoView$e;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/StandardVideoView$e;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->x:Landroid/os/Handler;

    .line 26
    new-instance p2, Lcom/join/android/app/component/video/StandardVideoView$h;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/video/StandardVideoView$h;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    iput-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->A:Ljava/lang/Runnable;

    const-string p2, "StandardVideoView"

    .line 27
    iput-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->B:Ljava/lang/String;

    .line 28
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->C:Z

    return-void
.end method

.method static synthetic f(Lcom/join/android/app/component/video/StandardVideoView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->backToNormal()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->x:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide/16 v2, 0x320

    .line 5
    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected backFromFull(Landroid/content/Context;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/join/android/app/component/video/a;->c0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected changeUiToCompleteShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToCompleteShow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Lcom/join/android/app/component/video/StandardVideoView$j;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 52
    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->f:Landroid/view/View;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-void
.end method

.method protected changeUiToError()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToError()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method protected changeUiToNormal()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToNormal()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {p0, v1, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 14
    .line 15
    invoke-virtual {p0, v1, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {p0, v1, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {p0, v1, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 29
    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-interface {v1, v2}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 36
    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 40
    .line 41
    invoke-virtual {p0, v1, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->f:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 55
    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {v1, v0}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method protected changeUiToPauseClear()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPauseClear()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected changeUiToPauseShow()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPauseShow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v0, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Lcom/join/android/app/component/video/StandardVideoView$j;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-interface {v0, v2}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 65
    .line 66
    iget-boolean v3, p0, Lcom/join/android/app/component/video/StandardVideoView;->C:Z

    .line 67
    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    const/4 v1, 0x0

    .line 71
    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method protected changeUiToPlayingBufferingClear()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingBufferingClear()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method protected changeUiToPlayingBufferingShow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingBufferingShow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Lcom/join/android/app/component/video/StandardVideoView$j;

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method protected changeUiToPlayingClear()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingClear()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method protected changeUiToPlayingShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPlayingShow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->E:Z

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Lcom/join/android/app/component/video/StandardVideoView$j;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    :goto_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 60
    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 70
    .line 71
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 75
    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/join/android/app/component/video/StandardVideoView;->j()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method protected changeUiToPreparingShow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->changeUiToPreparingShow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mTopContainer:Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Lcom/join/android/app/component/video/StandardVideoView$j;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 47
    .line 48
    invoke-virtual {p0, v0, v2}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-interface {v0, v2}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->f:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-interface {v0, v2}, Lcom/join/android/app/component/video/StandardVideoView$i;->a(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method protected clearFullscreenLayout()V
    .locals 4

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
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->E:Z

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const v2, 0x7f0714f9

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 41
    .line 42
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 49
    .line 50
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 51
    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/utils/n;->q()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 64
    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/utils/n;->D()V

    .line 68
    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mOrientationUtils:Lcom/papa/gsyvideoplayer/utils/n;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/4 v1, 0x0

    .line 75
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 76
    .line 77
    if-nez v2, :cond_3

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v2}, Lcom/papa/gsyvideoplayer/utils/b;->o(Landroid/content/Context;)Landroid/app/Activity;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const v3, 0x1020002

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Landroid/view/ViewGroup;

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->getFullId()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    check-cast v2, Lcom/join/android/app/component/video/StandardVideoView;

    .line 108
    .line 109
    iput-boolean v0, v2, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 110
    .line 111
    :cond_4
    if-nez v1, :cond_5

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->backToNormal()V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoView$d;

    .line 118
    .line 119
    invoke-direct {v0, p0}, Lcom/join/android/app/component/video/StandardVideoView$d;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 120
    .line 121
    .line 122
    int-to-long v1, v1

    .line 123
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    .line 125
    .line 126
    :goto_1
    return-void
.end method

.method protected cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Lcom/join/android/app/component/video/StandardVideoView;

    .line 5
    .line 6
    check-cast p2, Lcom/join/android/app/component/video/StandardVideoView;

    .line 7
    .line 8
    iget-boolean p1, p1, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 9
    .line 10
    iput-boolean p1, p2, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->mShowFullAnimation:Z

    .line 11
    .line 12
    return-void
.end method

.method protected getFullId()I
    .locals 1

    const v0, 0x7f0a045e

    return v0
.end method

.method public getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "getGSYVideoManager"

    .line 10
    .line 11
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/c;->Q(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/android/app/component/video/a;->e0(Ljava/lang/String;)Lcom/join/android/app/component/video/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 2
    .line 3
    const/16 v1, -0x16

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " used getKey() ******* PlayPosition never set. ********"

    .line 24
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
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, " used getKey() ******* PlayTag never set. ********"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->B:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayPosition:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d0899

    return v0
.end method

.method protected getSmallId()I
    .locals 1

    const v0, 0x7f0a045f

    return v0
.end method

.method public getTimeHas()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected hideAllWidget()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->hideAllWidget()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public i()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Lcom/join/android/app/component/video/StandardVideoView$j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->q:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->z()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    return v1

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/k;->i(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    return v2

    .line 40
    :cond_2
    return v1

    .line 41
    :cond_3
    return v2

    .line 42
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->e()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eq v0, v2, :cond_6

    .line 55
    .line 56
    const/4 v3, 0x2

    .line 57
    if-eq v0, v3, :cond_5

    .line 58
    .line 59
    return v2

    .line 60
    :cond_5
    return v1

    .line 61
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/k;->i(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_7

    .line 70
    .line 71
    return v2

    .line 72
    :cond_7
    return v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 6
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
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->c:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    const v0, 0x7f0a1747

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 29
    .line 30
    const v0, 0x7f0a12ac

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->g:Landroid/widget/TextView;

    .line 40
    .line 41
    const v0, 0x7f0a0e1e

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->e:Landroid/view/View;

    .line 49
    .line 50
    const v0, 0x7f0a125b

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->f:Landroid/view/View;

    .line 58
    .line 59
    const v0, 0x7f0a044f

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/widget/ImageView;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->h:Landroid/widget/ImageView;

    .line 69
    .line 70
    const v0, 0x7f0a0f64

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 78
    .line 79
    const-string v2, "res:///2131235672"

    .line 80
    .line 81
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/l;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->f:Landroid/view/View;

    .line 89
    .line 90
    new-instance v2, Lcom/join/android/app/component/video/StandardVideoView$a;

    .line 91
    .line 92
    invoke-direct {v2, p0}, Lcom/join/android/app/component/video/StandardVideoView$a;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    const v0, 0x7f0a058f

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/join/mgps/customview/EqualizerView;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/customview/EqualizerView;->a()V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 111
    .line 112
    const/4 v2, 0x0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    iget v3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 116
    .line 117
    const/4 v4, -0x1

    .line 118
    if-eq v3, v4, :cond_0

    .line 119
    .line 120
    if-eqz v3, :cond_0

    .line 121
    .line 122
    const/4 v4, 0x7

    .line 123
    if-ne v3, v4, :cond_1

    .line 124
    .line 125
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    :cond_1
    const v0, 0x7f0a110d

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/k;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    const-string v4, "NETWORK_WIFI"

    .line 142
    .line 143
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_2

    .line 148
    .line 149
    const-string v3, "Wi-Fi"

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_2
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_3

    .line 160
    .line 161
    const-string v4, "NETWORK_"

    .line 162
    .line 163
    const-string v5, ""

    .line 164
    .line 165
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setThumbPlay(Z)V

    .line 173
    .line 174
    .line 175
    const/4 v0, 0x1

    .line 176
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setShowPauseCover(Z)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0, v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedShowWifiTip(Z)V

    .line 180
    .line 181
    .line 182
    invoke-static {}, Lcom/papa/gsyvideoplayer/utils/c;->b()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    new-instance v2, Lcom/join/android/app/component/video/StandardVideoView$b;

    .line 190
    .line 191
    invoke-direct {v2, p0, p1}, Lcom/join/android/app/component/video/StandardVideoView$b;-><init>(Lcom/join/android/app/component/video/StandardVideoView;Landroid/content/Context;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->initCustomView()V

    .line 198
    .line 199
    .line 200
    new-instance p1, Lcom/join/android/app/component/video/StandardVideoView$c;

    .line 201
    .line 202
    invoke-direct {p1, p0}, Lcom/join/android/app/component/video/StandardVideoView$c;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setGSYVideoProgressListener(Lv7/d;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v1}, Lcom/papa/gsyvideoplayer/utils/f;->l(I)V

    .line 209
    .line 210
    .line 211
    return-void
.end method

.method protected initCover()V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->initCover()V
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
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->r:Landroid/widget/ImageView;

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
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->s:Landroid/widget/ImageView;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->r:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->s:Landroid/widget/ImageView;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->E:Z

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteView(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->s:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->a()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public k(Lcom/join/android/app/component/video/StandardVideoView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchVideo"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p0}, Lcom/join/android/app/component/video/StandardVideoView;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    :goto_0
    return-void
.end method

.method public l(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitmap"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->h:Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    return-void
.end method

.method public m(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/f;->l(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/papa/gsyvideoplayer/utils/f;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public n()Lcom/join/android/app/component/video/StandardVideoView;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/android/app/component/video/StandardVideoView;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->cloneParams(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const v0, 0x7f0a10c6

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    sget-boolean p1, Lcom/join/android/app/component/video/StandardVideoView;->E:Z

    .line 15
    .line 16
    xor-int/2addr p1, v1

    .line 17
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_0
    const v0, 0x7f0a0130

    .line 23
    .line 24
    .line 25
    if-ne p1, v0, :cond_2

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->s:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    xor-int/2addr p1, v1

    .line 34
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->s:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, p1}, Lcom/join/mgps/pref/h;->P(Z)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    const-string p1, "\u5df2\u5f00\u542fWiFi\u4e0b\u81ea\u52a8\u64ad\u653e"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const-string p1, "\u5df2\u5173\u95edWiFi\u4e0b\u81ea\u52a8\u64ad\u653e"

    .line 64
    .line 65
    :goto_0
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_2
    const v0, 0x7f0a1746

    .line 71
    .line 72
    .line 73
    if-eq p1, v0, :cond_3

    .line 74
    .line 75
    const v0, 0x7f0a015d

    .line 76
    .line 77
    .line 78
    if-ne p1, v0, :cond_8

    .line 79
    .line 80
    :cond_3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v0, "********"

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const v1, 0x7f120357

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_4
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 121
    .line 122
    if-nez p1, :cond_7

    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Lcom/join/android/app/component/video/StandardVideoView$j;

    .line 125
    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    invoke-interface {p1, p0}, Lcom/join/android/app/component/video/StandardVideoView$j;->a(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_5
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 133
    .line 134
    if-eqz p1, :cond_7

    .line 135
    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v0, "currentTime= "

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-wide v2, p0, Lcom/join/android/app/component/video/StandardVideoView;->l:J

    .line 147
    .line 148
    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v0, " mCurrentState= "

    .line 152
    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string v0, "startWindowFullscreen"

    .line 166
    .line 167
    invoke-static {v0, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 171
    .line 172
    const/4 v0, 0x2

    .line 173
    if-ne p1, v0, :cond_6

    .line 174
    .line 175
    iget-wide v2, p0, Lcom/join/android/app/component/video/StandardVideoView;->l:J

    .line 176
    .line 177
    const-wide/16 v4, 0x1f4

    .line 178
    .line 179
    cmp-long p1, v2, v4

    .line 180
    .line 181
    if-gez p1, :cond_6

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-virtual {p0, p1, v1, v1}, Lcom/join/android/app/component/video/StandardVideoView;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 189
    .line 190
    .line 191
    :cond_7
    :goto_1
    iget p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 192
    .line 193
    if-nez p1, :cond_8

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    .line 196
    .line 197
    .line 198
    :cond_8
    :goto_2
    return-void
.end method

.method protected onClickUiToggle()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockCurScreen:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mNeedLockFull:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLockScreen:Landroid/widget/ImageView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Z

    .line 22
    .line 23
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->onClickUiToggle()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Lcom/join/android/app/component/video/StandardVideoView$j;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-interface {v1, p0}, Lcom/join/android/app/component/video/StandardVideoView$j;->a(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 35
    .line 36
    if-nez v1, :cond_3

    .line 37
    .line 38
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 39
    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "currentTime= "

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-wide v2, p0, Lcom/join/android/app/component/video/StandardVideoView;->l:J

    .line 53
    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " mCurrentState= "

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "startWindowFullscreen"

    .line 72
    .line 73
    invoke-static {v2, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 77
    .line 78
    const/4 v2, 0x2

    .line 79
    if-ne v1, v2, :cond_2

    .line 80
    .line 81
    iget-wide v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->l:J

    .line 82
    .line 83
    const-wide/16 v3, 0x1f4

    .line 84
    .line 85
    cmp-long v5, v1, v3

    .line 86
    .line 87
    if-gez v5, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p0, v1, v0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onPrepared()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 8
    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-boolean v0, Lcom/join/android/app/component/video/StandardVideoView;->E:Z

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/StandardVideoView;->setMute(Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->onPrepared()V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mIfCurrentIsFullscreen:Z

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {}, Lcom/join/android/app/component/video/a;->f0()Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/join/android/app/component/video/a;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->y:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onSurfaceAvailable(Landroid/view/Surface;)V
    .locals 0
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
    return-void
.end method

.method public onSurfaceUpdated(Landroid/view/Surface;)V
    .locals 0
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
    return-void
.end method

.method public onVideoResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected releaseVideos()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/video/a;->n0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAutoPlayConfig(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isnormalConfig"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setChangeCoverShowListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changeCoverShow"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->v:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setChangeCoverShowLoadingListener(Lcom/join/android/app/component/video/StandardVideoView$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "changeCoverShow"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->w:Lcom/join/android/app/component/video/StandardVideoView$i;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mLoadingProgressBar:Landroid/view/View;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteOnly(Z)V

    .line 2
    .line 3
    .line 4
    sput-boolean p1, Lcom/join/android/app/component/video/StandardVideoView;->E:Z

    .line 5
    .line 6
    sput-boolean p1, Lcom/join/android/app/component/video/StandardVideoViewJC;->U2:Z

    .line 7
    .line 8
    return-void
.end method

.method public setMuteOnly(Z)V
    .locals 3
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
    const-string v0, "setMuteOnly "

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/join/android/app/component/video/a;->f0()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/join/android/app/component/video/a;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/join/android/app/component/video/StandardVideoView;->setMuteView(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
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
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->r:Landroid/widget/ImageView;

    .line 4
    .line 5
    const v0, 0x7f080d9d

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
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->r:Landroid/widget/ImageView;

    .line 13
    .line 14
    const v0, 0x7f080d9e

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

.method public setMuteWhenPlay(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "muteWhenPlay"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNoneNetFinishActivity(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noneNetFinishActivity"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public setOnVideoProgressListener(Lcom/join/android/app/component/video/StandardVideoView$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->i:Lcom/join/android/app/component/video/StandardVideoView$k;

    .line 2
    .line 3
    return-void
.end method

.method public setOnclickVideoListener(Lcom/join/android/app/component/video/StandardVideoView$j;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onClickVideoListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->p:Lcom/join/android/app/component/video/StandardVideoView$j;

    .line 2
    .line 3
    return-void
.end method

.method protected setProgressAndTime(IIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "progress",
            "secProgress",
            "currentTime",
            "totalTime",
            "forceChange"
        }
    .end annotation

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setProgressAndTime(IIIIZ)V

    .line 2
    .line 3
    .line 4
    int-to-long p1, p3

    .line 5
    iput-wide p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->l:J

    .line 6
    .line 7
    if-lez p3, :cond_0

    .line 8
    .line 9
    sub-int/2addr p4, p3

    .line 10
    int-to-long p1, p4

    .line 11
    iput-wide p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->k:J

    .line 12
    .line 13
    invoke-static {p4}, Lcom/papa/gsyvideoplayer/utils/b;->r(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->j:Ljava/lang/String;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->g:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public setShowCoverWhenPause(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showCoverWhenPause"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->C:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSurfaceToPlay()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYTextureRenderView;->addTextureView()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->getGSYVideoManager()Lcom/papa/gsyvideoplayer/video/base/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0, p0}, Lcom/papa/gsyvideoplayer/video/base/a;->x(Lv7/a;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->checkoutState()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->startProgressTimer()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setSwitchCache(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cache"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCache:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSwitchTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSwitchUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mUrl:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mOriginUrl:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public setThumbVisibleM()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->h:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/android/app/component/video/StandardVideoView;->o()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public varargs setUp(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "screen",
            "objects"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    const-string v0, ""

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-super {p0, p1, v1, p2, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setAutoFullWithSize(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedShowWifiTip(Z)V

    .line 21
    .line 22
    .line 23
    array-length p2, p3

    .line 24
    if-le p2, v1, :cond_0

    .line 25
    .line 26
    aget-object p2, p3, v1

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:Ljava/lang/String;

    .line 33
    .line 34
    :cond_0
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->s:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-static {p3}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p3}, Lcom/join/mgps/pref/h;->a()Z

    .line 45
    .line 46
    .line 47
    move-result p3

    .line 48
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mThumbImageViewLayout:Landroid/widget/RelativeLayout;

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    iget p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 56
    .line 57
    const/4 v0, -0x1

    .line 58
    if-eq p3, v0, :cond_1

    .line 59
    .line 60
    if-eqz p3, :cond_1

    .line 61
    .line 62
    const/4 v0, 0x7

    .line 63
    if-ne p3, v0, :cond_2

    .line 64
    .line 65
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    .line 78
    iget-object p2, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public varargs setUpLazy(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "screen",
            "objects"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->m:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const-string v5, ""

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    invoke-super/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setAutoFullWithSize(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 18
    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p0, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 22
    .line 23
    .line 24
    array-length p2, p3

    .line 25
    if-le p2, p1, :cond_0

    .line 26
    .line 27
    aget-object p1, p3, p1

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->s:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lcom/join/mgps/pref/h;->a()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public setVideoType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/android/app/component/video/StandardVideoView;->o:I

    .line 2
    .line 3
    return-void
.end method

.method protected setViewShowState(Landroid/view/View;I)V
    .locals 0
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
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setViewShowState(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "size",
            "actionBar",
            "statusBar"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/android/app/component/video/StandardVideoView;

    .line 6
    .line 7
    iget-object p2, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 8
    .line 9
    const/16 p3, 0x8

    .line 10
    .line 11
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput-object p2, p1, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 16
    .line 17
    return-object p1
.end method

.method protected showWifiDialog()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/k;->g(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/android/app/component/video/StandardVideoView;->startPlayLogic()V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Lcom/join/mgps/customview/t;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const v2, 0x7f1301b0

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Lcom/join/mgps/customview/t;

    .line 31
    .line 32
    const v1, 0x7f0d00fc

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Lcom/join/mgps/customview/t;

    .line 39
    .line 40
    const v1, 0x7f0a04b1

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/Button;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Lcom/join/mgps/customview/t;

    .line 50
    .line 51
    const v2, 0x7f0a04b8

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/widget/Button;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Lcom/join/mgps/customview/t;

    .line 61
    .line 62
    const v3, 0x7f0a1762

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Landroid/widget/TextView;

    .line 70
    .line 71
    iget-object v3, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Lcom/join/mgps/customview/t;

    .line 72
    .line 73
    const v4, 0x7f0a04e1

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget-object v4, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Lcom/join/mgps/customview/t;

    .line 81
    .line 82
    const v5, 0x7f0a04bb

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroid/widget/TextView;

    .line 90
    .line 91
    iget-object v5, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Lcom/join/mgps/customview/t;

    .line 92
    .line 93
    const v6, 0x7f0a04bd

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-static {v6}, Lcom/join/mgps/Util/s1;->b(Landroid/content/Context;)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    const/16 v7, 0x8

    .line 111
    .line 112
    if-nez v6, :cond_2

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    const/4 v8, 0x1

    .line 123
    if-ne v6, v8, :cond_3

    .line 124
    .line 125
    :goto_0
    const-string v3, "\u7ee7\u7eed\u89c2\u770b"

    .line 126
    .line 127
    const-string v6, "\u60a8\u5df2\u5207\u6362\u5230\u6570\u636e\u7f51\u7edc\uff0c\u662f\u5426\u7ee7\u7eed\u89c2\u770b\u89c6\u9891\uff1f"

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    const v6, 0x7f12033f

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    const-string v3, "\u5173\u95ed"

    .line 148
    .line 149
    :goto_1
    const-string v8, "\u7f51\u7edc\u63d0\u793a"

    .line 150
    .line 151
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    const-string v2, "\u53d6\u6d88"

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    new-instance v2, Lcom/join/android/app/component/video/StandardVideoView$f;

    .line 169
    .line 170
    invoke-direct {v2, p0}, Lcom/join/android/app/component/video/StandardVideoView$f;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    .line 175
    .line 176
    new-instance v1, Lcom/join/android/app/component/video/StandardVideoView$g;

    .line 177
    .line 178
    invoke-direct {v1, p0}, Lcom/join/android/app/component/video/StandardVideoView$g;-><init>(Lcom/join/android/app/component/video/StandardVideoView;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Lcom/join/mgps/customview/t;

    .line 185
    .line 186
    if-eqz v0, :cond_4

    .line 187
    .line 188
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-nez v0, :cond_4

    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->z:Lcom/join/mgps/customview/t;

    .line 195
    .line 196
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 197
    .line 198
    .line 199
    :cond_4
    :goto_2
    return-void
.end method

.method public startAfterPrepared()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startAfterPrepared()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomContainer:Landroid/view/ViewGroup;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mBottomProgressBar:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/join/android/app/component/video/StandardVideoView;->setViewShowState(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public startPlayLogic()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "actionBar",
            "statusBar"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startWindowFullscreen(Landroid/content/Context;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    move-object p2, p1

    .line 6
    check-cast p2, Lcom/join/android/app/component/video/StandardVideoView;

    .line 7
    .line 8
    iget-object p3, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    iget-object p3, p2, Lcom/join/android/app/component/video/StandardVideoView;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/android/app/component/video/StandardVideoView;->n:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p3, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-boolean p3, p0, Lcom/join/android/app/component/video/StandardVideoView;->C:Z

    .line 24
    .line 25
    iput-boolean p3, p2, Lcom/join/android/app/component/video/StandardVideoView;->C:Z

    .line 26
    .line 27
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    const v0, 0x7f0714f9

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 57
    .line 58
    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    iget p2, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 64
    .line 65
    const/4 p3, 0x2

    .line 66
    if-eq p2, p3, :cond_1

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->startPlayLogic()V

    .line 69
    .line 70
    .line 71
    :cond_1
    invoke-static {}, Lcom/join/android/app/component/video/a;->f0()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    iget-object p3, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mPlayTag:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Lcom/join/android/app/component/video/a;

    .line 82
    .line 83
    const/4 p3, 0x0

    .line 84
    invoke-virtual {p2, p3}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    .line 85
    .line 86
    .line 87
    return-object p1
.end method

.method public touchDoubleUp()V
    .locals 0

    return-void
.end method

.method protected touchSurfaceMoveFullLogic(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "absDeltaX",
            "absDeltaY"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->touchSurfaceMoveFullLogic(FF)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mChangePosition:Z

    .line 6
    .line 7
    return-void
.end method

.method protected updateStartImage()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->mStartButton:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Lmoe/codeest/enviews/ENPlayView;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const/4 v3, 0x2

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    check-cast v0, Lmoe/codeest/enviews/ENPlayView;

    .line 10
    .line 11
    const/16 v1, 0x1f4

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lmoe/codeest/enviews/ENPlayView;->setDuration(I)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 17
    .line 18
    if-ne v1, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->d()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->c()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0}, Lmoe/codeest/enviews/ENPlayView;->c()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 35
    .line 36
    if-eqz v1, :cond_5

    .line 37
    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .line 40
    iget v1, p0, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->mCurrentState:I

    .line 41
    .line 42
    if-ne v1, v3, :cond_3

    .line 43
    .line 44
    const v1, 0x7f08135b

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    if-ne v1, v2, :cond_4

    .line 52
    .line 53
    const v1, 0x7f08134c

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_4
    const v1, 0x7f08135e

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    .line 65
    .line 66
    :cond_5
    :goto_0
    return-void
.end method
