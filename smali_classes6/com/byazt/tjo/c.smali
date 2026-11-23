.class public Lcom/byazt/tjo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x204,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/tjo/c$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/zh/uj;",
            ">;"
        }
    .end annotation
.end field

.field public da:J

.field public i:J

.field public final n:Ljava/lang/Runnable;

.field public sl:J

.field public final sp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final tt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/zh/uj;",
            ">;"
        }
    .end annotation
.end field

.field public final uj:Ljava/lang/Runnable;

.field public final ve:Landroid/os/Handler;

.field public x:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/tjo/c;->c:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/tjo/c;->tt:Ljava/util/List;

    .line 5
    invoke-static {}, Lcom/byazt/nr/da;->ve()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/tjo/c;->ve:Landroid/os/Handler;

    .line 6
    new-instance v0, Ly1/b;

    invoke-direct {v0, p0}, Ly1/b;-><init>(Lcom/byazt/tjo/c;)V

    iput-object v0, p0, Lcom/byazt/tjo/c;->uj:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Ly1/c;

    invoke-direct {v0, p0}, Ly1/c;-><init>(Lcom/byazt/tjo/c;)V

    iput-object v0, p0, Lcom/byazt/tjo/c;->n:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byazt/tjo/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byazt/tjo/c;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    iput-wide v0, p0, Lcom/byazt/tjo/c;->x:J

    .line 11
    iput-wide v0, p0, Lcom/byazt/tjo/c;->i:J

    .line 12
    iput-wide v0, p0, Lcom/byazt/tjo/c;->da:J

    .line 13
    iput-wide v0, p0, Lcom/byazt/tjo/c;->sl:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/tjo/c$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/tjo/c;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/byazt/tjo/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/tjo/c;->n()V

    return-void
.end method

.method public static synthetic b(Lcom/byazt/tjo/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/tjo/c;->uj()V

    return-void
.end method

.method private c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;
    .locals 2

    .line 7
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0x8

    if-ne p2, v1, :cond_0

    .line 8
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p2

    const/16 v0, 0xa

    invoke-virtual {p2, p1, v0, p3}, Lcom/byazt/qe/ve;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static c()Lcom/byazt/tjo/c;
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/tjo/c$c;->c()Lcom/byazt/tjo/c;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/tjo/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/tjo/c;->tt(Z)V

    return-void
.end method

.method private synthetic n()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/tjo/c;->c(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private tt(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/byazt/tjo/c;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/tjo/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/tjo/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/byazt/tjo/c;->c:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    iget-object v3, p0, Lcom/byazt/tjo/c;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->qy()J

    move-result-wide v3

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v5, "config_use_type"

    .line 10
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/qe/ve;->sl()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "config_wait_duration"

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/zh/uj;

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    .line 13
    invoke-interface {v3}, Lcom/byazt/zh/uj;->tt()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lcom/byazt/zh/uj;->c()I

    move-result v6

    const/16 v7, 0x64

    invoke-direct {p0, v5, v6, v7}, Lcom/byazt/tjo/c;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object v5

    const-string v6, "is_wait_success"

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 15
    :goto_1
    invoke-interface {v3, v4, v0}, Lcom/byazt/zh/uj;->c(ZLjava/util/Map;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-wide v5, p0, Lcom/byazt/tjo/c;->sl:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v5, v7

    if-nez v9, :cond_3

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/byazt/tjo/c;->i:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/byazt/tjo/c;->sl:J

    :cond_3
    const-string v5, "real_wait_duration"

    .line 18
    iget-wide v6, p0, Lcom/byazt/tjo/c;->sl:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "is_wait_success"

    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v3, v2, v0}, Lcom/byazt/zh/uj;->c(ZLjava/util/Map;)V

    goto :goto_0

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/byazt/tjo/c;->ve:Landroid/os/Handler;

    iget-object v0, p0, Lcom/byazt/tjo/c;->uj:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    iget-object p1, p0, Lcom/byazt/tjo/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private uj()V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/byazt/tjo/c;->tt:Ljava/util/List;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/byazt/tjo/c;->tt:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/byazt/tjo/c;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    monitor-exit v0

    return-void

    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/byazt/tjo/c;->tt:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    iget-object v3, p0, Lcom/byazt/tjo/c;->tt:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->rl()J

    move-result-wide v3

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v5, "config_use_type"

    .line 14
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v6

    invoke-virtual {v6}, Lcom/byazt/qe/ve;->sl()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "config_wait_duration"

    .line 15
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "is_wait_success"

    const/4 v4, 0x1

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-wide v3, p0, Lcom/byazt/tjo/c;->da:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/byazt/tjo/c;->x:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/byazt/tjo/c;->da:J

    :cond_1
    const-string v3, "real_wait_duration"

    .line 19
    iget-wide v4, p0, Lcom/byazt/tjo/c;->da:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/zh/uj;

    .line 21
    invoke-interface {v3, v2, v0}, Lcom/byazt/zh/uj;->c(ZLjava/util/Map;)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/byazt/tjo/c;->ve:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byazt/tjo/c;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lcom/byazt/tjo/c;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private uj(Lcom/byazt/zh/uj;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/byazt/zh/uj;->tt()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/byazt/zh/uj;->c()I

    move-result v1

    const/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/byazt/tjo/c;->c(Ljava/lang/String;II)Lcom/byazt/nbs/tt;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/byazt/nbs/tt;->tt()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->gt()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qe/ve;->gt()J

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/vq/c;->c()Lcom/byazt/vq/c;

    move-result-object v0

    invoke-interface {p1}, Lcom/byazt/zh/uj;->tt()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/byazt/zh/uj;->c()I

    move-result v3

    invoke-interface {p1}, Lcom/byazt/zh/uj;->tt()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/qv/uj;->c(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, v2, v3, p1}, Lcom/byazt/vq/c;->c(Ljava/lang/String;IZ)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private ve(Lcom/byazt/zh/uj;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->qy()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/qe/ve;->sl()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "config_use_type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "config_wait_duration"

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-nez v6, :cond_0

    .line 5
    invoke-interface {p1, v5, v2}, Lcom/byazt/zh/uj;->c(ZLjava/util/Map;)V

    return-void

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/tjo/c;->uj(Lcom/byazt/zh/uj;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_wait_success"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1, v5, v2}, Lcom/byazt/zh/uj;->c(ZLjava/util/Map;)V

    return-void

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/byazt/tjo/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-wide v0, p0, Lcom/byazt/tjo/c;->i:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/tjo/c;->i:J

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/byazt/tjo/c;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/byazt/tjo/c;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qe/ve;->qy()J

    .line 15
    iget-object p1, p0, Lcom/byazt/tjo/c;->ve:Landroid/os/Handler;

    iget-object v0, p0, Lcom/byazt/tjo/c;->uj:Ljava/lang/Runnable;

    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/qe/ve;->qy()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/zh/uj;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/byazt/zh/uj;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/tjo/c;->tt(Lcom/byazt/zh/uj;)V

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/tjo/c;->ve(Lcom/byazt/zh/uj;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 6
    new-instance v0, Lcom/byazt/tjo/c$1;

    invoke-direct {v0, p0, p1}, Lcom/byazt/tjo/c$1;-><init>(Lcom/byazt/tjo/c;Z)V

    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt()V
    .locals 1

    .line 39
    new-instance v0, Ly1/a;

    invoke-direct {v0, p0}, Ly1/a;-><init>(Lcom/byazt/tjo/c;)V

    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    return-void
.end method

.method public tt(Lcom/byazt/zh/uj;)V
    .locals 7

    .line 24
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/qe/ve;->rl()J

    move-result-wide v0

    .line 25
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 26
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/byazt/qe/ve;->sl()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "config_use_type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "config_wait_duration"

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-nez v6, :cond_0

    .line 28
    invoke-interface {p1, v5, v2}, Lcom/byazt/zh/uj;->c(ZLjava/util/Map;)V

    return-void

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/tjo/c;->uj(Lcom/byazt/zh/uj;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_wait_success"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-interface {p1, v5, v2}, Lcom/byazt/zh/uj;->c(ZLjava/util/Map;)V

    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/byazt/tjo/c;->tt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    iget-wide v0, p0, Lcom/byazt/tjo/c;->x:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/tjo/c;->x:J

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/byazt/tjo/c;->tt:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_3
    iget-object p1, p0, Lcom/byazt/tjo/c;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 37
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qe/ve;->rl()J

    .line 38
    iget-object p1, p0, Lcom/byazt/tjo/c;->ve:Landroid/os/Handler;

    iget-object v0, p0, Lcom/byazt/tjo/c;->n:Ljava/lang/Runnable;

    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/qe/ve;->rl()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public ve()V
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/byazt/tjo/c;->tt()V

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lcom/byazt/tjo/c;->c(Z)V

    return-void
.end method
