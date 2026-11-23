.class public final Lcom/byazt/mc/sp;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3e9,
        0x5b
    }
.end annotation


# instance fields
.field public volatile c:Ljava/lang/Thread;

.field public volatile tt:Z

.field public final ve:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/mc/sp;->ve:Ljava/lang/Thread;

    .line 5
    .line 6
    return-void
.end method

.method private c()V
    .locals 4

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4
    :try_start_0
    sget-object v2, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    invoke-virtual {v2}, Lcom/byazt/bwm/i;->ve()Lcom/byazt/mc/tt;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/byazt/mc/sp;->ve:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v2, v3}, Lcom/byazt/mc/tt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 8
    iput-object v0, p0, Lcom/byazt/mc/sp;->c:Ljava/lang/Thread;

    .line 9
    iget-object v2, p0, Lcom/byazt/mc/sp;->ve:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getPriority()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 10
    iget-object v2, p0, Lcom/byazt/mc/sp;->ve:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 12
    throw v2
.end method

.method public static synthetic c(Lcom/byazt/mc/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/mc/sp;->c()V

    return-void
.end method

.method private tt()V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/byazt/mc/sp;->c:Ljava/lang/Thread;

    .line 4
    iget-object v1, p0, Lcom/byazt/mc/sp;->ve:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 5
    iget-object v0, p0, Lcom/byazt/mc/sp;->ve:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/mc/sp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/mc/sp;->tt()V

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mc/sp;->c:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/mc/sp;->c:Ljava/lang/Thread;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public isInterrupted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mc/sp;->c:Ljava/lang/Thread;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/mc/sp;->c:Ljava/lang/Thread;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    return v0
.end method

.method public declared-synchronized start()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/mc/sp;->tt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    :try_start_1
    iput-boolean v0, p0, Lcom/byazt/mc/sp;->tt:Z

    .line 10
    .line 11
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/bwm/i;->da()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/byazt/msj/ve;

    .line 18
    .line 19
    new-instance v2, Lcom/byazt/mc/sp$1;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/byazt/mc/sp$1;-><init>(Lcom/byazt/mc/sp;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v1, v2}, Lcom/byazt/msj/ve;-><init>(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit p0

    .line 34
    throw v0
.end method
