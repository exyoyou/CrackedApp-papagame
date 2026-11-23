.class public Lcom/haima/hmcp/volley/RequestQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/volley/RequestQueue$RequestFilter;,
        Lcom/haima/hmcp/volley/RequestQueue$RequestEventListener;,
        Lcom/haima/hmcp/volley/RequestQueue$RequestEvent;,
        Lcom/haima/hmcp/volley/RequestQueue$RequestFinishedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_NETWORK_THREAD_POOL_SIZE:I = 0x4


# instance fields
.field private final mCache:Lcom/haima/hmcp/volley/Cache;

.field private mCacheDispatcher:Lcom/haima/hmcp/volley/CacheDispatcher;

.field private final mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mCurrentRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mDelivery:Lcom/haima/hmcp/volley/ResponseDelivery;

.field private final mDispatchers:[Lcom/haima/hmcp/volley/NetworkDispatcher;

.field private final mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/volley/RequestQueue$RequestEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFinishedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/volley/RequestQueue$RequestFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetwork:Lcom/haima/hmcp/volley/Network;

.field private final mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field private threadPriority:I


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/volley/Cache;Lcom/haima/hmcp/volley/Network;)V
    .locals 1

    const/4 v0, 0x4

    .line 16
    invoke-direct {p0, p1, p2, v0}, Lcom/haima/hmcp/volley/RequestQueue;-><init>(Lcom/haima/hmcp/volley/Cache;Lcom/haima/hmcp/volley/Network;I)V

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/volley/Cache;Lcom/haima/hmcp/volley/Network;I)V
    .locals 3

    .line 13
    new-instance v0, Lcom/haima/hmcp/volley/ExecutorDelivery;

    new-instance v1, Landroid/os/Handler;

    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/haima/hmcp/volley/ExecutorDelivery;-><init>(Landroid/os/Handler;)V

    .line 15
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/haima/hmcp/volley/RequestQueue;-><init>(Lcom/haima/hmcp/volley/Cache;Lcom/haima/hmcp/volley/Network;ILcom/haima/hmcp/volley/ResponseDelivery;)V

    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/volley/Cache;Lcom/haima/hmcp/volley/Network;ILcom/haima/hmcp/volley/ResponseDelivery;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 5
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    const/16 v0, 0xa

    .line 8
    iput v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->threadPriority:I

    .line 9
    iput-object p1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCache:Lcom/haima/hmcp/volley/Cache;

    .line 10
    iput-object p2, p0, Lcom/haima/hmcp/volley/RequestQueue;->mNetwork:Lcom/haima/hmcp/volley/Network;

    .line 11
    new-array p1, p3, [Lcom/haima/hmcp/volley/NetworkDispatcher;

    iput-object p1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mDispatchers:[Lcom/haima/hmcp/volley/NetworkDispatcher;

    .line 12
    iput-object p4, p0, Lcom/haima/hmcp/volley/RequestQueue;->mDelivery:Lcom/haima/hmcp/volley/ResponseDelivery;

    return-void
.end method


# virtual methods
.method public add(Lcom/haima/hmcp/volley/Request;)Lcom/haima/hmcp/volley/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/haima/hmcp/volley/Request<",
            "TT;>;)",
            "Lcom/haima/hmcp/volley/Request<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p0}, Lcom/haima/hmcp/volley/Request;->setRequestQueue(Lcom/haima/hmcp/volley/RequestQueue;)Lcom/haima/hmcp/volley/Request;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/RequestQueue;->getSequenceNumber()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/Request;->setSequence(I)Lcom/haima/hmcp/volley/Request;

    .line 18
    .line 19
    .line 20
    const-string v0, "add-to-queue"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/volley/RequestQueue;->sendRequestEvent(Lcom/haima/hmcp/volley/Request;I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/volley/RequestQueue;->beginRequest(Lcom/haima/hmcp/volley/Request;)V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    throw p1
.end method

.method public addRequestEventListener(Lcom/haima/hmcp/volley/RequestQueue$RequestEventListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public addRequestFinishedListener(Lcom/haima/hmcp/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/haima/hmcp/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method beginRequest(Lcom/haima/hmcp/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/haima/hmcp/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/haima/hmcp/volley/Request;->shouldCache()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/volley/RequestQueue;->sendRequestOverNetwork(Lcom/haima/hmcp/volley/Request;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public cancelAll(Lcom/haima/hmcp/volley/RequestQueue$RequestFilter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/volley/Request;

    .line 3
    invoke-interface {p1, v2}, Lcom/haima/hmcp/volley/RequestQueue$RequestFilter;->apply(Lcom/haima/hmcp/volley/Request;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/haima/hmcp/volley/Request;->cancel()V

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelAll(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    new-instance v0, Lcom/haima/hmcp/volley/RequestQueue$1;

    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/volley/RequestQueue$1;-><init>(Lcom/haima/hmcp/volley/RequestQueue;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/haima/hmcp/volley/RequestQueue;->cancelAll(Lcom/haima/hmcp/volley/RequestQueue$RequestFilter;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancelAll with a null tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method finish(Lcom/haima/hmcp/volley/Request;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/haima/hmcp/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCurrentRequests:Ljava/util/Set;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    iget-object v1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/haima/hmcp/volley/RequestQueue$RequestFinishedListener;

    .line 30
    .line 31
    invoke-interface {v2, p1}, Lcom/haima/hmcp/volley/RequestQueue$RequestFinishedListener;->onRequestFinished(Lcom/haima/hmcp/volley/Request;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    const/4 v0, 0x5

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/haima/hmcp/volley/RequestQueue;->sendRequestEvent(Lcom/haima/hmcp/volley/Request;I)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p1

    .line 44
    :catchall_1
    move-exception p1

    .line 45
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    throw p1
.end method

.method public getCache()Lcom/haima/hmcp/volley/Cache;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCache:Lcom/haima/hmcp/volley/Cache;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResponseDelivery()Lcom/haima/hmcp/volley/ResponseDelivery;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mDelivery:Lcom/haima/hmcp/volley/ResponseDelivery;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mSequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public removeRequestEventListener(Lcom/haima/hmcp/volley/RequestQueue$RequestEventListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public removeRequestFinishedListener(Lcom/haima/hmcp/volley/RequestQueue$RequestFinishedListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/haima/hmcp/volley/RequestQueue$RequestFinishedListener<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mFinishedListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method sendRequestEvent(Lcom/haima/hmcp/volley/Request;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mEventListeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/haima/hmcp/volley/RequestQueue$RequestEventListener;

    .line 21
    .line 22
    invoke-interface {v2, p1, p2}, Lcom/haima/hmcp/volley/RequestQueue$RequestEventListener;->onRequestEvent(Lcom/haima/hmcp/volley/Request;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method sendRequestOverNetwork(Lcom/haima/hmcp/volley/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/haima/hmcp/volley/Request<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setThreadPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/volley/RequestQueue;->threadPriority:I

    .line 2
    .line 3
    return-void
.end method

.method public start()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/RequestQueue;->stop()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/haima/hmcp/volley/CacheDispatcher;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCacheQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/haima/hmcp/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 9
    .line 10
    iget-object v3, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCache:Lcom/haima/hmcp/volley/Cache;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/haima/hmcp/volley/RequestQueue;->mDelivery:Lcom/haima/hmcp/volley/ResponseDelivery;

    .line 13
    .line 14
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/haima/hmcp/volley/CacheDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/haima/hmcp/volley/Cache;Lcom/haima/hmcp/volley/ResponseDelivery;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCacheDispatcher:Lcom/haima/hmcp/volley/CacheDispatcher;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/haima/hmcp/volley/RequestQueue;->mDispatchers:[Lcom/haima/hmcp/volley/NetworkDispatcher;

    .line 24
    .line 25
    array-length v1, v1

    .line 26
    if-ge v0, v1, :cond_0

    .line 27
    .line 28
    new-instance v1, Lcom/haima/hmcp/volley/NetworkDispatcher;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/haima/hmcp/volley/RequestQueue;->mNetworkQueue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/haima/hmcp/volley/RequestQueue;->mNetwork:Lcom/haima/hmcp/volley/Network;

    .line 33
    .line 34
    iget-object v4, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCache:Lcom/haima/hmcp/volley/Cache;

    .line 35
    .line 36
    iget-object v5, p0, Lcom/haima/hmcp/volley/RequestQueue;->mDelivery:Lcom/haima/hmcp/volley/ResponseDelivery;

    .line 37
    .line 38
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/haima/hmcp/volley/NetworkDispatcher;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/haima/hmcp/volley/Network;Lcom/haima/hmcp/volley/Cache;Lcom/haima/hmcp/volley/ResponseDelivery;)V

    .line 39
    .line 40
    .line 41
    iget v2, p0, Lcom/haima/hmcp/volley/RequestQueue;->threadPriority:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/volley/NetworkDispatcher;->setThreadPriority(I)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/haima/hmcp/volley/RequestQueue;->mDispatchers:[Lcom/haima/hmcp/volley/NetworkDispatcher;

    .line 47
    .line 48
    aput-object v1, v2, v0

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mCacheDispatcher:Lcom/haima/hmcp/volley/CacheDispatcher;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/volley/CacheDispatcher;->quit()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/volley/RequestQueue;->mDispatchers:[Lcom/haima/hmcp/volley/NetworkDispatcher;

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 13
    .line 14
    aget-object v3, v0, v2

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/haima/hmcp/volley/NetworkDispatcher;->quit()V

    .line 19
    .line 20
    .line 21
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    return-void
.end method
