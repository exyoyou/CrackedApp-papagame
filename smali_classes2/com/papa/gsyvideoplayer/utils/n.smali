.class public Lcom/papa/gsyvideoplayer/utils/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0x2


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

.field private c:Landroid/view/OrientationEventListener;

.field private d:Lcom/papa/gsyvideoplayer/utils/m;

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/papa/gsyvideoplayer/utils/n;-><init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/utils/m;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;Lcom/papa/gsyvideoplayer/utils/m;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->e:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 5
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->g:Z

    .line 6
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->h:Z

    .line 7
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->j:Z

    .line 8
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->k:Z

    .line 9
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->l:Z

    .line 10
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->m:Z

    .line 11
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->a:Landroid/app/Activity;

    .line 12
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    if-nez p3, :cond_0

    .line 13
    new-instance p2, Lcom/papa/gsyvideoplayer/utils/m;

    invoke-direct {p2}, Lcom/papa/gsyvideoplayer/utils/m;-><init>()V

    iput-object p2, p0, Lcom/papa/gsyvideoplayer/utils/n;->d:Lcom/papa/gsyvideoplayer/utils/m;

    goto :goto_0

    .line 14
    :cond_0
    iput-object p3, p0, Lcom/papa/gsyvideoplayer/utils/n;->d:Lcom/papa/gsyvideoplayer/utils/m;

    .line 15
    :goto_0
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/n;->v(Landroid/app/Activity;)V

    .line 16
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/utils/n;->u()V

    return-void
.end method

.method private N(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->a:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :catch_0
    move-exception p1

    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x1a

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/16 v1, 0x1b

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const-string v0, "OrientationUtils"

    .line 24
    .line 25
    invoke-static {v0, p1}, Lcom/papa/gsyvideoplayer/utils/c;->f(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 26
    .line 27
    .line 28
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/papa/gsyvideoplayer/utils/n;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/n;->a:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/papa/gsyvideoplayer/utils/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/n;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/papa/gsyvideoplayer/utils/n;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->e:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic d(Lcom/papa/gsyvideoplayer/utils/n;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/utils/n;->N(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Lcom/papa/gsyvideoplayer/utils/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/n;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/papa/gsyvideoplayer/utils/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/n;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/papa/gsyvideoplayer/utils/n;)Lcom/papa/gsyvideoplayer/utils/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa/gsyvideoplayer/utils/n;->d:Lcom/papa/gsyvideoplayer/utils/m;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/papa/gsyvideoplayer/utils/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/n;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic j(Lcom/papa/gsyvideoplayer/utils/n;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->g:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic k(Lcom/papa/gsyvideoplayer/utils/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/papa/gsyvideoplayer/utils/n;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic m(Lcom/papa/gsyvideoplayer/utils/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/n;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lcom/papa/gsyvideoplayer/utils/n;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic o(Lcom/papa/gsyvideoplayer/utils/n;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/papa/gsyvideoplayer/utils/n;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/papa/gsyvideoplayer/utils/n;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->i:Z

    .line 2
    .line 3
    return p1
.end method

.method private v(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    const/4 v1, 0x0

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 22
    .line 23
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->e:I

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v2, 0x3

    .line 27
    if-ne p1, v2, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 31
    .line 32
    const/16 p1, 0x8

    .line 33
    .line 34
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->e:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 38
    .line 39
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->e:I

    .line 40
    .line 41
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->c:Landroid/view/OrientationEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public E()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->isVerticalFullByVideoSize()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->g:Z

    .line 18
    .line 19
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v1, :cond_3

    .line 23
    .line 24
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->a:Landroid/app/Activity;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const/16 v3, 0x8

    .line 31
    .line 32
    if-ne v1, v3, :cond_1

    .line 33
    .line 34
    iput v3, p0, Lcom/papa/gsyvideoplayer/utils/n;->e:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iput v2, p0, Lcom/papa/gsyvideoplayer/utils/n;->e:I

    .line 38
    .line 39
    :goto_0
    iget v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->e:I

    .line 40
    .line 41
    invoke-direct {p0, v1}, Lcom/papa/gsyvideoplayer/utils/n;->N(I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 68
    .line 69
    iput-boolean v2, p0, Lcom/papa/gsyvideoplayer/utils/n;->h:Z

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    iput v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->e:I

    .line 73
    .line 74
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/n;->N(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->isIfCurrentIsFullscreen()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getShrinkImageRes()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    .line 123
    .line 124
    :cond_5
    :goto_1
    iput v2, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 125
    .line 126
    iput-boolean v2, p0, Lcom/papa/gsyvideoplayer/utils/n;->i:Z

    .line 127
    .line 128
    :goto_2
    return-void
.end method

.method public F(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public G(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method public H(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public I(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->j:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->c:Landroid/view/OrientationEventListener;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->c:Landroid/view/OrientationEventListener;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public J(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public K(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method public L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public M(Lcom/papa/gsyvideoplayer/utils/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->d:Lcom/papa/gsyvideoplayer/utils/m;

    .line 2
    .line 3
    return-void
.end method

.method public O(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public P(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/utils/n;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public q()I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SourceLockedOrientationActivity"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lez v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->g:Z

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/utils/n;->N(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getFullscreenButton()Landroid/widget/ImageView;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/utils/n;->b:Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->getEnlargeImageRes()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iput v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->i:Z

    .line 40
    .line 41
    const/16 v0, 0x1f4

    .line 42
    .line 43
    return v0

    .line 44
    :cond_1
    return v1
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public s()Lcom/papa/gsyvideoplayer/utils/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->d:Lcom/papa/gsyvideoplayer/utils/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->e:I

    .line 2
    .line 3
    return v0
.end method

.method protected u()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/utils/n$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/utils/n;->a:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/papa/gsyvideoplayer/utils/n$a;-><init>(Lcom/papa/gsyvideoplayer/utils/n;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->c:Landroid/view/OrientationEventListener;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->g:Z

    .line 2
    .line 3
    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/utils/n;->j:Z

    .line 2
    .line 3
    return v0
.end method
