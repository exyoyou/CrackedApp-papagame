.class public Lcom/facebook/imagepipeline/core/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static u:Lcom/facebook/imagepipeline/core/k;

.field private static v:Z

.field private static w:Lcom/facebook/imagepipeline/core/h;


# instance fields
.field private final a:Lcom/facebook/imagepipeline/producers/c1;

.field private final b:Lcom/facebook/imagepipeline/core/i;

.field private final c:Lcom/facebook/imagepipeline/core/a;

.field private d:Lcom/facebook/imagepipeline/cache/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/imagepipeline/cache/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/q<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/facebook/imagepipeline/cache/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/i<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/imagepipeline/cache/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/imagepipeline/cache/q<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/facebook/imagepipeline/cache/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/facebook/cache/disk/h;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/facebook/imagepipeline/decoder/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Lcom/facebook/imagepipeline/core/h;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private l:Ll4/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private m:Lcom/facebook/imagepipeline/core/n;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private n:Lcom/facebook/imagepipeline/core/o;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/facebook/imagepipeline/cache/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private p:Lcom/facebook/cache/disk/h;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/facebook/imagepipeline/bitmaps/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private r:Lcom/facebook/imagepipeline/platform/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private s:Lcom/facebook/imagepipeline/animated/factory/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/core/k;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/imagepipeline/core/k;->t:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/core/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "ImagePipelineConfig()"

    .line 11
    .line 12
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/facebook/imagepipeline/core/i;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/j;->u()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Lcom/facebook/imagepipeline/producers/u;

    .line 34
    .line 35
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/i;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/f;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->a()Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/u;-><init>(Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Lcom/facebook/imagepipeline/producers/d1;

    .line 48
    .line 49
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/i;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/f;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->a()Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v0, v1}, Lcom/facebook/imagepipeline/producers/d1;-><init>(Ljava/util/concurrent/Executor;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->a:Lcom/facebook/imagepipeline/producers/c1;

    .line 61
    .line 62
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/j;->b()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-static {v0}, Lcom/facebook/common/references/CloseableReference;->y(I)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/facebook/imagepipeline/core/a;

    .line 74
    .line 75
    invoke-interface {p1}, Lcom/facebook/imagepipeline/core/i;->getCloseableReferenceLeakTracker()Lf4/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/core/a;-><init>(Lf4/a;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->c:Lcom/facebook/imagepipeline/core/a;

    .line 83
    .line 84
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_2

    .line 89
    .line 90
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public static declared-synchronized A()V
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/core/k;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/k;->u:Lcom/facebook/imagepipeline/core/k;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->e()Lcom/facebook/imagepipeline/cache/q;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {}, Lcom/facebook/common/internal/a;->b()Lcom/facebook/common/internal/j;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/cache/q;->i(Lcom/facebook/common/internal/j;)I

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/facebook/imagepipeline/core/k;->u:Lcom/facebook/imagepipeline/core/k;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/k;->h()Lcom/facebook/imagepipeline/cache/q;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {}, Lcom/facebook/common/internal/a;->b()Lcom/facebook/common/internal/j;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/facebook/imagepipeline/cache/q;->i(Lcom/facebook/common/internal/j;)I

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    sput-object v1, Lcom/facebook/imagepipeline/core/k;->u:Lcom/facebook/imagepipeline/core/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    :cond_0
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0

    .line 39
    throw v1
.end method

.method private a()Lcom/facebook/imagepipeline/core/h;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v16, Lcom/facebook/imagepipeline/core/h;

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->r()Lcom/facebook/imagepipeline/core/o;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getRequestListeners()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getRequestListener2s()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 22
    .line 23
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getIsPrefetchEnabledSupplier()Lcom/facebook/common/internal/l;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->e()Lcom/facebook/imagepipeline/cache/q;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->h()Lcom/facebook/imagepipeline/cache/q;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->m()Lcom/facebook/imagepipeline/cache/e;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->s()Lcom/facebook/imagepipeline/cache/e;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 44
    .line 45
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/f;

    .line 46
    .line 47
    .line 48
    move-result-object v10

    .line 49
    iget-object v11, v0, Lcom/facebook/imagepipeline/core/k;->a:Lcom/facebook/imagepipeline/producers/c1;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 52
    .line 53
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->i()Lcom/facebook/common/internal/l;

    .line 58
    .line 59
    .line 60
    move-result-object v12

    .line 61
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 62
    .line 63
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->w()Lcom/facebook/common/internal/l;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getCallerContextVerifier()Le3/a;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    iget-object v15, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 78
    .line 79
    move-object/from16 v1, v16

    .line 80
    .line 81
    invoke-direct/range {v1 .. v15}, Lcom/facebook/imagepipeline/core/h;-><init>(Lcom/facebook/imagepipeline/core/o;Ljava/util/Set;Ljava/util/Set;Lcom/facebook/common/internal/l;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/producers/c1;Lcom/facebook/common/internal/l;Lcom/facebook/common/internal/l;Le3/a;Lcom/facebook/imagepipeline/core/i;)V

    .line 82
    .line 83
    .line 84
    return-object v16
.end method

.method private c()Lcom/facebook/imagepipeline/animated/factory/a;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->s:Lcom/facebook/imagepipeline/animated/factory/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/k;->o()Lcom/facebook/imagepipeline/bitmaps/f;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/f;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/k;->d()Lcom/facebook/imagepipeline/cache/i;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 20
    .line 21
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lcom/facebook/imagepipeline/core/j;->C()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 30
    .line 31
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/i;->getExecutorServiceForAnimatedImages()Lcom/facebook/common/executors/g;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/imagepipeline/animated/factory/b;->a(Lcom/facebook/imagepipeline/bitmaps/f;Lcom/facebook/imagepipeline/core/f;Lcom/facebook/imagepipeline/cache/i;ZLjava/util/concurrent/ExecutorService;)Lcom/facebook/imagepipeline/animated/factory/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->s:Lcom/facebook/imagepipeline/animated/factory/a;

    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->s:Lcom/facebook/imagepipeline/animated/factory/a;

    .line 42
    .line 43
    return-object v0
.end method

.method private i()Lcom/facebook/imagepipeline/decoder/b;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/decoder/b;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getImageDecoder()Lcom/facebook/imagepipeline/decoder/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getImageDecoder()Lcom/facebook/imagepipeline/decoder/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/decoder/b;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/k;->c()Lcom/facebook/imagepipeline/animated/factory/a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/factory/a;->c()Lcom/facebook/imagepipeline/decoder/b;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0}, Lcom/facebook/imagepipeline/animated/factory/a;->b()Lcom/facebook/imagepipeline/decoder/b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    move-object v0, v1

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 40
    .line 41
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/c;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    new-instance v2, Lcom/facebook/imagepipeline/decoder/a;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/k;->p()Lcom/facebook/imagepipeline/platform/g;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/imagepipeline/decoder/a;-><init>(Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/platform/g;)V

    .line 54
    .line 55
    .line 56
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/decoder/b;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance v2, Lcom/facebook/imagepipeline/decoder/a;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/k;->p()Lcom/facebook/imagepipeline/platform/g;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 66
    .line 67
    invoke-interface {v4}, Lcom/facebook/imagepipeline/core/i;->getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/c;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lcom/facebook/imagepipeline/decoder/c;->a()Ljava/util/Map;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-direct {v2, v1, v0, v3, v4}, Lcom/facebook/imagepipeline/decoder/a;-><init>(Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/platform/g;Ljava/util/Map;)V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/decoder/b;

    .line 79
    .line 80
    invoke-static {}, Lcom/facebook/imageformat/d;->e()Lcom/facebook/imageformat/d;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 85
    .line 86
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getImageDecoderConfig()Lcom/facebook/imagepipeline/decoder/c;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/decoder/c;->b()Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/facebook/imageformat/d;->g(Ljava/util/List;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->j:Lcom/facebook/imagepipeline/decoder/b;

    .line 98
    .line 99
    return-object v0
.end method

.method private k()Ll4/d;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->l:Ll4/d;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getImageTranscoderFactory()Ll4/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getImageTranscoderType()Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/j;->x()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Ll4/h;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 36
    .line 37
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->f()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-direct {v0, v1}, Ll4/h;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->l:Ll4/d;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ll4/f;

    .line 52
    .line 53
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 54
    .line 55
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->f()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 64
    .line 65
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->l()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 74
    .line 75
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getImageTranscoderFactory()Ll4/d;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 80
    .line 81
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getImageTranscoderType()Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 86
    .line 87
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->t()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    move-object v2, v0

    .line 96
    invoke-direct/range {v2 .. v7}, Ll4/f;-><init>(IZLl4/d;Ljava/lang/Integer;Z)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->l:Ll4/d;

    .line 100
    .line 101
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->l:Ll4/d;

    .line 102
    .line 103
    return-object v0
.end method

.method public static l()Lcom/facebook/imagepipeline/core/k;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/core/k;->u:Lcom/facebook/imagepipeline/core/k;

    .line 2
    .line 3
    const-string v1, "ImagePipelineFactory was not initialized!"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/facebook/common/internal/i;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/facebook/imagepipeline/core/k;

    .line 10
    .line 11
    return-object v0
.end method

.method private q()Lcom/facebook/imagepipeline/core/n;
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->m:Lcom/facebook/imagepipeline/core/n;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->h()Lcom/facebook/imagepipeline/core/j$d;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 18
    .line 19
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/i0;->l()Lcom/facebook/common/memory/a;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->i()Lcom/facebook/imagepipeline/decoder/b;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getProgressiveJpegConfig()Lcom/facebook/imagepipeline/decoder/d;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 44
    .line 45
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->isDownsampleEnabled()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 50
    .line 51
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->isResizeAndRotateEnabledForNetwork()Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 56
    .line 57
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->p()Z

    .line 62
    .line 63
    .line 64
    move-result v9

    .line 65
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 66
    .line 67
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/f;

    .line 68
    .line 69
    .line 70
    move-result-object v10

    .line 71
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 72
    .line 73
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v11, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 78
    .line 79
    invoke-interface {v11}, Lcom/facebook/imagepipeline/core/i;->getMemoryChunkType()I

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    invoke-virtual {v1, v11}, Lcom/facebook/imagepipeline/memory/i0;->i(I)Lcom/facebook/common/memory/g;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 88
    .line 89
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/i0;->j()Lcom/facebook/common/memory/j;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->e()Lcom/facebook/imagepipeline/cache/q;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->h()Lcom/facebook/imagepipeline/cache/q;

    .line 102
    .line 103
    .line 104
    move-result-object v14

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->m()Lcom/facebook/imagepipeline/cache/e;

    .line 106
    .line 107
    .line 108
    move-result-object v15

    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->s()Lcom/facebook/imagepipeline/cache/e;

    .line 110
    .line 111
    .line 112
    move-result-object v16

    .line 113
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 114
    .line 115
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getCacheKeyFactory()Lcom/facebook/imagepipeline/cache/f;

    .line 116
    .line 117
    .line 118
    move-result-object v17

    .line 119
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->o()Lcom/facebook/imagepipeline/bitmaps/f;

    .line 120
    .line 121
    .line 122
    move-result-object v18

    .line 123
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 124
    .line 125
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->e()I

    .line 130
    .line 131
    .line 132
    move-result v19

    .line 133
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 134
    .line 135
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->d()I

    .line 140
    .line 141
    .line 142
    move-result v20

    .line 143
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 144
    .line 145
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->c()Z

    .line 150
    .line 151
    .line 152
    move-result v21

    .line 153
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 154
    .line 155
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->f()I

    .line 160
    .line 161
    .line 162
    move-result v22

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->f()Lcom/facebook/imagepipeline/core/a;

    .line 164
    .line 165
    .line 166
    move-result-object v23

    .line 167
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 168
    .line 169
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->E()Z

    .line 174
    .line 175
    .line 176
    move-result v24

    .line 177
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 178
    .line 179
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->j()I

    .line 184
    .line 185
    .line 186
    move-result v25

    .line 187
    invoke-interface/range {v2 .. v25}, Lcom/facebook/imagepipeline/core/j$d;->a(Landroid/content/Context;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/decoder/b;Lcom/facebook/imagepipeline/decoder/d;ZZZLcom/facebook/imagepipeline/core/f;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/cache/f;Lcom/facebook/imagepipeline/bitmaps/f;IIZILcom/facebook/imagepipeline/core/a;ZI)Lcom/facebook/imagepipeline/core/n;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->m:Lcom/facebook/imagepipeline/core/n;

    .line 192
    .line 193
    :cond_0
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->m:Lcom/facebook/imagepipeline/core/n;

    .line 194
    .line 195
    return-object v1
.end method

.method private r()Lcom/facebook/imagepipeline/core/o;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x18

    .line 6
    .line 7
    if-lt v1, v2, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->k()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v10, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    const/4 v10, 0x0

    .line 26
    :goto_0
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->n:Lcom/facebook/imagepipeline/core/o;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    new-instance v1, Lcom/facebook/imagepipeline/core/o;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->q()Lcom/facebook/imagepipeline/core/n;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 51
    .line 52
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->getNetworkFetcher()Lcom/facebook/imagepipeline/producers/l0;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 57
    .line 58
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->isResizeAndRotateEnabledForNetwork()Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 63
    .line 64
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/j;->z()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    iget-object v8, v0, Lcom/facebook/imagepipeline/core/k;->a:Lcom/facebook/imagepipeline/producers/c1;

    .line 73
    .line 74
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 75
    .line 76
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->isDownsampleEnabled()Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 81
    .line 82
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/j;->y()Z

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 91
    .line 92
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->isDiskCacheEnabled()Z

    .line 93
    .line 94
    .line 95
    move-result v12

    .line 96
    invoke-direct/range {p0 .. p0}, Lcom/facebook/imagepipeline/core/k;->k()Ll4/d;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 101
    .line 102
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/j;->s()Z

    .line 107
    .line 108
    .line 109
    move-result v14

    .line 110
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 111
    .line 112
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/j;->q()Z

    .line 117
    .line 118
    .line 119
    move-result v15

    .line 120
    iget-object v2, v0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 121
    .line 122
    invoke-interface {v2}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/core/j;->a()Z

    .line 127
    .line 128
    .line 129
    move-result v16

    .line 130
    move-object v2, v1

    .line 131
    invoke-direct/range {v2 .. v16}, Lcom/facebook/imagepipeline/core/o;-><init>(Landroid/content/ContentResolver;Lcom/facebook/imagepipeline/core/n;Lcom/facebook/imagepipeline/producers/l0;ZZLcom/facebook/imagepipeline/producers/c1;ZZZZLl4/d;ZZZ)V

    .line 132
    .line 133
    .line 134
    iput-object v1, v0, Lcom/facebook/imagepipeline/core/k;->n:Lcom/facebook/imagepipeline/core/o;

    .line 135
    .line 136
    :cond_1
    iget-object v1, v0, Lcom/facebook/imagepipeline/core/k;->n:Lcom/facebook/imagepipeline/core/o;

    .line 137
    .line 138
    return-object v1
.end method

.method private s()Lcom/facebook/imagepipeline/cache/e;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->o:Lcom/facebook/imagepipeline/cache/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/cache/e;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/k;->t()Lcom/facebook/cache/disk/h;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 18
    .line 19
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/i;->getMemoryChunkType()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/i0;->i(I)Lcom/facebook/common/memory/g;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 28
    .line 29
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/i0;->j()Lcom/facebook/common/memory/j;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/f;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->c()Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/f;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->e()Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 58
    .line 59
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/p;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    move-object v1, v0

    .line 64
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/e;-><init>(Lcom/facebook/cache/disk/h;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/p;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->o:Lcom/facebook/imagepipeline/cache/e;

    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->o:Lcom/facebook/imagepipeline/cache/e;

    .line 70
    .line 71
    return-object v0
.end method

.method public static declared-synchronized u()Z
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/core/k;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/k;->u:Lcom/facebook/imagepipeline/core/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    .line 15
    throw v1
.end method

.method public static declared-synchronized v(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/core/k;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "ImagePipelineFactory#initialize"

    .line 11
    .line 12
    invoke-static {v1}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig;->newBuilder(Landroid/content/Context;)Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/ImagePipelineConfig$Builder;->build()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/facebook/imagepipeline/core/k;->w(Lcom/facebook/imagepipeline/core/i;)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0

    .line 39
    throw p0
.end method

.method public static declared-synchronized w(Lcom/facebook/imagepipeline/core/i;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imagePipelineConfig"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/core/k;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/k;->u:Lcom/facebook/imagepipeline/core/k;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/facebook/imagepipeline/core/k;->t:Ljava/lang/Class;

    .line 9
    .line 10
    const-string v2, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior."

    .line 11
    .line 12
    invoke-static {v1, v2}, Li3/a;->k0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v1, Lcom/facebook/imagepipeline/core/k;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/core/k;-><init>(Lcom/facebook/imagepipeline/core/i;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/facebook/imagepipeline/core/k;->u:Lcom/facebook/imagepipeline/core/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    monitor-exit v0

    .line 26
    throw p0
.end method

.method public static declared-synchronized x(Lcom/facebook/imagepipeline/core/i;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "imagePipelineConfig",
            "forceSinglePipelineInstance"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/core/k;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/imagepipeline/core/k;->u:Lcom/facebook/imagepipeline/core/k;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/facebook/imagepipeline/core/k;->t:Ljava/lang/Class;

    .line 9
    .line 10
    const-string v2, "ImagePipelineFactory has already been initialized! `ImagePipelineFactory.initialize(...)` should only be called once to avoid unexpected behavior."

    .line 11
    .line 12
    invoke-static {v1, v2}, Li3/a;->k0(Ljava/lang/Class;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sput-boolean p1, Lcom/facebook/imagepipeline/core/k;->v:Z

    .line 16
    .line 17
    new-instance p1, Lcom/facebook/imagepipeline/core/k;

    .line 18
    .line 19
    invoke-direct {p1, p0}, Lcom/facebook/imagepipeline/core/k;-><init>(Lcom/facebook/imagepipeline/core/i;)V

    .line 20
    .line 21
    .line 22
    sput-object p1, Lcom/facebook/imagepipeline/core/k;->u:Lcom/facebook/imagepipeline/core/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0

    .line 28
    throw p0
.end method

.method public static z(Lcom/facebook/imagepipeline/core/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newInstance"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/facebook/imagepipeline/core/k;->u:Lcom/facebook/imagepipeline/core/k;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public b(Landroid/content/Context;)Lg4/a;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/k;->c()Lcom/facebook/imagepipeline/animated/factory/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/animated/factory/a;->a(Landroid/content/Context;)Lg4/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    return-object p1
.end method

.method public d()Lcom/facebook/imagepipeline/cache/i;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/i<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->d:Lcom/facebook/imagepipeline/cache/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getBitmapMemoryCacheFactory()Lcom/facebook/imagepipeline/cache/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 12
    .line 13
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getBitmapMemoryCacheParamsSupplier()Lcom/facebook/common/internal/l;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/c;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getBitmapMemoryCacheTrimStrategy()Lcom/facebook/imagepipeline/cache/t$a;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/j;->F()Z

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/j;->D()Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 50
    .line 51
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getBitmapMemoryCacheEntryStateObserver()Lcom/facebook/imagepipeline/cache/i$b;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-interface/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/a;->a(Lcom/facebook/common/internal/l;Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/cache/t$a;ZZLcom/facebook/imagepipeline/cache/i$b;)Lcom/facebook/imagepipeline/cache/i;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->d:Lcom/facebook/imagepipeline/cache/i;

    .line 60
    .line 61
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->d:Lcom/facebook/imagepipeline/cache/i;

    .line 62
    .line 63
    return-object v0
.end method

.method public e()Lcom/facebook/imagepipeline/cache/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/q<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->e:Lcom/facebook/imagepipeline/cache/q;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/k;->d()Lcom/facebook/imagepipeline/cache/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/p;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/r;->a(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/p;)Lcom/facebook/imagepipeline/cache/q;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->e:Lcom/facebook/imagepipeline/cache/q;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->e:Lcom/facebook/imagepipeline/cache/q;

    .line 22
    .line 23
    return-object v0
.end method

.method public f()Lcom/facebook/imagepipeline/core/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->c:Lcom/facebook/imagepipeline/core/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lcom/facebook/imagepipeline/cache/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/i<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->f:Lcom/facebook/imagepipeline/cache/i;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getEncodedMemoryCacheParamsSupplier()Lcom/facebook/common/internal/l;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getMemoryTrimmableRegistry()Lcom/facebook/common/memory/c;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/n;->a(Lcom/facebook/common/internal/l;Lcom/facebook/common/memory/c;)Lcom/facebook/imagepipeline/cache/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->f:Lcom/facebook/imagepipeline/cache/i;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->f:Lcom/facebook/imagepipeline/cache/i;

    .line 24
    .line 25
    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/cache/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/imagepipeline/cache/q<",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->g:Lcom/facebook/imagepipeline/cache/q;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getEncodedMemoryCacheOverride()Lcom/facebook/imagepipeline/cache/t;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getEncodedMemoryCacheOverride()Lcom/facebook/imagepipeline/cache/t;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/k;->g()Lcom/facebook/imagepipeline/cache/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/p;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/cache/o;->a(Lcom/facebook/imagepipeline/cache/t;Lcom/facebook/imagepipeline/cache/p;)Lcom/facebook/imagepipeline/cache/q;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->g:Lcom/facebook/imagepipeline/cache/q;

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->g:Lcom/facebook/imagepipeline/cache/q;

    .line 37
    .line 38
    return-object v0
.end method

.method public j()Lcom/facebook/imagepipeline/core/h;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/facebook/imagepipeline/core/k;->v:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/facebook/imagepipeline/core/k;->w:Lcom/facebook/imagepipeline/core/h;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/k;->a()Lcom/facebook/imagepipeline/core/h;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/facebook/imagepipeline/core/k;->w:Lcom/facebook/imagepipeline/core/h;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/imagepipeline/core/h;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/core/k;->w:Lcom/facebook/imagepipeline/core/h;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/imagepipeline/core/h;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/facebook/imagepipeline/core/k;->a()Lcom/facebook/imagepipeline/core/h;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/imagepipeline/core/h;

    .line 29
    .line 30
    :cond_2
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->k:Lcom/facebook/imagepipeline/core/h;

    .line 31
    .line 32
    return-object v0
.end method

.method public m()Lcom/facebook/imagepipeline/cache/e;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->h:Lcom/facebook/imagepipeline/cache/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/imagepipeline/cache/e;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/k;->n()Lcom/facebook/cache/disk/h;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v3, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 18
    .line 19
    invoke-interface {v3}, Lcom/facebook/imagepipeline/core/i;->getMemoryChunkType()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v1, v3}, Lcom/facebook/imagepipeline/memory/i0;->i(I)Lcom/facebook/common/memory/g;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 28
    .line 29
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/memory/i0;->j()Lcom/facebook/common/memory/j;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 38
    .line 39
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/f;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->c()Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 48
    .line 49
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExecutorSupplier()Lcom/facebook/imagepipeline/core/f;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/f;->e()Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 58
    .line 59
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getImageCacheStatsTracker()Lcom/facebook/imagepipeline/cache/p;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    move-object v1, v0

    .line 64
    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/e;-><init>(Lcom/facebook/cache/disk/h;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/p;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->h:Lcom/facebook/imagepipeline/cache/e;

    .line 68
    .line 69
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->h:Lcom/facebook/imagepipeline/cache/e;

    .line 70
    .line 71
    return-object v0
.end method

.method public n()Lcom/facebook/cache/disk/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->i:Lcom/facebook/cache/disk/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getMainDiskCacheConfig()Lcom/facebook/cache/disk/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getFileCacheFactory()Lcom/facebook/imagepipeline/core/g;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/core/g;->a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/h;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->i:Lcom/facebook/cache/disk/h;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->i:Lcom/facebook/cache/disk/h;

    .line 24
    .line 25
    return-object v0
.end method

.method public o()Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->q:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/k;->p()Lcom/facebook/imagepipeline/platform/g;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/core/k;->f()Lcom/facebook/imagepipeline/core/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v1, v2}, Lcom/facebook/imagepipeline/bitmaps/g;->a(Lcom/facebook/imagepipeline/memory/i0;Lcom/facebook/imagepipeline/platform/g;Lcom/facebook/imagepipeline/core/a;)Lcom/facebook/imagepipeline/bitmaps/f;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->q:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->q:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 26
    .line 27
    return-object v0
.end method

.method public p()Lcom/facebook/imagepipeline/platform/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->r:Lcom/facebook/imagepipeline/platform/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getPoolFactory()Lcom/facebook/imagepipeline/memory/i0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getExperiments()Lcom/facebook/imagepipeline/core/j;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/j;->v()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v0, v1}, Lcom/facebook/imagepipeline/platform/h;->a(Lcom/facebook/imagepipeline/memory/i0;Z)Lcom/facebook/imagepipeline/platform/g;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->r:Lcom/facebook/imagepipeline/platform/g;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->r:Lcom/facebook/imagepipeline/platform/g;

    .line 28
    .line 29
    return-object v0
.end method

.method public t()Lcom/facebook/cache/disk/h;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/cache/disk/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/facebook/imagepipeline/core/i;->getSmallImageDiskCacheConfig()Lcom/facebook/cache/disk/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->b:Lcom/facebook/imagepipeline/core/i;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/facebook/imagepipeline/core/i;->getFileCacheFactory()Lcom/facebook/imagepipeline/core/g;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1, v0}, Lcom/facebook/imagepipeline/core/g;->a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/h;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/cache/disk/h;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/k;->p:Lcom/facebook/cache/disk/h;

    .line 24
    .line 25
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "ImagePipelineFactory"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/common/internal/h;->f(Ljava/lang/String;)Lcom/facebook/common/internal/h$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->d:Lcom/facebook/imagepipeline/cache/i;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/facebook/cache/common/f;->g()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "bitmapCountingMemoryCache"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/facebook/imagepipeline/core/k;->f:Lcom/facebook/imagepipeline/cache/i;

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/facebook/cache/common/f;->g()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "encodedCountingMemoryCache"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/facebook/common/internal/h$b;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
