.class public Lcom/facebook/imagepipeline/core/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/imagepipeline/core/g;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# instance fields
.field private a:Lcom/facebook/imagepipeline/core/d;


# direct methods
.method public constructor <init>(Lcom/facebook/imagepipeline/core/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diskStorageFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/imagepipeline/core/c;->a:Lcom/facebook/imagepipeline/core/d;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "diskCacheConfig",
            "diskStorage"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, v0}, Lcom/facebook/imagepipeline/core/c;->c(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;Ljava/util/concurrent/Executor;)Lcom/facebook/cache/disk/d;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static c(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;Ljava/util/concurrent/Executor;)Lcom/facebook/cache/disk/d;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "diskCacheConfig",
            "diskStorage",
            "executorForBackgroundInit"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/facebook/cache/disk/d$c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->k()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->j()J

    .line 8
    .line 9
    .line 10
    move-result-wide v3

    .line 11
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->f()J

    .line 12
    .line 13
    .line 14
    move-result-wide v5

    .line 15
    move-object v0, v7

    .line 16
    invoke-direct/range {v0 .. v6}, Lcom/facebook/cache/disk/d$c;-><init>(JJJ)V

    .line 17
    .line 18
    .line 19
    new-instance v9, Lcom/facebook/cache/disk/d;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->h()Lcom/facebook/cache/disk/g;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->e()Lcom/facebook/cache/common/CacheEventListener;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->d()Lcom/facebook/cache/common/CacheErrorLogger;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->g()Lf3/b;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {p0}, Lcom/facebook/cache/disk/b;->i()Z

    .line 38
    .line 39
    .line 40
    move-result v8

    .line 41
    move-object v0, v9

    .line 42
    move-object v1, p1

    .line 43
    move-object v3, v7

    .line 44
    move-object v7, p2

    .line 45
    invoke-direct/range {v0 .. v8}, Lcom/facebook/cache/disk/d;-><init>(Lcom/facebook/cache/disk/c;Lcom/facebook/cache/disk/g;Lcom/facebook/cache/disk/d$c;Lcom/facebook/cache/common/CacheEventListener;Lcom/facebook/cache/common/CacheErrorLogger;Lf3/b;Ljava/util/concurrent/Executor;Z)V

    .line 46
    .line 47
    .line 48
    return-object v9
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/h;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diskCacheConfig"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/core/c;->a:Lcom/facebook/imagepipeline/core/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/facebook/imagepipeline/core/d;->a(Lcom/facebook/cache/disk/b;)Lcom/facebook/cache/disk/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p1, v0}, Lcom/facebook/imagepipeline/core/c;->b(Lcom/facebook/cache/disk/b;Lcom/facebook/cache/disk/c;)Lcom/facebook/cache/disk/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
