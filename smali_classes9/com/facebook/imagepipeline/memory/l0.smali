.class public Lcom/facebook/imagepipeline/memory/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/common/memory/b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field final a:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final c:Lcom/facebook/common/references/e;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/e<",
            "[B>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/Semaphore;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final e:Lcom/facebook/common/references/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/references/g<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/common/memory/c;Lcom/facebook/imagepipeline/memory/j0;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "memoryTrimmableRegistry",
            "params"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget v0, p2, Lcom/facebook/imagepipeline/memory/j0;->d:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    iget v0, p2, Lcom/facebook/imagepipeline/memory/j0;->e:I

    .line 24
    .line 25
    iget v3, p2, Lcom/facebook/imagepipeline/memory/j0;->d:I

    .line 26
    .line 27
    if-lt v0, v3, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    .line 35
    .line 36
    .line 37
    iget v0, p2, Lcom/facebook/imagepipeline/memory/j0;->e:I

    .line 38
    .line 39
    iput v0, p0, Lcom/facebook/imagepipeline/memory/l0;->b:I

    .line 40
    .line 41
    iget p2, p2, Lcom/facebook/imagepipeline/memory/j0;->d:I

    .line 42
    .line 43
    iput p2, p0, Lcom/facebook/imagepipeline/memory/l0;->a:I

    .line 44
    .line 45
    new-instance p2, Lcom/facebook/common/references/e;

    .line 46
    .line 47
    invoke-direct {p2}, Lcom/facebook/common/references/e;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/l0;->c:Lcom/facebook/common/references/e;

    .line 51
    .line 52
    new-instance p2, Ljava/util/concurrent/Semaphore;

    .line 53
    .line 54
    invoke-direct {p2, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/l0;->d:Ljava/util/concurrent/Semaphore;

    .line 58
    .line 59
    new-instance p2, Lcom/facebook/imagepipeline/memory/l0$a;

    .line 60
    .line 61
    invoke-direct {p2, p0}, Lcom/facebook/imagepipeline/memory/l0$a;-><init>(Lcom/facebook/imagepipeline/memory/l0;)V

    .line 62
    .line 63
    .line 64
    iput-object p2, p0, Lcom/facebook/imagepipeline/memory/l0;->e:Lcom/facebook/common/references/g;

    .line 65
    .line 66
    invoke-interface {p1, p0}, Lcom/facebook/common/memory/c;->b(Lcom/facebook/common/memory/b;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private declared-synchronized g(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/l0;->c:Lcom/facebook/common/references/e;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/facebook/common/references/e;->a()V

    .line 5
    .line 6
    .line 7
    new-array p1, p1, [B

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/l0;->c:Lcom/facebook/common/references/e;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/facebook/common/references/e;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method private t(I)[B
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestedSize"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/imagepipeline/memory/l0;->s(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/l0;->c:Lcom/facebook/common/references/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/common/references/e;->b()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [B

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    array-length v1, v0

    .line 16
    if-ge v1, p1, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/l0;->g(I)[B

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_1
    return-object v0
.end method


# virtual methods
.method public q(Lcom/facebook/common/memory/MemoryTrimType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimType"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/l0;->d:Ljava/util/concurrent/Semaphore;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/l0;->c:Lcom/facebook/common/references/e;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/facebook/common/references/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/facebook/imagepipeline/memory/l0;->d:Ljava/util/concurrent/Semaphore;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/l0;->d:Ljava/util/concurrent/Semaphore;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public r(I)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/facebook/common/references/CloseableReference<",
            "[B>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lez p1, :cond_0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    const-string v3, "Size must be greater than zero"

    .line 9
    .line 10
    invoke-static {v2, v3}, Lcom/facebook/common/internal/i;->e(ZLjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget v2, p0, Lcom/facebook/imagepipeline/memory/l0;->b:I

    .line 14
    .line 15
    if-gt p1, v2, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_1
    const-string v1, "Requested size is too big"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/facebook/common/internal/i;->e(ZLjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/l0;->d:Ljava/util/concurrent/Semaphore;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/imagepipeline/memory/l0;->t(I)[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/l0;->e:Lcom/facebook/common/references/g;

    .line 34
    .line 35
    invoke-static {p1, v0}, Lcom/facebook/common/references/CloseableReference;->t(Ljava/lang/Object;Lcom/facebook/common/references/g;)Lcom/facebook/common/references/CloseableReference;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    return-object p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    iget-object v0, p0, Lcom/facebook/imagepipeline/memory/l0;->d:Ljava/util/concurrent/Semaphore;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/facebook/common/internal/n;->d(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    throw p1
.end method

.method s(I)I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/memory/l0;->a:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    mul-int/lit8 p1, p1, 0x2

    .line 14
    .line 15
    return p1
.end method
