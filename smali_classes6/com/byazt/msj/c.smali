.class public abstract Lcom/byazt/msj/c;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x76a,
        0x14
    }
.end annotation


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9

    .line 1
    sget-object v8, Lcom/byazt/jtc/c;->c:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/byazt/msj/c;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method private c(Ljava/lang/Runnable;)V
    .locals 6

    const-string v0, "BaseThreadPool"

    const/4 v1, 0x0

    .line 2
    :try_start_0
    instance-of v2, p1, Lcom/byazt/mc/ve;

    if-eqz v2, :cond_0

    .line 3
    move-object v2, p1

    check-cast v2, Lcom/byazt/mc/ve;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lcom/byazt/mc/ve;

    invoke-direct {v2, p1}, Lcom/byazt/mc/ve;-><init>(Ljava/lang/Runnable;)V

    .line 5
    :goto_0
    invoke-virtual {v2}, Lcom/byazt/mc/ve;->tt()V

    .line 6
    sget-object v3, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    invoke-virtual {v3}, Lcom/byazt/bwm/i;->yp()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v4

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    const-string v4, "crashing drop task :"

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 9
    invoke-virtual {v2, v4}, Lcom/byazt/mc/ve;->c(I)V

    .line 10
    invoke-virtual {v3}, Lcom/byazt/bwm/i;->t()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/msj/c;->tt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/mc/ve;->c(I)V

    .line 12
    invoke-super {p0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "InternalError"

    .line 13
    invoke-static {v0, v1, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception v0

    .line 14
    sget-object v2, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    invoke-virtual {v2}, Lcom/byazt/bwm/i;->tt()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    sput-boolean v1, Lcom/byazt/bwm/i;->uj:Z

    .line 16
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/byazt/msj/c;->c(Ljava/lang/Runnable;Ljava/lang/OutOfMemoryError;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;Ljava/lang/OutOfMemoryError;)V
    .locals 0

    const/4 p1, 0x1

    .line 17
    sput-boolean p1, Lcom/byazt/mc/ve;->tt:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/msj/c;->c(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setCorePoolSize(I)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    return-void

    .line 5
    :catch_0
    move-exception p1

    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/byazt/msj/c;->c(Ljava/lang/Runnable;Ljava/lang/OutOfMemoryError;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_1
    move-exception p1

    .line 12
    const-string v0, "BaseThreadPool"

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public tt()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
