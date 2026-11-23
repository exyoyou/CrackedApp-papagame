.class public Lcn/fly/tools/utils/FlyPersistence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/fly/tools/utils/FlyPersistence$c;,
        Lcn/fly/tools/utils/FlyPersistence$g;,
        Lcn/fly/tools/utils/FlyPersistence$h;,
        Lcn/fly/tools/utils/FlyPersistence$f;,
        Lcn/fly/tools/utils/FlyPersistence$SerializableParcel;,
        Lcn/fly/tools/utils/FlyPersistence$b;,
        Lcn/fly/tools/utils/FlyPersistence$KVEntry;,
        Lcn/fly/tools/utils/FlyPersistence$a;,
        Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;,
        Lcn/fly/tools/utils/FlyPersistence$e;,
        Lcn/fly/tools/utils/FlyPersistence$i;,
        Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;,
        Lcn/fly/tools/utils/FlyPersistence$d;
    }
.end annotation


# static fields
.field private static final h:I

.field private static final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

.field private volatile b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/fly/tools/utils/FlyPersistence$i;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

.field private final f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final g:Lcn/fly/tools/utils/FlyPersistence$f;

.field private final j:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput v0, Lcn/fly/tools/utils/FlyPersistence;->h:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcn/fly/tools/utils/FlyPersistence;->i:Ljava/util/Set;

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

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
    iput-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$f;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, p3, v1}, Lcn/fly/tools/utils/FlyPersistence$f;-><init>(Ljava/lang/String;Lcn/fly/tools/utils/FlyPersistence$1;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->g:Lcn/fly/tools/utils/FlyPersistence$f;

    .line 52
    .line 53
    new-instance p3, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 54
    .line 55
    invoke-direct {p3, p1, p2, v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;-><init>(Landroid/content/Context;Ljava/lang/String;Lcn/fly/tools/utils/FlyPersistence$f;)V

    .line 56
    .line 57
    .line 58
    iput-object p3, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    .line 59
    .line 60
    invoke-direct {p0, p2}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcn/fly/tools/utils/FlyPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    .line 66
    new-instance p1, Lcn/fly/tools/utils/FlyPersistence$d;

    .line 67
    .line 68
    invoke-direct {p1, p0, v1}, Lcn/fly/tools/utils/FlyPersistence$d;-><init>(Lcn/fly/tools/utils/FlyPersistence;Lcn/fly/tools/utils/FlyPersistence$1;)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Runnable;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "004Wej d1bhdg"

    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-object p0
.end method

.method static synthetic a(Lcn/fly/tools/utils/FlyPersistence;Ljava/lang/Runnable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 7

    .line 5
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0xbb8

    .line 6
    :try_start_0
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    :cond_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    :cond_2
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_4
    :try_start_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p1, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :goto_0
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 16
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v3

    .line 17
    :try_start_5
    iget-object v4, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v4}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 18
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 19
    :try_start_6
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v3, :cond_5

    .line 20
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 21
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-interface {v3, v5, v6, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 22
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 23
    :catchall_2
    :cond_5
    :try_start_7
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, p1, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    .line 25
    :try_start_8
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 26
    :goto_1
    monitor-exit p0

    goto :goto_0

    :goto_2
    return-void

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception p1

    .line 27
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    throw p1
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcn/fly/tools/utils/FlyPersistence;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "]"

    if-eqz p1, :cond_1

    .line 97
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MPF]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/fly/tools/utils/FlyPersistence;->h:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 99
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 100
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    .line 101
    invoke-virtual {p1, p0, p2}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;ZLjava/lang/String;)V
    .locals 2

    const-string v0, "]"

    if-eqz p1, :cond_1

    .line 93
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MPF]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/fly/tools/utils/FlyPersistence;->h:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    :cond_0
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    invoke-virtual {p2, p0, p1, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 29
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcn/fly/tools/utils/FlyPersistence;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic b(Lcn/fly/tools/utils/FlyPersistence;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "."

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    :cond_0
    new-instance v0, Lcn/fly/tools/utils/FlyPersistence$1;

    invoke-direct {v0, p0, p1}, Lcn/fly/tools/utils/FlyPersistence$1;-><init>(Lcn/fly/tools/utils/FlyPersistence;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcn/fly/tools/utils/FlyPersistence;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-static {p0, v0, p1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/Throwable;ZLjava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 6
    sget-object v0, Lcn/fly/tools/utils/FlyPersistence;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcn/fly/tools/utils/FlyPersistence;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string v0, "succ"

    goto :goto_0

    :cond_0
    const-string v0, "fail"

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    const-string v0, "not exist"

    goto :goto_0

    :cond_2
    const-string v0, "oped"

    const/4 p0, 0x0

    .line 10
    :goto_0
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CKCMP] try del mpf \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return p0
.end method

.method static synthetic c(Lcn/fly/tools/utils/FlyPersistence;)Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    return-object p0
.end method

.method static synthetic c()Ljava/util/Set;
    .locals 1

    .line 2
    sget-object v0, Lcn/fly/tools/utils/FlyPersistence;->i:Ljava/util/Set;

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, v0, p1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)[B
    .locals 3

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-static {p1}, Lcn/fly/tools/utils/Data;->rawMD5(Ljava/lang/String;)[B

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_1

    move-object v0, p1

    :cond_1
    return-object v0

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcn/fly/tools/utils/FlyPersistence;->a(Ljava/lang/String;ZLjava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public a(Lcn/fly/tools/utils/FlyPersistence$e;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcn/fly/tools/utils/FlyPersistence$e<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 67
    invoke-virtual {p1}, Lcn/fly/tools/utils/FlyPersistence$e;->a()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 69
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    const/4 v1, 0x0

    .line 70
    :try_start_0
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/fly/tools/utils/FlyPersistence$i;

    if-eqz v2, :cond_1

    .line 71
    invoke-virtual {v2}, Lcn/fly/tools/utils/FlyPersistence$i;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    invoke-virtual {v2}, Lcn/fly/tools/utils/FlyPersistence$i;->b()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 74
    :try_start_1
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 76
    :try_start_2
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/fly/tools/utils/FlyPersistence$i;

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {v1}, Lcn/fly/tools/utils/FlyPersistence$i;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 78
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get done, exp-m: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/fly/tools/utils/FlyPersistence;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_2
    new-instance v1, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;

    invoke-direct {v1}, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;-><init>()V

    throw v1
    :try_end_2
    .catch Lcn/fly/tools/utils/FlyPersistence$NoValidDataException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 81
    :try_start_3
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 82
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_2

    :catch_0
    move-exception p1

    .line 83
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 84
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 85
    throw p1

    .line 86
    :cond_3
    :goto_2
    :try_start_5
    new-instance v1, Lcn/fly/tools/utils/FlyPersistence$g;

    invoke-direct {p0, v0}, Lcn/fly/tools/utils/FlyPersistence;->c(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/fly/tools/utils/FlyPersistence$g;-><init>([B)V

    .line 87
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-virtual {v0, v1, p1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$g;Lcn/fly/tools/utils/FlyPersistence$e;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-object p1

    .line 88
    :catchall_3
    new-instance p1, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;

    invoke-direct {p1}, Lcn/fly/tools/utils/FlyPersistence$NoValidDataException;-><init>()V

    throw p1

    :catchall_4
    move-exception p1

    .line 89
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 90
    throw p1

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deserializer is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcn/fly/tools/utils/FlyPersistence$i;)V
    .locals 6

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Lcn/fly/tools/utils/FlyPersistence$i;->a()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lcn/fly/tools/utils/FlyPersistence$i;->d()J

    move-result-wide v1

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    .line 35
    invoke-direct {p0, v0}, Lcn/fly/tools/utils/FlyPersistence;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcn/fly/tools/utils/FlyPersistence$i;->a(Lcn/fly/tools/utils/FlyPersistence$i;[B)V

    .line 36
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 37
    :try_start_0
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :goto_0
    iget-object p1, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 39
    :try_start_1
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 40
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 41
    throw p1

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expAt: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "dataEntry is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cln"

    invoke-static {v1, v0}, Lcn/fly/tools/utils/FlyPersistence;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 60
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 63
    :try_start_1
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 64
    :goto_1
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-virtual {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->d()Z

    move-result v0

    return v0

    :catchall_1
    move-exception v0

    .line 65
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 66
    throw v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 7

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FlyPersistence;->c(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    const-string v4, "f"

    .line 46
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 47
    iget-object v5, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 48
    :try_start_0
    iget-object v5, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    iget-object v5, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    aput-boolean v1, v2, v3

    const-string v5, "m"

    .line 50
    aput-object v5, v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_0
    :goto_0
    iget-object v5, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v5

    .line 52
    :try_start_1
    iget-object v6, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v6}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 53
    :goto_1
    iget-object v5, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    new-instance v6, Lcn/fly/tools/utils/FlyPersistence$g;

    invoke-direct {v6, v0}, Lcn/fly/tools/utils/FlyPersistence$g;-><init>([B)V

    invoke-virtual {v5, v6, v1}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$g;Z)Z

    move-result v0

    aput-boolean v0, v2, v3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rmv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", from: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, v4, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", succ is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean p1, v2, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v0}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/fly/tools/utils/FlyPersistence;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-boolean p1, v2, v3

    return p1

    :catchall_1
    move-exception p1

    .line 55
    iget-object v0, p0, Lcn/fly/tools/utils/FlyPersistence;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 56
    throw p1

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 13
    :try_start_0
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/fly/tools/utils/FlyPersistence$i;

    .line 16
    invoke-virtual {v2}, Lcn/fly/tools/utils/FlyPersistence$i;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 17
    invoke-virtual {v2}, Lcn/fly/tools/utils/FlyPersistence$i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcn/fly/tools/utils/FlyPersistence$i;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 18
    :cond_1
    :goto_1
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 19
    :try_start_1
    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/fly/tools/utils/FlyPersistence;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_1

    .line 20
    :goto_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    iget-object v3, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-virtual {v3}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->e()Ljava/util/List;

    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 24
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 25
    iget-object v5, p0, Lcn/fly/tools/utils/FlyPersistence;->g:Lcn/fly/tools/utils/FlyPersistence$f;

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcn/fly/tools/utils/FlyPersistence$f;->a(Lcn/fly/tools/utils/FlyPersistence$f;[BLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 26
    instance-of v5, v4, Lcn/fly/tools/utils/FlyPersistence$KVEntry;

    if-eqz v5, :cond_2

    .line 27
    check-cast v4, Lcn/fly/tools/utils/FlyPersistence$KVEntry;

    .line 28
    new-instance v5, Lcn/fly/tools/utils/FlyPersistence$a;

    invoke-virtual {v4}, Lcn/fly/tools/utils/FlyPersistence$KVEntry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcn/fly/tools/utils/FlyPersistence$KVEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v5, v7, v4}, Lcn/fly/tools/utils/FlyPersistence$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 29
    :cond_2
    check-cast v4, Ljava/util/HashMap;

    .line 30
    invoke-static {v4}, Lcn/fly/tools/utils/FlyPersistence$a;->a(Ljava/util/HashMap;)Lcn/fly/tools/utils/FlyPersistence$a;

    move-result-object v5

    .line 31
    :goto_4
    invoke-virtual {v5}, Lcn/fly/tools/utils/FlyPersistence$a;->a()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 32
    :try_start_2
    move-object v7, v4

    check-cast v7, Lcn/fly/tools/utils/FlyPersistence$b;

    .line 33
    invoke-virtual {v7, v6}, Lcn/fly/tools/utils/FlyPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    nop

    :cond_3
    move-object v7, v6

    :goto_5
    if-eqz v4, :cond_5

    if-nez v7, :cond_5

    .line 34
    :try_start_3
    move-object v8, v4

    check-cast v8, [Lcn/fly/tools/utils/FlyPersistence$b;

    .line 35
    array-length v9, v8

    if-lez v9, :cond_5

    const/4 v9, 0x0

    .line 36
    aget-object v10, v8, v9

    invoke-virtual {v10}, Lcn/fly/tools/utils/FlyPersistence$b;->a()Ljava/lang/Class;

    move-result-object v10

    .line 37
    array-length v11, v8

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/Parcelable;

    .line 38
    :goto_6
    array-length v11, v10

    if-ge v9, v11, :cond_4

    .line 39
    aget-object v11, v8, v9

    invoke-virtual {v11, v6}, Lcn/fly/tools/utils/FlyPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v11

    aput-object v11, v10, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_4
    move-object v7, v10

    goto :goto_7

    :catchall_2
    nop

    :cond_5
    :goto_7
    if-eqz v4, :cond_9

    if-nez v7, :cond_9

    .line 40
    :try_start_4
    move-object v8, v4

    check-cast v8, Ljava/util/List;

    .line 41
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 42
    instance-of v9, v8, Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    .line 43
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    .line 44
    :cond_6
    instance-of v9, v8, Ljava/util/LinkedList;

    if-eqz v9, :cond_7

    .line 45
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    goto :goto_8

    .line 46
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 47
    :goto_8
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/fly/tools/utils/FlyPersistence$b;

    .line 48
    invoke-virtual {v10, v6}, Lcn/fly/tools/utils/FlyPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_9

    :cond_8
    move-object v7, v9

    goto :goto_a

    :catchall_3
    nop

    :cond_9
    :goto_a
    if-eqz v4, :cond_e

    if-nez v7, :cond_e

    .line 49
    :try_start_5
    move-object v8, v4

    check-cast v8, Ljava/util/Map;

    .line 50
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_e

    .line 51
    instance-of v9, v8, Ljava/util/HashMap;

    if-eqz v9, :cond_a

    .line 52
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    goto :goto_b

    .line 53
    :cond_a
    instance-of v9, v8, Ljava/util/Hashtable;

    if-eqz v9, :cond_b

    .line 54
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    goto :goto_b

    .line 55
    :cond_b
    instance-of v9, v8, Ljava/util/TreeMap;

    if-eqz v9, :cond_c

    .line 56
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    goto :goto_b

    .line 57
    :cond_c
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 58
    :goto_b
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/fly/tools/utils/FlyPersistence$b;

    invoke-virtual {v10, v6}, Lcn/fly/tools/utils/FlyPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v10

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_c

    :cond_d
    move-object v7, v9

    goto :goto_d

    :catchall_4
    nop

    :cond_e
    :goto_d
    if-nez v7, :cond_f

    goto :goto_e

    :cond_f
    move-object v4, v7

    .line 60
    :goto_e
    invoke-static {v5}, Lcn/fly/tools/utils/FlyPersistence$a;->a(Lcn/fly/tools/utils/FlyPersistence$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 61
    :cond_10
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 62
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetA done: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/fly/tools/utils/FlyPersistence;->a:Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;

    invoke-static {v2}, Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;->a(Lcn/fly/tools/utils/FlyPersistence$MobPersistenceFile;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/fly/tools/utils/FlyPersistence;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_5
    move-exception v0

    .line 64
    iget-object v1, p0, Lcn/fly/tools/utils/FlyPersistence;->f:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 65
    throw v0
.end method
