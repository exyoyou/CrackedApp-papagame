.class public Lcom/facebook/imagepipeline/cache/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/cache/i;
.implements Lcom/facebook/imagepipeline/cache/t;
.implements Lcom/facebook/cache/common/f;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/cache/i<",
        "TK;TV;>;",
        "Lcom/facebook/imagepipeline/cache/t<",
        "TK;TV;>;",
        "Lcom/facebook/cache/common/f;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/facebook/imagepipeline/cache/i$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i$b<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final b:Lcom/facebook/imagepipeline/cache/h;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/h<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final c:Lcom/facebook/imagepipeline/cache/h;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/h<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/cache/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/z<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/cache/t$a;

.field private final g:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Lcom/facebook/imagepipeline/cache/u;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private i:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final j:Z

.field private final k:Z


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/cache/z;Lcom/facebook/imagepipeline/cache/t$a;Lcom/facebook/common/internal/l;Lcom/facebook/imagepipeline/cache/i$b;ZZ)V
    .locals 2
    .param p4    # Lcom/facebook/imagepipeline/cache/i$b;
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
            "valueDescriptor",
            "cacheTrimStrategy",
            "memoryCacheParamsSupplier",
            "entryStateObserver",
            "storeEntrySize",
            "ignoreSizeMismatch"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/z<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/t$a;",
            "Lcom/facebook/common/internal/l<",
            "Lcom/facebook/imagepipeline/cache/u;",
            ">;",
            "Lcom/facebook/imagepipeline/cache/i$b<",
            "TK;>;ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->d:Ljava/util/Map;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/s;->e:Lcom/facebook/imagepipeline/cache/z;

    .line 12
    .line 13
    new-instance v0, Lcom/facebook/imagepipeline/cache/h;

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->J(Lcom/facebook/imagepipeline/cache/z;)Lcom/facebook/imagepipeline/cache/z;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/cache/h;-><init>(Lcom/facebook/imagepipeline/cache/z;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 23
    .line 24
    new-instance v0, Lcom/facebook/imagepipeline/cache/h;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->J(Lcom/facebook/imagepipeline/cache/z;)Lcom/facebook/imagepipeline/cache/z;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/cache/h;-><init>(Lcom/facebook/imagepipeline/cache/z;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/s;->f:Lcom/facebook/imagepipeline/cache/t$a;

    .line 36
    .line 37
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/s;->g:Lcom/facebook/common/internal/l;

    .line 38
    .line 39
    invoke-interface {p3}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string p2, "mMemoryCacheParamsSupplier returned null"

    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/facebook/common/internal/i;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/facebook/imagepipeline/cache/u;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/s;->h:Lcom/facebook/imagepipeline/cache/u;

    .line 52
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide p1

    .line 57
    iput-wide p1, p0, Lcom/facebook/imagepipeline/cache/s;->i:J

    .line 58
    .line 59
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/s;->a:Lcom/facebook/imagepipeline/cache/i$b;

    .line 60
    .line 61
    iput-boolean p5, p0, Lcom/facebook/imagepipeline/cache/s;->j:Z

    .line 62
    .line 63
    iput-boolean p6, p0, Lcom/facebook/imagepipeline/cache/s;->k:Z

    .line 64
    .line 65
    return-void
.end method

.method private A(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/s;->G(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private static B(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/i$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/i$a;->e:Lcom/facebook/imagepipeline/cache/i$b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/i$a;->a:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/i$b;->a(Ljava/lang/Object;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static C(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .param p0    # Lcom/facebook/imagepipeline/cache/i$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/i$a;->e:Lcom/facebook/imagepipeline/cache/i$b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/i$a;->a:Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, p0, v1}, Lcom/facebook/imagepipeline/cache/i$b;->a(Ljava/lang/Object;Z)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private D(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/s;->C(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private declared-synchronized E()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/s;->i:J

    .line 3
    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/s;->h:Lcom/facebook/imagepipeline/cache/u;

    .line 5
    .line 6
    iget-wide v2, v2, Lcom/facebook/imagepipeline/cache/u;->f:J

    .line 7
    .line 8
    add-long/2addr v0, v2

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-lez v4, :cond_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/s;->i:J

    .line 24
    .line 25
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->g:Lcom/facebook/common/internal/l;

    .line 26
    .line 27
    invoke-interface {v0}, Lcom/facebook/common/internal/l;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "mMemoryCacheParamsSupplier returned null"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/facebook/common/internal/i;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/facebook/imagepipeline/cache/u;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->h:Lcom/facebook/imagepipeline/cache/u;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    monitor-exit p0

    .line 45
    throw v0
.end method

.method private declared-synchronized F(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->w(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->b:Lcom/facebook/common/references/CloseableReference;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/facebook/imagepipeline/cache/s$b;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1}, Lcom/facebook/imagepipeline/cache/s$b;-><init>(Lcom/facebook/imagepipeline/cache/s;Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/facebook/common/references/CloseableReference;->t(Ljava/lang/Object;Lcom/facebook/common/references/g;)Lcom/facebook/common/references/CloseableReference;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method private declared-synchronized G(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->d:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/i$a;->b:Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    monitor-exit p0

    .line 18
    return-object p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method private H(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->u(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->z(Lcom/facebook/imagepipeline/cache/i$a;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->G(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 18
    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    invoke-static {p1}, Lcom/facebook/imagepipeline/cache/s;->B(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/s;->E()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/s;->l()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p1
.end method

.method private declared-synchronized I(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-gt v1, p1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 22
    .line 23
    .line 24
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-gt v1, p2, :cond_0

    .line 26
    .line 27
    monitor-exit p0

    .line 28
    const/4 p1, 0x0

    .line 29
    return-object p1

    .line 30
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .line 34
    .line 35
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-gt v2, p1, :cond_1

    .line 42
    .line 43
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-le v2, p2, :cond_2

    .line 50
    .line 51
    :cond_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/h;->e()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    iget-boolean p1, p0, Lcom/facebook/imagepipeline/cache/s;->k:Z

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/h;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_2
    monitor-exit p0

    .line 69
    return-object v1

    .line 70
    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string p2, "key is null, but exclusiveEntries count: %d, size: %d"

    .line 73
    .line 74
    const/4 v1, 0x2

    .line 75
    new-array v1, v1, [Ljava/lang/Object;

    .line 76
    .line 77
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 78
    .line 79
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    aput-object v2, v1, v0

    .line 88
    .line 89
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v2, 0x1

    .line 100
    aput-object v0, v1, v2

    .line 101
    .line 102
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_4
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 111
    .line 112
    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    monitor-exit p0

    .line 127
    throw p1
.end method

.method private J(Lcom/facebook/imagepipeline/cache/z;)Lcom/facebook/imagepipeline/cache/z;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "evictableValueDescriptor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/z<",
            "TV;>;)",
            "Lcom/facebook/imagepipeline/cache/z<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/cache/s$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/cache/s$a;-><init>(Lcom/facebook/imagepipeline/cache/s;Lcom/facebook/imagepipeline/cache/z;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method static synthetic r(Lcom/facebook/imagepipeline/cache/s;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/imagepipeline/cache/s;->j:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic s(Lcom/facebook/imagepipeline/cache/s;Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->H(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private declared-synchronized t(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newValueSize"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->h:Lcom/facebook/imagepipeline/cache/u;

    .line 3
    .line 4
    iget v0, v0, Lcom/facebook/imagepipeline/cache/u;->e:I

    .line 5
    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/s;->v()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->h:Lcom/facebook/imagepipeline/cache/u;

    .line 13
    .line 14
    iget v1, v1, Lcom/facebook/imagepipeline/cache/u;->b:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    sub-int/2addr v1, v2

    .line 18
    if-gt v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/s;->k()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->h:Lcom/facebook/imagepipeline/cache/u;

    .line 25
    .line 26
    iget v1, v1, Lcom/facebook/imagepipeline/cache/u;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    sub-int/2addr v1, p1

    .line 29
    if-gt v0, v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    monitor-exit p0

    .line 34
    return v2

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit p0

    .line 37
    throw p1
.end method

.method private declared-synchronized u(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 17
    .line 18
    sub-int/2addr v0, v1

    .line 19
    iput v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method

.method private declared-synchronized w(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->d:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 17
    .line 18
    add-int/2addr v0, v1

    .line 19
    iput v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method

.method private declared-synchronized x(Lcom/facebook/imagepipeline/cache/i$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->d:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 14
    .line 15
    .line 16
    iput-boolean v1, p1, Lcom/facebook/imagepipeline/cache/i$a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method private declared-synchronized y(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/s;->x(Lcom/facebook/imagepipeline/cache/i$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0

    .line 26
    throw p1

    .line 27
    :cond_0
    monitor-exit p0

    .line 28
    return-void
.end method

.method private declared-synchronized z(Lcom/facebook/imagepipeline/cache/i$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->d:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 11
    .line 12
    iget-object v1, p1, Lcom/facebook/imagepipeline/cache/i$a;->a:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/facebook/imagepipeline/cache/h;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    monitor-exit p0

    .line 21
    const/4 p1, 0x0

    .line 22
    return p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 16
    .line 17
    invoke-virtual {v1, p1, v0}, Lcom/facebook/imagepipeline/cache/h;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method public c(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->a:Lcom/facebook/imagepipeline/cache/i$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/cache/s;->h(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/common/references/CloseableReference;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public clear()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->a()Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->a()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/s;->y(Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/s;->A(Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/s;->D(Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/s;->E()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->b(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public d()Lcom/facebook/imagepipeline/cache/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/h<",
            "TK;",
            "Lcom/facebook/imagepipeline/cache/i$a<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized e()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public f()Lcom/facebook/imagepipeline/cache/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->h:Lcom/facebook/imagepipeline/cache/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized g()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "CountingMemoryCache"

    .line 3
    .line 4
    invoke-static {v0}, Lcom/facebook/common/internal/h;->f(Ljava/lang/String;)Lcom/facebook/common/internal/h$b;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "cached_entries_count"

    .line 9
    .line 10
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "cached_entries_size_bytes"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "exclusive_entries_count"

    .line 33
    .line 34
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "exclusive_entries_size_bytes"

    .line 45
    .line 46
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/facebook/common/internal/h$b;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    .line 61
    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    monitor-exit p0

    .line 64
    throw v0
.end method

.method public get(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/h;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/facebook/imagepipeline/cache/i$a;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->F(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/s;->C(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/s;->E()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/s;->l()V

    .line 37
    .line 38
    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1
.end method

.method public declared-synchronized getCount()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public h(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/common/references/CloseableReference;
    .locals 5
    .param p3    # Lcom/facebook/imagepipeline/cache/i$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "key",
            "valueRef",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;",
            "Lcom/facebook/imagepipeline/cache/i$b<",
            "TK;>;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/s;->E()V

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/facebook/imagepipeline/cache/i$a;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/s;->x(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v1}, Lcom/facebook/imagepipeline/cache/s;->G(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move-object v1, v2

    .line 39
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/s;->e:Lcom/facebook/imagepipeline/cache/z;

    .line 44
    .line 45
    invoke-interface {v4, v3}, Lcom/facebook/imagepipeline/cache/z;->a(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-direct {p0, v3}, Lcom/facebook/imagepipeline/cache/s;->t(I)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    iget-boolean v2, p0, Lcom/facebook/imagepipeline/cache/s;->j:Z

    .line 56
    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    invoke-static {p1, p2, v3, p3}, Lcom/facebook/imagepipeline/cache/i$a;->a(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;ILcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/imagepipeline/cache/i$a;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/facebook/imagepipeline/cache/i$a;->b(Ljava/lang/Object;Lcom/facebook/common/references/CloseableReference;Lcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/imagepipeline/cache/i$a;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    :goto_1
    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 69
    .line 70
    invoke-virtual {p3, p1, p2}, Lcom/facebook/imagepipeline/cache/h;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/cache/s;->F(Lcom/facebook/imagepipeline/cache/i$a;)Lcom/facebook/common/references/CloseableReference;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/s;->C(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/s;->l()V

    .line 85
    .line 86
    .line 87
    return-object v2

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    throw p1
.end method

.method public i(Lcom/facebook/common/internal/j;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "TK;>;)I"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->m(Lcom/facebook/common/internal/j;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/facebook/imagepipeline/cache/h;->m(Lcom/facebook/common/internal/j;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->y(Ljava/util/ArrayList;)V

    .line 15
    .line 16
    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->A(Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/s;->D(Ljava/util/ArrayList;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/s;->E()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/s;->l()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p1
.end method

.method public j(Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/facebook/common/references/CloseableReference<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/facebook/imagepipeline/cache/i$a;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lcom/facebook/imagepipeline/cache/h;->l(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/facebook/imagepipeline/cache/i$a;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget v2, p1, Lcom/facebook/imagepipeline/cache/i$a;->c:I

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    :cond_0
    invoke-static {v1}, Lcom/facebook/common/internal/i;->o(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/i$a;->b:Lcom/facebook/common/references/CloseableReference;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-static {v0}, Lcom/facebook/imagepipeline/cache/s;->C(Lcom/facebook/imagepipeline/cache/i$a;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-object p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p1
.end method

.method public declared-synchronized k()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sub-int/2addr v0, v1

    .line 15
    monitor-exit p0

    .line 16
    return v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public l()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->h:Lcom/facebook/imagepipeline/cache/u;

    .line 3
    .line 4
    iget v1, v0, Lcom/facebook/imagepipeline/cache/u;->d:I

    .line 5
    .line 6
    iget v0, v0, Lcom/facebook/imagepipeline/cache/u;->b:I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/s;->v()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sub-int/2addr v0, v2

    .line 13
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->h:Lcom/facebook/imagepipeline/cache/u;

    .line 18
    .line 19
    iget v2, v1, Lcom/facebook/imagepipeline/cache/u;->c:I

    .line 20
    .line 21
    iget v1, v1, Lcom/facebook/imagepipeline/cache/u;->a:I

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/s;->k()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    sub-int/2addr v1, v3

    .line 28
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/facebook/imagepipeline/cache/s;->I(II)Ljava/util/ArrayList;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/s;->y(Ljava/util/ArrayList;)V

    .line 37
    .line 38
    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/s;->A(Ljava/util/ArrayList;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v0}, Lcom/facebook/imagepipeline/cache/s;->D(Ljava/util/ArrayList;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw v0
.end method

.method public declared-synchronized m()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public declared-synchronized n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/facebook/imagepipeline/cache/i$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/facebook/imagepipeline/cache/i$a;->b:Lcom/facebook/common/references/CloseableReference;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/facebook/common/references/CloseableReference;->j()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    monitor-exit p0

    .line 22
    return-object p1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->d:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public declared-synchronized p(Lcom/facebook/common/internal/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/j<",
            "TK;>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/h;->g(Lcom/facebook/common/internal/j;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    xor-int/lit8 p1, p1, 0x1

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public q(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimType"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->f:Lcom/facebook/imagepipeline/cache/t$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/t$a;->a(Lcom/facebook/common/memory/MemoryTrimType;)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/cache/h;->h()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    int-to-double v2, p1

    .line 15
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 16
    .line 17
    sub-double/2addr v4, v0

    .line 18
    mul-double v2, v2, v4

    .line 19
    .line 20
    double-to-int p1, v2

    .line 21
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/s;->k()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sub-int/2addr p1, v0

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const v0, 0x7fffffff

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, v0, p1}, Lcom/facebook/imagepipeline/cache/s;->I(II)Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->y(Ljava/util/ArrayList;)V

    .line 39
    .line 40
    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->A(Ljava/util/ArrayList;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/s;->D(Ljava/util/ArrayList;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/facebook/imagepipeline/cache/s;->E()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/s;->l()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p1
.end method

.method public declared-synchronized v()I
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/s;->c:Lcom/facebook/imagepipeline/cache/h;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/s;->b:Lcom/facebook/imagepipeline/cache/h;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/cache/h;->d()I

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sub-int/2addr v0, v1

    .line 15
    monitor-exit p0

    .line 16
    return v0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method
