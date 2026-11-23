.class public Lcom/facebook/imagepipeline/cache/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/cache/disk/h;

.field private final b:Lcom/facebook/common/memory/g;

.field private final c:Lcom/facebook/common/memory/j;

.field private final d:Ljava/util/concurrent/Executor;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lcom/facebook/imagepipeline/cache/y;

.field private final g:Lcom/facebook/imagepipeline/cache/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/imagepipeline/cache/e;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/facebook/cache/disk/h;Lcom/facebook/common/memory/g;Lcom/facebook/common/memory/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/facebook/imagepipeline/cache/p;)V
    .locals 0
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
            "fileCache",
            "pooledByteBufferFactory",
            "pooledByteStreams",
            "readExecutor",
            "writeExecutor",
            "imageCacheStatsTracker"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/e;->a:Lcom/facebook/cache/disk/h;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/e;->b:Lcom/facebook/common/memory/g;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/e;->c:Lcom/facebook/common/memory/j;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/e;->d:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/facebook/imagepipeline/cache/e;->e:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/facebook/imagepipeline/cache/e;->g:Lcom/facebook/imagepipeline/cache/p;

    .line 15
    .line 16
    invoke-static {}, Lcom/facebook/imagepipeline/cache/y;->d()Lcom/facebook/imagepipeline/cache/y;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/e;->f:Lcom/facebook/imagepipeline/cache/y;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic a(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/cache/common/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/e;->j(Lcom/facebook/cache/common/c;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic b(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/cache/disk/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/e;->a:Lcom/facebook/cache/disk/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/imagepipeline/cache/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/e;->f:Lcom/facebook/imagepipeline/cache/y;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d()Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic e(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/imagepipeline/cache/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/e;->g:Lcom/facebook/imagepipeline/cache/p;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/cache/common/c;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/e;->v(Lcom/facebook/cache/common/c;)Lcom/facebook/common/memory/PooledByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic g(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/cache/e;->x(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/common/memory/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/imagepipeline/cache/e;->c:Lcom/facebook/common/memory/j;

    .line 2
    .line 3
    return-object p0
.end method

.method private j(Lcom/facebook/cache/common/c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->f:Lcom/facebook/imagepipeline/cache/y;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/y;->c(Lcom/facebook/cache/common/c;)Lcom/facebook/imagepipeline/image/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/image/e;->close()V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "Found image for %s in staging area"

    .line 19
    .line 20
    invoke-static {v0, v2, v1}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->g:Lcom/facebook/imagepipeline/cache/p;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->h(Lcom/facebook/cache/common/c;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_0
    sget-object v0, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 31
    .line 32
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "Did not find image for %s in staging area"

    .line 37
    .line 38
    invoke-static {v0, v2, v1}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->g:Lcom/facebook/imagepipeline/cache/p;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->d(Lcom/facebook/cache/common/c;)V

    .line 44
    .line 45
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->a:Lcom/facebook/cache/disk/h;

    .line 47
    .line 48
    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/h;->g(Lcom/facebook/cache/common/c;)Z

    .line 49
    .line 50
    .line 51
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return p1

    .line 53
    :catch_0
    const/4 p1, 0x0

    .line 54
    return p1
.end method

.method private m(Lcom/facebook/cache/common/c;)Lbolts/h;
    .locals 4
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
            "(",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "BufferedDiskCache_containsAsync"

    .line 2
    .line 3
    invoke-static {v0}, Li4/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/facebook/imagepipeline/cache/e$a;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0, p1}, Lcom/facebook/imagepipeline/cache/e$a;-><init>(Lcom/facebook/imagepipeline/cache/e;Ljava/lang/Object;Lcom/facebook/cache/common/c;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->d:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {v1, v0}, Lbolts/h;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/h;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    sget-object v1, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    aput-object p1, v2, v3

    .line 31
    .line 32
    const-string p1, "Failed to schedule disk-cache read for %s"

    .line 33
    .line 34
    invoke-static {v1, v0, p1, v2}, Li3/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lbolts/h;->y(Ljava/lang/Exception;)Lbolts/h;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method private p(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)Lbolts/h;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "pinnedImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            "Lcom/facebook/imagepipeline/image/e;",
            ")",
            "Lbolts/h<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "Found image for %s in staging area"

    .line 8
    .line 9
    invoke-static {v0, v2, v1}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->g:Lcom/facebook/imagepipeline/cache/p;

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->h(Lcom/facebook/cache/common/c;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lbolts/h;->z(Ljava/lang/Object;)Lbolts/h;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private r(Lcom/facebook/cache/common/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "isCancelled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/h<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "BufferedDiskCache_getAsync"

    .line 2
    .line 3
    invoke-static {v0}, Li4/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/facebook/imagepipeline/cache/e$c;

    .line 8
    .line 9
    invoke-direct {v1, p0, v0, p2, p1}, Lcom/facebook/imagepipeline/cache/e$c;-><init>(Lcom/facebook/imagepipeline/cache/e;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/cache/common/c;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/e;->d:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    invoke-static {v1, p2}, Lbolts/h;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/h;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p1

    .line 19
    :catch_0
    move-exception p2

    .line 20
    sget-object v0, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    aput-object p1, v1, v2

    .line 31
    .line 32
    const-string p1, "Failed to schedule disk-cache read for %s"

    .line 33
    .line 34
    invoke-static {v0, p2, p1, v1}, Li3/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-static {p2}, Lbolts/h;->y(Ljava/lang/Exception;)Lbolts/h;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method

.method private v(Lcom/facebook/cache/common/c;)Lcom/facebook/common/memory/PooledByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 2
    .line 3
    const-string v1, "Disk cache read for %s"

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e;->a:Lcom/facebook/cache/disk/h;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Lcom/facebook/cache/disk/h;->c(Lcom/facebook/cache/common/c;)Ld3/a;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const-string v1, "Disk cache miss for %s"

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v0, v1, v2}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->g:Lcom/facebook/imagepipeline/cache/p;

    .line 30
    .line 31
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/cache/p;->b(Lcom/facebook/cache/common/c;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return-object p1

    .line 36
    :cond_0
    const-string v2, "Found entry in disk cache for %s"

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v0, v2, v3}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e;->g:Lcom/facebook/imagepipeline/cache/p;

    .line 46
    .line 47
    invoke-interface {v2, p1}, Lcom/facebook/imagepipeline/cache/p;->k(Lcom/facebook/cache/common/c;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Ld3/a;->a()Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :try_start_1
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/e;->b:Lcom/facebook/common/memory/g;

    .line 55
    .line 56
    invoke-interface {v1}, Ld3/a;->size()J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    long-to-int v1, v4

    .line 61
    invoke-interface {v3, v2, v1}, Lcom/facebook/common/memory/g;->e(Ljava/io/InputStream;I)Lcom/facebook/common/memory/PooledByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 66
    .line 67
    .line 68
    const-string v2, "Successful read from disk cache for %s"

    .line 69
    .line 70
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v0, v2, v3}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 80
    .line 81
    .line 82
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    sget-object v1, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    new-array v2, v2, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const/4 v4, 0x0

    .line 94
    aput-object v3, v2, v4

    .line 95
    .line 96
    const-string v3, "Exception reading from cache for %s"

    .line 97
    .line 98
    invoke-static {v1, v0, v3, v2}, Li3/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e;->g:Lcom/facebook/imagepipeline/cache/p;

    .line 102
    .line 103
    invoke-interface {v1, p1}, Lcom/facebook/imagepipeline/cache/p;->n(Lcom/facebook/cache/common/c;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

.method private x(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "encodedImage"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "About to write to disk-cache for key %s"

    .line 8
    .line 9
    invoke-static {v0, v2, v1}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e;->a:Lcom/facebook/cache/disk/h;

    .line 13
    .line 14
    new-instance v2, Lcom/facebook/imagepipeline/cache/e$g;

    .line 15
    .line 16
    invoke-direct {v2, p0, p2}, Lcom/facebook/imagepipeline/cache/e$g;-><init>(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/imagepipeline/image/e;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, p1, v2}, Lcom/facebook/cache/disk/h;->insert(Lcom/facebook/cache/common/c;Lcom/facebook/cache/common/k;)Ld3/a;

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/e;->g:Lcom/facebook/imagepipeline/cache/p;

    .line 23
    .line 24
    invoke-interface {p2, p1}, Lcom/facebook/imagepipeline/cache/p;->c(Lcom/facebook/cache/common/c;)V

    .line 25
    .line 26
    .line 27
    const-string p2, "Successful disk-cache write for key %s"

    .line 28
    .line 29
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, p2, v1}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p2

    .line 38
    sget-object v0, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    aput-object p1, v1, v2

    .line 49
    .line 50
    const-string p1, "Failed to write to disk-cache for key %s"

    .line 51
    .line 52
    invoke-static {v0, p2, p1, v1}, Li3/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method


# virtual methods
.method public i(Lcom/facebook/cache/common/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->a:Lcom/facebook/cache/disk/h;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/h;->b(Lcom/facebook/cache/common/c;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public k()Lbolts/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->f:Lcom/facebook/imagepipeline/cache/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/cache/y;->a()V

    .line 4
    .line 5
    .line 6
    const-string v0, "BufferedDiskCache_clearAll"

    .line 7
    .line 8
    invoke-static {v0}, Li4/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    new-instance v1, Lcom/facebook/imagepipeline/cache/e$f;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0}, Lcom/facebook/imagepipeline/cache/e$f;-><init>(Lcom/facebook/imagepipeline/cache/e;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->e:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lbolts/h;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/h;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    sget-object v1, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v3, "Failed to schedule disk-cache clear"

    .line 31
    .line 32
    invoke-static {v1, v0, v3, v2}, Li3/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lbolts/h;->y(Ljava/lang/Exception;)Lbolts/h;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public l(Lcom/facebook/cache/common/c;)Lbolts/h;
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
            "(",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/e;->n(Lcom/facebook/cache/common/c;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-static {p1}, Lbolts/h;->z(Ljava/lang/Object;)Lbolts/h;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/e;->m(Lcom/facebook/cache/common/c;)Lbolts/h;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public n(Lcom/facebook/cache/common/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->f:Lcom/facebook/imagepipeline/cache/y;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/y;->b(Lcom/facebook/cache/common/c;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->a:Lcom/facebook/cache/disk/h;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lcom/facebook/cache/disk/h;->e(Lcom/facebook/cache/common/c;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method

.method public o(Lcom/facebook/cache/common/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/cache/e;->n(Lcom/facebook/cache/common/c;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/cache/e;->j(Lcom/facebook/cache/common/c;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public q(Lcom/facebook/cache/common/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "isCancelled"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cache/common/c;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            ")",
            "Lbolts/h<",
            "Lcom/facebook/imagepipeline/image/e;",
            ">;"
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
    const-string v0, "BufferedDiskCache#get"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->f:Lcom/facebook/imagepipeline/cache/y;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/y;->c(Lcom/facebook/cache/common/c;)Lcom/facebook/imagepipeline/image/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-direct {p0, p1, v0}, Lcom/facebook/imagepipeline/cache/e;->p(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)Lbolts/h;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    if-eqz p2, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-object p1

    .line 34
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/imagepipeline/cache/e;->r(Lcom/facebook/cache/common/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 45
    .line 46
    .line 47
    :cond_3
    return-object p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_4

    .line 54
    .line 55
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 56
    .line 57
    .line 58
    :cond_4
    throw p1
.end method

.method public s()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->a:Lcom/facebook/cache/disk/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/facebook/cache/disk/h;->getSize()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public t(Lcom/facebook/cache/common/c;)Lbolts/h;
    .locals 4
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
            "(",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v0, "BufferedDiskCache_probe"

    .line 5
    .line 6
    invoke-static {v0}, Li4/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/facebook/imagepipeline/cache/e$b;

    .line 11
    .line 12
    invoke-direct {v1, p0, v0, p1}, Lcom/facebook/imagepipeline/cache/e$b;-><init>(Lcom/facebook/imagepipeline/cache/e;Ljava/lang/Object;Lcom/facebook/cache/common/c;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->e:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    invoke-static {v1, v0}, Lbolts/h;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/h;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    return-object p1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    sget-object v1, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    aput-object p1, v2, v3

    .line 34
    .line 35
    const-string p1, "Failed to schedule disk-cache probe for %s"

    .line 36
    .line 37
    invoke-static {v1, v0, p1, v2}, Li3/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lbolts/h;->y(Ljava/lang/Exception;)Lbolts/h;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public u(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "encodedImage"
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
    const-string v0, "BufferedDiskCache#put"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/e;->P(Lcom/facebook/imagepipeline/image/e;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->f:Lcom/facebook/imagepipeline/cache/y;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/facebook/imagepipeline/cache/y;->f(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lcom/facebook/imagepipeline/image/e;->c(Lcom/facebook/imagepipeline/image/e;)Lcom/facebook/imagepipeline/image/e;

    .line 32
    .line 33
    .line 34
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    const-string v1, "BufferedDiskCache_putAsync"

    .line 36
    .line 37
    invoke-static {v1}, Li4/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e;->e:Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    new-instance v3, Lcom/facebook/imagepipeline/cache/e$d;

    .line 44
    .line 45
    invoke-direct {v3, p0, v1, p1, v0}, Lcom/facebook/imagepipeline/cache/e$d;-><init>(Lcom/facebook/imagepipeline/cache/e;Ljava/lang/Object;Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    :try_start_2
    sget-object v2, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 54
    .line 55
    const-string v3, "Failed to schedule disk-cache write for %s"

    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    new-array v4, v4, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const/4 v6, 0x0

    .line 65
    aput-object v5, v4, v6

    .line 66
    .line 67
    invoke-static {v2, v1, v3, v4}, Li3/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e;->f:Lcom/facebook/imagepipeline/cache/y;

    .line 71
    .line 72
    invoke-virtual {v1, p1, p2}, Lcom/facebook/imagepipeline/cache/y;->h(Lcom/facebook/cache/common/c;Lcom/facebook/imagepipeline/image/e;)Z

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/facebook/imagepipeline/image/e;->d(Lcom/facebook/imagepipeline/image/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 85
    .line 86
    .line 87
    :cond_1
    return-void

    .line 88
    :catchall_0
    move-exception p1

    .line 89
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_2

    .line 94
    .line 95
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 96
    .line 97
    .line 98
    :cond_2
    throw p1
.end method

.method public w(Lcom/facebook/cache/common/c;)Lbolts/h;
    .locals 4
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
            "(",
            "Lcom/facebook/cache/common/c;",
            ")",
            "Lbolts/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->f:Lcom/facebook/imagepipeline/cache/y;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/cache/y;->g(Lcom/facebook/cache/common/c;)Z

    .line 7
    .line 8
    .line 9
    :try_start_0
    const-string v0, "BufferedDiskCache_remove"

    .line 10
    .line 11
    invoke-static {v0}, Li4/a;->d(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/facebook/imagepipeline/cache/e$e;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0, p1}, Lcom/facebook/imagepipeline/cache/e$e;-><init>(Lcom/facebook/imagepipeline/cache/e;Ljava/lang/Object;Lcom/facebook/cache/common/c;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e;->e:Ljava/util/concurrent/Executor;

    .line 21
    .line 22
    invoke-static {v1, v0}, Lbolts/h;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/h;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object p1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lcom/facebook/imagepipeline/cache/e;->h:Ljava/lang/Class;

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-interface {p1}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    aput-object p1, v2, v3

    .line 39
    .line 40
    const-string p1, "Failed to schedule disk-cache remove for %s"

    .line 41
    .line 42
    invoke-static {v1, v0, p1, v2}, Li3/a;->n0(Ljava/lang/Class;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lbolts/h;->y(Ljava/lang/Exception;)Lbolts/h;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method
