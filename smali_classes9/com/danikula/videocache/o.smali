.class Lcom/danikula/videocache/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/o$b;
    }
.end annotation


# static fields
.field private static final i:I = 0x1


# instance fields
.field private final a:Lcom/danikula/videocache/q;

.field private final b:Lcom/danikula/videocache/c;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile f:Ljava/lang/Thread;

.field private volatile g:Z

.field private volatile h:I


# direct methods
.method public constructor <init>(Lcom/danikula/videocache/q;Lcom/danikula/videocache/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/danikula/videocache/o;->c:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/danikula/videocache/o;->d:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/danikula/videocache/o;->h:I

    .line 20
    .line 21
    invoke-static {p1}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/danikula/videocache/q;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/danikula/videocache/o;->a:Lcom/danikula/videocache/q;

    .line 28
    .line 29
    invoke-static {p2}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/danikula/videocache/c;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/danikula/videocache/o;->b:Lcom/danikula/videocache/c;

    .line 36
    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/danikula/videocache/o;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    return-void
.end method

.method static synthetic a(Lcom/danikula/videocache/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/danikula/videocache/o;->k()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/o;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/danikula/videocache/o;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "Error reading source "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, " times"

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-direct {v1, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1
.end method

.method private c()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/o;->a:Lcom/danikula/videocache/q;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/danikula/videocache/q;->close()V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Lcom/danikula/videocache/ProxyCacheException;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "Error closing source "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/danikula/videocache/o;->a:Lcom/danikula/videocache/q;

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2, v0}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/danikula/videocache/o;->h(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private d()Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/danikula/videocache/o;->g:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method private e(JJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/danikula/videocache/o;->f(JJ)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/danikula/videocache/o;->c:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-object p2, p0, Lcom/danikula/videocache/o;->c:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 10
    .line 11
    .line 12
    monitor-exit p1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p2

    .line 15
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p2
.end method

.method private i()V
    .locals 1

    .line 1
    const/16 v0, 0x64

    .line 2
    .line 3
    iput v0, p0, Lcom/danikula/videocache/o;->h:I

    .line 4
    .line 5
    iget v0, p0, Lcom/danikula/videocache/o;->h:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/danikula/videocache/o;->g(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private k()V
    .locals 8

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/danikula/videocache/o;->b:Lcom/danikula/videocache/c;

    .line 6
    .line 7
    invoke-interface {v4}, Lcom/danikula/videocache/c;->available()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    iget-object v4, p0, Lcom/danikula/videocache/o;->a:Lcom/danikula/videocache/q;

    .line 12
    .line 13
    invoke-interface {v4, v2, v3}, Lcom/danikula/videocache/q;->a(J)V

    .line 14
    .line 15
    .line 16
    iget-object v4, p0, Lcom/danikula/videocache/o;->a:Lcom/danikula/videocache/q;

    .line 17
    .line 18
    invoke-interface {v4}, Lcom/danikula/videocache/q;->length()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    const/16 v4, 0x2000

    .line 23
    .line 24
    new-array v4, v4, [B

    .line 25
    .line 26
    :goto_0
    iget-object v5, p0, Lcom/danikula/videocache/o;->a:Lcom/danikula/videocache/q;

    .line 27
    .line 28
    invoke-interface {v5, v4}, Lcom/danikula/videocache/q;->read([B)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, -0x1

    .line 33
    if-eq v5, v6, :cond_1

    .line 34
    .line 35
    iget-object v6, p0, Lcom/danikula/videocache/o;->d:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    :try_start_1
    invoke-direct {p0}, Lcom/danikula/videocache/o;->d()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_0

    .line 43
    .line 44
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-direct {p0}, Lcom/danikula/videocache/o;->c()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/danikula/videocache/o;->e(JJ)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    :try_start_2
    iget-object v7, p0, Lcom/danikula/videocache/o;->b:Lcom/danikula/videocache/c;

    .line 53
    .line 54
    invoke-interface {v7, v4, v5}, Lcom/danikula/videocache/c;->a([BI)V

    .line 55
    .line 56
    .line 57
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    int-to-long v5, v5

    .line 59
    add-long/2addr v2, v5

    .line 60
    :try_start_3
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/danikula/videocache/o;->e(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v4

    .line 65
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    :try_start_5
    throw v4

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/danikula/videocache/o;->n()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/danikula/videocache/o;->i()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_1
    move-exception v4

    .line 75
    :try_start_6
    iget-object v5, p0, Lcom/danikula/videocache/o;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v4}, Lcom/danikula/videocache/o;->h(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 81
    .line 82
    .line 83
    :goto_1
    invoke-direct {p0}, Lcom/danikula/videocache/o;->c()V

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/danikula/videocache/o;->e(JJ)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_2
    move-exception v4

    .line 91
    invoke-direct {p0}, Lcom/danikula/videocache/o;->c()V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/danikula/videocache/o;->e(JJ)V

    .line 95
    .line 96
    .line 97
    throw v4
.end method

.method private declared-synchronized l()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/o;->f:Ljava/lang/Thread;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/danikula/videocache/o;->f:Ljava/lang/Thread;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    .line 13
    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    iget-boolean v1, p0, Lcom/danikula/videocache/o;->g:Z

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/danikula/videocache/o;->b:Lcom/danikula/videocache/c;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/danikula/videocache/c;->isCompleted()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance v0, Ljava/lang/Thread;

    .line 34
    .line 35
    new-instance v1, Lcom/danikula/videocache/o$b;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-direct {v1, p0, v2}, Lcom/danikula/videocache/o$b;-><init>(Lcom/danikula/videocache/o;Lcom/danikula/videocache/o$a;)V

    .line 39
    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "Source reader for "

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/danikula/videocache/o;->a:Lcom/danikula/videocache/q;

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/danikula/videocache/o;->f:Ljava/lang/Thread;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/danikula/videocache/o;->f:Ljava/lang/Thread;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :cond_1
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    monitor-exit p0

    .line 74
    throw v0
.end method

.method private n()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/danikula/videocache/o;->d()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/danikula/videocache/o;->b:Lcom/danikula/videocache/c;

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/danikula/videocache/c;->available()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iget-object v3, p0, Lcom/danikula/videocache/o;->a:Lcom/danikula/videocache/q;

    .line 17
    .line 18
    invoke-interface {v3}, Lcom/danikula/videocache/q;->length()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    cmp-long v5, v1, v3

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/danikula/videocache/o;->b:Lcom/danikula/videocache/c;

    .line 27
    .line 28
    invoke-interface {v1}, Lcom/danikula/videocache/c;->complete()V

    .line 29
    .line 30
    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw v1
.end method

.method private o()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/o;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/danikula/videocache/o;->c:Ljava/lang/Object;

    .line 5
    .line 6
    const-wide/16 v2, 0x3e8

    .line 7
    .line 8
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :try_start_1
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v1

    .line 16
    new-instance v2, Lcom/danikula/videocache/ProxyCacheException;

    .line 17
    .line 18
    const-string v3, "Waiting source data is interrupted!"

    .line 19
    .line 20
    invoke-direct {v2, v3, v1}, Lcom/danikula/videocache/ProxyCacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw v2

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw v1
.end method


# virtual methods
.method protected f(JJ)V
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    cmp-long v4, p3, v0

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const/16 p1, 0x64

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    long-to-float p1, p1

    .line 18
    long-to-float p2, p3

    .line 19
    div-float/2addr p1, p2

    .line 20
    const/high16 p2, 0x42c80000    # 100.0f

    .line 21
    .line 22
    mul-float p1, p1, p2

    .line 23
    .line 24
    float-to-int p1, p1

    .line 25
    :goto_1
    iget p2, p0, Lcom/danikula/videocache/o;->h:I

    .line 26
    .line 27
    if-eq p1, p2, :cond_2

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    const/4 p2, 0x0

    .line 32
    :goto_2
    if-ltz v4, :cond_3

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    const/4 v2, 0x0

    .line 36
    :goto_3
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eqz p2, :cond_4

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/danikula/videocache/o;->g(I)V

    .line 41
    .line 42
    .line 43
    :cond_4
    iput p1, p0, Lcom/danikula/videocache/o;->h:I

    .line 44
    .line 45
    return-void
.end method

.method protected g(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected final h(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/danikula/videocache/InterruptedProxyCacheException;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, "ProxyCache is interrupted"

    .line 6
    .line 7
    invoke-static {p1}, Lcom/danikula/videocache/h;->h(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "ProxyCache error"

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {v0, p1}, Lcom/danikula/videocache/h;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public j([BJI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3, p4}, Lcom/danikula/videocache/p;->a([BJI)V

    .line 2
    .line 3
    .line 4
    :goto_0
    iget-object v0, p0, Lcom/danikula/videocache/o;->b:Lcom/danikula/videocache/c;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/danikula/videocache/c;->isCompleted()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/danikula/videocache/o;->b:Lcom/danikula/videocache/c;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/danikula/videocache/c;->available()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    int-to-long v2, p4

    .line 19
    add-long/2addr v2, p2

    .line 20
    cmp-long v4, v0, v2

    .line 21
    .line 22
    if-gez v4, :cond_0

    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/danikula/videocache/o;->g:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/danikula/videocache/o;->l()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/danikula/videocache/o;->o()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/danikula/videocache/o;->b()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/o;->b:Lcom/danikula/videocache/c;

    .line 39
    .line 40
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/danikula/videocache/c;->b([BJI)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object p2, p0, Lcom/danikula/videocache/o;->b:Lcom/danikula/videocache/c;

    .line 45
    .line 46
    invoke-interface {p2}, Lcom/danikula/videocache/c;->isCompleted()Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    iget p2, p0, Lcom/danikula/videocache/o;->h:I

    .line 53
    .line 54
    const/16 p3, 0x64

    .line 55
    .line 56
    if-eq p2, p3, :cond_1

    .line 57
    .line 58
    iput p3, p0, Lcom/danikula/videocache/o;->h:I

    .line 59
    .line 60
    invoke-virtual {p0, p3}, Lcom/danikula/videocache/o;->g(I)V

    .line 61
    .line 62
    .line 63
    :cond_1
    return p1
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/o;->d:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/danikula/videocache/o;->g:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/danikula/videocache/o;->f:Ljava/lang/Thread;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/danikula/videocache/o;->f:Ljava/lang/Thread;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/danikula/videocache/o;->b:Lcom/danikula/videocache/c;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/danikula/videocache/c;->close()V
    :try_end_0
    .catch Lcom/danikula/videocache/ProxyCacheException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception v1

    .line 25
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/danikula/videocache/o;->h(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v1
.end method
