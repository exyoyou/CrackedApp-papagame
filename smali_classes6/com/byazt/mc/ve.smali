.class public Lcom/byazt/mc/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3e9,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/byazt/mc/ve;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static tt:Z


# instance fields
.field public a:Z

.field public da:I

.field public i:I

.field public n:Z

.field public final sp:J

.field public uj:Lcom/byazt/mc/a;

.field public final ve:Ljava/lang/Runnable;

.field public x:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/mc/ve;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    sput-boolean v1, Lcom/byazt/mc/ve;->tt:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/mc/ve;->n:Z

    .line 3
    iput-boolean v0, p0, Lcom/byazt/mc/ve;->a:Z

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/mc/ve;->sp:J

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/mc/ve;->i:I

    .line 6
    iput v0, p0, Lcom/byazt/mc/ve;->da:I

    .line 7
    iput-object p1, p0, Lcom/byazt/mc/ve;->ve:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Lcom/byazt/mc/a;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/byazt/mc/ve;->n:Z

    .line 10
    iput-boolean v0, p0, Lcom/byazt/mc/ve;->a:Z

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/mc/ve;->sp:J

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/byazt/mc/ve;->i:I

    .line 13
    iput v0, p0, Lcom/byazt/mc/ve;->da:I

    .line 14
    iput-object p1, p0, Lcom/byazt/mc/ve;->ve:Ljava/lang/Runnable;

    .line 15
    iput-object p2, p0, Lcom/byazt/mc/ve;->uj:Lcom/byazt/mc/a;

    return-void
.end method

.method private c(JJLjava/lang/String;IIILcom/byazt/dna/z;)V
    .locals 4

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "create_time"

    .line 7
    iget-wide v2, p0, Lcom/byazt/mc/ve;->sp:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "is_wrap"

    .line 8
    iget-object v2, p0, Lcom/byazt/mc/ve;->ve:Ljava/lang/Runnable;

    instance-of v2, v2, Lcom/byazt/mc/ve;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "is_oom"

    .line 9
    sget-boolean v2, Lcom/byazt/mc/ve;->tt:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "pool_wait_time"

    .line 10
    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "priority"

    .line 11
    invoke-virtual {v0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "wait_in_queue"

    .line 12
    iget-wide v1, p0, Lcom/byazt/mc/ve;->x:J

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "pool_type"

    .line 13
    iget p2, p0, Lcom/byazt/mc/ve;->i:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "origin_pool_type"

    .line 14
    iget p2, p0, Lcom/byazt/mc/ve;->da:I

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "run_cost"

    .line 15
    invoke-virtual {v0, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "task_name"

    .line 16
    invoke-virtual {v0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "thread_name"

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    sget-object p1, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    const-string p2, "little_active_count"

    .line 19
    invoke-virtual {v0, p2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "big_active_count"

    .line 20
    invoke-virtual {v0, p2, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "is_crash"

    .line 21
    invoke-virtual {p1}, Lcom/byazt/bwm/i;->yp()Z

    move-result p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "auto_size"

    .line 22
    sget-boolean p3, Lcom/byazt/bwm/i;->uj:Z

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "pri_task_in_little"

    .line 23
    sget-object p3, Lcom/byazt/mc/ve;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "core_count"

    .line 24
    invoke-virtual {p1}, Lcom/byazt/bwm/i;->x()I

    move-result p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "max_pool_size"

    .line 25
    invoke-virtual {p1}, Lcom/byazt/bwm/i;->sl()I

    move-result p3

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "use_little_pool"

    .line 26
    invoke-virtual {p1}, Lcom/byazt/bwm/i;->m()Z

    move-result p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "task_run_cost"

    .line 27
    invoke-interface {p9, p1, v0}, Lcom/byazt/dna/z;->onStatsEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private c(J)Z
    .locals 5

    .line 3
    iget v0, p0, Lcom/byazt/mc/ve;->da:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    invoke-virtual {v0}, Lcom/byazt/bwm/i;->nu()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-lez v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 5
    :cond_1
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    invoke-virtual {v0}, Lcom/byazt/bwm/i;->rh()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-lez v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private ve(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mc/ve;->uj:Lcom/byazt/mc/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/byazt/mc/a;->c(Ljava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/mc/ve;)I
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/byazt/mc/ve;->ve:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 29
    iget-object v1, p1, Lcom/byazt/mc/ve;->ve:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/byazt/mc/ve;->ve:Ljava/lang/Runnable;

    instance-of v1, v0, Ljava/lang/Comparable;

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/byazt/mc/ve;->ve:Ljava/lang/Runnable;

    instance-of v1, p1, Ljava/lang/Comparable;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c()Ljava/lang/Runnable;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/mc/ve;->ve:Ljava/lang/Runnable;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    .line 33
    iget v0, p0, Lcom/byazt/mc/ve;->i:I

    if-nez v0, :cond_0

    .line 34
    iput p1, p0, Lcom/byazt/mc/ve;->da:I

    goto :goto_0

    .line 35
    :cond_0
    iput v0, p0, Lcom/byazt/mc/ve;->da:I

    .line 36
    :goto_0
    iput p1, p0, Lcom/byazt/mc/ve;->i:I

    return-void
.end method

.method public c(Lcom/byazt/mc/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/mc/ve;->uj:Lcom/byazt/mc/a;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/byazt/mc/ve;->n:Z

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/mc/ve;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/mc/ve;->c(Lcom/byazt/mc/ve;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public run()V
    .locals 14

    .line 1
    sget-object v0, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/bwm/i;->gt()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/bwm/i;->i()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v0}, Lcom/byazt/bwm/i;->da()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    iget-wide v7, p0, Lcom/byazt/mc/ve;->x:J

    .line 31
    .line 32
    sub-long v7, v5, v7

    .line 33
    .line 34
    iget-wide v10, p0, Lcom/byazt/mc/ve;->sp:J

    .line 35
    .line 36
    sub-long/2addr v7, v10

    .line 37
    move-wide v12, v7

    .line 38
    move v7, v3

    .line 39
    move v8, v4

    .line 40
    move-wide v3, v5

    .line 41
    move-wide v5, v12

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-wide/16 v5, 0x0

    .line 44
    .line 45
    move-wide v3, v5

    .line 46
    const/4 v7, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    :goto_0
    iget-object v9, p0, Lcom/byazt/mc/ve;->ve:Ljava/lang/Runnable;

    .line 49
    .line 50
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v10

    .line 57
    sub-long v3, v10, v3

    .line 58
    .line 59
    iget-boolean v9, p0, Lcom/byazt/mc/ve;->n:Z

    .line 60
    .line 61
    if-nez v9, :cond_1

    .line 62
    .line 63
    iget v9, p0, Lcom/byazt/mc/ve;->i:I

    .line 64
    .line 65
    const/4 v10, 0x2

    .line 66
    if-ne v9, v10, :cond_1

    .line 67
    .line 68
    sget-object v9, Lcom/byazt/mc/ve;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    .line 70
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-direct {p0, v2}, Lcom/byazt/mc/ve;->ve(Z)V

    .line 74
    .line 75
    .line 76
    if-nez v1, :cond_2

    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    invoke-direct {p0, v5, v6}, Lcom/byazt/mc/ve;->c(J)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/byazt/bwm/i;->my()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    cmp-long v2, v3, v0

    .line 90
    .line 91
    if-lez v2, :cond_5

    .line 92
    .line 93
    :cond_3
    const-string v0, "event"

    .line 94
    .line 95
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    move-object v9, v0

    .line 100
    check-cast v9, Lcom/byazt/dna/z;

    .line 101
    .line 102
    if-nez v9, :cond_4

    .line 103
    .line 104
    const-string v0, "BizRunnable"

    .line 105
    .line 106
    const-string v1, "IEvent service is null"

    .line 107
    .line 108
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_4
    const-string v10, ""

    .line 113
    .line 114
    const/4 v11, 0x0

    .line 115
    move-object v0, p0

    .line 116
    move-wide v1, v5

    .line 117
    move-object v5, v10

    .line 118
    move v6, v11

    .line 119
    invoke-direct/range {v0 .. v9}, Lcom/byazt/mc/ve;->c(JJLjava/lang/String;IIILcom/byazt/dna/z;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    return-void
.end method

.method public tt()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/mc/ve;->sp:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/byazt/mc/ve;->x:J

    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/mc/ve;->a:Z

    return-void
.end method

.method public uj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/mc/ve;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/byazt/mc/ve;->a:Z

    return v0
.end method
