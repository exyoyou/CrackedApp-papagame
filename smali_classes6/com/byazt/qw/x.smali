.class public Lcom/byazt/qw/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d6,
        0x47
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/qw/x$c;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field public static volatile n:Ljava/lang/String;

.field public static sp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static x:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public c:Landroid/opengl/GLSurfaceView;

.field public tt:Landroid/os/Handler;

.field public uj:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ve:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/qw/x;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/qw/x;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/qw/x;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/nr/da;->c()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/byazt/qw/x;->tt:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-static {}, Lcom/byazt/nr/da;->tt()Landroid/os/Handler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/byazt/qw/x;->ve:Landroid/os/Handler;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic c(Lcom/byazt/qw/x;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qw/x;->c:Landroid/opengl/GLSurfaceView;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/qw/x;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/qw/x;->c:Landroid/opengl/GLSurfaceView;

    return-object p1
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .line 5
    sget-object v0, Lcom/byazt/qw/x;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lcom/byazt/qw/x;->n:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_0
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    const-string v1, "dev20"

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/by/uj;->ve(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 8
    sput-object v0, Lcom/byazt/qw/x;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lcom/byazt/qw/x;->n:Ljava/lang/String;

    return-object v0

    .line 10
    :cond_1
    sget-object v0, Lcom/byazt/qw/x;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    sget-object v0, Lcom/byazt/qw/x;->a:Ljava/lang/String;

    return-object v0

    .line 12
    :cond_2
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    const-string v1, "dev21"

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/by/uj;->ve(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 13
    sput-object v0, Lcom/byazt/qw/x;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    sget-object v0, Lcom/byazt/qw/x;->a:Ljava/lang/String;

    return-object v0

    .line 15
    :cond_3
    sget-object v0, Lcom/byazt/qw/x;->x:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_4

    .line 16
    sget-object v0, Lcom/byazt/qw/x;->a:Ljava/lang/String;

    return-object v0

    :cond_4
    const-string v0, "ro.board.gpu"

    .line 17
    invoke-static {v0}, Lcom/byazt/aas/zm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/byazt/qw/x;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "ro.hardware.egl"

    .line 19
    invoke-static {v0}, Lcom/byazt/aas/zm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/byazt/qw/x;->a:Ljava/lang/String;

    .line 20
    :cond_5
    sget-object v0, Lcom/byazt/qw/x;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 21
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    sget-object v2, Lcom/byazt/qw/x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/by/uj;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_6
    sget-object v0, Lcom/byazt/qw/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    sput-object p0, Lcom/byazt/qw/x;->n:Ljava/lang/String;

    return-object p0
.end method

.method private c(Landroid/opengl/GLSurfaceView;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/byazt/qw/x;->ve:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Lcom/byazt/qw/x$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/qw/x$3;-><init>(Lcom/byazt/qw/x;Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static c(Landroid/view/View;)V
    .locals 4

    .line 23
    sget-object v0, Lcom/byazt/qw/x;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    return-void

    .line 25
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->lo()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 26
    :cond_2
    sget-object v0, Lcom/byazt/qw/x;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    invoke-static {}, Lcom/byazt/by/uj;->c()Lcom/byazt/by/uj;

    move-result-object v0

    const-string v1, "dev20"

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/by/uj;->ve(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 29
    sput-object v0, Lcom/byazt/qw/x;->n:Ljava/lang/String;

    return-void

    .line 30
    :cond_3
    new-instance v0, Lcom/byazt/qw/x;

    invoke-direct {v0}, Lcom/byazt/qw/x;-><init>()V

    .line 31
    check-cast p0, Landroid/view/ViewGroup;

    new-instance v1, Lcom/byazt/qw/x$1;

    invoke-direct {v1}, Lcom/byazt/qw/x$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/byazt/qw/x;->c(Landroid/view/ViewGroup;Lcom/byazt/qw/sp;)V

    :cond_4
    return-void
.end method

.method private c(Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;Lcom/byazt/qw/sp;Lcom/byazt/qw/x$c;)V
    .locals 7

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 36
    new-instance v6, Lcom/byazt/qw/x$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/byazt/qw/x$4;-><init>(Lcom/byazt/qw/x;Landroid/opengl/GLSurfaceView;[Ljava/lang/String;Lcom/byazt/qw/sp;Lcom/byazt/qw/x$c;)V

    const/4 p3, 0x2

    .line 37
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 38
    new-instance p3, Lcom/byazt/qw/x$5;

    invoke-direct {p3, p0, p1, v6, p2}, Lcom/byazt/qw/x$5;-><init>(Lcom/byazt/qw/x;[Ljava/lang/String;Ljava/lang/Runnable;Landroid/opengl/GLSurfaceView;)V

    invoke-virtual {p2, p3}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p2, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 40
    iget-object p1, p0, Lcom/byazt/qw/x;->tt:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const-wide/16 p2, 0x7d0

    .line 41
    invoke-virtual {p1, v6, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    const-string p2, "gpuInfo1"

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qw/x;Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;Lcom/byazt/qw/sp;Lcom/byazt/qw/x$c;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/qw/x;->c(Landroid/view/ViewGroup;Landroid/opengl/GLSurfaceView;Lcom/byazt/qw/sp;Lcom/byazt/qw/x$c;)V

    return-void
.end method

.method public static synthetic tt()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/qw/x;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/qw/x;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/qw/x;->uj:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/qw/x;Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/qw/x;->c(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/qw/x;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qw/x;->tt:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;Lcom/byazt/qw/sp;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/byazt/qw/x;->ve:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lcom/byazt/qw/x$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/qw/x$2;-><init>(Lcom/byazt/qw/x;Landroid/view/ViewGroup;Lcom/byazt/qw/sp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
