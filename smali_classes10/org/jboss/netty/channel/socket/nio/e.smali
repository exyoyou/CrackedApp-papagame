.class abstract Lorg/jboss/netty/channel/socket/nio/e;
.super Lorg/jboss/netty/channel/socket/nio/d;
.source "SourceFile"

# interfaces
.implements Led/f;


# instance fields
.field protected final n:Lorg/jboss/netty/channel/socket/nio/x;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;-><init>(Ljava/util/concurrent/Executor;)V

    .line 2
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/x;

    invoke-direct {p1}, Lorg/jboss/netty/channel/socket/nio/x;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/e;->n:Lorg/jboss/netty/channel/socket/nio/x;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/d;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V

    .line 4
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/x;

    invoke-direct {p1}, Lorg/jboss/netty/channel/socket/nio/x;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/e;->n:Lorg/jboss/netty/channel/socket/nio/x;

    return-void
.end method

.method protected static m(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/b;->p:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/i0;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->isOpen()Z

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    if-eqz v4, :cond_0

    .line 15
    .line 16
    new-instance v4, Ljava/nio/channels/NotYetConnectedException;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v4, Ljava/nio/channels/ClosedChannelException;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-interface {v1}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/b;->w:Lorg/jboss/netty/channel/socket/nio/x$g;

    .line 32
    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-interface {v5}, Lorg/jboss/netty/channel/socket/nio/x$g;->release()V

    .line 36
    .line 37
    .line 38
    iput-object v3, p0, Lorg/jboss/netty/channel/socket/nio/b;->w:Lorg/jboss/netty/channel/socket/nio/x$g;

    .line 39
    .line 40
    :cond_1
    iput-object v3, p0, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/i0;

    .line 41
    .line 42
    invoke-interface {v1, v4}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 43
    .line 44
    .line 45
    move-object v3, v4

    .line 46
    const/4 v1, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/4 v1, 0x0

    .line 49
    :goto_1
    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/b;->s:Ljava/util/Queue;

    .line 50
    .line 51
    :goto_2
    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Lorg/jboss/netty/channel/i0;

    .line 56
    .line 57
    if-nez v5, :cond_5

    .line 58
    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    invoke-static {p0}, Lorg/jboss/netty/channel/socket/nio/e;->q(Lorg/jboss/netty/channel/socket/nio/b;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-static {p0, v3}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    invoke-static {p0, v3}, Lorg/jboss/netty/channel/s;->F(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_3
    return-void

    .line 76
    :cond_5
    if-nez v3, :cond_7

    .line 77
    .line 78
    :try_start_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/a;->isOpen()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_6

    .line 83
    .line 84
    new-instance v1, Ljava/nio/channels/NotYetConnectedException;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    .line 87
    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_6
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 93
    .line 94
    .line 95
    :goto_4
    move-object v3, v1

    .line 96
    const/4 v1, 0x1

    .line 97
    :cond_7
    invoke-interface {v5}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-interface {v5, v3}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw p0
.end method

.method static q(Lorg/jboss/netty/channel/socket/nio/b;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 6
    .line 7
    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/lang/Thread;

    .line 8
    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method


# virtual methods
.method public S0(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->p(Ljava/lang/Runnable;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected b(Ljava/nio/channels/SelectionKey;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/jboss/netty/channel/socket/nio/b;

    .line 6
    .line 7
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, p1, v0}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected g(ILorg/jboss/netty/util/d;)Lorg/jboss/netty/util/e;
    .locals 3

    .line 1
    new-instance v0, Lorg/jboss/netty/util/e;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "New I/O worker #"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {v0, p0, p1, p2}, Lorg/jboss/netty/util/e;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Lorg/jboss/netty/util/d;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method protected i(Ljava/nio/channels/Selector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 29
    .line 30
    .line 31
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->readyOps()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    and-int/lit8 v2, v1, 0x1

    .line 36
    .line 37
    if-nez v2, :cond_2

    .line 38
    .line 39
    if-nez v1, :cond_3

    .line 40
    .line 41
    :cond_2
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->r(Ljava/nio/channels/SelectionKey;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_3

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_3
    and-int/lit8 v1, v1, 0x4

    .line 49
    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->x(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->b(Ljava/nio/channels/SelectionKey;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->a()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    :cond_5
    return-void
.end method

.method protected n(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 2
    .line 3
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->b(Ljava/nio/channels/SelectionKey;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->m()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    and-int/lit8 v2, v1, 0x4

    .line 27
    .line 28
    if-eqz v2, :cond_2

    .line 29
    .line 30
    and-int/lit8 v1, v1, -0x5

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/b;->p(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method protected o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;",
            "Lorg/jboss/netty/channel/j;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->isBound()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/e;->q(Lorg/jboss/netty/channel/socket/nio/b;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    :try_start_0
    iget-object v3, p1, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->d()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->i()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_5

    .line 26
    .line 27
    invoke-interface {p2}, Lorg/jboss/netty/channel/j;->setSuccess()Z

    .line 28
    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    if-eqz v2, :cond_0

    .line 33
    .line 34
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->r(Lorg/jboss/netty/channel/e;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->t(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->z(Lorg/jboss/netty/channel/e;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->B(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_1
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/e;->m(Lorg/jboss/netty/channel/socket/nio/b;)V

    .line 53
    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->m(Lorg/jboss/netty/channel/e;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->o(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_5
    invoke-interface {p2}, Lorg/jboss/netty/channel/j;->setSuccess()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    invoke-interface {p2, v0}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 71
    .line 72
    .line 73
    if-eqz v2, :cond_6

    .line 74
    .line 75
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    invoke-static {p1, v0}, Lorg/jboss/netty/channel/s;->F(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;

    .line 80
    .line 81
    .line 82
    :goto_2
    return-void
.end method

.method public p(Ljava/lang/Runnable;Z)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/jboss/netty/channel/socket/nio/d;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->k(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method protected abstract r(Ljava/nio/channels/SelectionKey;)Z
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/d;->run()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/e;->n:Lorg/jboss/netty/channel/socket/nio/x;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/x;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected abstract s(Lorg/jboss/netty/channel/socket/nio/b;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)Z"
        }
    .end annotation
.end method

.method t(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;",
            "Lorg/jboss/netty/channel/j;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/e;->q(Lorg/jboss/netty/channel/socket/nio/b;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/jboss/netty/channel/a;->getPipeline()Lorg/jboss/netty/channel/n;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/e$a;

    .line 12
    .line 13
    invoke-direct {v1, p0, p1, p2, p3}, Lorg/jboss/netty/channel/socket/nio/e$a;-><init>(Lorg/jboss/netty/channel/socket/nio/e;Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/n;->execute(Ljava/lang/Runnable;)Lorg/jboss/netty/channel/j;

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 21
    .line 22
    iget-object v2, p1, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    and-int/lit8 p3, p3, -0x5

    .line 29
    .line 30
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->m()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    and-int/lit8 v3, v3, 0x4

    .line 35
    .line 36
    or-int/2addr p3, v3

    .line 37
    const/4 v3, 0x1

    .line 38
    const/4 v4, 0x0

    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->m()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eq v0, p3, :cond_3

    .line 49
    .line 50
    invoke-virtual {v2, p3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/lang/Thread;

    .line 58
    .line 59
    if-eq v0, v2, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    .line 63
    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {p1, p3}, Lorg/jboss/netty/channel/socket/nio/b;->p(I)V

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-interface {p2}, Lorg/jboss/netty/channel/j;->setSuccess()Z

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->m()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eq v1, p3, :cond_5

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/4 v3, 0x0

    .line 87
    :goto_1
    invoke-virtual {p1, p3}, Lorg/jboss/netty/channel/socket/nio/b;->p(I)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p2}, Lorg/jboss/netty/channel/j;->setSuccess()Z

    .line 91
    .line 92
    .line 93
    if-eqz v3, :cond_7

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->u(Lorg/jboss/netty/channel/e;)V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->w(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_7
    :goto_2
    return-void

    .line 105
    :catchall_0
    move-exception p3

    .line 106
    invoke-interface {p2, p3}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 107
    .line 108
    .line 109
    invoke-static {p1, p3}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :catch_0
    new-instance p3, Ljava/nio/channels/ClosedChannelException;

    .line 114
    .line 115
    invoke-direct {p3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-interface {p2, p3}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 119
    .line 120
    .line 121
    invoke-static {p1, p3}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :goto_3
    return-void
.end method

.method protected v(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/d;->e:Ljava/nio/channels/Selector;

    .line 2
    .line 3
    iget-object v1, p1, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/nio/channels/SelectableChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/e;->b(Ljava/nio/channels/SelectionKey;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p1}, Lorg/jboss/netty/channel/socket/nio/b;->m()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    and-int/lit8 v2, v1, 0x4

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    or-int/lit8 v1, v1, 0x4

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lorg/jboss/netty/channel/socket/nio/b;->p(I)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method protected w(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/e;->q(Lorg/jboss/netty/channel/socket/nio/b;)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iget-object v4, v1, Lorg/jboss/netty/channel/socket/nio/e;->n:Lorg/jboss/netty/channel/socket/nio/x;

    .line 10
    .line 11
    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 12
    .line 13
    move-object v5, v0

    .line 14
    check-cast v5, Ljava/nio/channels/WritableByteChannel;

    .line 15
    .line 16
    iget-object v6, v2, Lorg/jboss/netty/channel/socket/nio/b;->s:Ljava/util/Queue;

    .line 17
    .line 18
    invoke-virtual/range {p1 .. p1}, Lorg/jboss/netty/channel/socket/nio/b;->k()Lorg/jboss/netty/channel/socket/nio/j;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Lorg/jboss/netty/channel/socket/nio/j;->getWriteSpinCount()I

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    iget-object v8, v2, Lorg/jboss/netty/channel/socket/nio/b;->p:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v8

    .line 29
    const/4 v9, 0x1

    .line 30
    :try_start_0
    iput-boolean v9, v2, Lorg/jboss/netty/channel/socket/nio/b;->x:Z

    .line 31
    .line 32
    const/4 v10, 0x0

    .line 33
    const-wide/16 v11, 0x0

    .line 34
    .line 35
    move-wide v15, v11

    .line 36
    const/4 v13, 0x1

    .line 37
    const/4 v14, 0x0

    .line 38
    const/16 v17, 0x0

    .line 39
    .line 40
    :goto_0
    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 41
    .line 42
    const/4 v9, 0x0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    :try_start_1
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lorg/jboss/netty/channel/i0;

    .line 50
    .line 51
    iput-object v0, v2, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/i0;
    :try_end_1
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 52
    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    :try_start_2
    iput-boolean v10, v2, Lorg/jboss/netty/channel/socket/nio/b;->y:Z
    :try_end_2
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    move v9, v14

    .line 58
    move-wide v4, v15

    .line 59
    const/4 v6, 0x0

    .line 60
    const/16 v17, 0x1

    .line 61
    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :catchall_0
    move-exception v0

    .line 65
    move-object v11, v0

    .line 66
    move-object v0, v9

    .line 67
    move-object v10, v0

    .line 68
    const/16 v17, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    const/16 v17, 0x1

    .line 72
    .line 73
    goto :goto_7

    .line 74
    :cond_0
    :try_start_3
    invoke-interface {v0}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    .line 75
    .line 76
    .line 77
    move-result-object v19
    :try_end_3
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 78
    :try_start_4
    invoke-interface {v0}, Lorg/jboss/netty/channel/i0;->getMessage()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v4, v0}, Lorg/jboss/netty/channel/socket/nio/x;->f(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/x$g;

    .line 83
    .line 84
    .line 85
    move-result-object v10
    :try_end_4
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    :try_start_5
    iput-object v10, v2, Lorg/jboss/netty/channel/socket/nio/b;->w:Lorg/jboss/netty/channel/socket/nio/x$g;
    :try_end_5
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    move-object v11, v0

    .line 91
    move-object v10, v9

    .line 92
    goto :goto_5

    .line 93
    :catchall_2
    move-exception v0

    .line 94
    move-object v11, v0

    .line 95
    move-object v0, v9

    .line 96
    move-object v10, v0

    .line 97
    :goto_1
    const/16 v18, 0x0

    .line 98
    .line 99
    :goto_2
    const/16 v20, 0x1

    .line 100
    .line 101
    goto/16 :goto_c

    .line 102
    .line 103
    :cond_1
    :try_start_6
    invoke-interface {v0}, Lorg/jboss/netty/channel/h;->d()Lorg/jboss/netty/channel/j;

    .line 104
    .line 105
    .line 106
    move-result-object v19
    :try_end_6
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 107
    :try_start_7
    iget-object v10, v2, Lorg/jboss/netty/channel/socket/nio/b;->w:Lorg/jboss/netty/channel/socket/nio/x$g;
    :try_end_7
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 108
    .line 109
    :goto_3
    move v0, v7

    .line 110
    move-wide/from16 v21, v11

    .line 111
    .line 112
    :goto_4
    if-lez v0, :cond_4

    .line 113
    .line 114
    :try_start_8
    invoke-interface {v10, v5}, Lorg/jboss/netty/channel/socket/nio/x$g;->c(Ljava/nio/channels/WritableByteChannel;)J

    .line 115
    .line 116
    .line 117
    move-result-wide v21

    .line 118
    cmp-long v23, v21, v11

    .line 119
    .line 120
    if-eqz v23, :cond_2

    .line 121
    .line 122
    add-long v15, v15, v21

    .line 123
    .line 124
    goto :goto_6

    .line 125
    :cond_2
    invoke-interface {v10}, Lorg/jboss/netty/channel/socket/nio/x$g;->a()Z

    .line 126
    .line 127
    .line 128
    move-result v23
    :try_end_8
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 129
    if-eqz v23, :cond_3

    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 133
    .line 134
    goto :goto_4

    .line 135
    :catchall_3
    move-exception v0

    .line 136
    move-object v11, v0

    .line 137
    :goto_5
    move-object/from16 v0, v19

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    :goto_6
    move-wide/from16 v22, v21

    .line 141
    .line 142
    :try_start_9
    invoke-interface {v10}, Lorg/jboss/netty/channel/socket/nio/x$g;->a()Z

    .line 143
    .line 144
    .line 145
    move-result v0
    :try_end_9
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 146
    if-eqz v0, :cond_5

    .line 147
    .line 148
    :try_start_a
    invoke-interface {v10}, Lorg/jboss/netty/channel/socket/nio/x$g;->release()V

    .line 149
    .line 150
    .line 151
    iput-object v9, v2, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/i0;

    .line 152
    .line 153
    iput-object v9, v2, Lorg/jboss/netty/channel/socket/nio/b;->w:Lorg/jboss/netty/channel/socket/nio/x$g;
    :try_end_a
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 154
    .line 155
    :try_start_b
    invoke-interface/range {v19 .. v19}, Lorg/jboss/netty/channel/j;->setSuccess()Z
    :try_end_b
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 156
    .line 157
    .line 158
    :catch_1
    :goto_7
    const/16 v18, 0x0

    .line 159
    .line 160
    const/16 v20, 0x1

    .line 161
    .line 162
    goto/16 :goto_e

    .line 163
    .line 164
    :cond_5
    const/4 v14, 0x1

    .line 165
    :try_start_c
    iput-boolean v14, v2, Lorg/jboss/netty/channel/socket/nio/b;->y:Z
    :try_end_c
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 166
    .line 167
    cmp-long v0, v22, v11

    .line 168
    .line 169
    if-lez v0, :cond_6

    .line 170
    .line 171
    :try_start_d
    invoke-interface {v10}, Lorg/jboss/netty/channel/socket/nio/x$g;->e()J

    .line 172
    .line 173
    .line 174
    move-result-wide v24

    .line 175
    invoke-interface {v10}, Lorg/jboss/netty/channel/socket/nio/x$g;->b()J

    .line 176
    .line 177
    .line 178
    move-result-wide v26

    .line 179
    move-object/from16 v21, v19

    .line 180
    .line 181
    invoke-interface/range {v21 .. v27}, Lorg/jboss/netty/channel/j;->c(JJJ)Z
    :try_end_d
    .catch Ljava/nio/channels/AsynchronousCloseException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 182
    .line 183
    .line 184
    :cond_6
    move-wide v4, v15

    .line 185
    const/4 v6, 0x0

    .line 186
    const/4 v9, 0x1

    .line 187
    :goto_8
    :try_start_e
    iput-boolean v6, v2, Lorg/jboss/netty/channel/socket/nio/b;->x:Z

    .line 188
    .line 189
    if-eqz v13, :cond_8

    .line 190
    .line 191
    if-eqz v9, :cond_7

    .line 192
    .line 193
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/e;->v(Lorg/jboss/netty/channel/socket/nio/b;)V

    .line 194
    .line 195
    .line 196
    goto :goto_9

    .line 197
    :cond_7
    if-eqz v17, :cond_8

    .line 198
    .line 199
    invoke-virtual/range {p0 .. p1}, Lorg/jboss/netty/channel/socket/nio/e;->n(Lorg/jboss/netty/channel/socket/nio/b;)V

    .line 200
    .line 201
    .line 202
    :cond_8
    :goto_9
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 203
    if-eqz v3, :cond_9

    .line 204
    .line 205
    invoke-static {v2, v4, v5}, Lorg/jboss/netty/channel/s;->L(Lorg/jboss/netty/channel/e;J)V

    .line 206
    .line 207
    .line 208
    goto :goto_a

    .line 209
    :cond_9
    invoke-static {v2, v4, v5}, Lorg/jboss/netty/channel/s;->N(Lorg/jboss/netty/channel/e;J)Lorg/jboss/netty/channel/j;

    .line 210
    .line 211
    .line 212
    :goto_a
    return-void

    .line 213
    :catchall_4
    move-exception v0

    .line 214
    const/16 v18, 0x0

    .line 215
    .line 216
    move-object v11, v0

    .line 217
    move-object/from16 v0, v19

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :catchall_5
    move-exception v0

    .line 221
    const/16 v18, 0x0

    .line 222
    .line 223
    const/16 v20, 0x1

    .line 224
    .line 225
    move-object v11, v0

    .line 226
    goto :goto_b

    .line 227
    :catchall_6
    move-exception v0

    .line 228
    const/16 v18, 0x0

    .line 229
    .line 230
    const/16 v20, 0x1

    .line 231
    .line 232
    move-object v11, v0

    .line 233
    move-object v10, v9

    .line 234
    :goto_b
    move-object/from16 v0, v19

    .line 235
    .line 236
    goto :goto_c

    .line 237
    :catchall_7
    move-exception v0

    .line 238
    const/16 v18, 0x0

    .line 239
    .line 240
    const/16 v20, 0x1

    .line 241
    .line 242
    move-object v11, v0

    .line 243
    move-object v0, v9

    .line 244
    move-object v10, v0

    .line 245
    :goto_c
    if-eqz v10, :cond_a

    .line 246
    .line 247
    :try_start_f
    invoke-interface {v10}, Lorg/jboss/netty/channel/socket/nio/x$g;->release()V

    .line 248
    .line 249
    .line 250
    :cond_a
    iput-object v9, v2, Lorg/jboss/netty/channel/socket/nio/b;->v:Lorg/jboss/netty/channel/i0;

    .line 251
    .line 252
    iput-object v9, v2, Lorg/jboss/netty/channel/socket/nio/b;->w:Lorg/jboss/netty/channel/socket/nio/x$g;

    .line 253
    .line 254
    if-eqz v0, :cond_b

    .line 255
    .line 256
    invoke-interface {v0, v11}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 257
    .line 258
    .line 259
    :cond_b
    if-eqz v3, :cond_c

    .line 260
    .line 261
    invoke-static {v2, v11}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 262
    .line 263
    .line 264
    goto :goto_d

    .line 265
    :cond_c
    invoke-static {v2, v11}, Lorg/jboss/netty/channel/s;->F(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;

    .line 266
    .line 267
    .line 268
    :goto_d
    instance-of v0, v11, Ljava/io/IOException;

    .line 269
    .line 270
    if-eqz v0, :cond_d

    .line 271
    .line 272
    invoke-static/range {p1 .. p1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v1, v2, v0}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 277
    .line 278
    .line 279
    const/4 v13, 0x0

    .line 280
    :cond_d
    :goto_e
    const/4 v9, 0x1

    .line 281
    const/4 v10, 0x0

    .line 282
    const-wide/16 v11, 0x0

    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :catchall_8
    move-exception v0

    .line 287
    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 288
    throw v0
.end method

.method x(Ljava/nio/channels/SelectionKey;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/jboss/netty/channel/socket/nio/b;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->y:Z

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->w(Lorg/jboss/netty/channel/socket/nio/b;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method y(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->y:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->w(Lorg/jboss/netty/channel/socket/nio/b;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method z(Lorg/jboss/netty/channel/socket/nio/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jboss/netty/channel/socket/nio/b<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/jboss/netty/channel/e;->isConnected()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lorg/jboss/netty/channel/socket/nio/e;->m(Lorg/jboss/netty/channel/socket/nio/b;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->s(Lorg/jboss/netty/channel/socket/nio/b;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->y:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    return-void

    .line 23
    :cond_2
    iget-boolean v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->x:Z

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    return-void

    .line 28
    :cond_3
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->w(Lorg/jboss/netty/channel/socket/nio/b;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
