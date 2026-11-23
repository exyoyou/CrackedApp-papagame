.class public Lcom/byazt/mv/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/vb/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x293,
        0xd
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/sl/c;

.field public static uj:J

.field public static final ve:J


# instance fields
.field public volatile a:Landroid/os/Handler;

.field public volatile n:Lcom/byazt/lph/ve;

.field public sp:Lcom/byazt/vb/n;

.field public volatile tt:I

.field public final x:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/byazt/vb/tt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/sl/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/sl/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    sput-wide v0, Lcom/byazt/mv/tt;->ve:J

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    sput-wide v0, Lcom/byazt/mv/tt;->uj:J

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/byazt/vb/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/byazt/mv/tt;->tt:I

    .line 6
    .line 7
    new-instance v0, Lcom/byazt/mv/tt$1;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/byazt/mv/tt$1;-><init>(Lcom/byazt/mv/tt;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/byazt/mv/tt;->x:Ljava/util/Comparator;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/byazt/mv/tt;->sp:Lcom/byazt/vb/n;

    .line 15
    .line 16
    return-void
.end method

.method public static synthetic c(Lcom/byazt/mv/tt;Lcom/byazt/vb/tt;Lcom/byazt/vb/tt;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/mv/tt;->c(Lcom/byazt/vb/tt;Lcom/byazt/vb/tt;)I

    move-result p0

    return p0
.end method

.method private c(Lcom/byazt/vb/tt;Lcom/byazt/vb/tt;)I
    .locals 12

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_2
    invoke-interface {p1}, Lcom/byazt/vb/tt;->n()B

    move-result v1

    invoke-interface {p2}, Lcom/byazt/vb/tt;->n()B

    move-result v2

    if-ne v1, v2, :cond_9

    .line 5
    invoke-interface {p1}, Lcom/byazt/vb/tt;->c()Lcom/byazt/fo/tt;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    .line 6
    invoke-interface {p1}, Lcom/byazt/vb/tt;->c()Lcom/byazt/fo/tt;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/fo/tt;->c()J

    move-result-wide v4

    .line 7
    invoke-interface {p1}, Lcom/byazt/vb/tt;->c()Lcom/byazt/fo/tt;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/fo/tt;->tt()J

    move-result-wide v6

    goto :goto_0

    :cond_3
    move-wide v4, v2

    move-wide v6, v4

    .line 8
    :goto_0
    invoke-interface {p2}, Lcom/byazt/vb/tt;->c()Lcom/byazt/fo/tt;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p2}, Lcom/byazt/vb/tt;->c()Lcom/byazt/fo/tt;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/fo/tt;->c()J

    move-result-wide v8

    .line 10
    invoke-interface {p2}, Lcom/byazt/vb/tt;->c()Lcom/byazt/fo/tt;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/fo/tt;->tt()J

    move-result-wide p1

    goto :goto_1

    :cond_4
    move-wide p1, v2

    move-wide v8, p1

    :goto_1
    cmp-long v1, v4, v2

    if-eqz v1, :cond_8

    cmp-long v1, v8, v2

    if-eqz v1, :cond_8

    sub-long/2addr v4, v8

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v1, v8, v10

    if-lez v1, :cond_5

    return v0

    :cond_5
    cmp-long v1, v4, v2

    if-nez v1, :cond_7

    cmp-long v1, v6, v2

    if-eqz v1, :cond_6

    cmp-long v1, p1, v2

    if-eqz v1, :cond_6

    sub-long/2addr v6, p1

    long-to-int p1, v6

    return p1

    :cond_6
    return v0

    :cond_7
    long-to-int p1, v4

    return p1

    :cond_8
    return v0

    .line 12
    :cond_9
    invoke-interface {p1}, Lcom/byazt/vb/tt;->n()B

    move-result p1

    invoke-interface {p2}, Lcom/byazt/vb/tt;->n()B

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public static synthetic c(Lcom/byazt/mv/tt;Lcom/byazt/vb/uj;J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/mv/tt;->c(Lcom/byazt/vb/uj;J)V

    return-void
.end method

.method private c(Lcom/byazt/vb/uj;J)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/byazt/mv/tt;->n:Lcom/byazt/lph/ve;

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    sget-object v1, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    iget-object v2, p0, Lcom/byazt/mv/tt;->sp:Lcom/byazt/vb/n;

    invoke-virtual {v1, p2, p3, v2}, Lcom/byazt/sl/c;->c(JLcom/byazt/vb/n;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/byazt/vb/uj;->c(Lorg/json/JSONObject;)Lcom/byazt/vb/tt;

    move-result-object p1

    const/4 p2, 0x1

    .line 55
    invoke-virtual {v0, p1, p2}, Lcom/byazt/lph/ve;->c(Lcom/byazt/vb/tt;Z)V

    .line 56
    invoke-virtual {v1}, Lcom/byazt/sl/c;->a()V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lcom/byazt/vb/uj;Lcom/byazt/vb/tt;)V
    .locals 8

    if-eqz p1, :cond_7

    .line 36
    :try_start_0
    invoke-interface {p1}, Lcom/byazt/vb/uj;->ve()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_0

    .line 37
    invoke-interface {p2}, Lcom/byazt/vb/tt;->c()Lcom/byazt/fo/tt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p2}, Lcom/byazt/vb/tt;->c()Lcom/byazt/fo/tt;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/fo/tt;->tt()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    move-wide v6, v0

    const-wide/16 v0, 0x1

    cmp-long v2, v6, v0

    if-nez v2, :cond_1

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/byazt/mv/tt;->uj:J

    .line 40
    :cond_1
    sget-object v0, Lcom/byazt/mv/tt;->c:Lcom/byazt/sl/c;

    invoke-virtual {v0}, Lcom/byazt/sl/c;->nu()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/byazt/mv/tt;->sp:Lcom/byazt/vb/n;

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lcom/byazt/ml/tt;->c(Ljava/util/concurrent/atomic/AtomicLong;ILcom/byazt/vb/n;)V

    .line 42
    invoke-static {p2}, Lcom/byazt/ml/c;->c(Lcom/byazt/vb/tt;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    invoke-virtual {v0}, Lcom/byazt/sl/c;->rh()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_1

    .line 44
    :cond_2
    invoke-static {p2}, Lcom/byazt/ml/c;->tt(Lcom/byazt/vb/tt;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 45
    invoke-virtual {v0}, Lcom/byazt/sl/c;->gt()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 46
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    cmp-long p2, v0, v2

    if-nez p2, :cond_7

    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_6

    .line 48
    invoke-interface {p1}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object p2

    if-nez p2, :cond_4

    .line 49
    invoke-interface {p1}, Lcom/byazt/vb/uj;->i()Ljava/util/concurrent/Executor;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    .line 50
    new-instance v0, Lcom/byazt/mv/tt$2;

    const-string v4, "report"

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/byazt/mv/tt$2;-><init>(Lcom/byazt/mv/tt;Ljava/lang/String;Lcom/byazt/vb/uj;J)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    return-void

    .line 51
    :cond_6
    invoke-direct {p0, p1, v6, v7}, Lcom/byazt/mv/tt;->c(Lcom/byazt/vb/uj;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 52
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public c()V
    .locals 5

    .line 57
    iget-object v0, p0, Lcom/byazt/mv/tt;->sp:Lcom/byazt/vb/n;

    if-eqz v0, :cond_5

    .line 58
    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "flushMemoryAndDB"

    .line 59
    invoke-static {v1, v0}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 60
    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/byazt/mv/tt;->n:Lcom/byazt/lph/ve;

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 63
    invoke-interface {v1}, Lcom/byazt/vb/uj;->x()Ljava/util/concurrent/Executor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 64
    invoke-interface {v1}, Lcom/byazt/vb/uj;->i()Ljava/util/concurrent/Executor;

    move-result-object v3

    :cond_1
    if-nez v3, :cond_2

    const-string v1, "discard flush executor is null"

    .line 65
    invoke-static {v1, v0}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void

    .line 66
    :cond_2
    new-instance v0, Lcom/byazt/mv/tt$3;

    const-string v1, "flush"

    invoke-direct {v0, p0, v1, v2}, Lcom/byazt/mv/tt$3;-><init>(Lcom/byazt/mv/tt;Ljava/lang/String;Lcom/byazt/lph/ve;)V

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    if-eqz v2, :cond_4

    const/16 v0, 0x48

    const-string v1, "start_child2"

    .line 67
    invoke-virtual {v2, v0, v1}, Lcom/byazt/lph/ve;->c(ILjava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string v1, "discard flush config is null"

    .line 68
    invoke-static {v1, v0}, Lcom/byazt/ml/ve;->tt(Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/mv/tt;->tt:I

    return-void
.end method

.method public c(Landroid/os/Handler;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/byazt/mv/tt;->a:Landroid/os/Handler;

    return-void
.end method

.method public c(Lcom/byazt/vb/tt;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 26
    iget-object v0, p0, Lcom/byazt/mv/tt;->sp:Lcom/byazt/vb/n;

    if-nez v0, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    invoke-interface {v0}, Lcom/byazt/vb/n;->n()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lcom/byazt/vb/tt;->c(J)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/byazt/mv/tt;->c(Ljava/lang/String;)Z

    .line 30
    iget-object v0, p0, Lcom/byazt/mv/tt;->sp:Lcom/byazt/vb/n;

    invoke-interface {v0}, Lcom/byazt/vb/n;->uj()Lcom/byazt/vb/uj;

    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/byazt/mv/tt;->n:Lcom/byazt/lph/ve;

    if-eqz v1, :cond_2

    .line 32
    invoke-direct {p0, v0, p1}, Lcom/byazt/mv/tt;->c(Lcom/byazt/vb/uj;Lcom/byazt/vb/tt;)V

    .line 33
    invoke-interface {p1}, Lcom/byazt/vb/tt;->n()B

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/byazt/lph/ve;->c(Lcom/byazt/vb/tt;Z)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "error : log config is null"

    .line 35
    iget-object v0, p0, Lcom/byazt/mv/tt;->sp:Lcom/byazt/vb/n;

    invoke-static {p1, v0}, Lcom/byazt/ml/ve;->uj(Ljava/lang/String;Lcom/byazt/vb/n;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/mv/tt;->sp:Lcom/byazt/vb/n;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-interface {v0}, Lcom/byazt/vb/n;->n()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/byazt/mv/tt;->c(Ljava/lang/String;)Z

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/byazt/mv/tt;->c()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/byazt/mv/tt;->n:Lcom/byazt/lph/ve;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/byazt/epi/c;->c(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/byazt/mv/tt;->sp:Lcom/byazt/vb/n;

    if-eqz p1, :cond_1

    .line 19
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object p1, p0, Lcom/byazt/mv/tt;->n:Lcom/byazt/lph/ve;

    if-nez p1, :cond_0

    .line 21
    new-instance p1, Lcom/byazt/lph/ve;

    iget-object v0, p0, Lcom/byazt/mv/tt;->sp:Lcom/byazt/vb/n;

    invoke-direct {p1, v0, p0}, Lcom/byazt/lph/ve;-><init>(Lcom/byazt/vb/n;Lcom/byazt/mv/tt;)V

    iput-object p1, p0, Lcom/byazt/mv/tt;->n:Lcom/byazt/lph/ve;

    .line 22
    iget-object p1, p0, Lcom/byazt/mv/tt;->n:Lcom/byazt/lph/ve;

    invoke-virtual {p1}, Lcom/byazt/lph/n;->a()V

    .line 23
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 24
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/mv/tt;->sp:Lcom/byazt/vb/n;

    invoke-static {p1, v0}, Lcom/byazt/ml/ve;->ve(Ljava/lang/String;Lcom/byazt/vb/n;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public tt()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/mv/tt;->tt:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public uj()Lcom/byazt/lph/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/mv/tt;->n:Lcom/byazt/lph/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/mv/tt;->tt:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method
