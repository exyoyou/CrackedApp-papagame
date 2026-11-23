.class public Lcom/facebook/drawee/backends/pipeline/d;
.super Lcom/facebook/drawee/controller/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/drawee/controller/a<",
        "Lcom/facebook/common/references/CloseableReference<",
        "Lcom/facebook/imagepipeline/image/c;",
        ">;",
        "Lcom/facebook/imagepipeline/image/g;",
        ">;"
    }
.end annotation


# static fields
.field private static final P:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final A:Landroid/content/res/Resources;

.field private final B:Lg4/a;

.field private final C:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lg4/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final D:Lcom/facebook/imagepipeline/cache/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private E:Lcom/facebook/cache/common/c;

.field private F:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private G:Z

.field private H:Lcom/facebook/common/internal/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lg4/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private I:Lq3/h;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private J:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lj4/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private K:Lq3/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private L:Lp3/b;

.field private M:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private N:[Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private O:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/drawee/backends/pipeline/d;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/drawee/backends/pipeline/d;->P:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lg4/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/common/internal/ImmutableList;)V
    .locals 1
    .param p5    # Lcom/facebook/imagepipeline/cache/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "resources",
            "deferredReleaser",
            "animatedDrawableFactory",
            "uiThreadExecutor",
            "memoryCache",
            "globalDrawableFactories"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/facebook/drawee/components/a;",
            "Lg4/a;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/facebook/imagepipeline/cache/t<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lg4/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, p4, v0, v0}, Lcom/facebook/drawee/controller/a;-><init>(Lcom/facebook/drawee/components/a;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->A:Landroid/content/res/Resources;

    .line 6
    .line 7
    new-instance p2, Lcom/facebook/drawee/backends/pipeline/b;

    .line 8
    .line 9
    invoke-direct {p2, p1, p3}, Lcom/facebook/drawee/backends/pipeline/b;-><init>(Landroid/content/res/Resources;Lg4/a;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/d;->B:Lg4/a;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/facebook/drawee/backends/pipeline/d;->C:Lcom/facebook/common/internal/ImmutableList;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/facebook/drawee/backends/pipeline/d;->D:Lcom/facebook/imagepipeline/cache/t;

    .line 17
    .line 18
    return-void
.end method

.method private t0(Lcom/facebook/common/internal/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSourceSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->F:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->x0(Lcom/facebook/imagepipeline/image/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private w0(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawableFactories",
            "closeableImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lg4/a;",
            ">;",
            "Lcom/facebook/imagepipeline/image/c;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lg4/a;

    .line 20
    .line 21
    invoke-interface {v1, p2}, Lg4/a;->b(Lcom/facebook/imagepipeline/image/c;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1, p2}, Lg4/a;->a(Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    return-object v1

    .line 34
    :cond_2
    return-object v0
.end method

.method private x0(Lcom/facebook/imagepipeline/image/c;)V
    .locals 3
    .param p1    # Lcom/facebook/imagepipeline/image/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->s()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    new-instance v0, Lcom/facebook/drawee/debug/a;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/facebook/drawee/debug/a;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lr3/a;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lr3/a;-><init>(Lr3/b;)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Lp3/b;

    .line 23
    .line 24
    invoke-direct {v2}, Lp3/b;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v2, p0, Lcom/facebook/drawee/backends/pipeline/d;->L:Lp3/b;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/a;->l(Lcom/facebook/drawee/controller/c;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/controller/a;->a0(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->K:Lq3/c;

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->L:Lp3/b;

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/facebook/drawee/backends/pipeline/d;->j0(Lq3/c;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->s()Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    instance-of v0, v0, Lcom/facebook/drawee/debug/a;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->s()Landroid/graphics/drawable/Drawable;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/facebook/drawee/debug/a;

    .line 57
    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/facebook/drawee/backends/pipeline/d;->F0(Lcom/facebook/imagepipeline/image/c;Lcom/facebook/drawee/debug/a;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method


# virtual methods
.method protected A0(Lcom/facebook/common/references/CloseableReference;)V
    .locals 0
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected B()Landroid/net/Uri;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->M:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/d;->O:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/d;->N:[Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 6
    .line 7
    sget-object v3, Lcom/facebook/imagepipeline/request/ImageRequest;->y:Lcom/facebook/common/internal/f;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lb4/g;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;Lcom/facebook/common/internal/f;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public declared-synchronized B0(Lq3/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageOriginListener"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->K:Lq3/c;

    .line 3
    .line 4
    instance-of v1, v0, Lq3/a;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lq3/a;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lq3/a;->c(Lq3/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :cond_0
    if-ne v0, p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    :try_start_1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->K:Lq3/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    :cond_1
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public declared-synchronized C0(Lj4/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestListener"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->J:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public D0(Lcom/facebook/common/internal/ImmutableList;)V
    .locals 0
    .param p1    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customDrawableFactories"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lg4/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->H:Lcom/facebook/common/internal/ImmutableList;

    .line 2
    .line 3
    return-void
.end method

.method public E0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawDebugOverlay"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->G:Z

    .line 2
    .line 3
    return-void
.end method

.method protected F0(Lcom/facebook/imagepipeline/image/c;Lcom/facebook/drawee/debug/a;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/image/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "image",
            "debugOverlay"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->w()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Lcom/facebook/drawee/debug/a;->k(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->e()Ls3/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ls3/b;->b()Landroid/graphics/drawable/Drawable;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/facebook/drawee/drawable/s;->a(Landroid/graphics/drawable/Drawable;)Lcom/facebook/drawee/drawable/r;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/facebook/drawee/drawable/r;->D()Lcom/facebook/drawee/drawable/s$c;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v1, v0

    .line 30
    :cond_0
    invoke-virtual {p2, v1}, Lcom/facebook/drawee/debug/a;->s(Lcom/facebook/drawee/drawable/s$c;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->L:Lp3/b;

    .line 34
    .line 35
    invoke-virtual {v0}, Lp3/b;->b()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Lq3/e;->b(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0}, Lp3/a;->a(I)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p2, v1, v0}, Lcom/facebook/drawee/debug/a;->q(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/g;->getWidth()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/g;->getHeight()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p2, v0, v1}, Lcom/facebook/drawee/debug/a;->l(II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/image/c;->d()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p2, p1}, Lcom/facebook/drawee/debug/a;->p(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/drawee/debug/a;->i()V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public bridge synthetic K(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "info"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/imagepipeline/image/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->y0(Lcom/facebook/imagepipeline/image/g;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected bridge synthetic M(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "id",
            "cachedImage"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/facebook/common/references/CloseableReference;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/facebook/drawee/backends/pipeline/d;->z0(Ljava/lang/String;Lcom/facebook/common/references/CloseableReference;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected P(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ln3/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ln3/a;

    .line 6
    .line 7
    invoke-interface {p1}, Ln3/a;->a()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method protected bridge synthetic R(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->A0(Lcom/facebook/common/references/CloseableReference;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public a(Ls3/a;)Z
    .locals 2
    .param p1    # Ls3/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->E:Lcom/facebook/cache/common/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, p1, Lcom/facebook/drawee/backends/pipeline/d;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/d;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/d;->n0()Lcom/facebook/cache/common/c;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    return p1
.end method

.method public d(Ls3/b;)V
    .locals 0
    .param p1    # Ls3/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchy"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/facebook/drawee/controller/a;->d(Ls3/b;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->x0(Lcom/facebook/imagepipeline/image/c;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->A:Landroid/content/res/Resources;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized j0(Lq3/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageOriginListener"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->K:Lq3/c;

    .line 3
    .line 4
    instance-of v1, v0, Lq3/a;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lq3/a;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Lq3/a;->b(Lq3/c;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    new-instance v1, Lq3/a;

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    new-array v2, v2, [Lq3/c;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v0, v2, v3

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    aput-object p1, v2, v0

    .line 26
    .line 27
    invoke-direct {v1, v2}, Lq3/a;-><init>([Lq3/c;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/facebook/drawee/backends/pipeline/d;->K:Lq3/c;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->K:Lq3/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    :goto_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0

    .line 39
    throw p1
.end method

.method public declared-synchronized k0(Lj4/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestListener"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->J:Ljava/util/Set;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->J:Ljava/util/Set;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->J:Ljava/util/Set;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    monitor-exit p0

    .line 22
    throw p1
.end method

.method protected l0()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->K:Lq3/c;

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    throw v0
.end method

.method protected m0(Lcom/facebook/common/references/CloseableReference;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "PipelineDraweeController#createDrawable"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->p(Lcom/facebook/common/references/CloseableReference;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/facebook/imagepipeline/image/c;

    .line 24
    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->x0(Lcom/facebook/imagepipeline/image/c;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->H:Lcom/facebook/common/internal/ImmutableList;

    .line 29
    .line 30
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->w0(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-object v0

    .line 46
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->C:Lcom/facebook/common/internal/ImmutableList;

    .line 47
    .line 48
    invoke-direct {p0, v0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->w0(Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 61
    .line 62
    .line 63
    :cond_3
    return-object v0

    .line 64
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->B:Lg4/a;

    .line 65
    .line 66
    invoke-interface {v0, p1}, Lg4/a;->a(Lcom/facebook/imagepipeline/image/c;)Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    if-eqz v0, :cond_6

    .line 71
    .line 72
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 79
    .line 80
    .line 81
    :cond_5
    return-object v0

    .line 82
    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "Unrecognized image class: "

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 113
    .line 114
    .line 115
    :cond_7
    throw p1
.end method

.method protected bridge synthetic n(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->m0(Lcom/facebook/common/references/CloseableReference;)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected n0()Lcom/facebook/cache/common/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->E:Lcom/facebook/cache/common/c;

    .line 2
    .line 3
    return-object v0
.end method

.method protected bridge synthetic o()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/d;->o0()Lcom/facebook/common/references/CloseableReference;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected o0()Lcom/facebook/common/references/CloseableReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "PipelineDraweeController#getCachedImage"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->D:Lcom/facebook/imagepipeline/cache/t;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/d;->E:Lcom/facebook/cache/common/c;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {v0, v2}, Lcom/facebook/imagepipeline/cache/t;->get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/facebook/imagepipeline/image/c;

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/image/c;->b()Lcom/facebook/imagepipeline/image/j;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Lcom/facebook/imagepipeline/image/j;->a()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-object v1

    .line 57
    :cond_3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-object v0

    .line 67
    :cond_5
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 74
    .line 75
    .line 76
    :cond_6
    return-object v1

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_7

    .line 83
    .line 84
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 85
    .line 86
    .line 87
    :cond_7
    throw v0
.end method

.method protected p0()Lcom/facebook/common/internal/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->F:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object v0
.end method

.method protected q0(Lcom/facebook/common/references/CloseableReference;)I
    .locals 0
    .param p1    # Lcom/facebook/common/references/CloseableReference;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)I"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->l()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method

.method protected r0(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/imagepipeline/image/g;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)",
            "Lcom/facebook/imagepipeline/image/g;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/references/CloseableReference;->p(Lcom/facebook/common/references/CloseableReference;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/facebook/imagepipeline/image/g;

    .line 13
    .line 14
    return-object p1
.end method

.method public declared-synchronized s0()Lj4/f;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->K:Lq3/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lq3/d;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->w()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/d;->K:Lq3/c;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2}, Lq3/d;-><init>(Ljava/lang/String;Lq3/c;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/d;->J:Ljava/util/Set;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    new-instance v2, Lj4/d;

    .line 24
    .line 25
    invoke-direct {v2, v1}, Lj4/d;-><init>(Ljava/util/Set;)V

    .line 26
    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Lj4/d;->l(Lj4/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :cond_1
    monitor-exit p0

    .line 34
    return-object v2

    .line 35
    :cond_2
    monitor-exit p0

    .line 36
    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0

    .line 39
    throw v0
.end method

.method protected t()Lcom/facebook/datasource/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "PipelineDraweeController#getDataSource"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    invoke-static {v0}, Li3/a;->R(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/facebook/drawee/backends/pipeline/d;->P:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "controller %x: getDataSource"

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->F:Lcom/facebook/common/internal/l;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/facebook/datasource/c;

    .line 41
    .line 42
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/h;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "super"

    .line 6
    .line 7
    invoke-super {p0}, Lcom/facebook/drawee/controller/a;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "dataSourceSupplier"

    .line 16
    .line 17
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/d;->F:Lcom/facebook/common/internal/l;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/facebook/common/internal/h$b;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public u0(Lcom/facebook/common/internal/l;Ljava/lang/String;Lcom/facebook/cache/common/c;Ljava/lang/Object;Lcom/facebook/common/internal/ImmutableList;Lq3/c;)V
    .locals 1
    .param p5    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lq3/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dataSourceSupplier",
            "id",
            "cacheKey",
            "callerContext",
            "customDrawableFactories",
            "imageOriginListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/datasource/c<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;>;>;",
            "Ljava/lang/String;",
            "Lcom/facebook/cache/common/c;",
            "Ljava/lang/Object;",
            "Lcom/facebook/common/internal/ImmutableList<",
            "Lg4/a;",
            ">;",
            "Lq3/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "PipelineDraweeController#initialize"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-super {p0, p2, p4}, Lcom/facebook/drawee/controller/a;->E(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->t0(Lcom/facebook/common/internal/l;)V

    .line 16
    .line 17
    .line 18
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/d;->E:Lcom/facebook/cache/common/c;

    .line 19
    .line 20
    invoke-virtual {p0, p5}, Lcom/facebook/drawee/backends/pipeline/d;->D0(Lcom/facebook/common/internal/ImmutableList;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/facebook/drawee/backends/pipeline/d;->l0()V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->x0(Lcom/facebook/imagepipeline/image/c;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p6}, Lcom/facebook/drawee/backends/pipeline/d;->j0(Lq3/c;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method protected declared-synchronized v0(Lq3/g;Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;Lcom/facebook/common/internal/l;)V
    .locals 2
    .param p1    # Lq3/g;
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
            "imagePerfDataListener",
            "builder",
            "asyncLogging"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/g;",
            "Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder<",
            "Lcom/facebook/drawee/backends/pipeline/e;",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;",
            "Lcom/facebook/imagepipeline/image/g;",
            ">;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->I:Lq3/h;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lq3/h;->g()V

    .line 7
    .line 8
    .line 9
    :cond_0
    if-eqz p1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->I:Lq3/h;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Lq3/h;

    .line 16
    .line 17
    invoke-static {}, Lcom/facebook/common/time/AwakeTimeSinceBootClock;->get()Lcom/facebook/common/time/AwakeTimeSinceBootClock;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1, p0, p3}, Lq3/h;-><init>(Ll3/c;Lcom/facebook/drawee/backends/pipeline/d;Lcom/facebook/common/internal/l;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/facebook/drawee/backends/pipeline/d;->I:Lq3/h;

    .line 25
    .line 26
    :cond_1
    iget-object p3, p0, Lcom/facebook/drawee/backends/pipeline/d;->I:Lq3/h;

    .line 27
    .line 28
    invoke-virtual {p3, p1}, Lq3/h;->c(Lq3/g;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->I:Lq3/h;

    .line 32
    .line 33
    const/4 p3, 0x1

    .line 34
    invoke-virtual {p1, p3}, Lq3/h;->h(Z)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->I:Lq3/h;

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Lq3/h;->j(Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->r()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->M:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 49
    .line 50
    invoke-virtual {p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->q()[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, [Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->N:[Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->t()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/d;->O:Lcom/facebook/imagepipeline/request/ImageRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    .line 70
    throw p1
.end method

.method protected bridge synthetic y(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->q0(Lcom/facebook/common/references/CloseableReference;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public y0(Lcom/facebook/imagepipeline/image/g;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/image/g;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/facebook/imagepipeline/image/f;->getExtras()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected bridge synthetic z(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "image"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/facebook/common/references/CloseableReference;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/facebook/drawee/backends/pipeline/d;->r0(Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/imagepipeline/image/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected z0(Ljava/lang/String;Lcom/facebook/common/references/CloseableReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "cachedImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/drawee/controller/a;->M(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/facebook/drawee/backends/pipeline/d;->K:Lq3/c;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const-string v0, "PipelineDraweeController"

    .line 10
    .line 11
    const/4 v1, 0x6

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-interface {p2, p1, v1, v2, v0}, Lq3/c;->a(Ljava/lang/String;IZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method
