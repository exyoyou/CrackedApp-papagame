.class public Lcom/byazt/hs/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x57c,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/hs/tt$c;
    }
.end annotation


# static fields
.field public static volatile c:Z = false

.field public static sp:J = -0x1L

.field public static final tt:Ljava/lang/String; = "tt"

.field public static volatile x:Lcom/byazt/hs/tt;


# instance fields
.field public a:J

.field public final n:Lcom/byazt/hs/tt$c;

.field public final uj:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final ve:Lcom/byazt/hs/sl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/hs/sl;->c()Lcom/byazt/hs/sl;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/byazt/hs/tt;->ve:Lcom/byazt/hs/sl;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/byazt/hs/tt;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/hs/tt$c;

    .line 18
    .line 19
    invoke-static {}, Lcom/byazt/u/n;->c()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, p0, v1}, Lcom/byazt/hs/tt$c;-><init>(Lcom/byazt/hs/tt;Landroid/os/Looper;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/hs/tt;->n:Lcom/byazt/hs/tt$c;

    .line 27
    .line 28
    return-void
.end method

.method public static c()Lcom/byazt/hs/tt;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/hs/tt;->x:Lcom/byazt/hs/tt;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/hs/tt;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/hs/tt;->x:Lcom/byazt/hs/tt;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/hs/tt;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/hs/tt;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/hs/tt;->x:Lcom/byazt/hs/tt;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/hs/tt;->x:Lcom/byazt/hs/tt;

    .line 25
    .line 26
    return-object v0
.end method

.method public static n()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/byazt/w/a;->tt(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/byazt/hs/tt;->c:Z

    .line 10
    .line 11
    return-void
.end method

.method public static uj()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    sub-long/2addr v0, v2

    .line 10
    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Lcom/byazt/hs/tt;->n()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/byazt/hs/tt;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/byazt/hs/tt;->uj()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :goto_0
    sget-wide v2, Lcom/byazt/hs/tt;->sp:J

    .line 18
    .line 19
    sub-long v4, v0, v2

    .line 20
    .line 21
    const-wide/16 v6, 0x0

    .line 22
    .line 23
    cmp-long v8, v2, v6

    .line 24
    .line 25
    if-ltz v8, :cond_1

    .line 26
    .line 27
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    iget-object v6, p0, Lcom/byazt/hs/tt;->ve:Lcom/byazt/hs/sl;

    .line 33
    .line 34
    iget-wide v7, p0, Lcom/byazt/hs/tt;->a:J

    .line 35
    .line 36
    sub-long v7, v2, v7

    .line 37
    .line 38
    invoke-virtual {v6, v4, v5, v7, v8}, Lcom/byazt/hs/sl;->c(JJ)V

    .line 39
    .line 40
    .line 41
    iput-wide v2, p0, Lcom/byazt/hs/tt;->a:J

    .line 42
    .line 43
    monitor-exit p0

    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    throw v0

    .line 48
    :cond_1
    :goto_1
    sput-wide v0, Lcom/byazt/hs/tt;->sp:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    .line 50
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public sp()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/hs/tt;->a()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    sput-wide v0, Lcom/byazt/hs/tt;->sp:J

    .line 7
    .line 8
    return-void
.end method

.method public tt()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/byazt/hs/tt;->tt:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "startSampling: mSamplingCounter = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/hs/tt;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/hs/tt;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/hs/tt;->n:Lcom/byazt/hs/tt$c;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/hs/tt$c;->c()V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iput-wide v0, p0, Lcom/byazt/hs/tt;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    :catchall_0
    :cond_0
    return-void
.end method

.method public ve()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/byazt/hs/tt;->tt:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "stopSampling: mSamplingCounter = "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/hs/tt;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/hs/tt;->uj:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/hs/tt;->n:Lcom/byazt/hs/tt$c;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/hs/tt$c;->tt()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/byazt/hs/tt;->sp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :catchall_0
    :cond_0
    return-void
.end method
