.class public Lcom/byazt/qya/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b1,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/qya/ve$tt;,
        Lcom/byazt/qya/ve$c;
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/byazt/qya/ve$tt;",
            ">;"
        }
    .end annotation
.end field

.field public tt:I

.field public final uj:Lcom/byazt/fn/ve;

.field public final ve:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/byazt/qya/ve;->c:Ljava/util/Queue;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byazt/qya/ve;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance v0, Lcom/byazt/qya/ve$1;

    invoke-direct {v0, p0}, Lcom/byazt/qya/ve$1;-><init>(Lcom/byazt/qya/ve;)V

    iput-object v0, p0, Lcom/byazt/qya/ve;->uj:Lcom/byazt/fn/ve;

    const-string v1, "device_info_new"

    .line 6
    invoke-static {v1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/dna/u;

    invoke-interface {v1, v0}, Lcom/byazt/dna/u;->registerNetworkMonitor(Lcom/byazt/fn/ve;)V

    .line 7
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/byazt/qya/ve;->tt:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/qya/ve$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/qya/ve;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qya/ve;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/qya/ve;->tt:I

    return p0
.end method

.method public static synthetic c(Lcom/byazt/qya/ve;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/qya/ve;->tt:I

    return p1
.end method

.method public static c()Lcom/byazt/qya/ve;
    .locals 1

    .line 4
    invoke-static {}, Lcom/byazt/qya/ve$c;->c()Lcom/byazt/qya/ve;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/byazt/qya/ve$tt;Ljava/lang/Exception;)V
    .locals 0

    const-string p1, "NetWorkRetryManager"

    .line 12
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/qya/ve;Lcom/byazt/qya/ve$tt;Ljava/lang/Exception;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/byazt/qya/ve;->c(Lcom/byazt/qya/ve$tt;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/qya/ve;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qya/ve;->c:Ljava/util/Queue;

    return-object p0
.end method

.method private tt()V
    .locals 1

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/byazt/qya/ve;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/byazt/qya/ve;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/qya/ve$tt;

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lcom/byazt/qya/ve;->tt(Lcom/byazt/qya/ve$tt;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private tt(Lcom/byazt/qya/ve$tt;)V
    .locals 2

    .line 5
    new-instance v0, Lcom/byazt/qya/ve$2;

    const-string v1, "pl download retry"

    invoke-direct {v0, p0, v1, p1}, Lcom/byazt/qya/ve$2;-><init>(Lcom/byazt/qya/ve;Ljava/lang/String;Lcom/byazt/qya/ve$tt;)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/qya/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/qya/ve;->tt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/fn/ve;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/byazt/qya/ve;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "device_info_new"

    .line 14
    invoke-static {v0}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/dna/u;

    invoke-interface {v0, p1}, Lcom/byazt/dna/u;->removeNetworkMonitor(Lcom/byazt/fn/ve;)V

    .line 15
    iget-object p1, p0, Lcom/byazt/qya/ve;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public c(Lcom/byazt/qya/ve$tt;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/byazt/qya/ve;->uj:Lcom/byazt/fn/ve;

    invoke-virtual {p0, p1}, Lcom/byazt/qya/ve;->c(Lcom/byazt/fn/ve;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/qya/ve;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "NetWorkRetryManager"

    const-string v0, "Manager is destroyed, task rejected"

    .line 8
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/byazt/qya/ve;->tt:I

    .line 10
    iget-object v0, p0, Lcom/byazt/qya/ve;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/byazt/qya/ve;->c:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    return-void
.end method
