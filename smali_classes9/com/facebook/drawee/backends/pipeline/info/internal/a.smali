.class public Lcom/facebook/drawee/backends/pipeline/info/internal/a;
.super Lb4/a;
.source "SourceFile"

# interfaces
.implements Lb4/h;
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/backends/pipeline/info/internal/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb4/a<",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;",
        "Lb4/h<",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static j:Landroid/os/Handler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final c:Ll3/c;

.field private final d:Lq3/j;

.field private final e:Lq3/i;

.field private final f:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll3/c;Lq3/j;Lq3/i;Lcom/facebook/common/internal/l;Lcom/facebook/common/internal/l;)V
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
            "clock",
            "imagePerfState",
            "imagePerfNotifier",
            "asyncLogging",
            "useNewState"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/c;",
            "Lq3/j;",
            "Lq3/i;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb4/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->c:Ll3/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->d:Lq3/j;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->e:Lq3/i;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->f:Lcom/facebook/common/internal/l;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->g:Lcom/facebook/common/internal/l;

    .line 13
    .line 14
    return-void
.end method

.method private declared-synchronized h()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    .line 9
    .line 10
    const-string v1, "ImagePerfControllerListener2Thread"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/os/Looper;

    .line 27
    .line 28
    new-instance v1, Lcom/facebook/drawee/backends/pipeline/info/internal/a$a;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->e:Lq3/i;

    .line 31
    .line 32
    invoke-direct {v1, v0, v2}, Lcom/facebook/drawee/backends/pipeline/info/internal/a$a;-><init>(Landroid/os/Looper;Lq3/i;)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    monitor-exit p0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0

    .line 41
    throw v0
.end method

.method private j()Lq3/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->g:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lq3/j;

    .line 16
    .line 17
    invoke-direct {v0}, Lq3/j;-><init>()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->d:Lq3/j;

    .line 22
    .line 23
    :goto_0
    return-object v0
.end method

.method private n(Lq3/j;J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "time"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lq3/j;->G(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lq3/j;->z(J)V

    .line 6
    .line 7
    .line 8
    const/4 p2, 0x2

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->t(Lq3/j;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private q()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->f:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v1, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j:Landroid/os/Handler;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->h()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return v0
.end method

.method private s(Lq3/j;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "imageLoadStatus"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    iput v1, v0, Landroid/os/Message;->what:I

    .line 21
    .line 22
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 23
    .line 24
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    sget-object p1, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->e:Lq3/i;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2}, Lq3/i;->b(Lq3/j;I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private t(Lq3/j;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "visibilityState"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->q()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x2

    .line 20
    iput v1, v0, Landroid/os/Message;->what:I

    .line 21
    .line 22
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 23
    .line 24
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 25
    .line 26
    sget-object p1, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->e:Lq3/i;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2}, Lq3/i;->a(Lq3/j;I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Object;Lb4/c$a;)V
    .locals 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lb4/c$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "callerContext",
            "extraData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->c:Ll3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/c;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j()Lq3/j;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lq3/j;->f()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Lq3/j;->o(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lq3/j;->l(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p2}, Lq3/j;->g(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p3}, Lq3/j;->r(Lb4/c$a;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s(Lq3/j;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->o(Lq3/j;J)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/String;Ljava/lang/Object;Lb4/c$a;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lb4/c$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "id",
            "imageInfo",
            "extraData"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->k(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Lb4/c$a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->p()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Ljava/lang/String;Lb4/c$a;)V
    .locals 3
    .param p2    # Lb4/c$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "extras"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->c:Ll3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/c;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j()Lq3/j;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, p2}, Lq3/j;->r(Lb4/c$a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lq3/j;->l(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Lq3/j;->d()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x3

    .line 22
    if-eq p1, p2, :cond_0

    .line 23
    .line 24
    const/4 p2, 0x5

    .line 25
    if-eq p1, p2, :cond_0

    .line 26
    .line 27
    const/4 p2, 0x6

    .line 28
    if-eq p1, p2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v2, v0, v1}, Lq3/j;->i(J)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x4

    .line 34
    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s(Lq3/j;I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->n(Lq3/j;J)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public bridge synthetic e(Ljava/lang/String;Ljava/lang/Object;Lb4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "id",
            "info",
            "dimensionsInfo"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->l(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Lb4/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/Throwable;Lb4/c$a;)V
    .locals 3
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lb4/c$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "throwable",
            "extras"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->c:Ll3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/c;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j()Lq3/j;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, p3}, Lq3/j;->r(Lb4/c$a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Lq3/j;->j(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p1}, Lq3/j;->l(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p2}, Lq3/j;->q(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x5

    .line 24
    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s(Lq3/j;I)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->n(Lq3/j;J)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public k(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Lb4/c$a;)V
    .locals 3
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lb4/c$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "imageInfo",
            "extraData"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->c:Ll3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/c;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j()Lq3/j;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, p3}, Lq3/j;->r(Lb4/c$a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v0, v1}, Lq3/j;->k(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0, v1}, Lq3/j;->x(J)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Lq3/j;->l(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p2}, Lq3/j;->t(Lcom/facebook/imagepipeline/image/g;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x3

    .line 27
    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s(Lq3/j;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public l(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Lb4/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "info",
            "dimensionsInfo"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j()Lq3/j;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lq3/j;->l(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->c:Ll3/c;

    .line 9
    .line 10
    invoke-interface {p1}, Ll3/c;->now()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p2, v0, v1}, Lq3/j;->s(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Lq3/j;->p(Lb4/d;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x6

    .line 21
    invoke-direct {p0, p2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s(Lq3/j;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public m(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V
    .locals 3
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "imageInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->c:Ll3/c;

    .line 2
    .line 3
    invoke-interface {v0}, Ll3/c;->now()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j()Lq3/j;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v0, v1}, Lq3/j;->n(J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lq3/j;->l(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p2}, Lq3/j;->t(Lcom/facebook/imagepipeline/image/g;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    invoke-direct {p0, v2, p1}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->s(Lq3/j;I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public o(Lq3/j;J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "now"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lq3/j;->G(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, p3}, Lq3/j;->F(J)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->t(Lq3/j;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public bridge synthetic onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "id",
            "imageInfo"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->m(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/backends/pipeline/info/internal/a;->j()Lq3/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq3/j;->e()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
