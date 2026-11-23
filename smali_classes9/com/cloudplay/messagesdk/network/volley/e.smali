.class public Lcom/cloudplay/messagesdk/network/volley/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/cloudplay/messagesdk/network/volley/Network;

.field private final c:Lcom/cloudplay/messagesdk/network/volley/Cache;

.field private final d:Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/cloudplay/messagesdk/network/volley/Network;Lcom/cloudplay/messagesdk/network/volley/Cache;Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;>;",
            "Lcom/cloudplay/messagesdk/network/volley/Network;",
            "Lcom/cloudplay/messagesdk/network/volley/Cache;",
            "Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/e;->e:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/e;->a:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/cloudplay/messagesdk/network/volley/e;->b:Lcom/cloudplay/messagesdk/network/volley/Network;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/cloudplay/messagesdk/network/volley/e;->c:Lcom/cloudplay/messagesdk/network/volley/Cache;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/cloudplay/messagesdk/network/volley/e;->d:Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;

    .line 14
    .line 15
    return-void
.end method

.method private a(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;",
            "Lcom/cloudplay/messagesdk/network/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-virtual {p1, p2}, Lcom/cloudplay/messagesdk/network/volley/Request;->b(Lcom/cloudplay/messagesdk/network/volley/VolleyError;)Lcom/cloudplay/messagesdk/network/volley/VolleyError;

    move-result-object p2

    .line 36
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/e;->d:Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;->postError(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V

    return-void
.end method

.method private b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/e;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/network/volley/Request;

    .line 3
    invoke-virtual {p0, v0}, Lcom/cloudplay/messagesdk/network/volley/e;->a(Lcom/cloudplay/messagesdk/network/volley/Request;)V

    return-void
.end method

.method private b(Lcom/cloudplay/messagesdk/network/volley/Request;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->r()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/e;->e:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method a(Lcom/cloudplay/messagesdk/network/volley/Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p1, v2}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(I)V

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "network-queue-take"

    .line 5
    invoke-virtual {p1, v3}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->u()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network-discard-cancelled"

    .line 7
    invoke-virtual {p1, v3}, Lcom/cloudplay/messagesdk/network/volley/Request;->b(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->w()V
    :try_end_0
    .catch Lcom/cloudplay/messagesdk/network/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p1, v2}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(I)V

    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/e;->b(Lcom/cloudplay/messagesdk/network/volley/Request;)V

    .line 11
    iget-object v3, p0, Lcom/cloudplay/messagesdk/network/volley/e;->b:Lcom/cloudplay/messagesdk/network/volley/Network;

    invoke-interface {v3, p1}, Lcom/cloudplay/messagesdk/network/volley/Network;->performRequest(Lcom/cloudplay/messagesdk/network/volley/Request;)Lcom/cloudplay/messagesdk/network/volley/f;

    move-result-object v3

    const-string v4, "network-http-complete"

    .line 12
    invoke-virtual {p1, v4}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Ljava/lang/String;)V

    .line 13
    iget-boolean v4, v3, Lcom/cloudplay/messagesdk/network/volley/f;->d:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->t()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "not-modified"

    .line 14
    invoke-virtual {p1, v3}, Lcom/cloudplay/messagesdk/network/volley/Request;->b(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->w()V
    :try_end_1
    .catch Lcom/cloudplay/messagesdk/network/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-virtual {p1, v2}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(I)V

    return-void

    .line 17
    :cond_1
    :try_start_2
    invoke-virtual {p1, v3}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Lcom/cloudplay/messagesdk/network/volley/f;)Lcom/cloudplay/messagesdk/network/volley/Response;

    move-result-object v3

    const-string v4, "network-parse-complete"

    .line 18
    invoke-virtual {p1, v4}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->x()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/cloudplay/messagesdk/network/volley/Response;->b:Lcom/cloudplay/messagesdk/network/volley/Cache$a;

    if-eqz v4, :cond_2

    .line 20
    iget-object v4, p0, Lcom/cloudplay/messagesdk/network/volley/e;->c:Lcom/cloudplay/messagesdk/network/volley/Cache;

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/cloudplay/messagesdk/network/volley/Response;->b:Lcom/cloudplay/messagesdk/network/volley/Cache$a;

    invoke-interface {v4, v5, v6}, Lcom/cloudplay/messagesdk/network/volley/Cache;->put(Ljava/lang/String;Lcom/cloudplay/messagesdk/network/volley/Cache$a;)V

    const-string v4, "network-cache-written"

    .line 21
    invoke-virtual {p1, v4}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Ljava/lang/String;)V

    .line 22
    :cond_2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->v()V

    .line 23
    iget-object v4, p0, Lcom/cloudplay/messagesdk/network/volley/e;->d:Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;

    invoke-interface {v4, p1, v3}, Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;->postResponse(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/Response;)V

    .line 24
    invoke-virtual {p1, v3}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Lcom/cloudplay/messagesdk/network/volley/Response;)V
    :try_end_2
    .catch Lcom/cloudplay/messagesdk/network/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    :try_start_3
    new-array v5, v5, [Ljava/lang/Object;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/cloudplay/messagesdk/network/volley/g;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    new-instance v4, Lcom/cloudplay/messagesdk/network/volley/VolleyError;

    invoke-direct {v4, v3}, Lcom/cloudplay/messagesdk/network/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/cloudplay/messagesdk/network/volley/VolleyError;->a(J)V

    .line 28
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/e;->d:Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;

    invoke-interface {v0, p1, v4}, Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;->postError(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V

    .line 29
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->w()V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/cloudplay/messagesdk/network/volley/VolleyError;->a(J)V

    .line 31
    invoke-direct {p0, p1, v3}, Lcom/cloudplay/messagesdk/network/volley/e;->a(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/VolleyError;)V

    .line 32
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->w()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :goto_0
    invoke-virtual {p1, v2}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(I)V

    return-void

    :goto_1
    invoke-virtual {p1, v2}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(I)V

    .line 34
    throw v0
.end method

.method public run()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    .line 5
    .line 6
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/network/volley/e;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    iget-boolean v0, p0, Lcom/cloudplay/messagesdk/network/volley/e;->e:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 24
    .line 25
    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/cloudplay/messagesdk/network/volley/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0
.end method
