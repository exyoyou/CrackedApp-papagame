.class public Lcom/byazt/dna/pf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp;
.implements Ljava/util/function/Function;


# annotations
.annotation build Lcom/byazt/ut/ATSKeep;
.end annotation

.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x47f,
        0x241
    }
.end annotation


# instance fields
.field public volatile c:Ljava/util/function/Function;

.field public volatile tt:Lcom/byazt/dna/qp;


# direct methods
.method public constructor <init>(Lcom/byazt/dna/qp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_2

    const/4 v1, -0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln0/c;->a(Ljava/lang/Object;)Ljava/util/function/Function;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object v2, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    iput-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object p1, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    return-object p1
.end method

.method public executeFastTask(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0, p1}, Lcom/byazt/dna/qp;->executeFastTask(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public executeFastTask(Ljava/lang/Runnable;I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0, p1, p2}, Lcom/byazt/dna/qp;->executeFastTask(Ljava/lang/Runnable;I)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public executeNormalTask(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0, p1}, Lcom/byazt/dna/qp;->executeNormalTask(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getAIDLExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getAIDLExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getCsjMainHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getCsjMainHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public getFastExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getFastExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getIOHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getIOHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public getIoExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getMainHandler()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public getNormalExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getNormalExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getScheduledThreadPool()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0}, Lcom/byazt/dna/qp;->getScheduledThreadPool()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public newCachedThreadPool(II)Ljava/util/concurrent/ExecutorService;
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0, p1, p2}, Lcom/byazt/dna/qp;->newCachedThreadPool(II)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method public obtainHandler(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Landroid/os/Handler;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0, p1, p2}, Lcom/byazt/dna/qp;->obtainHandler(Lcom/byazt/dna/qp$c;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_1

    new-instance v1, Lcom/byazt/dna/nb;

    invoke-direct {v1, p1}, Lcom/byazt/dna/nb;-><init>(Lcom/byazt/dna/qp$c;)V

    move-object p1, v1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    return-object p1
.end method

.method public obtainHandler(Ljava/lang/String;)Landroid/os/Handler;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0, p1}, Lcom/byazt/dna/qp;->obtainHandler(Ljava/lang/String;)Landroid/os/Handler;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    return-object p1
.end method

.method public postIOTask(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0, p1}, Lcom/byazt/dna/qp;->postIOTask(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public recycleHandler(Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0, p1}, Lcom/byazt/dna/qp;->recycleHandler(Landroid/os/Handler;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateSettings(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/dna/pf;->tt:Lcom/byazt/dna/qp;

    invoke-interface {v0, p1}, Lcom/byazt/dna/qp;->updateSettings(Lorg/json/JSONObject;)V

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/byazt/dna/pf;->c:Ljava/util/function/Function;

    invoke-static {p1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
