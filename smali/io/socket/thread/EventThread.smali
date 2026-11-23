.class public Lio/socket/thread/EventThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

.field private static counter:I

.field private static final logger:Ljava/util/logging/Logger;

.field private static service:Ljava/util/concurrent/ExecutorService;

.field private static thread:Lio/socket/thread/EventThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/socket/thread/EventThread;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lio/socket/thread/EventThread;->logger:Ljava/util/logging/Logger;

    .line 12
    .line 13
    new-instance v0, Lio/socket/thread/EventThread$1;

    .line 14
    .line 15
    invoke-direct {v0}, Lio/socket/thread/EventThread$1;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lio/socket/thread/EventThread;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    sput v0, Lio/socket/thread/EventThread;->counter:I

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lio/socket/thread/EventThread$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/socket/thread/EventThread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000()Lio/socket/thread/EventThread;
    .locals 1

    .line 1
    sget-object v0, Lio/socket/thread/EventThread;->thread:Lio/socket/thread/EventThread;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$002(Lio/socket/thread/EventThread;)Lio/socket/thread/EventThread;
    .locals 0

    .line 1
    sput-object p0, Lio/socket/thread/EventThread;->thread:Lio/socket/thread/EventThread;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lio/socket/thread/EventThread;->logger:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 1
    sget v0, Lio/socket/thread/EventThread;->counter:I

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$310()I
    .locals 2

    .line 1
    sget v0, Lio/socket/thread/EventThread;->counter:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, -0x1

    .line 4
    .line 5
    sput v1, Lio/socket/thread/EventThread;->counter:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lio/socket/thread/EventThread;->service:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$402(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    sput-object p0, Lio/socket/thread/EventThread;->service:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static exec(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/socket/thread/EventThread;->isCurrent()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lio/socket/thread/EventThread;->nextTick(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public static isCurrent()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lio/socket/thread/EventThread;->thread:Lio/socket/thread/EventThread;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public static nextTick(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const-class v0, Lio/socket/thread/EventThread;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lio/socket/thread/EventThread;->counter:I

    .line 5
    .line 6
    add-int/lit8 v1, v1, 0x1

    .line 7
    .line 8
    sput v1, Lio/socket/thread/EventThread;->counter:I

    .line 9
    .line 10
    sget-object v1, Lio/socket/thread/EventThread;->service:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    sget-object v1, Lio/socket/thread/EventThread;->THREAD_FACTORY:Ljava/util/concurrent/ThreadFactory;

    .line 15
    .line 16
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lio/socket/thread/EventThread;->service:Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    :cond_0
    sget-object v1, Lio/socket/thread/EventThread;->service:Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    new-instance v0, Lio/socket/thread/EventThread$2;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lio/socket/thread/EventThread$2;-><init>(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method
