.class public Lcom/byazt/atv/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/xl/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/atv/a$c;
    }
.end annotation


# instance fields
.field public c:Landroid/content/Context;

.field public n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public tt:Lcom/byazt/atv/n;

.field public uj:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public ve:Lcom/byazt/xl/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/atv/n;Lcom/byazt/xl/x;Lcom/byazt/xl/u;Lcom/byazt/qdk/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/atv/a;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/atv/a;->tt:Lcom/byazt/atv/n;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/byazt/atv/a;->ve:Lcom/byazt/xl/u;

    .line 9
    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/byazt/atv/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/byazt/atv/a;->tt:Lcom/byazt/atv/n;

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Lcom/byazt/atv/n;->c(Lcom/byazt/xl/x;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/byazt/atv/a;->tt:Lcom/byazt/atv/n;

    .line 24
    .line 25
    invoke-virtual {p1, p5}, Lcom/byazt/atv/n;->c(Lcom/byazt/qdk/tt;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic c(Lcom/byazt/atv/a;)Lcom/byazt/xl/u;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/atv/a;->ve:Lcom/byazt/xl/u;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/atv/a;Lcom/byazt/xl/da$c;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/atv/a;->c(Lcom/byazt/xl/da$c;I)V

    return-void
.end method

.method private c(Lcom/byazt/xl/da$c;I)V
    .locals 2

    .line 9
    invoke-interface {p1}, Lcom/byazt/xl/da$c;->ve()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/atv/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/byazt/atv/a;->tt()V

    .line 12
    new-instance v0, Lcom/byazt/sz/rl;

    invoke-direct {v0}, Lcom/byazt/sz/rl;-><init>()V

    .line 13
    invoke-virtual {v0, p2}, Lcom/byazt/sz/rl;->c(I)V

    .line 14
    iget-object v1, p0, Lcom/byazt/atv/a;->ve:Lcom/byazt/xl/u;

    check-cast v1, Lcom/byazt/atv/tt;

    invoke-virtual {v1}, Lcom/byazt/atv/tt;->or()Lcom/byazt/sz/qy;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/byazt/sz/qy;->c(Lcom/byazt/sz/rl;)V

    .line 15
    invoke-interface {p1, p0}, Lcom/byazt/xl/da$c;->tt(Lcom/byazt/xl/da;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 16
    invoke-interface {p1, p0}, Lcom/byazt/xl/da$c;->c(Lcom/byazt/xl/da;)V

    goto :goto_0

    .line 17
    :cond_2
    invoke-interface {p1}, Lcom/byazt/xl/da$c;->ve()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 18
    :cond_3
    invoke-interface {p1}, Lcom/byazt/xl/da$c;->tt()Lcom/byazt/xl/z;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 19
    :cond_4
    invoke-interface {p1, v1}, Lcom/byazt/xl/da$c;->c(Z)V

    .line 20
    invoke-interface {v0, p2}, Lcom/byazt/xl/z;->a_(I)V

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/byazt/atv/a;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/atv/a;)Lcom/byazt/atv/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/atv/a;->tt:Lcom/byazt/atv/n;

    return-object p0
.end method

.method private tt()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/atv/a;->uj:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/atv/a;->uj:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/byazt/atv/a;->uj:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/atv/a;->tt:Lcom/byazt/atv/n;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/byazt/atv/n;->t()V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/xl/da$c;)Z
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/byazt/atv/a;->ve:Lcom/byazt/xl/u;

    invoke-virtual {v0}, Lcom/byazt/xl/u;->x()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    const/16 v0, 0x89

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/byazt/atv/a;->c(Lcom/byazt/xl/da$c;I)V

    goto :goto_0

    :cond_0
    const-string v2, "thread_service"

    .line 5
    invoke-static {v2}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/dna/qp;

    invoke-interface {v2}, Lcom/byazt/dna/qp;->getScheduledThreadPool()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/byazt/atv/a$c;

    invoke-direct {v3, p0, v1, p1}, Lcom/byazt/atv/a$c;-><init>(Lcom/byazt/atv/a;ILcom/byazt/xl/da$c;)V

    int-to-long v4, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/atv/a;->uj:Ljava/util/concurrent/ScheduledFuture;

    .line 6
    iget-object v0, p0, Lcom/byazt/atv/a;->tt:Lcom/byazt/atv/n;

    new-instance v2, Lcom/byazt/atv/a$1;

    invoke-direct {v2, p0, p1}, Lcom/byazt/atv/a$1;-><init>(Lcom/byazt/atv/a;Lcom/byazt/xl/da$c;)V

    invoke-virtual {v0, v2}, Lcom/byazt/atv/n;->c(Lcom/byazt/xl/sp;)V

    :goto_0
    return v1
.end method
