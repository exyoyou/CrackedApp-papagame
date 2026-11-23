.class Lcom/cloudplay/messagesdk/network/volley/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;

.field private final c:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

.field private final d:Lcom/cloudplay/messagesdk/network/volley/a;

.field private final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/network/volley/a;Ljava/util/concurrent/BlockingQueue;Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/a;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;>;",
            "Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/h;->a:Ljava/util/Map;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/h;->c:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    .line 13
    .line 14
    iput-object p3, p0, Lcom/cloudplay/messagesdk/network/volley/h;->b:Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/h;->d:Lcom/cloudplay/messagesdk/network/volley/a;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/cloudplay/messagesdk/network/volley/h;->e:Ljava/util/concurrent/BlockingQueue;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/cloudplay/messagesdk/network/volley/Request;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->e()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/h;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/h;->a:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/List;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    :cond_0
    const-string v4, "waiting-for-response"

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/h;->a:Ljava/util/Map;

    .line 40
    .line 41
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    sget-boolean p1, Lcom/cloudplay/messagesdk/network/volley/g;->b:Z

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    new-array p1, v2, [Ljava/lang/Object;

    .line 49
    .line 50
    aput-object v0, p1, v3

    .line 51
    .line 52
    const-string v0, "Request for cacheKey=%s is in flight, putting on hold."

    .line 53
    .line 54
    invoke-static {v0, p1}, Lcom/cloudplay/messagesdk/network/volley/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_1
    monitor-exit p0

    .line 58
    return v2

    .line 59
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/h;->a:Ljava/util/Map;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;)V

    .line 66
    .line 67
    .line 68
    sget-boolean p1, Lcom/cloudplay/messagesdk/network/volley/g;->b:Z

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    new-array p1, v2, [Ljava/lang/Object;

    .line 73
    .line 74
    aput-object v0, p1, v3

    .line 75
    .line 76
    const-string v0, "new request, sending to network %s"

    .line 77
    .line 78
    invoke-static {v0, p1}, Lcom/cloudplay/messagesdk/network/volley/g;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    :cond_3
    monitor-exit p0

    .line 82
    return v3

    .line 83
    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0

    .line 85
    throw p1
.end method

.method public declared-synchronized onNoUsableResponseReceived(Lcom/cloudplay/messagesdk/network/volley/Request;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->e()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/h;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/List;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    sget-boolean v1, Lcom/cloudplay/messagesdk/network/volley/g;->b:Z

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    aput-object v4, v1, v3

    .line 40
    .line 41
    aput-object p1, v1, v2

    .line 42
    .line 43
    const-string v4, "%d waiting requests for cacheKey=%s; resend to network"

    .line 44
    .line 45
    invoke-static {v4, v1}, Lcom/cloudplay/messagesdk/network/volley/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/cloudplay/messagesdk/network/volley/Request;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/cloudplay/messagesdk/network/volley/h;->a:Ljava/util/Map;

    .line 55
    .line 56
    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p0}, Lcom/cloudplay/messagesdk/network/volley/Request;->a(Lcom/cloudplay/messagesdk/network/volley/Request$NetworkRequestCompleteListener;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/h;->c:Lcom/cloudplay/messagesdk/network/volley/RequestQueue;

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Lcom/cloudplay/messagesdk/network/volley/RequestQueue;->d(Lcom/cloudplay/messagesdk/network/volley/Request;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/h;->d:Lcom/cloudplay/messagesdk/network/volley/a;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/h;->e:Ljava/util/concurrent/BlockingQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception p1

    .line 83
    :try_start_2
    new-array v0, v2, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    aput-object p1, v0, v3

    .line 90
    .line 91
    const-string p1, "Couldn\'t add request to queue. %s"

    .line 92
    .line 93
    invoke-static {p1, v0}, Lcom/cloudplay/messagesdk/network/volley/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/cloudplay/messagesdk/network/volley/h;->d:Lcom/cloudplay/messagesdk/network/volley/a;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/a;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_2
    :goto_0
    monitor-exit p0

    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    monitor-exit p0

    .line 112
    throw p1
.end method

.method public onResponseReceived(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/network/volley/Request<",
            "*>;",
            "Lcom/cloudplay/messagesdk/network/volley/Response<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/cloudplay/messagesdk/network/volley/Response;->b:Lcom/cloudplay/messagesdk/network/volley/Cache$a;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/network/volley/Cache$a;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/network/volley/Request;->e()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/network/volley/h;->a:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/List;

    .line 24
    .line 25
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    sget-boolean v1, Lcom/cloudplay/messagesdk/network/volley/g;->b:Z

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const/4 v3, 0x0

    .line 44
    aput-object v2, v1, v3

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    aput-object p1, v1, v2

    .line 48
    .line 49
    const-string p1, "Releasing %d waiting requests for cacheKey=%s."

    .line 50
    .line 51
    invoke-static {p1, v1}, Lcom/cloudplay/messagesdk/network/volley/g;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/cloudplay/messagesdk/network/volley/Request;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/cloudplay/messagesdk/network/volley/h;->b:Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;

    .line 71
    .line 72
    invoke-interface {v1, v0, p2}, Lcom/cloudplay/messagesdk/network/volley/ResponseDelivery;->postResponse(Lcom/cloudplay/messagesdk/network/volley/Request;Lcom/cloudplay/messagesdk/network/volley/Response;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p1

    .line 80
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/network/volley/h;->onNoUsableResponseReceived(Lcom/cloudplay/messagesdk/network/volley/Request;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
