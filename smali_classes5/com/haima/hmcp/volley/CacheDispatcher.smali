.class public Lcom/haima/hmcp/volley/CacheDispatcher;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mCache:Lcom/haima/hmcp/volley/Cache;

.field private final mCacheQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/haima/hmcp/volley/ResponseDelivery;

.field private final mNetworkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z

.field private final mWaitingRequestManager:Lcom/haima/hmcp/volley/WaitingRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/volley/VolleyLog;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/haima/hmcp/volley/CacheDispatcher;->DEBUG:Z

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/haima/hmcp/volley/Cache;Lcom/haima/hmcp/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;>;",
            "Lcom/haima/hmcp/volley/Cache;",
            "Lcom/haima/hmcp/volley/ResponseDelivery;",
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
    iput-boolean v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mQuit:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mCache:Lcom/haima/hmcp/volley/Cache;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mDelivery:Lcom/haima/hmcp/volley/ResponseDelivery;

    .line 14
    .line 15
    new-instance p1, Lcom/haima/hmcp/volley/WaitingRequestManager;

    .line 16
    .line 17
    invoke-direct {p1, p0, p2, p4}, Lcom/haima/hmcp/volley/WaitingRequestManager;-><init>(Lcom/haima/hmcp/volley/CacheDispatcher;Ljava/util/concurrent/BlockingQueue;Lcom/haima/hmcp/volley/ResponseDelivery;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/haima/hmcp/volley/WaitingRequestManager;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    return-object p0
.end method

.method private processRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mCacheQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/volley/Request;

    .line 2
    invoke-virtual {p0, v0}, Lcom/haima/hmcp/volley/CacheDispatcher;->processRequest(Lcom/haima/hmcp/volley/Request;)V

    return-void
.end method


# virtual methods
.method processRequest(Lcom/haima/hmcp/volley/Request;)V
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "cache-queue-take"

    .line 3
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/Request;->sendEvent(I)V

    const/4 v1, 0x2

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/haima/hmcp/volley/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "cache-discard-canceled"

    .line 6
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/volley/Request;->sendEvent(I)V

    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mCache:Lcom/haima/hmcp/volley/Cache;

    invoke-virtual {p1}, Lcom/haima/hmcp/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/haima/hmcp/volley/Cache;->get(Ljava/lang/String;)Lcom/haima/hmcp/volley/Cache$Entry;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "cache-miss"

    .line 9
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/haima/hmcp/volley/WaitingRequestManager;

    invoke-virtual {v0, p1}, Lcom/haima/hmcp/volley/WaitingRequestManager;->maybeAddToWaitingRequests(Lcom/haima/hmcp/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_1
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/volley/Request;->sendEvent(I)V

    return-void

    .line 13
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 14
    invoke-virtual {v2, v3, v4}, Lcom/haima/hmcp/volley/Cache$Entry;->isExpired(J)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v0, "cache-hit-expired"

    .line 15
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v2}, Lcom/haima/hmcp/volley/Request;->setCacheEntry(Lcom/haima/hmcp/volley/Cache$Entry;)Lcom/haima/hmcp/volley/Request;

    .line 17
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/haima/hmcp/volley/WaitingRequestManager;

    invoke-virtual {v0, p1}, Lcom/haima/hmcp/volley/WaitingRequestManager;->maybeAddToWaitingRequests(Lcom/haima/hmcp/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :cond_3
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/volley/Request;->sendEvent(I)V

    return-void

    :cond_4
    :try_start_3
    const-string v5, "cache-hit"

    .line 20
    invoke-virtual {p1, v5}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 21
    new-instance v5, Lcom/haima/hmcp/volley/NetworkResponse;

    iget-object v6, v2, Lcom/haima/hmcp/volley/Cache$Entry;->data:[B

    iget-object v7, v2, Lcom/haima/hmcp/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-direct {v5, v6, v7}, Lcom/haima/hmcp/volley/NetworkResponse;-><init>([BLjava/util/Map;)V

    .line 22
    invoke-virtual {p1, v5}, Lcom/haima/hmcp/volley/Request;->parseNetworkResponse(Lcom/haima/hmcp/volley/NetworkResponse;)Lcom/haima/hmcp/volley/Response;

    move-result-object v5

    const-string v6, "cache-hit-parsed"

    .line 23
    invoke-virtual {p1, v6}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v5}, Lcom/haima/hmcp/volley/Response;->isSuccess()Z

    move-result v6

    if-nez v6, :cond_6

    const-string v2, "cache-parsing-failed"

    .line 25
    invoke-virtual {p1, v2}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mCache:Lcom/haima/hmcp/volley/Cache;

    invoke-virtual {p1}, Lcom/haima/hmcp/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/haima/hmcp/volley/Cache;->invalidate(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/Request;->setCacheEntry(Lcom/haima/hmcp/volley/Cache$Entry;)Lcom/haima/hmcp/volley/Request;

    .line 28
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/haima/hmcp/volley/WaitingRequestManager;

    invoke-virtual {v0, p1}, Lcom/haima/hmcp/volley/WaitingRequestManager;->maybeAddToWaitingRequests(Lcom/haima/hmcp/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mNetworkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    :cond_5
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/volley/Request;->sendEvent(I)V

    return-void

    .line 31
    :cond_6
    :try_start_4
    invoke-virtual {v2, v3, v4}, Lcom/haima/hmcp/volley/Cache$Entry;->refreshNeeded(J)Z

    move-result v3

    if-nez v3, :cond_7

    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mDelivery:Lcom/haima/hmcp/volley/ResponseDelivery;

    invoke-interface {v0, p1, v5}, Lcom/haima/hmcp/volley/ResponseDelivery;->postResponse(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;)V

    goto :goto_0

    :cond_7
    const-string v3, "cache-hit-refresh-needed"

    .line 33
    invoke-virtual {p1, v3}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1, v2}, Lcom/haima/hmcp/volley/Request;->setCacheEntry(Lcom/haima/hmcp/volley/Cache$Entry;)Lcom/haima/hmcp/volley/Request;

    .line 35
    iput-boolean v0, v5, Lcom/haima/hmcp/volley/Response;->intermediate:Z

    .line 36
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mWaitingRequestManager:Lcom/haima/hmcp/volley/WaitingRequestManager;

    invoke-virtual {v0, p1}, Lcom/haima/hmcp/volley/WaitingRequestManager;->maybeAddToWaitingRequests(Lcom/haima/hmcp/volley/Request;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mDelivery:Lcom/haima/hmcp/volley/ResponseDelivery;

    new-instance v2, Lcom/haima/hmcp/volley/CacheDispatcher$1;

    invoke-direct {v2, p0, p1}, Lcom/haima/hmcp/volley/CacheDispatcher$1;-><init>(Lcom/haima/hmcp/volley/CacheDispatcher;Lcom/haima/hmcp/volley/Request;)V

    invoke-interface {v0, p1, v5, v2}, Lcom/haima/hmcp/volley/ResponseDelivery;->postResponse(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 38
    :cond_8
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mDelivery:Lcom/haima/hmcp/volley/ResponseDelivery;

    invoke-interface {v0, p1, v5}, Lcom/haima/hmcp/volley/ResponseDelivery;->postResponse(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/Response;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    :goto_0
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/volley/Request;->sendEvent(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v1}, Lcom/haima/hmcp/volley/Request;->sendEvent(I)V

    .line 40
    throw v0
.end method

.method public quit()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mQuit:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/haima/hmcp/volley/CacheDispatcher;->DEBUG:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string v0, "start new dispatcher"

    .line 7
    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/haima/hmcp/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/16 v0, 0xa

    .line 14
    .line 15
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mCache:Lcom/haima/hmcp/volley/Cache;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/haima/hmcp/volley/Cache;->initialize()V

    .line 21
    .line 22
    .line 23
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/haima/hmcp/volley/CacheDispatcher;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    iget-boolean v0, p0, Lcom/haima/hmcp/volley/CacheDispatcher;->mQuit:Z

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const-string v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 40
    .line 41
    new-array v2, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-static {v0, v2}, Lcom/haima/hmcp/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0
.end method
