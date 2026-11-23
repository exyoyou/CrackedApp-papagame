.class public Lcom/byazt/u/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x43,
        0x5b
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/u/sp$tt;,
        Lcom/byazt/u/sp$c;
    }
.end annotation


# instance fields
.field public c:Ljava/lang/Object;

.field public tt:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/byazt/u/sp$tt;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Landroid/os/Handler;

.field public ve:Lcom/byazt/u/sp$c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/u/sp;->c:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/u/sp;->tt:Ljava/util/Queue;

    .line 17
    .line 18
    new-instance v0, Lcom/byazt/u/sp$c;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Lcom/byazt/u/sp$c;-><init>(Lcom/byazt/u/sp;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/u/sp;->ve:Lcom/byazt/u/sp$c;

    .line 24
    .line 25
    return-void
.end method

.method public static synthetic c(Lcom/byazt/u/sp;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/u/sp;->uj:Landroid/os/Handler;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/u/sp;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/u/sp;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/u/sp;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/u/sp;->tt:Ljava/util/Queue;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/u/sp;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/u/sp;->uj:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/u/sp;->ve:Lcom/byazt/u/sp$c;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/byazt/u/sp;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public c(Ljava/lang/Runnable;J)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/byazt/u/sp;->uj:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/byazt/u/sp;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/byazt/u/sp;->uj:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/byazt/u/sp;->tt:Ljava/util/Queue;

    new-instance v2, Lcom/byazt/u/sp$tt;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/byazt/u/sp$tt;-><init>(Lcom/byazt/u/sp;Ljava/lang/Runnable;J)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/u/sp;->uj:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public tt()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/u/sp;->ve:Lcom/byazt/u/sp$c;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method
