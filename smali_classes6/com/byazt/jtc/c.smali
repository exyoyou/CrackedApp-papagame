.class public Lcom/byazt/jtc/c;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/bwm/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d8,
        0x14
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/RejectedExecutionHandler;


# instance fields
.field public tt:Lcom/byazt/bwm/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/jtc/c$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/jtc/c$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/jtc/c;->c:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v8, Lcom/byazt/jtc/c;->c:Ljava/util/concurrent/RejectedExecutionHandler;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/byazt/jtc/c;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 11
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

    .line 3
    new-instance v10, Lcom/byazt/mc/a;

    move-object v0, v10

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, p0

    invoke-direct/range {v0 .. v9}, Lcom/byazt/mc/a;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;Ljava/util/concurrent/ThreadPoolExecutor;)V

    move-object v0, p0

    iput-object v10, v0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 4
    sget-object v1, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    invoke-virtual {v1}, Lcom/byazt/bwm/i;->sp()Lcom/byazt/mc/n;

    return-void
.end method


# virtual methods
.method public allowCoreThreadTimeOut(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/bwm/c;->allowCoreThreadTimeOut(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public allowsCoreThreadTimeOut()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->allowsCoreThreadTimeOut()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/bwm/c;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/bwm/c;->execute(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getActiveCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->getActiveCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getCompletedTaskCount()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->getCompletedTaskCount()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getCorePoolSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->getCorePoolSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/bwm/c;->getKeepAliveTime(Ljava/util/concurrent/TimeUnit;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getLargestPoolSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->getLargestPoolSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getMaximumPoolSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->getMaximumPoolSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getPoolSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->getPoolSize()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->getQueue()Ljava/util/concurrent/BlockingQueue;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->getRejectedExecutionHandler()Ljava/util/concurrent/RejectedExecutionHandler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTaskCount()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->getTaskCount()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->getThreadFactory()Ljava/util/concurrent/ThreadFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->isShutdown()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isTerminated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->isTerminated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isTerminating()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->isTerminating()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public prestartAllCoreThreads()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->prestartAllCoreThreads()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public prestartCoreThread()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->prestartCoreThread()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public purge()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->purge()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public remove(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/bwm/c;->remove(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setCorePoolSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/bwm/c;->setCorePoolSize(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/bwm/c;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setMaximumPoolSize(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/bwm/c;->setMaximumPoolSize(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/byazt/bwm/c;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lcom/byazt/bwm/c;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/bwm/c;->shutdown()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/bwm/c;->shutdownNow()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    invoke-interface {v0, p1}, Lcom/byazt/bwm/c;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    invoke-interface {v0, p1, p2}, Lcom/byazt/bwm/c;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    invoke-interface {v0, p1}, Lcom/byazt/bwm/c;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/jtc/c;->tt:Lcom/byazt/bwm/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/bwm/c;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
