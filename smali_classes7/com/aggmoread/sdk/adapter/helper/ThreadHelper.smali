.class public Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I

.field static final THREAD_POOL_CACHED_EXECUTOR:Ljava/util/concurrent/Executor;

.field static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static sMainThreadHandler:Landroid/os/Handler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field private static final sThreadFactory2:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->CPU_COUNT:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x4

    .line 13
    if-lt v0, v2, :cond_0

    .line 14
    .line 15
    const/4 v4, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v4, 0x1

    .line 18
    :goto_0
    sput v4, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->CORE_POOL_SIZE:I

    .line 19
    .line 20
    if-lt v0, v2, :cond_1

    .line 21
    .line 22
    const/4 v5, 0x4

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v5, 0x1

    .line 25
    :goto_1
    sput v5, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->MAXIMUM_POOL_SIZE:I

    .line 26
    .line 27
    new-instance v10, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper$1;

    .line 28
    .line 29
    invoke-direct {v10}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper$1;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v10, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 33
    .line 34
    new-instance v0, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper$2;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper$2;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->sThreadFactory2:Ljava/util/concurrent/ThreadFactory;

    .line 40
    .line 41
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 42
    .line 43
    const/16 v1, 0x80

    .line 44
    .line 45
    invoke-direct {v9, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 46
    .line 47
    .line 48
    sput-object v9, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 49
    .line 50
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 51
    .line 52
    const-wide/16 v6, 0x1

    .line 53
    .line 54
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    new-instance v11, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper$3;

    .line 57
    .line 58
    invoke-direct {v11}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper$3;-><init>()V

    .line 59
    .line 60
    .line 61
    move-object v3, v1

    .line 62
    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 63
    .line 64
    .line 65
    sput-object v1, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->THREAD_POOL_CACHED_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 72
    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static delayRunInMainThread(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->getMainThreadHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static getMainThreadHandler()Landroid/os/Handler;
    .locals 3

    .line 1
    sget-object v0, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->sMainThreadHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->sMainThreadHandler:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Landroid/os/Handler;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->sMainThreadHandler:Landroid/os/Handler;

    .line 22
    .line 23
    :cond_0
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1

    .line 28
    :cond_1
    :goto_0
    sget-object v0, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->sMainThreadHandler:Landroid/os/Handler;

    .line 29
    .line 30
    return-object v0
.end method

.method public static runInMainThread(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-static {}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->getMainThreadHandler()Landroid/os/Handler;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0
.end method

.method public static runInWorkerThread(Ljava/lang/Runnable;)Z
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper$4;-><init>(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->runInMainThread(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "internal  err "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_1
    move-exception p0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "ooe err "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/aggmoread/sdk/adapter/helper/LogHelper;->log(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    const/4 p0, 0x0

    .line 63
    return p0
.end method

.method public static runOnUIThreadByThreadPool(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper;->THREAD_POOL_CACHED_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper$5;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/adapter/helper/ThreadHelper$5;-><init>(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    :catch_0
    return-void
.end method
