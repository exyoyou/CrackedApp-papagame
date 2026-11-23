.class final Lcom/danikula/videocache/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/danikula/videocache/j$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ljava/lang/String;

.field private volatile c:Lcom/danikula/videocache/g;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/danikula/videocache/d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/danikula/videocache/d;

.field private final f:Lcom/danikula/videocache/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/danikula/videocache/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/danikula/videocache/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/danikula/videocache/j;->d:Ljava/util/List;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/danikula/videocache/j;->b:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p2}, Lcom/danikula/videocache/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    check-cast p2, Lcom/danikula/videocache/e;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/danikula/videocache/j;->f:Lcom/danikula/videocache/e;

    .line 34
    .line 35
    new-instance p2, Lcom/danikula/videocache/j$a;

    .line 36
    .line 37
    invoke-direct {p2, p1, v0}, Lcom/danikula/videocache/j$a;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Lcom/danikula/videocache/j;->e:Lcom/danikula/videocache/d;

    .line 41
    .line 42
    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/danikula/videocache/j;->c:Lcom/danikula/videocache/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/danikula/videocache/o;->m()V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/danikula/videocache/j;->c:Lcom/danikula/videocache/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    :cond_0
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method private c()Lcom/danikula/videocache/g;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/danikula/videocache/k;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/danikula/videocache/j;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/danikula/videocache/j;->f:Lcom/danikula/videocache/e;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/danikula/videocache/e;->d:Lcom/danikula/videocache/sourcestorage/c;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/danikula/videocache/e;->e:Ly2/b;

    .line 10
    .line 11
    invoke-direct {v0, v1, v3, v2}, Lcom/danikula/videocache/k;-><init>(Ljava/lang/String;Lcom/danikula/videocache/sourcestorage/c;Ly2/b;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/danikula/videocache/file/b;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/danikula/videocache/j;->f:Lcom/danikula/videocache/e;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/danikula/videocache/j;->b:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Lcom/danikula/videocache/e;->a(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v3, p0, Lcom/danikula/videocache/j;->f:Lcom/danikula/videocache/e;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/danikula/videocache/e;->c:Lcom/danikula/videocache/file/a;

    .line 27
    .line 28
    invoke-direct {v1, v2, v3}, Lcom/danikula/videocache/file/b;-><init>(Ljava/io/File;Lcom/danikula/videocache/file/a;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Lcom/danikula/videocache/g;

    .line 32
    .line 33
    invoke-direct {v2, v0, v1}, Lcom/danikula/videocache/g;-><init>(Lcom/danikula/videocache/k;Lcom/danikula/videocache/file/b;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/danikula/videocache/j;->e:Lcom/danikula/videocache/d;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Lcom/danikula/videocache/g;->t(Lcom/danikula/videocache/d;)V

    .line 39
    .line 40
    .line 41
    return-object v2
.end method

.method private declared-synchronized g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/j;->c:Lcom/danikula/videocache/g;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/danikula/videocache/j;->c()Lcom/danikula/videocache/g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/j;->c:Lcom/danikula/videocache/g;

    .line 12
    .line 13
    :goto_0
    iput-object v0, p0, Lcom/danikula/videocache/j;->c:Lcom/danikula/videocache/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    monitor-exit p0

    .line 19
    throw v0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d(Lcom/danikula/videocache/f;Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/danikula/videocache/ProxyCacheException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/danikula/videocache/j;->g()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/danikula/videocache/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/danikula/videocache/j;->c:Lcom/danikula/videocache/g;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/danikula/videocache/g;->s(Lcom/danikula/videocache/f;Ljava/net/Socket;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/danikula/videocache/j;->a()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    invoke-direct {p0}, Lcom/danikula/videocache/j;->a()V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public e(Lcom/danikula/videocache/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/j;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/j;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/danikula/videocache/j;->c:Lcom/danikula/videocache/g;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/danikula/videocache/j;->c:Lcom/danikula/videocache/g;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1}, Lcom/danikula/videocache/g;->t(Lcom/danikula/videocache/d;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/danikula/videocache/j;->c:Lcom/danikula/videocache/g;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/danikula/videocache/o;->m()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/danikula/videocache/j;->c:Lcom/danikula/videocache/g;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/danikula/videocache/j;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public h(Lcom/danikula/videocache/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/danikula/videocache/j;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
