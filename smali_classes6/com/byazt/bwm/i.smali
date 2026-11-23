.class public final Lcom/byazt/bwm/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x21,
        0x2a
    }
.end annotation


# static fields
.field public static final c:I

.field public static final tt:Lcom/byazt/bwm/i;

.field public static uj:Z


# instance fields
.field public a:I

.field public volatile d:Z

.field public volatile da:Z

.field public gr:Z

.field public volatile gt:Ljava/util/concurrent/ThreadPoolExecutor;

.field public gu:I

.field public volatile h:Z

.field public volatile i:Z

.field public m:Z

.field public volatile md:Z

.field public volatile my:Ljava/util/concurrent/ThreadPoolExecutor;

.field public n:I

.field public volatile nu:Z

.field public volatile p:Z

.field public qy:Z

.field public rh:Lcom/byazt/mc/n;

.field public volatile rl:Ljava/util/concurrent/ScheduledExecutorService;

.field public sl:Z

.field public sp:J

.field public t:J

.field public u:J

.field public volatile ve:Z

.field public x:J

.field public yp:J

.field public yv:Z

.field public z:J

.field public zm:Lcom/byazt/mc/tt;


# direct methods
.method public static constructor <clinit>()V
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
    sput v0, Lcom/byazt/bwm/i;->c:I

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/bwm/i;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/byazt/bwm/i;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/byazt/bwm/i;->uj:Z

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/bwm/i;->ve:Z

    .line 6
    .line 7
    const-wide/16 v1, 0x1388

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/byazt/bwm/i;->sp:J

    .line 10
    .line 11
    const-wide/16 v1, 0x4e20

    .line 12
    .line 13
    iput-wide v1, p0, Lcom/byazt/bwm/i;->x:J

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/byazt/bwm/i;->i:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/byazt/bwm/i;->sl:Z

    .line 18
    .line 19
    const-wide/16 v1, 0x64

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/byazt/bwm/i;->t:J

    .line 22
    .line 23
    const-wide/16 v1, 0x32

    .line 24
    .line 25
    iput-wide v1, p0, Lcom/byazt/bwm/i;->u:J

    .line 26
    .line 27
    const-wide/16 v1, 0x3e8

    .line 28
    .line 29
    iput-wide v1, p0, Lcom/byazt/bwm/i;->yp:J

    .line 30
    .line 31
    const-wide/16 v1, 0xbb8

    .line 32
    .line 33
    iput-wide v1, p0, Lcom/byazt/bwm/i;->z:J

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    iput-boolean v1, p0, Lcom/byazt/bwm/i;->m:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/byazt/bwm/i;->nu:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/byazt/bwm/i;->qy:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/byazt/bwm/i;->gr:Z

    .line 43
    .line 44
    new-instance v1, Lcom/byazt/bwm/i$1;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/byazt/bwm/i$1;-><init>(Lcom/byazt/bwm/i;)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/byazt/bwm/i;->zm:Lcom/byazt/mc/tt;

    .line 50
    .line 51
    iput-boolean v0, p0, Lcom/byazt/bwm/i;->h:Z

    .line 52
    .line 53
    iput-boolean v0, p0, Lcom/byazt/bwm/i;->d:Z

    .line 54
    .line 55
    sget v0, Lcom/byazt/bwm/i;->c:I

    .line 56
    .line 57
    const/4 v1, 0x4

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/byazt/bwm/i;->n:I

    .line 63
    .line 64
    const/16 v0, 0x32

    .line 65
    .line 66
    iput v0, p0, Lcom/byazt/bwm/i;->a:I

    .line 67
    .line 68
    return-void
.end method

.method public static synthetic c(Lcom/byazt/bwm/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/bwm/i;->yv:Z

    return p0
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/bwm/i;->i:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bwm/i;->yv:Z

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/bwm/i;->gu:I

    return-void
.end method

.method public c(J)V
    .locals 2

    .line 5
    iput-wide p1, p0, Lcom/byazt/bwm/i;->sp:J

    .line 6
    invoke-virtual {p0}, Lcom/byazt/bwm/i;->da()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    const-string v1, "big_max_mum"

    const/16 v2, 0x32

    .line 8
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/bwm/i;->uj(I)V

    :cond_1
    const-string v1, "core_count"

    const/4 v3, 0x0

    .line 10
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Lcom/byazt/bwm/i;->ve(I)V

    :cond_2
    const-string v1, "big_keep_alive"

    .line 12
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_3

    int-to-long v4, v1

    .line 13
    invoke-virtual {v0, v4, v5}, Lcom/byazt/bwm/i;->c(J)V

    :cond_3
    const-string v1, "big_priority"

    .line 14
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/bwm/i;->n(Z)V

    const-string v1, "catch_oom"

    const/4 v4, 0x1

    .line 16
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/bwm/i;->ve(Z)V

    const-string v1, "forbid_autosize_oom"

    .line 18
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/bwm/i;->tt(Z)V

    const-string v1, "enable_proxy"

    .line 20
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/byazt/bwm/i;->a(Z)V

    const-string v1, "autosize"

    .line 22
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 23
    sput-boolean v1, Lcom/byazt/bwm/i;->uj:Z

    const-string v1, "report_task"

    .line 24
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/bwm/i;->i(Z)V

    const-string v1, "wait_in_big"

    .line 26
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/byazt/bwm/i;->tt(J)V

    const-string v1, "wait_in_little"

    const/16 v2, 0x7d0

    .line 28
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/byazt/bwm/i;->ve(J)V

    const-string v1, "run_cost"

    const/16 v2, 0x1770

    .line 30
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long v1, p1

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/byazt/bwm/i;->uj(J)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/bwm/i;->sl:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/byazt/bwm/i;->sl:Z

    return v0
.end method

.method public da()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/bwm/i;->gt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/bwm/i;->gt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/byazt/msj/tt;

    .line 11
    .line 12
    iget v2, p0, Lcom/byazt/bwm/i;->n:I

    .line 13
    .line 14
    iget v3, p0, Lcom/byazt/bwm/i;->a:I

    .line 15
    .line 16
    iget-wide v4, p0, Lcom/byazt/bwm/i;->sp:J

    .line 17
    .line 18
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    new-instance v7, Lcom/byazt/bwm/i$3;

    .line 21
    .line 22
    const-string v1, "b"

    .line 23
    .line 24
    const/16 v8, 0xa

    .line 25
    .line 26
    invoke-direct {v7, p0, v8, v1}, Lcom/byazt/bwm/i$3;-><init>(Lcom/byazt/bwm/i;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v1, v0

    .line 30
    invoke-direct/range {v1 .. v7}, Lcom/byazt/msj/tt;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/byazt/bwm/i;->gt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/byazt/bwm/i;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    :try_start_1
    iget-object v0, p0, Lcom/byazt/bwm/i;->gt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :catchall_0
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 46
    goto :goto_0

    .line 47
    :catchall_1
    move-exception v0

    .line 48
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/bwm/i;->gt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 51
    .line 52
    return-object v0
.end method

.method public gt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bwm/i;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/bwm/i;->my:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/byazt/bwm/i;->my:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/byazt/msj/uj;

    iget v2, p0, Lcom/byazt/bwm/i;->n:I

    iget v3, p0, Lcom/byazt/bwm/i;->a:I

    iget-wide v4, p0, Lcom/byazt/bwm/i;->x:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/byazt/bwm/i$2;

    const-string v1, "a"

    const/16 v9, 0xa

    invoke-direct {v8, p0, v9, v1}, Lcom/byazt/bwm/i$2;-><init>(Lcom/byazt/bwm/i;ILjava/lang/String;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/byazt/msj/uj;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/byazt/bwm/i;->my:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/bwm/i;->my:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public i(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/byazt/bwm/i;->m:Z

    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bwm/i;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Lcom/byazt/bwm/i;->uj:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public my()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/bwm/i;->z:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public n(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/bwm/i;->da:Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bwm/i;->ve:Z

    return v0
.end method

.method public nu()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/bwm/i;->u:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public rh()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/bwm/i;->yp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public sl()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/bwm/i;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public sp()Lcom/byazt/mc/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bwm/i;->rh:Lcom/byazt/mc/n;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/byazt/mc/n;

    invoke-direct {v0}, Lcom/byazt/mc/n;-><init>()V

    iput-object v0, p0, Lcom/byazt/bwm/i;->rh:Lcom/byazt/mc/n;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/bwm/i;->rh:Lcom/byazt/mc/n;

    return-object v0
.end method

.method public sp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/byazt/bwm/i;->x(Z)V

    .line 5
    sput-boolean v0, Lcom/byazt/bwm/i;->uj:Z

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/bwm/i;->p:Z

    return-void
.end method

.method public t()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/bwm/i;->rl:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/bwm/i;->rl:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/bwm/i$4;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/byazt/bwm/i$4;-><init>(Lcom/byazt/bwm/i;)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/byazt/jtc/c;->c:Ljava/util/concurrent/RejectedExecutionHandler;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/bwm/i;->rl:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    .line 25
    :cond_0
    monitor-exit p0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v0

    .line 30
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/bwm/i;->rl:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    .line 32
    return-object v0
.end method

.method public tt(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/bwm/i;->u:J

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/bwm/i;->qy:Z

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/bwm/i;->qy:Z

    return v0
.end method

.method public tt(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/bwm/i;->gu:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public u()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bwm/i;->da:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/byazt/bwm/i;->da()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/bwm/i;->i()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public uj()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/bwm/i;->t:J

    return-wide v0
.end method

.method public uj(I)V
    .locals 1

    .line 3
    iput p1, p0, Lcom/byazt/bwm/i;->a:I

    .line 4
    invoke-virtual {p0}, Lcom/byazt/bwm/i;->i()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 5
    invoke-virtual {p0}, Lcom/byazt/bwm/i;->da()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setMaximumPoolSize(I)V

    return-void
.end method

.method public uj(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/byazt/bwm/i;->z:J

    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/bwm/i;->yv:Z

    return-void
.end method

.method public ve()Lcom/byazt/mc/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/bwm/i;->zm:Lcom/byazt/mc/tt;

    return-object v0
.end method

.method public ve(I)V
    .locals 1

    .line 3
    iput p1, p0, Lcom/byazt/bwm/i;->n:I

    .line 4
    invoke-virtual {p0}, Lcom/byazt/bwm/i;->i()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    .line 5
    invoke-virtual {p0}, Lcom/byazt/bwm/i;->da()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/byazt/bwm/i;->yp:J

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/bwm/i;->ve:Z

    return-void
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/bwm/i;->n:I

    return v0
.end method

.method public x(Z)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/bwm/i;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/bwm/i;->gt:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/byazt/bwm/i;->gt:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 5
    :cond_1
    iput-boolean p1, p0, Lcom/byazt/bwm/i;->d:Z

    return-void
.end method

.method public yp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bwm/i;->p:Z

    .line 2
    .line 3
    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/bwm/i;->md:Z

    .line 2
    .line 3
    return v0
.end method
