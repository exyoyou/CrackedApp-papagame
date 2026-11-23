.class public Lcom/facebook/drawee/backends/pipeline/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/facebook/drawee/components/a;

.field private c:Lg4/a;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Lcom/facebook/imagepipeline/cache/t;
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

.field private f:Lcom/facebook/common/internal/ImmutableList;
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

.field private g:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lg4/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/common/internal/ImmutableList;Lcom/facebook/common/internal/l;)V
    .locals 0
    .param p6    # Lcom/facebook/common/internal/ImmutableList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/common/internal/l;
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
            0x0,
            0x0
        }
        names = {
            "resources",
            "deferredReleaser",
            "animatedDrawableFactory",
            "uiThreadExecutor",
            "memoryCache",
            "drawableFactories",
            "debugOverlayEnabledSupplier"
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
            ">;",
            "Lcom/facebook/common/internal/l<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/backends/pipeline/g;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/drawee/backends/pipeline/g;->b:Lcom/facebook/drawee/components/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/drawee/backends/pipeline/g;->c:Lg4/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/facebook/drawee/backends/pipeline/g;->d:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/facebook/drawee/backends/pipeline/g;->e:Lcom/facebook/imagepipeline/cache/t;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/facebook/drawee/backends/pipeline/g;->f:Lcom/facebook/common/internal/ImmutableList;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/facebook/drawee/backends/pipeline/g;->g:Lcom/facebook/common/internal/l;

    .line 14
    .line 15
    return-void
.end method

.method protected b(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lg4/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/d;
    .locals 8
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
            "drawableFactories"
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
            ">;)",
            "Lcom/facebook/drawee/backends/pipeline/d;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/facebook/drawee/backends/pipeline/d;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/facebook/drawee/backends/pipeline/d;-><init>(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lg4/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/common/internal/ImmutableList;)V

    .line 11
    .line 12
    .line 13
    return-object v7
.end method

.method public c()Lcom/facebook/drawee/backends/pipeline/d;
    .locals 7

    .line 1
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/g;->a:Landroid/content/res/Resources;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/facebook/drawee/backends/pipeline/g;->b:Lcom/facebook/drawee/components/a;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/facebook/drawee/backends/pipeline/g;->c:Lg4/a;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/facebook/drawee/backends/pipeline/g;->d:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/facebook/drawee/backends/pipeline/g;->e:Lcom/facebook/imagepipeline/cache/t;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/facebook/drawee/backends/pipeline/g;->f:Lcom/facebook/common/internal/ImmutableList;

    .line 12
    .line 13
    move-object v0, p0

    .line 14
    invoke-virtual/range {v0 .. v6}, Lcom/facebook/drawee/backends/pipeline/g;->b(Landroid/content/res/Resources;Lcom/facebook/drawee/components/a;Lg4/a;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/common/internal/ImmutableList;)Lcom/facebook/drawee/backends/pipeline/d;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/facebook/drawee/backends/pipeline/g;->g:Lcom/facebook/common/internal/l;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/backends/pipeline/d;->E0(Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object v0
.end method
