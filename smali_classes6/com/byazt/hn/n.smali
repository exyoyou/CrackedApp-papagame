.class public final Lcom/byazt/hn/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x19,
        0x2e
    }
.end annotation


# static fields
.field public static c:Landroid/os/HandlerThread;

.field public static tt:Landroid/os/Handler;


# instance fields
.field public a:Lcom/byazt/hn/a;

.field public volatile da:I

.field public i:J

.field public n:Lcom/byazt/hn/a;

.field public volatile sl:I

.field public final sp:Ljava/lang/Object;

.field public final t:Ljava/lang/Runnable;

.field public uj:Lcom/byazt/hn/a;

.field public final ve:Lcom/byazt/hn/uj;

.field public volatile x:Z


# direct methods
.method public constructor <init>(Lcom/byazt/hn/tt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/hn/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/byazt/hn/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/hn/n;->uj:Lcom/byazt/hn/a;

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/hn/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/byazt/hn/a;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/hn/n;->n:Lcom/byazt/hn/a;

    .line 17
    .line 18
    new-instance v0, Lcom/byazt/hn/a;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/byazt/hn/a;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/hn/n;->a:Lcom/byazt/hn/a;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/hn/n;->sp:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v0, Lcom/byazt/hn/n$1;

    .line 33
    .line 34
    invoke-direct {v0, p0}, Lcom/byazt/hn/n$1;-><init>(Lcom/byazt/hn/n;)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/byazt/hn/n;->t:Ljava/lang/Runnable;

    .line 38
    .line 39
    new-instance v0, Lcom/byazt/hn/uj;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lcom/byazt/hn/uj;-><init>(Lcom/byazt/hn/tt;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/byazt/hn/n;->ve:Lcom/byazt/hn/uj;

    .line 45
    .line 46
    return-void
.end method

.method public static synthetic a(Lcom/byazt/hn/n;)Lcom/byazt/hn/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hn/n;->uj:Lcom/byazt/hn/a;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/hn/n;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/hn/n;->i:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/hn/n;Lcom/byazt/hn/a;)Lcom/byazt/hn/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/hn/n;->n:Lcom/byazt/hn/a;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/hn/n;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/byazt/hn/n;->x:Z

    return p0
.end method

.method public static synthetic n(Lcom/byazt/hn/n;)Lcom/byazt/hn/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hn/n;->ve:Lcom/byazt/hn/uj;

    return-object p0
.end method

.method public static synthetic sp()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/hn/n;->x()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic sp(Lcom/byazt/hn/n;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/hn/n;->sp:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/hn/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/hn/n;->i:J

    return-wide v0
.end method

.method public static synthetic tt(Lcom/byazt/hn/n;Lcom/byazt/hn/a;)Lcom/byazt/hn/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/hn/n;->uj:Lcom/byazt/hn/a;

    return-object p1
.end method

.method public static synthetic uj(Lcom/byazt/hn/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/hn/n;->sl:I

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/hn/n;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/hn/n;->da:I

    return p0
.end method

.method private static declared-synchronized x()Landroid/os/Handler;
    .locals 4

    const-class v0, Lcom/byazt/hn/n;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/byazt/hn/n;->c:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ugen-particle-physics"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    sput-object v1, Lcom/byazt/hn/n;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/byazt/hn/n;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/byazt/hn/n;->tt:Landroid/os/Handler;

    .line 6
    :cond_0
    sget-object v1, Lcom/byazt/hn/n;->tt:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic x(Lcom/byazt/hn/n;)Lcom/byazt/hn/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/hn/n;->n:Lcom/byazt/hn/a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/byazt/hn/n;->n()V

    .line 3
    iget-object v0, p0, Lcom/byazt/hn/n;->sp:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/byazt/hn/a;

    invoke-direct {v1}, Lcom/byazt/hn/a;-><init>()V

    iput-object v1, p0, Lcom/byazt/hn/n;->uj:Lcom/byazt/hn/a;

    .line 5
    new-instance v1, Lcom/byazt/hn/a;

    invoke-direct {v1}, Lcom/byazt/hn/a;-><init>()V

    iput-object v1, p0, Lcom/byazt/hn/n;->n:Lcom/byazt/hn/a;

    .line 6
    new-instance v1, Lcom/byazt/hn/a;

    invoke-direct {v1}, Lcom/byazt/hn/a;-><init>()V

    iput-object v1, p0, Lcom/byazt/hn/n;->a:Lcom/byazt/hn/a;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Lcom/byazt/hn/a;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/byazt/hn/n;->sp:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/byazt/hn/n;->a:Lcom/byazt/hn/a;

    .line 8
    iget-object v2, p0, Lcom/byazt/hn/n;->n:Lcom/byazt/hn/a;

    iput-object v2, p0, Lcom/byazt/hn/n;->a:Lcom/byazt/hn/a;

    .line 9
    iput-object v1, p0, Lcom/byazt/hn/n;->n:Lcom/byazt/hn/a;

    .line 10
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(II)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/hn/n;->da:I

    .line 5
    iput p2, p0, Lcom/byazt/hn/n;->sl:I

    return-void
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/hn/n;->x:Z

    .line 3
    invoke-static {}, Lcom/byazt/hn/n;->x()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hn/n;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt()Lcom/byazt/hn/tt;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/hn/n;->ve:Lcom/byazt/hn/uj;

    invoke-virtual {v0}, Lcom/byazt/hn/uj;->tt()Lcom/byazt/hn/tt;

    move-result-object v0

    return-object v0
.end method

.method public uj()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/byazt/hn/n;->x:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/hn/n;->x:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/byazt/hn/n;->i:J

    .line 5
    invoke-static {}, Lcom/byazt/hn/n;->x()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hn/n;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ve()[Lcom/byazt/hn/tt$uj;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/hn/n;->ve:Lcom/byazt/hn/uj;

    invoke-virtual {v0}, Lcom/byazt/hn/uj;->c()[Lcom/byazt/hn/tt$uj;

    move-result-object v0

    return-object v0
.end method
