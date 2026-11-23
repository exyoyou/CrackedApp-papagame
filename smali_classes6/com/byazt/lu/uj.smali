.class public Lcom/byazt/lu/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x304,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Ljava/util/Comparator<",
        "Lcom/byazt/tv/c;",
        ">;"
    }
.end annotation


# static fields
.field public static tt:Lcom/byazt/lu/uj;

.field public static u:J


# instance fields
.field public a:Lcom/byazt/tv/tt;

.field public c:Landroid/app/Application;

.field public da:Lcom/byazt/yv/sl;

.field public i:Lcom/byazt/lu/sp;

.field public final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byazt/tv/c;",
            ">;"
        }
    .end annotation
.end field

.field public sl:Landroid/os/Handler;

.field public sp:Lcom/byazt/ds/i;

.field public t:Lcom/byazt/lu/a;

.field public uj:Lcom/byazt/ds/x;

.field public ve:Lcom/byazt/lu/c;

.field public x:Landroid/os/Handler;

.field public yp:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/byazt/tv/sp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/lu/uj;->yp:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/lu/uj;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    return-void
.end method

.method public static c()V
    .locals 7

    .line 1
    sget-object v0, Lcom/byazt/lu/uj;->tt:Lcom/byazt/lu/uj;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    sget-wide v2, Lcom/byazt/lu/uj;->u:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 4
    sput-wide v0, Lcom/byazt/lu/uj;->u:J

    .line 5
    sget-object v0, Lcom/byazt/lu/uj;->tt:Lcom/byazt/lu/uj;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/byazt/lu/uj;->c([Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/byazt/tv/c;)V
    .locals 7

    .line 58
    sget-object v0, Lcom/byazt/lu/uj;->tt:Lcom/byazt/lu/uj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Init comes First!"

    .line 59
    invoke-static {v0, v1}, Lcom/byazt/yv/da;->tt(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    invoke-static {p0}, Lcom/byazt/ds/tt;->c(Lcom/byazt/tv/c;)V

    return-void

    .line 61
    :cond_0
    iget-wide v2, p0, Lcom/byazt/tv/c;->tt:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 62
    invoke-static {v1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 63
    :cond_1
    iget-object v1, v0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v2, v0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 65
    iget-object v3, v0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    rem-int/lit8 p0, v2, 0xa

    if-nez p0, :cond_3

    iget-object p0, v0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    if-eqz p0, :cond_3

    const/4 v1, 0x4

    .line 68
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    iget-object p0, v0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    if-nez v2, :cond_2

    const-wide/16 v2, 0x1f4

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0xfa

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 70
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static c([Ljava/lang/String;)V
    .locals 3

    .line 71
    sget-object v0, Lcom/byazt/lu/uj;->tt:Lcom/byazt/lu/uj;

    if-nez v0, :cond_0

    .line 72
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Init comes First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    return-void

    .line 73
    :cond_0
    iget-object v1, v0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 74
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    iget-object v0, v0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private c([Ljava/lang/String;Z)V
    .locals 6

    .line 22
    iget-object v0, p0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 24
    iget-object v2, p0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 27
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 28
    invoke-static {v4}, Lcom/byazt/tv/c;->c(Ljava/lang/String;)Lcom/byazt/tv/c;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/byazt/lu/uj;->uj:Lcom/byazt/ds/x;

    invoke-virtual {p1, v1}, Lcom/byazt/ds/x;->c(Ljava/util/ArrayList;)Z

    move-result p1

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 31
    iget-object v2, p0, Lcom/byazt/lu/uj;->uj:Lcom/byazt/ds/x;

    invoke-virtual {v2}, Lcom/byazt/ds/x;->nu()Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez p1, :cond_2

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v2, 0x64

    if-le p1, v2, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    iget-object p1, p0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    monitor-enter p1

    .line 34
    :try_start_1
    iget-object p2, p0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 35
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 36
    :cond_2
    :goto_1
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/tv/c;

    .line 39
    iget-object v5, p0, Lcom/byazt/lu/uj;->i:Lcom/byazt/lu/sp;

    invoke-virtual {v5, v4, p1}, Lcom/byazt/lu/sp;->c(Lcom/byazt/tv/c;Ljava/util/ArrayList;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 40
    instance-of v5, v4, Lcom/byazt/tv/i;

    if-eqz v5, :cond_3

    .line 41
    invoke-static {v4}, Lcom/byazt/lu/sp;->c(Lcom/byazt/tv/c;)Z

    move-result v0

    const/4 v3, 0x1

    move v3, v0

    const/4 v0, 0x1

    goto :goto_2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/byazt/lu/uj;->a:Lcom/byazt/tv/tt;

    invoke-virtual {v1, p1}, Lcom/byazt/tv/tt;->c(Ljava/util/ArrayList;)V

    if-eqz v0, :cond_6

    const/4 p1, 0x7

    if-eqz v3, :cond_5

    .line 43
    iget-object v0, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3

    .line 44
    :cond_5
    invoke-static {}, Lcom/byazt/yv/u;->tt()Z

    move-result v0

    if-nez v0, :cond_6

    .line 45
    invoke-static {}, Lcom/byazt/yv/u;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    iget-object v0, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    iget-object v1, p0, Lcom/byazt/lu/uj;->uj:Lcom/byazt/ds/x;

    invoke-virtual {v1}, Lcom/byazt/ds/x;->gu()J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    :goto_3
    if-nez v2, :cond_7

    if-eqz p2, :cond_8

    .line 47
    :cond_7
    invoke-direct {p0}, Lcom/byazt/lu/uj;->t()V

    :cond_8
    return-void

    .line 48
    :cond_9
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/byazt/lu/uj;->c:Landroid/app/Application;

    const-class v2, Lcom/byazt/za/Collector;

    invoke-direct {p1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 50
    new-array v2, p2, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_4
    if-ge v0, p2, :cond_a

    .line 51
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/tv/c;

    invoke-virtual {v4}, Lcom/byazt/tv/c;->n()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 52
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    const p2, 0x4b000

    if-lt v3, p2, :cond_b

    const/4 p2, 0x0

    .line 53
    invoke-static {p2}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    :cond_b
    const-string p2, "EMBED_K_DATA"

    .line 54
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :try_start_2
    iget-object p2, p0, Lcom/byazt/lu/uj;->c:Landroid/app/Application;

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 56
    invoke-static {p1}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    :cond_c
    return-void

    :catchall_1
    move-exception p1

    .line 57
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private c(Ljava/util/List;Lcom/byazt/lu/tt;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;",
            "Lcom/byazt/lu/tt;",
            ")Z"
        }
    .end annotation

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 20
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 21
    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static n()Lcom/byazt/lu/uj;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/lu/uj;->tt:Lcom/byazt/lu/uj;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/lu/uj;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/lu/uj;->tt:Lcom/byazt/lu/uj;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/lu/uj;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/lu/uj;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/lu/uj;->tt:Lcom/byazt/lu/uj;

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
    sget-object v0, Lcom/byazt/lu/uj;->tt:Lcom/byazt/lu/uj;

    .line 25
    .line 26
    return-object v0
.end method

.method private sl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/uj;->uj:Lcom/byazt/ds/x;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ds/x;->rl()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lu/uj;->ve:Lcom/byazt/lu/c;

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/byazt/lu/c;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/byazt/lu/c;-><init>(Lcom/byazt/lu/uj;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/lu/uj;->ve:Lcom/byazt/lu/c;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/byazt/lu/uj;->x:Landroid/os/Handler;

    .line 21
    .line 22
    const/4 v2, 0x6

    .line 23
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/byazt/lu/uj;->yp:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/byazt/lu/uj;->ve:Lcom/byazt/lu/c;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/byazt/lu/tt;->n()V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/byazt/lu/uj;->ve:Lcom/byazt/lu/c;

    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/byazt/yv/da;->tt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "packAndSend once, "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/lu/uj;->i:Lcom/byazt/lu/sp;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/byazt/lu/sp;->c()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", hadUI:"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/byazt/lu/uj;->i:Lcom/byazt/lu/sp;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/byazt/lu/sp;->tt()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v0, v1}, Lcom/byazt/yv/da;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/byazt/lu/uj;->t:Lcom/byazt/lu/a;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/byazt/lu/tt;->x()V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/byazt/lu/uj;->x:Landroid/os/Handler;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/byazt/lu/uj;->t:Lcom/byazt/lu/a;

    .line 55
    .line 56
    invoke-static {}, Lcom/byazt/yv/u;->c()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/byazt/lu/a;->c(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    iget-object v2, p0, Lcom/byazt/lu/uj;->t:Lcom/byazt/lu/a;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/byazt/lu/uj;->yp:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/byazt/lu/uj;->x:Landroid/os/Handler;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/lu/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/uj;->i:Lcom/byazt/lu/sp;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Lcom/byazt/tv/c;Lcom/byazt/tv/c;)I
    .locals 3

    .line 76
    iget-wide v0, p1, Lcom/byazt/tv/c;->tt:J

    iget-wide p1, p2, Lcom/byazt/tv/c;->tt:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/app/Application;Lcom/byazt/ds/x;Lcom/byazt/ds/i;Lcom/byazt/za/c;)V
    .locals 1

    .line 6
    iput-object p1, p0, Lcom/byazt/lu/uj;->c:Landroid/app/Application;

    .line 7
    new-instance p1, Lcom/byazt/tv/tt;

    invoke-direct {p1, p0}, Lcom/byazt/tv/tt;-><init>(Lcom/byazt/lu/uj;)V

    iput-object p1, p0, Lcom/byazt/lu/uj;->a:Lcom/byazt/tv/tt;

    .line 8
    iput-object p2, p0, Lcom/byazt/lu/uj;->uj:Lcom/byazt/ds/x;

    .line 9
    iput-object p3, p0, Lcom/byazt/lu/uj;->sp:Lcom/byazt/ds/i;

    .line 10
    new-instance p1, Lcom/byazt/lu/sp;

    iget-object p3, p0, Lcom/byazt/lu/uj;->sp:Lcom/byazt/ds/i;

    iget-object v0, p0, Lcom/byazt/lu/uj;->uj:Lcom/byazt/ds/x;

    invoke-direct {p1, p3, v0}, Lcom/byazt/lu/sp;-><init>(Lcom/byazt/ds/i;Lcom/byazt/ds/x;)V

    iput-object p1, p0, Lcom/byazt/lu/uj;->i:Lcom/byazt/lu/sp;

    .line 11
    iget-object p1, p0, Lcom/byazt/lu/uj;->c:Landroid/app/Application;

    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 12
    invoke-static {p2}, Lcom/byazt/yv/u;->c(Lcom/byazt/ds/x;)Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 13
    new-instance p1, Landroid/os/HandlerThread;

    const-string p3, "bd_tracker_w"

    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 15
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 16
    :cond_0
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 17
    invoke-virtual {p3, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 18
    invoke-virtual {p2}, Lcom/byazt/ds/x;->i()I

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/byazt/yv/sp;->c(Z)V

    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/tv/c;

    .line 2
    .line 3
    check-cast p2, Lcom/byazt/tv/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/byazt/lu/uj;->c(Lcom/byazt/tv/c;Lcom/byazt/tv/c;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public da()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/uj;->x:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/lu/uj;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/lu/uj;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_1

    .line 21
    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/byazt/lu/uj;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/byazt/tv/sp;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/byazt/lu/uj;->x:Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {v3, v2}, Lcom/byazt/tv/sp;->c(Landroid/os/Handler;Lcom/byazt/tv/sp;)Landroid/os/Message;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v2}, Lcom/byazt/tv/sp;->c(Lcom/byazt/tv/sp;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    iget v2, v3, Landroid/os/Message;->what:I

    .line 41
    .line 42
    const/4 v6, 0x6

    .line 43
    if-ne v2, v6, :cond_0

    .line 44
    .line 45
    iget-object v2, p0, Lcom/byazt/lu/uj;->yp:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/byazt/lu/uj;->x:Landroid/os/Handler;

    .line 51
    .line 52
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/byazt/lu/uj;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 61
    .line 62
    .line 63
    :cond_2
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/uj;->c:Landroid/app/Application;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x4

    .line 7
    if-eq v1, v0, :cond_b

    .line 8
    .line 9
    const-wide/32 v5, 0x337f9800

    .line 10
    .line 11
    .line 12
    const/4 v7, 0x6

    .line 13
    if-eq v1, v2, :cond_7

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eq v1, v4, :cond_6

    .line 17
    .line 18
    const/4 v4, 0x5

    .line 19
    if-eq v1, v4, :cond_5

    .line 20
    .line 21
    if-eq v1, v7, :cond_2

    .line 22
    .line 23
    const/4 p1, 0x7

    .line 24
    if-eq v1, p1, :cond_1

    .line 25
    .line 26
    const/16 p1, 0x59

    .line 27
    .line 28
    if-eq v1, p1, :cond_0

    .line 29
    .line 30
    invoke-static {v3}, Lcom/byazt/yv/da;->tt(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/byazt/lu/uj;->sp:Lcom/byazt/ds/i;

    .line 36
    .line 37
    if-eqz p1, :cond_10

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/byazt/ds/i;->n()V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_2

    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    .line 45
    .line 46
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-static {}, Lcom/byazt/lu/sp;->n()Lcom/byazt/lu/sp$c;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    invoke-direct {p0, v3, v2}, Lcom/byazt/lu/uj;->c([Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    .line 59
    .line 60
    goto/16 :goto_2

    .line 61
    .line 62
    :catchall_0
    move-exception v1

    .line 63
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :try_start_4
    throw v1

    .line 65
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Lcom/byazt/lu/tt;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 68
    .line 69
    :try_start_5
    iget-object v2, p0, Lcom/byazt/lu/uj;->yp:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 72
    .line 73
    .line 74
    :catch_0
    :try_start_6
    invoke-virtual {v1}, Lcom/byazt/lu/tt;->a()Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/byazt/lu/tt;->sp()J

    .line 81
    .line 82
    .line 83
    move-result-wide v2

    .line 84
    cmp-long p1, v2, v5

    .line 85
    .line 86
    if-gez p1, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/byazt/lu/uj;->yp:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    .line 90
    invoke-direct {p0, p1, v1}, Lcom/byazt/lu/uj;->c(Ljava/util/List;Lcom/byazt/lu/tt;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    .line 97
    .line 98
    long-to-int v4, v2

    .line 99
    invoke-virtual {p1, v7, v4, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object v1, p0, Lcom/byazt/lu/uj;->yp:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 104
    .line 105
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/byazt/lu/uj;->x:Landroid/os/Handler;

    .line 109
    .line 110
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-direct {p0}, Lcom/byazt/lu/uj;->sl()V

    .line 114
    .line 115
    .line 116
    :cond_4
    iget-object p1, p0, Lcom/byazt/lu/uj;->t:Lcom/byazt/lu/a;

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/byazt/lu/a;->c(Z)V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_2

    .line 122
    .line 123
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p1, [Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {p0, p1, v2}, Lcom/byazt/lu/uj;->c([Ljava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    goto/16 :goto_2

    .line 131
    .line 132
    :cond_6
    invoke-direct {p0, v3, v2}, Lcom/byazt/lu/uj;->c([Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    goto/16 :goto_2

    .line 136
    .line 137
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    .line 138
    .line 139
    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lcom/byazt/lu/n;

    .line 143
    .line 144
    invoke-direct {v1, p0}, Lcom/byazt/lu/n;-><init>(Lcom/byazt/lu/uj;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    new-instance v1, Lcom/byazt/lu/ve;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/byazt/lu/ve;-><init>(Lcom/byazt/lu/uj;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    new-instance v1, Lcom/byazt/lu/a;

    .line 159
    .line 160
    invoke-direct {v1, p0}, Lcom/byazt/lu/a;-><init>(Lcom/byazt/lu/uj;)V

    .line 161
    .line 162
    .line 163
    iput-object v1, p0, Lcom/byazt/lu/uj;->t:Lcom/byazt/lu/a;

    .line 164
    .line 165
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    :cond_8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_a

    .line 177
    .line 178
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Lcom/byazt/lu/tt;

    .line 183
    .line 184
    instance-of v2, v1, Lcom/byazt/lu/a;

    .line 185
    .line 186
    if-eqz v2, :cond_9

    .line 187
    .line 188
    iget-object v2, p0, Lcom/byazt/lu/uj;->t:Lcom/byazt/lu/a;

    .line 189
    .line 190
    invoke-static {}, Lcom/byazt/yv/u;->c()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    invoke-virtual {v2, v3}, Lcom/byazt/lu/a;->c(Z)V

    .line 195
    .line 196
    .line 197
    :cond_9
    invoke-virtual {v1}, Lcom/byazt/lu/tt;->sp()J

    .line 198
    .line 199
    .line 200
    move-result-wide v2

    .line 201
    cmp-long v4, v2, v5

    .line 202
    .line 203
    if-gez v4, :cond_8

    .line 204
    .line 205
    iget-object v4, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    .line 206
    .line 207
    long-to-int v8, v2

    .line 208
    invoke-virtual {v4, v7, v8, v8, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iget-object v4, p0, Lcom/byazt/lu/uj;->yp:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 213
    .line 214
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    iget-object v4, p0, Lcom/byazt/lu/uj;->x:Landroid/os/Handler;

    .line 218
    .line 219
    invoke-virtual {v4, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 220
    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_a
    iget-object p1, p0, Lcom/byazt/lu/uj;->t:Lcom/byazt/lu/a;

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Lcom/byazt/lu/a;->c(Z)V

    .line 226
    .line 227
    .line 228
    invoke-direct {p0}, Lcom/byazt/lu/uj;->sl()V

    .line 229
    .line 230
    .line 231
    goto/16 :goto_2

    .line 232
    .line 233
    :cond_b
    iget-object p1, p0, Lcom/byazt/lu/uj;->uj:Lcom/byazt/ds/x;

    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/byazt/ds/x;->qy()Z

    .line 236
    .line 237
    .line 238
    move-result p1

    .line 239
    sput-boolean p1, Lcom/byazt/yv/da;->c:Z

    .line 240
    .line 241
    iget-object p1, p0, Lcom/byazt/lu/uj;->sp:Lcom/byazt/ds/i;

    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/byazt/ds/i;->a()Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    const-wide/16 v5, 0x3e8

    .line 248
    .line 249
    if-eqz p1, :cond_e

    .line 250
    .line 251
    iget-object p1, p0, Lcom/byazt/lu/uj;->uj:Lcom/byazt/ds/x;

    .line 252
    .line 253
    invoke-virtual {p1}, Lcom/byazt/ds/x;->nu()Z

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    if-eqz p1, :cond_f

    .line 258
    .line 259
    iget-object p1, p0, Lcom/byazt/lu/uj;->uj:Lcom/byazt/ds/x;

    .line 260
    .line 261
    invoke-static {p1}, Lcom/byazt/yv/u;->tt(Lcom/byazt/ds/x;)Landroid/os/Looper;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    if-nez p1, :cond_c

    .line 266
    .line 267
    new-instance p1, Landroid/os/HandlerThread;

    .line 268
    .line 269
    const-string v1, "bd_tracker_n"

    .line 270
    .line 271
    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 278
    .line 279
    .line 280
    move-result-object p1

    .line 281
    :cond_c
    new-instance v1, Landroid/os/Handler;

    .line 282
    .line 283
    invoke-direct {v1, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 284
    .line 285
    .line 286
    iput-object v1, p0, Lcom/byazt/lu/uj;->x:Landroid/os/Handler;

    .line 287
    .line 288
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 289
    .line 290
    .line 291
    iget-object p1, p0, Lcom/byazt/lu/uj;->n:Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-lez p1, :cond_d

    .line 298
    .line 299
    iget-object p1, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    .line 300
    .line 301
    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    .line 305
    .line 306
    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 307
    .line 308
    .line 309
    :cond_d
    const-string p1, "net|worker start"

    .line 310
    .line 311
    invoke-static {p1, v3}, Lcom/byazt/yv/da;->uj(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 312
    .line 313
    .line 314
    goto :goto_1

    .line 315
    :cond_e
    iget-object p1, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    .line 316
    .line 317
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    .line 319
    .line 320
    iget-object p1, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    .line 321
    .line 322
    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 323
    .line 324
    .line 325
    :cond_f
    :goto_1
    invoke-static {}, Lcom/byazt/ds/tt;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 326
    .line 327
    .line 328
    goto :goto_2

    .line 329
    :catchall_1
    move-exception p1

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string v2, "engine:"

    .line 333
    .line 334
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-static {p1}, Lcom/byazt/yv/da;->c(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    :cond_10
    :goto_2
    return v0
.end method

.method public i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/uj;->x:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/lu/uj;->yp:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/byazt/lu/uj;->yp:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/os/Message;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/byazt/tv/sp;->c(Landroid/os/Message;)Lcom/byazt/tv/sp;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v4, p0, Lcom/byazt/lu/uj;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/byazt/lu/uj;->yp:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/byazt/lu/uj;->x:Landroid/os/Handler;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    .line 48
    .line 49
    :cond_1
    return-void
.end method

.method public sp()Lcom/byazt/yv/sl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/uj;->da:Lcom/byazt/yv/sl;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/lu/uj;->uj:Lcom/byazt/ds/x;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/ds/x;->bm()Lcom/byazt/gj/x;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/byazt/gj/x;->da()Lcom/byazt/yv/sl;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/byazt/lu/uj;->da:Lcom/byazt/yv/sl;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Lcom/byazt/yv/t;->c(I)Lcom/byazt/yv/sl;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/byazt/lu/uj;->da:Lcom/byazt/yv/sl;

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/lu/uj;->da:Lcom/byazt/yv/sl;

    .line 27
    .line 28
    return-object v0
.end method

.method public tt()Lcom/byazt/tv/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/uj;->a:Lcom/byazt/tv/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/ds/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/uj;->sp:Lcom/byazt/ds/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Lcom/byazt/ds/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/uj;->uj:Lcom/byazt/ds/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x59

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/lu/uj;->sl:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
