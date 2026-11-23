.class public Lcom/join/mgps/socket/server/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "a"


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Landroid/content/Context;

.field c:Ljava/net/Socket;

.field d:Lcom/join/mgps/socket/c;

.field e:Lcom/join/mgps/socket/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "socket"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/socket/server/a;->b:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/join/mgps/socket/server/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/join/mgps/socket/server/a;->c:Ljava/net/Socket;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Lcom/join/mgps/socket/server/a;->a(Ljava/net/Socket;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method a(Ljava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "socket"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/net/Socket;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/socket/c;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/socket/server/a;->b:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/socket/c;-><init>(Ljava/net/Socket;Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/socket/server/a;->d:Lcom/join/mgps/socket/c;

    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/socket/d;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/socket/server/a;->b:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/socket/d;-><init>(Ljava/net/Socket;Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/socket/server/a;->e:Lcom/join/mgps/socket/d;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/join/mgps/socket/server/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/socket/server/a;->d:Lcom/join/mgps/socket/c;

    .line 30
    .line 31
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/socket/server/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/socket/server/a;->e:Lcom/join/mgps/socket/d;

    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/socket/server/a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/join/mgps/socket/server/a$a;-><init>(Lcom/join/mgps/socket/server/a;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/server/a;->d:Lcom/join/mgps/socket/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/c;->i(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/socket/server/a;->d:Lcom/join/mgps/socket/c;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/socket/c;->a()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/socket/server/a;->e:Lcom/join/mgps/socket/d;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/d;->h(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/socket/server/a;->e:Lcom/join/mgps/socket/d;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/socket/d;->a()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/socket/server/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/socket/server/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/socket/server/a;->c:Ljava/net/Socket;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/socket/server/a;->c:Ljava/net/Socket;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method
