.class public Lcom/papa/gsyvideoplayer/utils/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/os/Handler;

.field private a:Ljava/lang/String;

.field private b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup$LayoutParams;

.field private f:Lcom/papa/gsyvideoplayer/utils/n;

.field private g:Lv7/h;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Ljava/io/File;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field protected w:Z

.field private x:[I

.field private y:[I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NULL"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->m:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->n:I

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->u:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->v:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->w:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->z:Z

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->A:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->B:Z

    .line 25
    .line 26
    new-instance v0, Landroid/os/Handler;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    .line 32
    .line 33
    new-instance v0, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    .line 41
    .line 42
    return-void
.end method

.method private H(ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/papa/gsyvideoplayer/utils/i;->Q(ILjava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method private Q(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->m:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method private U(I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/i;->J()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v1, Lcom/papa/gsyvideoplayer/utils/i$f;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/utils/i$f;-><init>(Lcom/papa/gsyvideoplayer/utils/i;)V

    .line 12
    .line 13
    .line 14
    int-to-long v2, p1

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->g:Lv7/h;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const-string p1, "onEnterFullscreen"

    .line 29
    .line 30
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/c;->h(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->g:Lv7/h;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->h:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    iget-object v4, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    .line 42
    .line 43
    aput-object v4, v2, v3

    .line 44
    .line 45
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 46
    .line 47
    aput-object v3, v2, v0

    .line 48
    .line 49
    invoke-interface {p1, v1, v2}, Lv7/h;->onEnterFullscreen(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/high16 v1, -0x1000000

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x32

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/i;->U(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private X()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    .line 5
    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->y:[I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->r:Z

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->s:Z

    .line 15
    .line 16
    invoke-direct {p0, v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/i;->c0(Landroid/content/Context;ZZ)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/widget/FrameLayout;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const/high16 v2, -0x1000000

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/i;->y:[I

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    aget v5, v3, v4

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    aget v3, v3, v6

    .line 46
    .line 47
    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    .line 51
    .line 52
    aget v5, v3, v4

    .line 53
    .line 54
    aget v3, v3, v6

    .line 55
    .line 56
    invoke-virtual {v2, v5, v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 60
    .line 61
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    .line 65
    .line 66
    invoke-virtual {v2, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance v1, Lcom/papa/gsyvideoplayer/utils/i$c;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/utils/i$c;-><init>(Lcom/papa/gsyvideoplayer/utils/i;)V

    .line 74
    .line 75
    .line 76
    const-wide/16 v2, 0x12c

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private Y(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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
    const/4 v1, -0x1

    .line 12
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 13
    .line 14
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 15
    .line 16
    const/16 v1, 0x11

    .line 17
    .line 18
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private Z(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->B:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    .line 6
    .line 7
    instance-of v0, v0, Landroid/widget/FrameLayout;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->f:Lcom/papa/gsyvideoplayer/utils/n;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->q()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v2, Lcom/papa/gsyvideoplayer/utils/i$e;

    .line 20
    .line 21
    invoke-direct {v2, p0, p1}, Lcom/papa/gsyvideoplayer/utils/i$e;-><init>(Lcom/papa/gsyvideoplayer/utils/i;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    .line 22
    .line 23
    .line 24
    int-to-long v3, v0

    .line 25
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->b0()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method private a0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

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
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->o:I

    .line 18
    .line 19
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->s:Z

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->r:Z

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/b;->l(Landroid/content/Context;ZZ)V

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->u:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/b;->k(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->p:Z

    .line 39
    .line 40
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/view/ViewGroup;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iput-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->e:Landroid/view/ViewGroup$LayoutParams;

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    iput-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->d:Landroid/view/ViewGroup;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setIfCurrentIsFullscreen(Z)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/n;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    .line 98
    .line 99
    check-cast v1, Landroid/app/Activity;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 102
    .line 103
    invoke-direct {v0, v1, v2}, Lcom/papa/gsyvideoplayer/utils/n;-><init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->f:Lcom/papa/gsyvideoplayer/utils/n;

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/i;->G()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/utils/n;->I(Z)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v1, Lcom/papa/gsyvideoplayer/utils/i$b;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/papa/gsyvideoplayer/utils/i$b;-><init>(Lcom/papa/gsyvideoplayer/utils/i;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    .line 128
    .line 129
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->B:Z

    .line 130
    .line 131
    if-eqz v0, :cond_3

    .line 132
    .line 133
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    .line 134
    .line 135
    instance-of v0, v0, Landroid/widget/FrameLayout;

    .line 136
    .line 137
    if-eqz v0, :cond_2

    .line 138
    .line 139
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->X()V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->V()V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->V()V

    .line 148
    .line 149
    .line 150
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/papa/gsyvideoplayer/utils/i;Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/i;->Z(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->f:Lcom/papa/gsyvideoplayer/utils/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->q()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v2, Lcom/papa/gsyvideoplayer/utils/i$d;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/papa/gsyvideoplayer/utils/i$d;-><init>(Lcom/papa/gsyvideoplayer/utils/i;)V

    .line 12
    .line 13
    .line 14
    int-to-long v3, v0

    .line 15
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method static synthetic c(Lcom/papa/gsyvideoplayer/utils/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private c0(Landroid/content/Context;ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->d:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->i(Landroid/content/Context;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    check-cast p1, Landroid/app/Activity;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/b;->c(Landroid/app/Activity;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    .line 22
    .line 23
    aget v2, p2, v1

    .line 24
    .line 25
    sub-int/2addr v2, v0

    .line 26
    aput v2, p2, v1

    .line 27
    .line 28
    :cond_0
    if-eqz p3, :cond_1

    .line 29
    .line 30
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    .line 31
    .line 32
    aget p3, p2, v1

    .line 33
    .line 34
    sub-int/2addr p3, p1

    .line 35
    aput p3, p2, v1

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->y:[I

    .line 38
    .line 39
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/utils/i;->d:Landroid/view/ViewGroup;

    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    const/4 p3, 0x0

    .line 46
    aput p2, p1, p3

    .line 47
    .line 48
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->y:[I

    .line 49
    .line 50
    iget-object p2, p0, Lcom/papa/gsyvideoplayer/utils/i;->d:Landroid/view/ViewGroup;

    .line 51
    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    aput p2, p1, v1

    .line 57
    .line 58
    return-void
.end method

.method static synthetic d(Lcom/papa/gsyvideoplayer/utils/i;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/papa/gsyvideoplayer/utils/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->i:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/papa/gsyvideoplayer/utils/i;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->o:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/papa/gsyvideoplayer/utils/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/papa/gsyvideoplayer/utils/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lcom/papa/gsyvideoplayer/utils/i;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->x:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/papa/gsyvideoplayer/utils/i;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->y:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/papa/gsyvideoplayer/utils/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->b0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->C:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/papa/gsyvideoplayer/utils/i;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/i;->Y(Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p(Lcom/papa/gsyvideoplayer/utils/i;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/i;->U(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lcom/papa/gsyvideoplayer/utils/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->p:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic r(Lcom/papa/gsyvideoplayer/utils/i;)Lcom/papa/gsyvideoplayer/utils/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->f:Lcom/papa/gsyvideoplayer/utils/n;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->e:Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/papa/gsyvideoplayer/utils/i;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->d:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lcom/papa/gsyvideoplayer/utils/i;)Lv7/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/i;->g:Lv7/h;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A()Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->l:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public G()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->A:Z

    .line 2
    .line 3
    return v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->z:Z

    .line 2
    .line 3
    return v0
.end method

.method public K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public L()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public M()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public N()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->v:Z

    .line 2
    .line 3
    return v0
.end method

.method public P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->w:Z

    .line 2
    .line 3
    return v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->B:Z

    .line 2
    .line 3
    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public T()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/ViewGroup;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->m:I

    .line 16
    .line 17
    const-string v0, "NULL"

    .line 18
    .line 19
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->a:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->f:Lcom/papa/gsyvideoplayer/utils/n;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/utils/n;->D()V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public W()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->p:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/papa/gsyvideoplayer/utils/i;->a0()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/i;->Z(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public d0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->A:Z

    .line 2
    .line 3
    return-void
.end method

.method public e0(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->j:Ljava/io/File;

    .line 2
    .line 3
    return-void
.end method

.method public f0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->z:Z

    .line 2
    .line 3
    return-void
.end method

.method public g0(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-void
.end method

.method public h0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public i0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public j0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public k0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->t:Z

    .line 2
    .line 3
    return-void
.end method

.method public l0(Ljava/util/Map;)V
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
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->l:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public m0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->v:Z

    .line 2
    .line 3
    return-void
.end method

.method public n0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->w:Z

    .line 2
    .line 3
    return-void
.end method

.method public o0(ILjava/lang/String;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->m:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/i;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method

.method public p0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->B:Z

    .line 2
    .line 3
    return-void
.end method

.method public q0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public r0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public s0(Lv7/h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->g:Lv7/h;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public t0(Landroid/graphics/Point;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->showSmallVideo(Landroid/graphics/Point;ZZ)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->q:Z

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public u0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->q:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->hideSmallVideo()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public v(ILandroid/view/View;Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p3}, Lcom/papa/gsyvideoplayer/utils/i;->H(ILjava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->p:Z

    .line 11
    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/view/ViewGroup;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 28
    .line 29
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    const/4 p1, 0x4

    .line 33
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p4, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method public v0(Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/i;->S()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/i;->u0()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->h:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->t:Z

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setLooping(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 25
    .line 26
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->n:I

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setSpeed(F)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->w:Z

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedShowWifiTip(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/i;->v:Z

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 47
    .line 48
    const/4 v4, 0x1

    .line 49
    iget-object v5, p0, Lcom/papa/gsyvideoplayer/utils/i;->j:Ljava/io/File;

    .line 50
    .line 51
    iget-object v6, p0, Lcom/papa/gsyvideoplayer/utils/i;->l:Ljava/util/Map;

    .line 52
    .line 53
    iget-object v7, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    .line 54
    .line 55
    move-object v3, p1

    .line 56
    invoke-virtual/range {v2 .. v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setUp(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_1

    .line 66
    .line 67
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->k:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getTitleTextView()Landroid/widget/TextView;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/16 v0, 0x8

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getBackButton()Landroid/widget/ImageView;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/i$a;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/utils/i$a;-><init>(Lcom/papa/gsyvideoplayer/utils/i;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->startPlayLogic()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->c:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/i;->Z(Lcom/papa/gsyvideoplayer/video/base/GSYVideoPlayer;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public x()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->j:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentPositionWhenPlaying()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public z()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/i;->b:Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getDuration()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
