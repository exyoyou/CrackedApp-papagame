.class public Lcom/byazt/bwm/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x21,
        0x2e
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/dna/qp;


# direct methods
.method public static c()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 3
    invoke-static {}, Lcom/byazt/bwm/n;->n()Lcom/byazt/dna/qp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/byazt/bwm/sp;)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-virtual {p0, v0}, Lcom/byazt/bwm/sp;->c(I)V

    .line 2
    invoke-static {}, Lcom/byazt/bwm/n;->n()Lcom/byazt/dna/qp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/byazt/dna/qp;->executeFastTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Lcom/byazt/bwm/sp;I)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/bwm/sp;->c(I)V

    .line 5
    invoke-static {}, Lcom/byazt/bwm/n;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static n()Lcom/byazt/dna/qp;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/bwm/n;->c:Lcom/byazt/dna/qp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "thread_service"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/byazt/dna/qp;

    .line 12
    .line 13
    sput-object v0, Lcom/byazt/bwm/n;->c:Lcom/byazt/dna/qp;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/byazt/bwm/n;->c:Lcom/byazt/dna/qp;

    .line 16
    .line 17
    return-object v0
.end method

.method public static tt()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/bwm/n;->n()Lcom/byazt/dna/qp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getNormalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static tt(Lcom/byazt/bwm/sp;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/bwm/n;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static tt(Lcom/byazt/bwm/sp;I)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/bwm/sp;->c(I)V

    .line 4
    invoke-static {}, Lcom/byazt/bwm/n;->n()Lcom/byazt/dna/qp;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/dna/qp;->getAIDLExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static uj()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/bwm/n;->n()Lcom/byazt/dna/qp;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getScheduledThreadPool()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static uj(Lcom/byazt/bwm/sp;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/bwm/n;->n()Lcom/byazt/dna/qp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/byazt/dna/qp;->executeFastTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static ve()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/bwm/n;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static ve(Lcom/byazt/bwm/sp;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/bwm/n;->tt()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
