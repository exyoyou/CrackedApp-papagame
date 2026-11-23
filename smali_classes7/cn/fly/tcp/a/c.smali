.class public Lcn/fly/tcp/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field volatile a:Lcn/fly/tcp/a/a;

.field final b:Ljava/util/concurrent/atomic/AtomicLong;

.field private c:Lcn/fly/tcp/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcn/fly/tcp/a/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lcn/fly/tcp/a/c;)Lcn/fly/tcp/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tcp/a/c;->c:Lcn/fly/tcp/a/b;

    return-object p0
.end method

.method private c()Lcn/fly/tcp/a/b;
    .locals 1

    .line 1
    new-instance v0, Lcn/fly/tcp/a/c$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcn/fly/tcp/a/c$1;-><init>(Lcn/fly/tcp/a/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a(Lcn/fly/tcp/b/a;)Lcn/fly/tcp/d/a;
    .locals 6

    .line 26
    iget-object v0, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;

    if-eqz v0, :cond_2

    .line 27
    iget-object v1, v0, Lcn/fly/tcp/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-wide v1, p1, Lcn/fly/tcp/b/a;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 29
    iget-object v1, p0, Lcn/fly/tcp/a/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p1, Lcn/fly/tcp/b/a;->c:J

    .line 30
    :cond_1
    invoke-virtual {v0, p1}, Lcn/fly/tcp/a/a;->a(Lcn/fly/tcp/b/a;)Lcn/fly/tcp/d/a;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/fly/tcp/a/a;->a(Z)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcn/fly/tcp/a/b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcn/fly/tcp/a/c;->c:Lcn/fly/tcp/a/b;

    return-void
.end method

.method public declared-synchronized a(Ljava/net/SocketAddress;ZZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcn/fly/tcp/a/c;->c:Lcn/fly/tcp/a/b;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;

    iget-object v0, v0, Lcn/fly/tcp/a/a;->c:Ljava/net/SocketAddress;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcn/fly/tcp/a/c;->a()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcn/fly/tcp/a/c;->b()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1

    .line 12
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 13
    :try_start_1
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    :try_start_2
    invoke-virtual {v1, p2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 15
    invoke-virtual {v1, p3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 16
    invoke-virtual {v1, p1, p4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 17
    new-instance p2, Lcn/fly/tcp/a/a;

    invoke-direct {p0}, Lcn/fly/tcp/a/c;->c()Lcn/fly/tcp/a/b;

    move-result-object p3

    invoke-direct {p2, v1, p1, p3}, Lcn/fly/tcp/a/a;-><init>(Ljava/net/Socket;Ljava/net/SocketAddress;Lcn/fly/tcp/a/b;)V

    .line 18
    iput-object p2, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;

    .line 19
    invoke-virtual {p2}, Lcn/fly/tcp/a/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 21
    :goto_1
    :try_start_3
    iput-object v0, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_2

    .line 22
    :try_start_4
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 23
    :catchall_2
    :cond_2
    :try_start_5
    throw p1

    .line 24
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "TcpClient handler not set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcn/fly/tcp/a/a;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;

    iget-object v0, v0, Lcn/fly/tcp/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Lcn/fly/tcp/b/a;)Z
    .locals 6

    .line 2
    iget-object v0, p0, Lcn/fly/tcp/a/c;->a:Lcn/fly/tcp/a/a;

    if-eqz v0, :cond_2

    .line 3
    iget-object v1, v0, Lcn/fly/tcp/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v1, p1, Lcn/fly/tcp/b/a;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 5
    iget-object v1, p0, Lcn/fly/tcp/a/c;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    iput-wide v1, p1, Lcn/fly/tcp/b/a;->c:J

    .line 6
    :cond_1
    invoke-virtual {v0, p1}, Lcn/fly/tcp/a/a;->b(Lcn/fly/tcp/b/a;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
