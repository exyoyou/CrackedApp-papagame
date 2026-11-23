.class public Lcn/fly/tcp/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tcp/a/a$a;
    }
.end annotation


# instance fields
.field final a:Ljava/net/Socket;

.field public final b:Lcn/fly/tcp/a/b;

.field public c:Ljava/net/SocketAddress;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Long;",
            "Lcn/fly/tcp/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private final g:Lcn/fly/tcp/b/b;


# direct methods
.method public constructor <init>(Ljava/net/Socket;Ljava/net/SocketAddress;Lcn/fly/tcp/a/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcn/fly/tcp/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcn/fly/tcp/a/a;->f:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcn/fly/tcp/a/a;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 25
    .line 26
    iput-object p1, p0, Lcn/fly/tcp/a/a;->a:Ljava/net/Socket;

    .line 27
    .line 28
    iput-object p2, p0, Lcn/fly/tcp/a/a;->c:Ljava/net/SocketAddress;

    .line 29
    .line 30
    iput-object p3, p0, Lcn/fly/tcp/a/a;->b:Lcn/fly/tcp/a/b;

    .line 31
    .line 32
    new-instance p1, Lcn/fly/tcp/b/b;

    .line 33
    .line 34
    invoke-direct {p1, p3, v1}, Lcn/fly/tcp/b/b;-><init>(Lcn/fly/tcp/a/b;Ljava/util/concurrent/ConcurrentMap;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcn/fly/tcp/a/a;->g:Lcn/fly/tcp/b/b;

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/fly/tcp/a/a;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcn/fly/tcp/d/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    :try_start_1
    invoke-virtual {v1, v2}, Lcn/fly/tcp/d/a;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcn/fly/tcp/a/a;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_1
    move-exception v0

    .line 37
    iget-object v1, p0, Lcn/fly/tcp/a/a;->e:Ljava/util/concurrent/ConcurrentMap;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 40
    .line 41
    .line 42
    throw v0
.end method


# virtual methods
.method public a(Lcn/fly/tcp/b/a;)Lcn/fly/tcp/d/a;
    .locals 5

    .line 3
    iget-wide v0, p1, Lcn/fly/tcp/b/a;->c:J

    .line 4
    new-instance v2, Lcn/fly/tcp/d/a;

    new-instance v3, Lcn/fly/tcp/a/a$1;

    invoke-direct {v3, p0, v0, v1}, Lcn/fly/tcp/a/a$1;-><init>(Lcn/fly/tcp/a/a;J)V

    invoke-direct {v2, v3}, Lcn/fly/tcp/d/a;-><init>(Ljava/lang/Runnable;)V

    .line 5
    iget-object v3, p0, Lcn/fly/tcp/a/a;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    iget-object v3, p0, Lcn/fly/tcp/a/a;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v4, p0, Lcn/fly/tcp/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 8
    invoke-virtual {p1}, Lcn/fly/tcp/b/a;->a()[B

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    .line 9
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 10
    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 11
    iget-object v2, p0, Lcn/fly/tcp/a/a;->e:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lcn/fly/tcp/a/a;->b:Lcn/fly/tcp/a/b;

    invoke-interface {v0, p0, p1}, Lcn/fly/tcp/a/b;->a(Lcn/fly/tcp/a/a;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 13
    invoke-virtual {p0, p1}, Lcn/fly/tcp/a/a;->a(Z)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/fly/tcp/a/a;->b:Lcn/fly/tcp/a/b;

    invoke-interface {v0, p0}, Lcn/fly/tcp/a/b;->a(Lcn/fly/tcp/a/a;)V

    .line 2
    new-instance v0, Lcn/fly/tcp/a/a$a;

    const-string v1, "mlp-worker"

    invoke-direct {v0, p0, v1}, Lcn/fly/tcp/a/a$a;-><init>(Lcn/fly/tcp/a/a;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/fly/tcp/b/a;",
            ">;)V"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcn/fly/tcp/a/a;->g:Lcn/fly/tcp/b/b;

    invoke-virtual {v0, p0, p1}, Lcn/fly/tcp/b/b;->a(Lcn/fly/tcp/a/a;Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcn/fly/tcp/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/fly/tcp/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    iget-object v0, p0, Lcn/fly/tcp/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 18
    :try_start_1
    invoke-direct {p0}, Lcn/fly/tcp/a/a;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :catchall_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcn/fly/tcp/a/a;->b:Lcn/fly/tcp/a/b;

    invoke-interface {v0, p0, p1}, Lcn/fly/tcp/a/b;->a(Lcn/fly/tcp/a/a;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 20
    :catchall_1
    iget-object v0, p0, Lcn/fly/tcp/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 21
    :try_start_3
    invoke-direct {p0}, Lcn/fly/tcp/a/a;->c()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_2
    :goto_1
    return-void
.end method

.method b()V
    .locals 9

    const/4 v0, 0x1

    .line 8
    :try_start_0
    iget-object v1, p0, Lcn/fly/tcp/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1fa0

    new-array v3, v3, [B

    .line 10
    :cond_0
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v5, v4, :cond_3

    const/4 v5, 0x0

    .line 11
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 12
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 14
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 15
    :goto_1
    invoke-virtual {v6}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    if-eq v7, v0, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 16
    :cond_1
    check-cast v6, Ljava/nio/Buffer;

    invoke-virtual {v6, v5}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v6

    check-cast v6, Ljava/nio/ByteBuffer;

    .line 17
    invoke-static {v6}, Lcn/fly/tcp/b/a;->a(Ljava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v6

    .line 18
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/fly/tcp/b/a;

    .line 19
    invoke-virtual {v8}, Lcn/fly/tcp/b/a;->b()I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {p0, v6}, Lcn/fly/tcp/a/a;->a(Ljava/util/List;)V

    .line 21
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 22
    array-length v6, v4

    sub-int/2addr v6, v5

    if-lez v6, :cond_0

    .line 23
    array-length v6, v4

    sub-int/2addr v6, v5

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-static {}, Lcn/fly/tcp/f/c;->a()Lcn/fly/tcp/f/c;

    move-result-object v1

    const-string v2, "TP socket EOF, remote closed"

    invoke-virtual {v1, v2}, Lcn/fly/tcp/f/c;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 25
    :try_start_1
    iget-object v2, p0, Lcn/fly/tcp/a/a;->b:Lcn/fly/tcp/a/b;

    invoke-interface {v2, p0, v1}, Lcn/fly/tcp/a/b;->a(Lcn/fly/tcp/a/a;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    :goto_3
    invoke-virtual {p0, v0}, Lcn/fly/tcp/a/a;->a(Z)V

    return-void

    :catchall_1
    move-exception v1

    invoke-virtual {p0, v0}, Lcn/fly/tcp/a/a;->a(Z)V

    .line 27
    throw v1
.end method

.method public b(Lcn/fly/tcp/b/a;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcn/fly/tcp/a/a;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object v2, p0, Lcn/fly/tcp/a/a;->a:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcn/fly/tcp/b/a;->a()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 4
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 5
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 6
    iget-object v1, p0, Lcn/fly/tcp/a/a;->b:Lcn/fly/tcp/a/b;

    invoke-interface {v1, p0, p1}, Lcn/fly/tcp/a/b;->a(Lcn/fly/tcp/a/a;Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0, v0}, Lcn/fly/tcp/a/a;->a(Z)V

    const/4 p1, 0x0

    return p1
.end method
