.class public final Lorg/androidannotations/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/androidannotations/api/a$d;,
        Lorg/androidannotations/api/a$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BackgroundExecutor"

.field public static final b:Ljava/util/concurrent/Executor;

.field private static c:Ljava/util/concurrent/Executor;

.field public static final d:Lorg/androidannotations/api/a$d;

.field private static e:Lorg/androidannotations/api/a$d;

.field private static final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/androidannotations/api/a$c;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

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
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lorg/androidannotations/api/a;->b:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    sput-object v0, Lorg/androidannotations/api/a;->c:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    new-instance v0, Lorg/androidannotations/api/a$a;

    .line 20
    .line 21
    invoke-direct {v0}, Lorg/androidannotations/api/a$a;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lorg/androidannotations/api/a;->d:Lorg/androidannotations/api/a$d;

    .line 25
    .line 26
    sput-object v0, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lorg/androidannotations/api/a;->g:Ljava/lang/ThreadLocal;

    .line 41
    .line 42
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

.method static synthetic a()Ljava/lang/ThreadLocal;
    .locals 1

    .line 1
    sget-object v0, Lorg/androidannotations/api/a;->g:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Lorg/androidannotations/api/a$c;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/androidannotations/api/a;->p(Ljava/lang/String;)Lorg/androidannotations/api/a$c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static declared-synchronized d(Ljava/lang/String;Z)V
    .locals 6

    .line 1
    const-class v0, Lorg/androidannotations/api/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    sub-int/2addr v1, v2

    .line 12
    :goto_0
    if-ltz v1, :cond_3

    .line 13
    .line 14
    sget-object v3, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, Lorg/androidannotations/api/a$c;

    .line 21
    .line 22
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$000(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_2

    .line 31
    .line 32
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$300(Lorg/androidannotations/api/a$c;)Ljava/util/concurrent/Future;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$300(Lorg/androidannotations/api/a$c;)Ljava/util/concurrent/Future;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-interface {v3, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 43
    .line 44
    .line 45
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$500(Lorg/androidannotations/api/a$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$600(Lorg/androidannotations/api/a$c;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$200(Lorg/androidannotations/api/a$c;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v5, "A task with id "

    .line 71
    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-static {v4}, Lorg/androidannotations/api/a$c;->access$000(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v4, " cannot be cancelled (the executor set does not support it)"

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    monitor-exit v0

    .line 98
    throw p0
.end method

.method public static varargs e([Ljava/lang/String;)V
    .locals 4

    .line 1
    array-length v0, p0

    .line 2
    if-nez v0, :cond_1

    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lorg/androidannotations/api/a$d;->c([Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    sget-object v0, Lorg/androidannotations/api/a;->g:Ljava/lang/ThreadLocal;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    sget-object v0, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-interface {v0, v1, p0}, Lorg/androidannotations/api/a$d;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    array-length v1, p0

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-ge v2, v1, :cond_4

    .line 44
    .line 45
    aget-object v3, p0, v2

    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    sget-object v1, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    .line 58
    .line 59
    invoke-interface {v1, v0, p0}, Lorg/androidannotations/api/a$d;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static f()V
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
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    sget-object v0, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    .line 16
    .line 17
    invoke-interface {v0}, Lorg/androidannotations/api/a$d;->a()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private static g(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_1

    .line 6
    .line 7
    sget-object v0, Lorg/androidannotations/api/a;->c:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    instance-of v1, v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    invoke-interface {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    const-string p1, "The executor set does not support scheduling"

    .line 25
    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_1
    sget-object p1, Lorg/androidannotations/api/a;->c:Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    instance-of p2, p1, Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    :goto_0
    return-object p0
.end method

.method public static h(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {p0, v0, v1}, Lorg/androidannotations/api/a;->g(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static i(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/androidannotations/api/a;->g(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static j(Ljava/lang/Runnable;Ljava/lang/String;JLjava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Lorg/androidannotations/api/a$b;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move-wide v2, p2

    .line 6
    move-object v4, p4

    .line 7
    move-object v5, p0

    .line 8
    invoke-direct/range {v0 .. v5}, Lorg/androidannotations/api/a$b;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static k(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {p0, p1, v0, v1, p2}, Lorg/androidannotations/api/a;->j(Ljava/lang/Runnable;Ljava/lang/String;JLjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static declared-synchronized l(Lorg/androidannotations/api/a$c;)V
    .locals 3

    .line 1
    const-class v0, Lorg/androidannotations/api/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lorg/androidannotations/api/a$c;->access$000(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lorg/androidannotations/api/a$c;->access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    :cond_0
    sget-object v1, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {p0}, Lorg/androidannotations/api/a$c;->access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-static {p0}, Lorg/androidannotations/api/a$c;->access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lorg/androidannotations/api/a;->m(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    :cond_2
    const/4 v1, 0x1

    .line 38
    invoke-static {p0, v1}, Lorg/androidannotations/api/a$c;->access$202(Lorg/androidannotations/api/a$c;Z)Z

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lorg/androidannotations/api/a$c;->access$400(Lorg/androidannotations/api/a$c;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    invoke-static {p0, v1, v2}, Lorg/androidannotations/api/a;->g(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {p0, v1}, Lorg/androidannotations/api/a$c;->access$302(Lorg/androidannotations/api/a$c;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_3
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v0

    .line 56
    throw p0
.end method

.method private static m(Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lorg/androidannotations/api/a$c;

    .line 18
    .line 19
    invoke-static {v1}, Lorg/androidannotations/api/a$c;->access$200(Lorg/androidannotations/api/a$c;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-static {v1}, Lorg/androidannotations/api/a$c;->access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    return p0
.end method

.method public static n(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/androidannotations/api/a;->c:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-void
.end method

.method public static o(Lorg/androidannotations/api/a$d;)V
    .locals 0

    .line 1
    sput-object p0, Lorg/androidannotations/api/a;->e:Lorg/androidannotations/api/a$d;

    .line 2
    .line 3
    return-void
.end method

.method private static p(Ljava/lang/String;)Lorg/androidannotations/api/a$c;
    .locals 4

    .line 1
    sget-object v0, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    sget-object v2, Lorg/androidannotations/api/a;->f:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lorg/androidannotations/api/a$c;

    .line 17
    .line 18
    invoke-static {v3}, Lorg/androidannotations/api/a$c;->access$100(Lorg/androidannotations/api/a$c;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lorg/androidannotations/api/a$c;

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method
