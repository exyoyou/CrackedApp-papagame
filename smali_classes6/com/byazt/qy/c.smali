.class public final Lcom/byazt/qy/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6e,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/qy/c;


# instance fields
.field public volatile tt:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final ve:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/qy/c;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    .line 7
    new-instance v0, Landroid/os/HandlerThread;

    .line 8
    .line 9
    const-string v1, "csj_api_main"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    .line 16
    .line 17
    new-instance v1, Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/byazt/qy/c;->ve:Landroid/os/Handler;

    .line 27
    .line 28
    return-void
.end method

.method public static c()Lcom/byazt/qy/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/qy/c;->c:Lcom/byazt/qy/c;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/byazt/qy/c;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Lcom/byazt/qy/c;

    invoke-direct {v1}, Lcom/byazt/qy/c;-><init>()V

    sput-object v1, Lcom/byazt/qy/c;->c:Lcom/byazt/qy/c;

    .line 4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 5
    :cond_0
    :goto_0
    sget-object v0, Lcom/byazt/qy/c;->c:Lcom/byazt/qy/c;

    return-object v0
.end method


# virtual methods
.method public c(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/qy/c;->ve:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/byazt/bog/a;->c(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public tt()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qy/c;->ve:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Ljava/util/concurrent/ExecutorService;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/qy/c;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const v3, 0x7fffffff

    .line 9
    .line 10
    .line 11
    const-wide/16 v4, 0x3e8

    .line 12
    .line 13
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    .line 15
    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 18
    .line 19
    .line 20
    move-object v1, v0

    .line 21
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/byazt/qy/c;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/byazt/qy/c;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    .line 32
    return-object v0
.end method

.method public ve()Landroid/os/Handler;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
