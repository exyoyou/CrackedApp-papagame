.class public Lorg/jboss/netty/channel/socket/nio/t;
.super Lorg/jboss/netty/channel/socket/nio/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/t$a;
    }
.end annotation


# instance fields
.field private final o:Lorg/jboss/netty/channel/socket/nio/w;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;-><init>(Ljava/util/concurrent/Executor;)V

    .line 2
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/w;

    invoke-direct {p1}, Lorg/jboss/netty/channel/socket/nio/w;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/t;->o:Lorg/jboss/netty/channel/socket/nio/w;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/e;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V

    .line 4
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/w;

    invoke-direct {p1}, Lorg/jboss/netty/channel/socket/nio/w;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/t;->o:Lorg/jboss/netty/channel/socket/nio/w;

    return-void
.end method


# virtual methods
.method public bridge synthetic S0(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jboss/netty/channel/socket/nio/e;->S0(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected c(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)Ljava/lang/Runnable;
    .locals 2

    .line 1
    instance-of v0, p1, Lorg/jboss/netty/channel/socket/nio/m;

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    new-instance v1, Lorg/jboss/netty/channel/socket/nio/t$a;

    .line 6
    .line 7
    check-cast p1, Lorg/jboss/netty/channel/socket/nio/r;

    .line 8
    .line 9
    invoke-direct {v1, p0, p1, p2, v0}, Lorg/jboss/netty/channel/socket/nio/t$a;-><init>(Lorg/jboss/netty/channel/socket/nio/t;Lorg/jboss/netty/channel/socket/nio/r;Lorg/jboss/netty/channel/j;Z)V

    .line 10
    .line 11
    .line 12
    return-object v1
.end method

.method public bridge synthetic f(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/d;->f(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic p(Ljava/lang/Runnable;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/channel/socket/nio/e;->p(Ljava/lang/Runnable;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected r(Ljava/nio/channels/SelectionKey;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lorg/jboss/netty/channel/socket/nio/r;

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/r;->q()Lorg/jboss/netty/channel/socket/nio/s;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Lorg/jboss/netty/channel/socket/nio/s;->c()Lorg/jboss/netty/channel/j0;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Lorg/jboss/netty/channel/j0;->a()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/r;->q()Lorg/jboss/netty/channel/socket/nio/s;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v4}, Lorg/jboss/netty/channel/f;->d()Lorg/jboss/netty/buffer/f;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    iget-object v5, p0, Lorg/jboss/netty/channel/socket/nio/t;->o:Lorg/jboss/netty/channel/socket/nio/w;

    .line 34
    .line 35
    invoke-virtual {v5, v3}, Lorg/jboss/netty/channel/socket/nio/w;->c(I)Ljava/nio/ByteBuffer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v4}, Lorg/jboss/netty/buffer/f;->e()Ljava/nio/ByteOrder;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v5, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    :cond_0
    const/4 v8, 0x1

    .line 51
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-lez v7, :cond_1

    .line 56
    .line 57
    add-int/2addr v6, v7

    .line 58
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 59
    .line 60
    .line 61
    move-result v9
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    if-nez v9, :cond_0

    .line 63
    .line 64
    :cond_1
    const/4 v0, 0x0

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    invoke-static {v1, v0}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catch_0
    nop

    .line 72
    :goto_0
    const/4 v0, 0x1

    .line 73
    :goto_1
    if-lez v6, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 76
    .line 77
    .line 78
    invoke-interface {v4, v6}, Lorg/jboss/netty/buffer/f;->b(I)Lorg/jboss/netty/buffer/e;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-interface {v4, v5, v3}, Lorg/jboss/netty/buffer/e;->c1(ILjava/nio/ByteBuffer;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v4, v6}, Lorg/jboss/netty/buffer/e;->u0(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v2, v6}, Lorg/jboss/netty/channel/j0;->b(I)V

    .line 89
    .line 90
    .line 91
    invoke-static {v1, v4}, Lorg/jboss/netty/channel/s;->H(Lorg/jboss/netty/channel/e;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    if-ltz v7, :cond_4

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_3
    return v8

    .line 100
    :cond_4
    :goto_2
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 101
    .line 102
    .line 103
    invoke-static {v1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, v1, p1}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 108
    .line 109
    .line 110
    return v5
.end method

.method public bridge synthetic rebuildSelector()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/d;->rebuildSelector()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/e;->run()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/t;->o:Lorg/jboss/netty/channel/socket/nio/w;

    .line 5
    .line 6
    invoke-virtual {v0}, Lorg/jboss/netty/channel/socket/nio/w;->a()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected s(Lorg/jboss/netty/channel/socket/nio/b;)Z
    .locals 3
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
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/d;->d:Ljava/lang/Thread;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lorg/jboss/netty/channel/socket/nio/b;->q:Ljava/lang/Runnable;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lorg/jboss/netty/channel/socket/nio/d;->k(Ljava/lang/Runnable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return v1

    .line 25
    :cond_1
    return v2
.end method

.method public bridge synthetic shutdown()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/d;->shutdown()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
