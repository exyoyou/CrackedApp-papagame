.class abstract Lorg/jboss/netty/channel/socket/nio/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/p;


# static fields
.field private static final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final l:I = 0x100

.field static final synthetic m:Z


# instance fields
.field private final b:I

.field private final c:Ljava/util/concurrent/Executor;

.field protected volatile d:Ljava/lang/Thread;

.field protected volatile e:Ljava/nio/channels/Selector;

.field protected final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:I

.field private final i:Ljava/util/concurrent/CountDownLatch;

.field private volatile j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jboss/netty/channel/socket/nio/d;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/d;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lorg/jboss/netty/channel/socket/nio/d;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->b:I

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->g:Ljava/util/Queue;

    .line 6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->i:Ljava/util/concurrent/CountDownLatch;

    .line 7
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/d;->c:Ljava/util/concurrent/Executor;

    .line 8
    invoke-direct {p0, p2}, Lorg/jboss/netty/channel/socket/nio/d;->h(Lorg/jboss/netty/util/d;)V

    return-void
.end method

.method private h(Lorg/jboss/netty/util/d;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 6
    .line 7
    :try_start_1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->c:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->b:I

    .line 10
    .line 11
    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/channel/socket/nio/d;->g(ILorg/jboss/netty/util/d;)Lorg/jboss/netty/util/e;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Lorg/jboss/netty/util/internal/c;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_2
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_1
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 32
    .line 33
    throw p1

    .line 34
    :catchall_2
    move-exception p1

    .line 35
    new-instance v0, Lorg/jboss/netty/channel/ChannelException;

    .line 36
    .line 37
    const-string v1, "Failed to create a selector."

    .line 38
    .line 39
    invoke-direct {v0, v1, p1}, Lorg/jboss/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method private j()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->g:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Runnable;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->a()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    nop

    .line 20
    goto :goto_0
.end method


# virtual methods
.method protected final a()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->h:I

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iput v2, p0, Lorg/jboss/netty/channel/socket/nio/d;->h:I

    .line 9
    .line 10
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectNow()I

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    return v2
.end method

.method protected abstract b(Ljava/nio/channels/SelectionKey;)V
.end method

.method protected abstract c(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)Ljava/lang/Runnable;
.end method

.method protected final d()V
    .locals 1

    .line 1
    iget v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->h:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->h:I

    .line 6
    .line 7
    return-void
.end method

.method protected final e()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/lang/Thread;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

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
    return v0
.end method

.method public f(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/d;->c(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)Ljava/lang/Runnable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->k(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected abstract g(ILorg/jboss/netty/util/d;)Lorg/jboss/netty/util/e;
.end method

.method protected abstract i(Ljava/nio/channels/Selector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected final k(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->g:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->g:Ljava/util/Queue;

    .line 25
    .line 26
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    .line 34
    .line 35
    const-string v0, "Worker has already been shutdown"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method

.method protected l(Ljava/nio/channels/Selector;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/v;->a(Ljava/nio/channels/Selector;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public rebuildSelector()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->g:Ljava/util/Queue;

    .line 8
    .line 9
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/d$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lorg/jboss/netty/channel/socket/nio/d$a;-><init>(Lorg/jboss/netty/channel/socket/nio/d;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 27
    :catch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/nio/channels/SelectionKey;
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v4, v1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->interestOps()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    invoke-virtual {v5, v1, v4, v6}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_1
    :try_start_3
    invoke-virtual {p0, v3}, Lorg/jboss/netty/channel/socket/nio/d;->b(Ljava/nio/channels/SelectionKey;)V
    :try_end_3
    .catch Ljava/util/ConcurrentModificationException; {:try_start_3 .. :try_end_3} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 82
    .line 83
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void

    .line 92
    :catch_2
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    return-void
.end method

.method public run()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/lang/Thread;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-wide v1, Lorg/jboss/netty/channel/socket/nio/v;->d:J

    .line 13
    .line 14
    const-wide/16 v3, 0x50

    .line 15
    .line 16
    mul-long v1, v1, v3

    .line 17
    .line 18
    const-wide/16 v3, 0x64

    .line 19
    .line 20
    div-long/2addr v1, v3

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    :catch_0
    :goto_1
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-virtual {v6, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/d;->l(Ljava/nio/channels/Selector;)I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    sget-boolean v9, Lorg/jboss/netty/channel/socket/nio/v;->e:Z

    .line 38
    .line 39
    const/4 v10, 0x1

    .line 40
    if-eqz v9, :cond_7

    .line 41
    .line 42
    if-nez v8, :cond_7

    .line 43
    .line 44
    if-nez v4, :cond_7

    .line 45
    .line 46
    iget-object v8, p0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-nez v8, :cond_7

    .line 53
    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 55
    .line 56
    .line 57
    move-result-wide v8

    .line 58
    sub-long/2addr v8, v6

    .line 59
    cmp-long v6, v8, v1

    .line 60
    .line 61
    if-gez v6, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const/4 v7, 0x0

    .line 72
    :catch_1
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-eqz v8, :cond_4

    .line 77
    .line 78
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v8

    .line 82
    check-cast v8, Ljava/nio/channels/SelectionKey;

    .line 83
    .line 84
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 85
    .line 86
    .line 87
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    :try_start_1
    instance-of v11, v9, Ljava/nio/channels/DatagramChannel;

    .line 89
    .line 90
    if-eqz v11, :cond_2

    .line 91
    .line 92
    move-object v11, v9

    .line 93
    check-cast v11, Ljava/nio/channels/DatagramChannel;

    .line 94
    .line 95
    invoke-virtual {v11}, Ljava/nio/channels/DatagramChannel;->isConnected()Z

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    if-eqz v11, :cond_3

    .line 100
    .line 101
    :cond_2
    instance-of v11, v9, Ljava/nio/channels/SocketChannel;

    .line 102
    .line 103
    if-eqz v11, :cond_1

    .line 104
    .line 105
    check-cast v9, Ljava/nio/channels/SocketChannel;

    .line 106
    .line 107
    invoke-virtual {v9}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    .line 108
    .line 109
    .line 110
    move-result v9
    :try_end_1
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    if-nez v9, :cond_1

    .line 112
    .line 113
    :cond_3
    :try_start_2
    invoke-virtual {v8}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_2
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 114
    .line 115
    .line 116
    :catch_2
    const/4 v7, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_4
    if-eqz v7, :cond_5

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_6
    :goto_3
    const/4 v5, 0x0

    .line 125
    :goto_4
    const/16 v6, 0x400

    .line 126
    .line 127
    if-ne v5, v6, :cond_8

    .line 128
    .line 129
    :try_start_3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->rebuildSelector()V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_7
    const/4 v5, 0x0

    .line 136
    :cond_8
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    .line 138
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 139
    .line 140
    .line 141
    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    if-eqz v4, :cond_9

    .line 143
    .line 144
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    .line 146
    .line 147
    const/4 v4, 0x1

    .line 148
    goto :goto_5

    .line 149
    :catchall_0
    move-exception v6

    .line 150
    const/4 v4, 0x1

    .line 151
    goto :goto_8

    .line 152
    :cond_9
    const/4 v4, 0x0

    .line 153
    :goto_5
    :try_start_5
    iput v3, p0, Lorg/jboss/netty/channel/socket/nio/d;->h:I

    .line 154
    .line 155
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->j()V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 159
    .line 160
    iget-boolean v6, p0, Lorg/jboss/netty/channel/socket/nio/d;->j:Z

    .line 161
    .line 162
    if-eqz v6, :cond_b

    .line 163
    .line 164
    const/4 v6, 0x0

    .line 165
    iput-object v6, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 166
    .line 167
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/d;->j()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_a

    .line 183
    .line 184
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    check-cast v7, Ljava/nio/channels/SelectionKey;

    .line 189
    .line 190
    invoke-virtual {p0, v7}, Lorg/jboss/netty/channel/socket/nio/d;->b(Ljava/nio/channels/SelectionKey;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 191
    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_a
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 195
    .line 196
    .line 197
    goto :goto_7

    .line 198
    :catch_3
    move-exception v6

    .line 199
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    .line 201
    .line 202
    :goto_7
    iget-object v6, p0, Lorg/jboss/netty/channel/socket/nio/d;->i:Ljava/util/concurrent/CountDownLatch;

    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_b
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/d;->i(Ljava/nio/channels/Selector;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 209
    .line 210
    .line 211
    goto/16 :goto_1

    .line 212
    .line 213
    :catchall_1
    move-exception v6

    .line 214
    :goto_8
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 215
    .line 216
    .line 217
    const-wide/16 v6, 0x3e8

    .line 218
    .line 219
    :try_start_8
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    .line 220
    .line 221
    .line 222
    goto/16 :goto_1
.end method

.method public shutdown()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->j:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 15
    .line 16
    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->i:Ljava/util/concurrent/CountDownLatch;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    const-string v1, "Must not be called from a I/O-Thread to prevent deadlocks!"

    .line 38
    .line 39
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method
