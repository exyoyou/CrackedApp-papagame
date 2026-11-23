.class public abstract Lcom/papa/gsyvideoplayer/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;
.implements Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;
.implements Lcom/papa/gsyvideoplayer/cache/b$a;
.implements Lcom/papa/gsyvideoplayer/video/base/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa/gsyvideoplayer/c$i;
    }
.end annotation


# static fields
.field public static t:Ljava/lang/String; = "GSYVideoBaseManager"

.field protected static final u:I = 0x0

.field protected static final v:I = 0x1

.field protected static final w:I = 0x2

.field protected static final x:I = 0x3

.field protected static final y:I = -0xc0


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/papa/gsyvideoplayer/c$i;

.field protected c:Landroid/os/Handler;

.field protected d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lv7/a;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lv7/a;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Lcom/papa/gsyvideoplayer/player/b;

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/c;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Ljava/lang/String;

.field protected i:Lcom/papa/gsyvideoplayer/player/c;

.field protected j:Lcom/papa/gsyvideoplayer/cache/b;

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:Z

.field protected r:Z

.field private s:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->h:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->k:I

    .line 10
    .line 11
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->l:I

    .line 12
    .line 13
    const/16 v0, -0x16

    .line 14
    .line 15
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->n:I

    .line 16
    .line 17
    const/16 v0, 0x1f40

    .line 18
    .line 19
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->p:I

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/papa/gsyvideoplayer/c;->q:Z

    .line 23
    .line 24
    new-instance v0, Lcom/papa/gsyvideoplayer/c$h;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/c$h;-><init>(Lcom/papa/gsyvideoplayer/c;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->s:Ljava/lang/Runnable;

    .line 30
    .line 31
    return-void
.end method

.method static synthetic C(Lcom/papa/gsyvideoplayer/c;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/c;->R(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D(Lcom/papa/gsyvideoplayer/c;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa/gsyvideoplayer/c;->U(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private R(Landroid/os/Message;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->k:I

    .line 3
    .line 4
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->l:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->release()V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->M()Lcom/papa/gsyvideoplayer/player/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->I()Lcom/papa/gsyvideoplayer/cache/b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, p0}, Lcom/papa/gsyvideoplayer/cache/b;->i(Lcom/papa/gsyvideoplayer/cache/b$a;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 31
    .line 32
    instance-of v1, v0, Lcom/papa/gsyvideoplayer/player/a;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    check-cast v0, Lcom/papa/gsyvideoplayer/player/a;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/c;->f:Lcom/papa/gsyvideoplayer/player/b;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/player/a;->k(Lcom/papa/gsyvideoplayer/player/b;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/c;->a:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/papa/gsyvideoplayer/c;->g:Ljava/util/List;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    .line 50
    .line 51
    invoke-interface {v0, v1, p1, v2, v3}, Lcom/papa/gsyvideoplayer/player/c;->h(Landroid/content/Context;Landroid/os/Message;Ljava/util/List;Lcom/papa/gsyvideoplayer/cache/b;)V

    .line 52
    .line 53
    .line 54
    iget-boolean p1, p0, Lcom/papa/gsyvideoplayer/c;->q:Z

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/papa/gsyvideoplayer/c;->W(Z)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/player/c;->getMediaPlayer()Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnCompletionListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnCompletionListener;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnBufferingUpdateListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnBufferingUpdateListener;)V

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnPreparedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnPreparedListener;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnSeekCompleteListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnSeekCompleteListener;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnErrorListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnErrorListener;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnInfoListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnInfoListener;)V

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, p0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setOnVideoSizeChangedListener(Ltv/danmaku/ijk/media/player/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

.method private U(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Lcom/papa/gsyvideoplayer/player/c;->releaseSurface()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private a0(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/player/c;->i(Landroid/os/Message;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/cache/b;->f()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public B(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->m:I

    .line 2
    .line 3
    return-void
.end method

.method protected E()V
    .locals 2

    .line 1
    const-string v0, "cancelTimeOutBuffer"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/c;->r:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/c;->s:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public F(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/papa/gsyvideoplayer/c;->G(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public G(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/cache/b;->e(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->I()Lcom/papa/gsyvideoplayer/cache/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->I()Lcom/papa/gsyvideoplayer/cache/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/cache/b;->e(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    return-void
.end method

.method public H(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->a:Landroid/content/Context;

    .line 6
    .line 7
    return-void
.end method

.method protected I()Lcom/papa/gsyvideoplayer/cache/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/cache/a;->a()Lcom/papa/gsyvideoplayer/cache/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public J()Lcom/papa/gsyvideoplayer/cache/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->j:Lcom/papa/gsyvideoplayer/cache/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public K()Lcom/papa/gsyvideoplayer/player/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method protected M()Lcom/papa/gsyvideoplayer/player/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/papa/gsyvideoplayer/player/e;->a()Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public N()Lcom/papa/gsyvideoplayer/player/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->f:Lcom/papa/gsyvideoplayer/player/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public O()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/c;->p:I

    .line 2
    .line 3
    return v0
.end method

.method protected P()V
    .locals 2

    .line 1
    new-instance v0, Lcom/papa/gsyvideoplayer/c$i;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/papa/gsyvideoplayer/c$i;-><init>(Lcom/papa/gsyvideoplayer/c;Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->b:Lcom/papa/gsyvideoplayer/c$i;

    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    .line 18
    .line 19
    return-void
.end method

.method public Q(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->a:Landroid/content/Context;

    .line 6
    .line 7
    return-void
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/c;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa/gsyvideoplayer/c;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method protected V(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->b:Lcom/papa/gsyvideoplayer/c$i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public W(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/papa/gsyvideoplayer/c;->q:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/papa/gsyvideoplayer/player/c;->j(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public X(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa/gsyvideoplayer/model/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->g:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public Y(Lcom/papa/gsyvideoplayer/player/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->f:Lcom/papa/gsyvideoplayer/player/b;

    .line 2
    .line 3
    return-void
.end method

.method public Z(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->p:I

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/papa/gsyvideoplayer/c;->r:Z

    .line 4
    .line 5
    return-void
.end method

.method public a(FZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/player/c;->a(FZ)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->I()Lcom/papa/gsyvideoplayer/cache/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->I()Lcom/papa/gsyvideoplayer/cache/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/cache/b;->b(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method protected b0()V
    .locals 4

    .line 1
    const-string v0, "startTimeOutBuffer"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/gsyvideoplayer/utils/c;->e(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/papa/gsyvideoplayer/c;->s:Ljava/lang/Runnable;

    .line 9
    .line 10
    iget v2, p0, Lcom/papa/gsyvideoplayer/c;->p:I

    .line 11
    .line 12
    int-to-long v2, v2

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c(FZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/player/c;->c(FZ)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->d()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public e(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/papa/gsyvideoplayer/c;->G(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->f()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->g()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getCurrentPosition()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public getCurrentVideoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/c;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public getCurrentVideoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/c;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getDuration()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getVideoHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVideoSarDen()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getVideoSarDen()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVideoSarNum()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getVideoSarNum()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->getVideoWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public h(Ljava/io/File;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/papa/gsyvideoplayer/c;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->isPlaying()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/c;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public k(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v1, Landroid/os/Message;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput v2, v1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    new-instance v2, Lcom/papa/gsyvideoplayer/model/a;

    .line 18
    .line 19
    move-object v3, v2

    .line 20
    move-object v4, p1

    .line 21
    move-object v5, p2

    .line 22
    move v6, p3

    .line 23
    move v7, p4

    .line 24
    move/from16 v8, p5

    .line 25
    .line 26
    move-object/from16 v9, p6

    .line 27
    .line 28
    move-object/from16 v10, p7

    .line 29
    .line 30
    invoke-direct/range {v3 .. v10}, Lcom/papa/gsyvideoplayer/model/a;-><init>(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/papa/gsyvideoplayer/c;->V(Landroid/os/Message;)V

    .line 36
    .line 37
    .line 38
    iget-boolean v1, v0, Lcom/papa/gsyvideoplayer/c;->r:Z

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/papa/gsyvideoplayer/c;->b0()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/c;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public m()Lv7/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->e:Ljava/lang/ref/WeakReference;

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
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lv7/a;

    .line 12
    .line 13
    return-object v0
.end method

.method public n()I
    .locals 1

    .line 1
    const/16 v0, 0x2711

    return v0
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public onBufferingUpdate(Ltv/danmaku/ijk/media/player/IMediaPlayer;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/papa/gsyvideoplayer/c$c;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2}, Lcom/papa/gsyvideoplayer/c$c;-><init>(Lcom/papa/gsyvideoplayer/c;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onCompletion(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/papa/gsyvideoplayer/c$b;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/c$b;-><init>(Lcom/papa/gsyvideoplayer/c;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onError(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/papa/gsyvideoplayer/c$e;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p3}, Lcom/papa/gsyvideoplayer/c$e;-><init>(Lcom/papa/gsyvideoplayer/c;II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    return p1
.end method

.method public onInfo(Ltv/danmaku/ijk/media/player/IMediaPlayer;II)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/papa/gsyvideoplayer/c$f;

    .line 4
    .line 5
    invoke-direct {v0, p0, p2, p3}, Lcom/papa/gsyvideoplayer/c$f;-><init>(Lcom/papa/gsyvideoplayer/c;II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public onPrepared(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/papa/gsyvideoplayer/c$a;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/c$a;-><init>(Lcom/papa/gsyvideoplayer/c;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onSeekComplete(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v0, Lcom/papa/gsyvideoplayer/c$d;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/papa/gsyvideoplayer/c$d;-><init>(Lcom/papa/gsyvideoplayer/c;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onVideoSizeChanged(Ltv/danmaku/ijk/media/player/IMediaPlayer;IIII)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoWidth()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    iput p2, p0, Lcom/papa/gsyvideoplayer/c;->k:I

    .line 6
    .line 7
    invoke-interface {p1}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->getVideoHeight()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->l:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/c;->c:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance p2, Lcom/papa/gsyvideoplayer/c$g;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/papa/gsyvideoplayer/c$g;-><init>(Lcom/papa/gsyvideoplayer/c;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public p()Lcom/papa/gsyvideoplayer/player/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public q(Landroid/view/Surface;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0, v0}, Lcom/papa/gsyvideoplayer/c;->a0(Landroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public r(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public seekTo(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/papa/gsyvideoplayer/player/c;->seekTo(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->i:Lcom/papa/gsyvideoplayer/player/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/papa/gsyvideoplayer/player/c;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public t(Landroid/view/Surface;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/c;->V(Landroid/os/Message;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public u(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZFZ",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v7, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-virtual/range {v0 .. v7}, Lcom/papa/gsyvideoplayer/c;->k(Ljava/lang/String;Ljava/util/Map;ZFZLjava/io/File;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public v(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/c;->n:I

    .line 2
    .line 3
    return-void
.end method

.method public w()Lv7/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/c;->d:Ljava/lang/ref/WeakReference;

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
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lv7/a;

    .line 12
    .line 13
    return-object v0
.end method

.method public x(Lv7/a;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->d:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->d:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    iput v1, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/papa/gsyvideoplayer/c;->V(Landroid/os/Message;)V

    .line 10
    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->h:Ljava/lang/String;

    .line 15
    .line 16
    const/16 v0, -0x16

    .line 17
    .line 18
    iput v0, p0, Lcom/papa/gsyvideoplayer/c;->n:I

    .line 19
    .line 20
    return-void
.end method

.method public z(Lv7/a;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/c;->e:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/papa/gsyvideoplayer/c;->e:Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    :goto_0
    return-void
.end method
