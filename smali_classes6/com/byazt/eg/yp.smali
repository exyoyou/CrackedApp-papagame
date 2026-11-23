.class public final Lcom/byazt/eg/yp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0xd7
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/byazt/eg/zm$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public n:Ljava/util/concurrent/ExecutorService;

.field public final sp:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/byazt/eg/zm$c;",
            ">;"
        }
    .end annotation
.end field

.field public tt:I

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/Runnable;

.field public final x:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/byazt/eg/zm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 2
    iput v0, p0, Lcom/byazt/eg/yp;->c:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/byazt/eg/yp;->tt:I

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/byazt/eg/yp;->a:Ljava/util/Deque;

    .line 5
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/byazt/eg/yp;->sp:Ljava/util/Deque;

    .line 6
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/byazt/eg/yp;->x:Ljava/util/Deque;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 8
    iput v0, p0, Lcom/byazt/eg/yp;->c:I

    const/4 v0, 0x5

    .line 9
    iput v0, p0, Lcom/byazt/eg/yp;->tt:I

    .line 10
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/byazt/eg/yp;->a:Ljava/util/Deque;

    .line 11
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/byazt/eg/yp;->sp:Ljava/util/Deque;

    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/byazt/eg/yp;->x:Ljava/util/Deque;

    .line 13
    iput-object p1, p0, Lcom/byazt/eg/yp;->uj:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/util/Deque;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;TT;Z)V"
        }
    .end annotation

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/byazt/eg/yp;->ve()V

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/eg/yp;->tt()I

    move-result p1

    .line 23
    iget-object p2, p0, Lcom/byazt/eg/yp;->ve:Ljava/lang/Runnable;

    .line 24
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 25
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void

    .line 26
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Call wasn\'t in-flight!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 27
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private ve(Lcom/byazt/eg/zm$c;)I
    .locals 4

    .line 11
    iget-object v0, p0, Lcom/byazt/eg/yp;->sp:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/eg/zm$c;

    .line 12
    invoke-virtual {v2}, Lcom/byazt/eg/zm$c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/byazt/eg/zm$c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private ve()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/yp;->sp:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/byazt/eg/yp;->c:I

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/eg/yp;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/byazt/eg/yp;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/eg/zm$c;

    .line 5
    invoke-direct {p0, v1}, Lcom/byazt/eg/yp;->ve(Lcom/byazt/eg/zm$c;)I

    move-result v2

    iget v3, p0, Lcom/byazt/eg/yp;->tt:I

    if-ge v2, v3, :cond_4

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 7
    iget-object v2, p0, Lcom/byazt/eg/yp;->sp:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/byazt/eg/zm$c;->tt()V

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/eg/yp;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/byazt/eg/yp;->sp:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    iget v2, p0, Lcom/byazt/eg/yp;->c:I

    if-lt v1, v2, :cond_2

    :cond_5
    return-void
.end method


# virtual methods
.method public declared-synchronized c()Ljava/util/concurrent/ExecutorService;
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/eg/yp;->n:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/byazt/eg/yp;->uj:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/byazt/eg/yp;->uj:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "net"

    .line 3
    :goto_1
    new-instance v9, Lcom/byazt/jtc/uj;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x14

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/kh/ve;->c(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/byazt/jtc/uj;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v9, p0, Lcom/byazt/eg/yp;->n:Ljava/util/concurrent/ExecutorService;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/byazt/eg/yp;->n:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(I)V
    .locals 2

    monitor-enter p0

    if-lez p1, :cond_0

    .line 6
    :try_start_0
    iput p1, p0, Lcom/byazt/eg/yp;->c:I

    .line 7
    invoke-direct {p0}, Lcom/byazt/eg/yp;->ve()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 9
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max < 1: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcom/byazt/eg/zm$c;)V
    .locals 2

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/byazt/eg/yp;->sp:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/byazt/eg/yp;->c:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/byazt/eg/yp;->ve(Lcom/byazt/eg/zm$c;)I

    move-result v0

    iget v1, p0, Lcom/byazt/eg/yp;->tt:I

    if-ge v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/byazt/eg/yp;->sp:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/byazt/eg/zm$c;->tt()V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/eg/yp;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 14
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/byazt/eg/yp;->a:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :catchall_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized c(Lcom/byazt/eg/zm;)V
    .locals 1

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/byazt/eg/yp;->x:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized tt()I
    .locals 2

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/byazt/eg/yp;->sp:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lcom/byazt/eg/yp;->x:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tt(I)V
    .locals 2

    monitor-enter p0

    if-lez p1, :cond_0

    .line 1
    :try_start_0
    iput p1, p0, Lcom/byazt/eg/yp;->tt:I

    .line 2
    invoke-direct {p0}, Lcom/byazt/eg/yp;->ve()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "max < 1: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public tt(Lcom/byazt/eg/zm$c;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/eg/yp;->sp:Ljava/util/Deque;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/byazt/eg/yp;->c(Ljava/util/Deque;Ljava/lang/Object;Z)V

    return-void
.end method

.method public tt(Lcom/byazt/eg/zm;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/byazt/eg/yp;->x:Ljava/util/Deque;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/byazt/eg/yp;->c(Ljava/util/Deque;Ljava/lang/Object;Z)V

    return-void
.end method
