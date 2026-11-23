.class public final Lcom/kwad/sdk/utils/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static bsx:Lcom/kwad/sdk/utils/a/c$d;

.field static volatile bsy:Ljava/util/concurrent/Executor;

.field static bsz:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/kwad/sdk/utils/a/d;->bsz:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/kwad/sdk/utils/a/c$d;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/kwad/sdk/utils/a/d;->bsx:Lcom/kwad/sdk/utils/a/c$d;

    .line 2
    .line 3
    return-void
.end method

.method static getExecutor()Ljava/util/concurrent/Executor;
    .locals 9

    .line 1
    sget-object v0, Lcom/kwad/sdk/utils/a/d;->bsy:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/kwad/sdk/utils/a/d;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/kwad/sdk/utils/a/d;->bsy:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    const/4 v4, 0x4

    .line 16
    const-wide/16 v5, 0xa

    .line 17
    .line 18
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 21
    .line 22
    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 23
    .line 24
    .line 25
    move-object v2, v1

    .line 26
    invoke-direct/range {v2 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 31
    .line 32
    .line 33
    sput-object v1, Lcom/kwad/sdk/utils/a/d;->bsy:Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    :cond_0
    monitor-exit v0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/kwad/sdk/utils/a/d;->bsy:Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    return-object v0
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    sput-object p0, Lcom/kwad/sdk/utils/a/d;->bsy:Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    :cond_0
    return-void
.end method
