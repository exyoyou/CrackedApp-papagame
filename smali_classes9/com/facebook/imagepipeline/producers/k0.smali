.class public Lcom/facebook/imagepipeline/producers/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/producers/q0;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/imagepipeline/producers/q0<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "NetworkFetchProducer"

.field public static final e:Ljava/lang/String; = "intermediate_result"

.field private static final f:I = 0x4000

.field static final g:J = 0x64L
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field protected final a:Lcom/facebook/common/memory/g;

.field private final b:Lcom/facebook/common/memory/a;

.field private final c:Lcom/facebook/imagepipeline/producers/l0;


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/a;Lcom/facebook/imagepipeline/producers/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pooledByteBufferFactory",
            "byteArrayPool",
            "networkFetcher"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/producers/k0;->a:Lcom/facebook/common/memory/g;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/producers/k0;->b:Lcom/facebook/common/memory/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/imagepipeline/producers/k0;->c:Lcom/facebook/imagepipeline/producers/l0;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/producers/v;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/producers/k0;->l(Lcom/facebook/imagepipeline/producers/v;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/producers/v;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/producers/k0;->k(Lcom/facebook/imagepipeline/producers/v;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected static e(II)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloaded",
            "total"
        }
    .end annotation

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    int-to-float p0, p0

    .line 4
    int-to-float p1, p1

    .line 5
    div-float/2addr p0, p1

    .line 6
    return p0

    .line 7
    :cond_0
    neg-int p0, p0

    .line 8
    int-to-double p0, p0

    .line 9
    const-wide v0, 0x40e86a0000000000L    # 50000.0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    div-double/2addr p0, v0

    .line 15
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    .line 16
    .line 17
    .line 18
    move-result-wide p0

    .line 19
    double-to-float p0, p0

    .line 20
    const/high16 p1, 0x3f800000    # 1.0f

    .line 21
    .line 22
    sub-float/2addr p1, p0

    .line 23
    return p1
.end method

.method private f(Lcom/facebook/imagepipeline/producers/v;I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "byteSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/v;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->d()Lcom/facebook/imagepipeline/producers/t0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "NetworkFetchProducer"

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/facebook/imagepipeline/producers/t0;->f(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k0;->c:Lcom/facebook/imagepipeline/producers/l0;

    .line 20
    .line 21
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l0;->e(Lcom/facebook/imagepipeline/producers/v;I)Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method protected static j(Lcom/facebook/common/memory/i;ILcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 2
    .param p2    # Lcom/facebook/imagepipeline/common/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pooledOutputStream",
            "status",
            "responseBytesRange",
            "consumer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/memory/i;",
            "I",
            "Lcom/facebook/imagepipeline/common/a;",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/common/memory/i;->b()Lcom/facebook/common/memory/PooledByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->q(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/image/e;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/facebook/imagepipeline/image/e;->d0(Lcom/facebook/imagepipeline/common/a;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/image/e;->Q()V

    .line 19
    .line 20
    .line 21
    sget-object p2, Lcom/facebook/imagepipeline/image/EncodedImageOrigin;->NETWORK:Lcom/facebook/imagepipeline/image/EncodedImageOrigin;

    .line 22
    .line 23
    invoke-interface {p4, p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->n(Lcom/facebook/imagepipeline/image/EncodedImageOrigin;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p3, v1, p1}, Lcom/facebook/imagepipeline/producers/Consumer;->b(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    move-object v0, v1

    .line 38
    goto :goto_0

    .line 39
    :catchall_1
    move-exception p1

    .line 40
    :goto_0
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p0}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method private k(Lcom/facebook/imagepipeline/producers/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fetchState"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->d()Lcom/facebook/imagepipeline/producers/t0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "NetworkFetchProducer"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/t0;->d(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Lcom/facebook/imagepipeline/producers/Consumer;->a()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private l(Lcom/facebook/imagepipeline/producers/v;Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "e"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->d()Lcom/facebook/imagepipeline/producers/t0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "NetworkFetchProducer"

    .line 11
    .line 12
    invoke-interface {v0, v1, v3, p2, v2}, Lcom/facebook/imagepipeline/producers/t0;->k(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->d()Lcom/facebook/imagepipeline/producers/t0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {v0, v1, v3, v2}, Lcom/facebook/imagepipeline/producers/t0;->a(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "network"

    .line 32
    .line 33
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->l(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1, p2}, Lcom/facebook/imagepipeline/producers/Consumer;->onFailure(Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private n(Lcom/facebook/imagepipeline/producers/v;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fetchState"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/facebook/imagepipeline/producers/ProducerContext;->m()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k0;->c:Lcom/facebook/imagepipeline/producers/l0;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/producers/l0;->d(Lcom/facebook/imagepipeline/producers/v;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method


# virtual methods
.method public a(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "consumer",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/producers/Consumer<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;",
            "Lcom/facebook/imagepipeline/producers/ProducerContext;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/facebook/imagepipeline/producers/ProducerContext;->d()Lcom/facebook/imagepipeline/producers/t0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "NetworkFetchProducer"

    .line 6
    .line 7
    invoke-interface {v0, p2, v1}, Lcom/facebook/imagepipeline/producers/t0;->b(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k0;->c:Lcom/facebook/imagepipeline/producers/l0;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/producers/l0;->b(Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)Lcom/facebook/imagepipeline/producers/v;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/k0;->c:Lcom/facebook/imagepipeline/producers/l0;

    .line 17
    .line 18
    new-instance v0, Lcom/facebook/imagepipeline/producers/k0$a;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lcom/facebook/imagepipeline/producers/k0$a;-><init>(Lcom/facebook/imagepipeline/producers/k0;Lcom/facebook/imagepipeline/producers/v;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2, p1, v0}, Lcom/facebook/imagepipeline/producers/l0;->c(Lcom/facebook/imagepipeline/producers/v;Lcom/facebook/imagepipeline/producers/l0$a;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method protected g()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method protected h(Lcom/facebook/common/memory/i;Lcom/facebook/imagepipeline/producers/v;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pooledOutputStream",
            "fetchState"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/facebook/common/memory/i;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, p2, v0}, Lcom/facebook/imagepipeline/producers/k0;->f(Lcom/facebook/imagepipeline/producers/v;I)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->d()Lcom/facebook/imagepipeline/producers/t0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "NetworkFetchProducer"

    .line 18
    .line 19
    invoke-interface {v1, v2, v3, v0}, Lcom/facebook/imagepipeline/producers/t0;->j(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-interface {v1, v0, v3, v2}, Lcom/facebook/imagepipeline/producers/t0;->a(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "network"

    .line 35
    .line 36
    invoke-interface {v0, v1}, Lcom/facebook/imagepipeline/producers/ProducerContext;->l(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->e()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    or-int/2addr v0, v2

    .line 44
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->f()Lcom/facebook/imagepipeline/common/a;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {p1, v0, v1, v2, p2}, Lcom/facebook/imagepipeline/producers/k0;->j(Lcom/facebook/common/memory/i;ILcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method protected i(Lcom/facebook/common/memory/i;Lcom/facebook/imagepipeline/producers/v;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pooledOutputStream",
            "fetchState"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/producers/k0;->g()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, p2}, Lcom/facebook/imagepipeline/producers/k0;->n(Lcom/facebook/imagepipeline/producers/v;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->c()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    sub-long v2, v0, v2

    .line 16
    .line 17
    const-wide/16 v4, 0x64

    .line 18
    .line 19
    cmp-long v6, v2, v4

    .line 20
    .line 21
    if-ltz v6, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, v0, v1}, Lcom/facebook/imagepipeline/producers/v;->h(J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->d()Lcom/facebook/imagepipeline/producers/t0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "NetworkFetchProducer"

    .line 35
    .line 36
    const-string v3, "intermediate_result"

    .line 37
    .line 38
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/imagepipeline/producers/t0;->h(Lcom/facebook/imagepipeline/producers/ProducerContext;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->e()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->f()Lcom/facebook/imagepipeline/common/a;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p2}, Lcom/facebook/imagepipeline/producers/v;->getContext()Lcom/facebook/imagepipeline/producers/ProducerContext;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p1, v0, v1, v2, p2}, Lcom/facebook/imagepipeline/producers/k0;->j(Lcom/facebook/common/memory/i;ILcom/facebook/imagepipeline/common/a;Lcom/facebook/imagepipeline/producers/Consumer;Lcom/facebook/imagepipeline/producers/ProducerContext;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method

.method protected m(Lcom/facebook/imagepipeline/producers/v;Ljava/io/InputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fetchState",
            "responseData",
            "responseContentLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-lez p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k0;->a:Lcom/facebook/common/memory/g;

    .line 4
    .line 5
    invoke-interface {v0, p3}, Lcom/facebook/common/memory/g;->d(I)Lcom/facebook/common/memory/i;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/producers/k0;->a:Lcom/facebook/common/memory/g;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/facebook/common/memory/g;->b()Lcom/facebook/common/memory/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/producers/k0;->b:Lcom/facebook/common/memory/a;

    .line 17
    .line 18
    const/16 v2, 0x4000

    .line 19
    .line 20
    invoke-interface {v1, v2}, Lcom/facebook/common/memory/e;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, [B

    .line 25
    .line 26
    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-ltz v2, :cond_2

    .line 31
    .line 32
    if-lez v2, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/k0;->i(Lcom/facebook/common/memory/i;Lcom/facebook/imagepipeline/producers/v;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/facebook/common/memory/i;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2, p3}, Lcom/facebook/imagepipeline/producers/k0;->e(II)F

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/producers/v;->a()Lcom/facebook/imagepipeline/producers/Consumer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v3, v2}, Lcom/facebook/imagepipeline/producers/Consumer;->c(F)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/k0;->c:Lcom/facebook/imagepipeline/producers/l0;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/facebook/common/memory/i;->size()I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    invoke-interface {p2, p1, p3}, Lcom/facebook/imagepipeline/producers/l0;->a(Lcom/facebook/imagepipeline/producers/v;I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0, p1}, Lcom/facebook/imagepipeline/producers/k0;->h(Lcom/facebook/common/memory/i;Lcom/facebook/imagepipeline/producers/v;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/facebook/imagepipeline/producers/k0;->b:Lcom/facebook/common/memory/a;

    .line 70
    .line 71
    invoke-interface {p1, v1}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/facebook/common/memory/i;->close()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    iget-object p2, p0, Lcom/facebook/imagepipeline/producers/k0;->b:Lcom/facebook/common/memory/a;

    .line 80
    .line 81
    invoke-interface {p2, v1}, Lcom/facebook/common/memory/e;->release(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/facebook/common/memory/i;->close()V

    .line 85
    .line 86
    .line 87
    throw p1
.end method
