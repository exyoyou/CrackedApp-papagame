.class public Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;
.super Lcom/haima/hmcp/volley/AsyncNetwork;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork$Builder;,
        Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;,
        Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;
    }
.end annotation


# instance fields
.field private final mAsyncStack:Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;

.field private final mPool:Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;


# direct methods
.method private constructor <init>(Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/haima/hmcp/volley/AsyncNetwork;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;->mAsyncStack:Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;

    .line 4
    iput-object p2, p0, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;->mPool:Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;-><init>(Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;Lcom/haima/hmcp/volley/Request;JLcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;->onRequestSucceeded(Lcom/haima/hmcp/volley/Request;JLcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/haima/hmcp/volley/toolbox/HttpResponse;[B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;->onRequestFailed(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/haima/hmcp/volley/toolbox/HttpResponse;[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;)Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;->mPool:Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;JILcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;->onResponseRead(JILcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private onRequestFailed(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/haima/hmcp/volley/toolbox/HttpResponse;[B)V
    .locals 6
    .param p6    # Lcom/haima/hmcp/volley/toolbox/HttpResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;",
            "Ljava/io/IOException;",
            "J",
            "Lcom/haima/hmcp/volley/toolbox/HttpResponse;",
            "[B)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    move-object v1, p3

    .line 3
    move-wide v2, p4

    .line 4
    move-object v4, p6

    .line 5
    move-object v5, p7

    .line 6
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility;->shouldRetryException(Lcom/haima/hmcp/volley/Request;Ljava/io/IOException;JLcom/haima/hmcp/volley/toolbox/HttpResponse;[B)Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/AsyncNetwork;->getBlockingExecutor()Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    new-instance p5, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;

    .line 15
    .line 16
    invoke-direct {p5, p0, p1, p3, p2}, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork$InvokeRetryPolicyTask;-><init>(Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/toolbox/NetworkUtility$RetryInfo;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p4, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/haima/hmcp/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-interface {p2, p1}, Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;->onError(Lcom/haima/hmcp/volley/VolleyError;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method private onRequestSucceeded(Lcom/haima/hmcp/volley/Request;JLcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;J",
            "Lcom/haima/hmcp/volley/toolbox/HttpResponse;",
            "Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p4 .. p4}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getStatusCode()I

    .line 2
    .line 3
    .line 4
    move-result v9

    .line 5
    invoke-virtual/range {p4 .. p4}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v8

    .line 9
    const/16 v0, 0x130

    .line 10
    .line 11
    if-ne v9, v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sub-long/2addr v0, p2

    .line 18
    move-object v5, p1

    .line 19
    invoke-static {p1, v0, v1, v8}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility;->getNotModifiedNetworkResponse(Lcom/haima/hmcp/volley/Request;JLjava/util/List;)Lcom/haima/hmcp/volley/NetworkResponse;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object/from16 v6, p5

    .line 24
    .line 25
    invoke-interface {v6, v0}, Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;->onSuccess(Lcom/haima/hmcp/volley/NetworkResponse;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    move-object v5, p1

    .line 30
    move-object/from16 v6, p5

    .line 31
    .line 32
    invoke-virtual/range {p4 .. p4}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getContentBytes()[B

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-virtual/range {p4 .. p4}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    new-array v0, v0, [B

    .line 46
    .line 47
    :cond_1
    move-object v10, v0

    .line 48
    if-eqz v10, :cond_2

    .line 49
    .line 50
    move-object v0, p0

    .line 51
    move-wide v1, p2

    .line 52
    move v3, v9

    .line 53
    move-object/from16 v4, p4

    .line 54
    .line 55
    move-object v5, p1

    .line 56
    move-object/from16 v6, p5

    .line 57
    .line 58
    move-object v7, v8

    .line 59
    move-object v8, v10

    .line 60
    invoke-direct/range {v0 .. v8}, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;->onResponseRead(JILcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/AsyncNetwork;->getBlockingExecutor()Ljava/util/concurrent/ExecutorService;

    .line 69
    .line 70
    .line 71
    move-result-object v10

    .line 72
    new-instance v11, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;

    .line 73
    .line 74
    move-object v0, v11

    .line 75
    move-object v1, p0

    .line 76
    move-object/from16 v3, p4

    .line 77
    .line 78
    move-object v4, p1

    .line 79
    move-object/from16 v5, p5

    .line 80
    .line 81
    move-wide v6, p2

    .line 82
    invoke-direct/range {v0 .. v9}, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork$ResponseParsingTask;-><init>(Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;Ljava/io/InputStream;Lcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;JLjava/util/List;I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private onResponseRead(JILcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;Ljava/util/List;[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/haima/hmcp/volley/toolbox/HttpResponse;",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/volley/Header;",
            ">;[B)V"
        }
    .end annotation

    .line 1
    move v1, p3

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 3
    .line 4
    .line 5
    move-result-wide v2

    .line 6
    sub-long/2addr v2, p1

    .line 7
    move-object v4, p5

    .line 8
    move-object/from16 v7, p8

    .line 9
    .line 10
    invoke-static {v2, v3, p5, v7, p3}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility;->logSlowRequests(JLcom/haima/hmcp/volley/Request;[BI)V

    .line 11
    .line 12
    .line 13
    const/16 v0, 0xc8

    .line 14
    .line 15
    if-lt v1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x12b

    .line 18
    .line 19
    if-le v1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v8, Lcom/haima/hmcp/volley/NetworkResponse;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    sub-long/2addr v4, p1

    .line 30
    move-object v0, v8

    .line 31
    move v1, p3

    .line 32
    move-object/from16 v2, p8

    .line 33
    .line 34
    move-object/from16 v6, p7

    .line 35
    .line 36
    invoke-direct/range {v0 .. v6}, Lcom/haima/hmcp/volley/NetworkResponse;-><init>(I[BZJLjava/util/List;)V

    .line 37
    .line 38
    .line 39
    move-object v2, p6

    .line 40
    invoke-interface {p6, v8}, Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;->onSuccess(Lcom/haima/hmcp/volley/NetworkResponse;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    :goto_0
    move-object v2, p6

    .line 45
    new-instance v3, Ljava/io/IOException;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    .line 48
    .line 49
    .line 50
    move-object v0, p0

    .line 51
    move-object v1, p5

    .line 52
    move-object v2, p6

    .line 53
    move-wide v4, p1

    .line 54
    move-object v6, p4

    .line 55
    move-object/from16 v7, p8

    .line 56
    .line 57
    invoke-direct/range {v0 .. v7}, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;->onRequestFailed(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;Ljava/io/IOException;JLcom/haima/hmcp/volley/toolbox/HttpResponse;[B)V

    .line 58
    .line 59
    .line 60
    return-void
.end method


# virtual methods
.method public performRequest(Lcom/haima/hmcp/volley/Request;Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/Request<",
            "*>;",
            "Lcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/volley/AsyncNetwork;->getBlockingExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    invoke-virtual {p1}, Lcom/haima/hmcp/volley/Request;->getCacheEntry()Lcom/haima/hmcp/volley/Cache$Entry;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/haima/hmcp/volley/toolbox/HttpHeaderParser;->getCacheHeaders(Lcom/haima/hmcp/volley/Cache$Entry;)Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v7, p0, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;->mAsyncStack:Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;

    .line 20
    .line 21
    new-instance v8, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork$1;

    .line 22
    .line 23
    move-object v1, v8

    .line 24
    move-object v2, p0

    .line 25
    move-object v3, p1

    .line 26
    move-object v6, p2

    .line 27
    invoke-direct/range {v1 .. v6}, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork$1;-><init>(Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;Lcom/haima/hmcp/volley/Request;JLcom/haima/hmcp/volley/AsyncNetwork$OnRequestComplete;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7, p1, v0, v8}, Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;->executeRequest(Lcom/haima/hmcp/volley/Request;Ljava/util/Map;Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack$OnRequestComplete;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    const-string p2, "mBlockingExecuter must be set before making a request"

    .line 37
    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/volley/AsyncNetwork;->setBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;->mAsyncStack:Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;->setBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setNonBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/haima/hmcp/volley/AsyncNetwork;->setNonBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/volley/toolbox/BasicAsyncNetwork;->mAsyncStack:Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/volley/toolbox/AsyncHttpStack;->setNonBlockingExecutor(Ljava/util/concurrent/ExecutorService;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
