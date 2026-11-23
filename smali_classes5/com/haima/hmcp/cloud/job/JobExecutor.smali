.class public Lcom/haima/hmcp/cloud/job/JobExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "JobExecutor"


# instance fields
.field private currentFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private volatile isRunning:Z

.field private jobQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->jobQueue:Ljava/util/Queue;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->isRunning:Z

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public declared-synchronized addJob(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->jobQueue:Ljava/util/Queue;

    .line 3
    .line 4
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public declared-synchronized cancelAllJobs()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->currentFuture:Ljava/util/concurrent/Future;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->currentFuture:Ljava/util/concurrent/Future;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->jobQueue:Ljava/util/Queue;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public executeJob(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/cloud/job/JobExecutor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "jobQueue isEmpty"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->currentFuture:Ljava/util/concurrent/Future;

    .line 15
    .line 16
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->isRunning:Z

    .line 2
    .line 3
    return v0
.end method

.method public setRunning(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->isRunning:Z

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/haima/hmcp/cloud/job/JobExecutor;->cancelAllJobs()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public startNextJob()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->jobQueue:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->isRunning:Z

    .line 11
    .line 12
    sget-object v0, Lcom/haima/hmcp/cloud/job/JobExecutor;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "jobQueue isEmpty"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->isRunning:Z

    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/cloud/job/JobExecutor;->jobQueue:Ljava/util/Queue;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Runnable;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/cloud/job/JobExecutor;->executeJob(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
