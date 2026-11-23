.class Lcom/facebook/imagepipeline/cache/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/imagepipeline/cache/e;->r(Lcom/facebook/cache/common/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Lbolts/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/facebook/imagepipeline/image/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lcom/facebook/cache/common/c;

.field final synthetic e:Lcom/facebook/imagepipeline/cache/e;


# direct methods
.method constructor <init>(Lcom/facebook/imagepipeline/cache/e;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/cache/common/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$key",
            "val$isCancelled",
            "val$token"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/e$c;->e:Lcom/facebook/imagepipeline/cache/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/e$c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/e$c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/e$c;->d:Lcom/facebook/cache/common/c;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/imagepipeline/image/e;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/e$c;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li4/a;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$c;->e:Lcom/facebook/imagepipeline/cache/e;

    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/e;->c(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/imagepipeline/cache/y;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/e$c;->d:Lcom/facebook/cache/common/c;

    invoke-virtual {v2, v3}, Lcom/facebook/imagepipeline/cache/y;->c(Lcom/facebook/cache/common/c;)Lcom/facebook/imagepipeline/image/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/facebook/imagepipeline/cache/e;->d()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "Found image for %s in staging area"

    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/e$c;->d:Lcom/facebook/cache/common/c;

    invoke-interface {v4}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/e$c;->e:Lcom/facebook/imagepipeline/cache/e;

    invoke-static {v1}, Lcom/facebook/imagepipeline/cache/e;->e(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/imagepipeline/cache/p;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/e$c;->d:Lcom/facebook/cache/common/c;

    invoke-interface {v1, v3}, Lcom/facebook/imagepipeline/cache/p;->h(Lcom/facebook/cache/common/c;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/facebook/imagepipeline/cache/e;->d()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Did not find image for %s in staging area"

    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/e$c;->d:Lcom/facebook/cache/common/c;

    invoke-interface {v4}, Lcom/facebook/cache/common/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$c;->e:Lcom/facebook/imagepipeline/cache/e;

    invoke-static {v2}, Lcom/facebook/imagepipeline/cache/e;->e(Lcom/facebook/imagepipeline/cache/e;)Lcom/facebook/imagepipeline/cache/p;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/e$c;->d:Lcom/facebook/cache/common/c;

    invoke-interface {v2, v3}, Lcom/facebook/imagepipeline/cache/p;->d(Lcom/facebook/cache/common/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$c;->e:Lcom/facebook/imagepipeline/cache/e;

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/e$c;->d:Lcom/facebook/cache/common/c;

    invoke-static {v2, v3}, Lcom/facebook/imagepipeline/cache/e;->f(Lcom/facebook/imagepipeline/cache/e;Lcom/facebook/cache/common/c;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    .line 10
    invoke-static {v0}, Li4/a;->f(Ljava/lang/Object;)V

    return-object v1

    .line 11
    :cond_1
    :try_start_2
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->q(Ljava/io/Closeable;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    :try_start_3
    new-instance v3, Lcom/facebook/imagepipeline/image/e;

    invoke-direct {v3, v2}, Lcom/facebook/imagepipeline/image/e;-><init>(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :try_start_4
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v2, v3

    .line 14
    :goto_0
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v1, :cond_2

    .line 15
    invoke-static {v0}, Li4/a;->f(Ljava/lang/Object;)V

    return-object v2

    .line 16
    :cond_2
    :try_start_6
    invoke-static {}, Lcom/facebook/imagepipeline/cache/e;->d()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "Host thread was interrupted, decreasing reference count"

    invoke-static {v1, v3}, Li3/a;->U(Ljava/lang/Class;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Lcom/facebook/imagepipeline/image/e;->close()V

    .line 18
    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_0
    move-exception v3

    .line 19
    :try_start_7
    invoke-static {v2}, Lcom/facebook/common/references/CloseableReference;->h(Lcom/facebook/common/references/CloseableReference;)V

    .line 20
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 21
    :catch_0
    invoke-static {v0}, Li4/a;->f(Ljava/lang/Object;)V

    return-object v1

    .line 22
    :cond_3
    :try_start_8
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v1

    .line 23
    :try_start_9
    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/e$c;->b:Ljava/lang/Object;

    invoke-static {v2, v1}, Li4/a;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 24
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v1

    .line 25
    invoke-static {v0}, Li4/a;->f(Ljava/lang/Object;)V

    .line 26
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/e$c;->call()Lcom/facebook/imagepipeline/image/e;

    move-result-object v0

    return-object v0
.end method
