.class public final Lorg/jboss/netty/channel/socket/nio/k;
.super Lorg/jboss/netty/channel/socket/nio/d;
.source "SourceFile"

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/channel/socket/nio/k$b;
    }
.end annotation


# instance fields
.field private final n:Lorg/jboss/netty/util/h;

.field private final o:Lorg/jboss/netty/util/g;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/g;Lorg/jboss/netty/util/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/channel/socket/nio/d;-><init>(Ljava/util/concurrent/Executor;Lorg/jboss/netty/util/d;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lorg/jboss/netty/channel/socket/nio/k$a;

    .line 5
    .line 6
    invoke-direct {p1, p0}, Lorg/jboss/netty/channel/socket/nio/k$a;-><init>(Lorg/jboss/netty/channel/socket/nio/k;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/k;->n:Lorg/jboss/netty/util/h;

    .line 10
    .line 11
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/k;->o:Lorg/jboss/netty/util/g;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic m(Lorg/jboss/netty/channel/socket/nio/k;)Lorg/jboss/netty/util/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/k;->n:Lorg/jboss/netty/util/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lorg/jboss/netty/channel/socket/nio/k;)Lorg/jboss/netty/util/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/jboss/netty/channel/socket/nio/k;->o:Lorg/jboss/netty/util/g;

    .line 2
    .line 3
    return-object p0
.end method

.method private static o(Ljava/nio/channels/SelectionKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lorg/jboss/netty/channel/socket/nio/m;

    .line 6
    .line 7
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/b;->B:Ljava/nio/channels/SelectableChannel;

    .line 8
    .line 9
    check-cast v1, Ljava/nio/channels/SocketChannel;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 18
    .line 19
    .line 20
    iget-object p0, v0, Lorg/jboss/netty/channel/socket/nio/m;->M:Lorg/jboss/netty/util/f;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget-object p0, v0, Lorg/jboss/netty/channel/socket/nio/m;->M:Lorg/jboss/netty/util/f;

    .line 25
    .line 26
    invoke-interface {p0}, Lorg/jboss/netty/util/f;->cancel()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p0, v0, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 30
    .line 31
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/m;->J:Lorg/jboss/netty/channel/j;

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Lorg/jboss/netty/channel/socket/nio/d;->f(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method private static p(Ljava/util/Set;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lorg/jboss/netty/channel/socket/nio/m;

    .line 30
    .line 31
    iget-wide v2, v1, Lorg/jboss/netty/channel/socket/nio/m;->L:J

    .line 32
    .line 33
    const-wide/16 v4, 0x0

    .line 34
    .line 35
    cmp-long v6, v2, v4

    .line 36
    .line 37
    if-lez v6, :cond_0

    .line 38
    .line 39
    cmp-long v4, p1, v2

    .line 40
    .line 41
    if-ltz v4, :cond_0

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    new-instance v0, Ljava/net/ConnectException;

    .line 46
    .line 47
    const-string v2, "connection timed out"

    .line 48
    .line 49
    invoke-direct {v0, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/m;->J:Lorg/jboss/netty/channel/j;

    .line 53
    .line 54
    invoke-interface {v2, v0}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v0}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    iget-object v2, v1, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 61
    .line 62
    invoke-static {v1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v1, v3}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    return-void
.end method

.method private q(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/nio/channels/SelectionKey;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/nio/channels/SelectionKey;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lorg/jboss/netty/channel/socket/nio/k;->b(Ljava/nio/channels/SelectionKey;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-static {v0}, Lorg/jboss/netty/channel/socket/nio/k;->o(Ljava/nio/channels/SelectionKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lorg/jboss/netty/channel/socket/nio/m;

    .line 53
    .line 54
    iget-object v3, v2, Lorg/jboss/netty/channel/socket/nio/m;->J:Lorg/jboss/netty/channel/j;

    .line 55
    .line 56
    invoke-interface {v3, v1}, Lorg/jboss/netty/channel/j;->setFailure(Ljava/lang/Throwable;)Z

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v1}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 63
    .line 64
    .line 65
    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 66
    .line 67
    invoke-static {v2}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    return-void
.end method


# virtual methods
.method protected b(Ljava/nio/channels/SelectionKey;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lorg/jboss/netty/channel/socket/nio/m;

    .line 6
    .line 7
    iget-object v0, p1, Lorg/jboss/netty/channel/socket/nio/b;->o:Lorg/jboss/netty/channel/socket/nio/e;

    .line 8
    .line 9
    invoke-static {p1}, Lorg/jboss/netty/channel/s;->W(Lorg/jboss/netty/channel/e;)Lorg/jboss/netty/channel/j;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, p1, v1}, Lorg/jboss/netty/channel/socket/nio/e;->o(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected c(Lorg/jboss/netty/channel/e;Lorg/jboss/netty/channel/j;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    new-instance p2, Lorg/jboss/netty/channel/socket/nio/k$b;

    .line 2
    .line 3
    check-cast p1, Lorg/jboss/netty/channel/socket/nio/m;

    .line 4
    .line 5
    invoke-direct {p2, p0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/k$b;-><init>(Lorg/jboss/netty/channel/socket/nio/k;Lorg/jboss/netty/channel/socket/nio/k;Lorg/jboss/netty/channel/socket/nio/m;)V

    .line 6
    .line 7
    .line 8
    return-object p2
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
    const-string v2, "New I/O boss #"

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
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lorg/jboss/netty/channel/socket/nio/k;->q(Ljava/util/Set;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1, v0, v1}, Lorg/jboss/netty/channel/socket/nio/k;->p(Ljava/util/Set;J)V

    .line 17
    .line 18
    .line 19
    return-void
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

.method public bridge synthetic run()V
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/jboss/netty/channel/socket/nio/d;->run()V

    .line 2
    .line 3
    .line 4
    return-void
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
