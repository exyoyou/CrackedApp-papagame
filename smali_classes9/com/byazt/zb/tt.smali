.class public Lcom/byazt/zb/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb8,
        0xd
    }
.end annotation


# instance fields
.field public c:Ljava/util/concurrent/ScheduledExecutorService;

.field public tt:Lcom/byazt/zb/x;

.field public uj:I

.field public ve:J


# direct methods
.method public constructor <init>(Lcom/byazt/zb/x;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/zb/tt;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/byazt/zb/tt;->ve:J

    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/zb/tt;->tt:Lcom/byazt/zb/x;

    .line 12
    .line 13
    iput p2, p0, Lcom/byazt/zb/tt;->uj:I

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic c(Lcom/byazt/zb/tt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/zb/tt;->ve:J

    return-wide v0
.end method

.method public static synthetic tt(Lcom/byazt/zb/tt;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/zb/tt;->uj:I

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/zb/tt;)Lcom/byazt/zb/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zb/tt;->tt:Lcom/byazt/zb/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/zb/tt;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/zb/tt;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/zb/tt;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 9

    .line 3
    new-instance v0, Lcom/byazt/bwm/x;

    const-string v1, "/CrashMonitor"

    invoke-direct {v0, v1}, Lcom/byazt/bwm/x;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/byazt/bwm/tt;->c(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/byazt/zb/tt;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v3, Lcom/byazt/zb/tt$1;

    invoke-direct {v3, p0}, Lcom/byazt/zb/tt$1;-><init>(Lcom/byazt/zb/tt;)V

    const-wide/16 v4, 0x0

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/zb/tt;->ve:J

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/zb/tt;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
