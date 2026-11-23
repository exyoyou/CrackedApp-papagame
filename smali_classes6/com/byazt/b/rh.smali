.class public Lcom/byazt/b/rh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/byazt/g/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xdf,
        0x73
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/b/rh$c;,
        Lcom/byazt/b/rh$tt;
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/b/rh;

.field public static i:Lcom/byazt/b/rh$tt;


# instance fields
.field public a:J

.field public final n:Z

.field public sp:I

.field public final tt:Landroid/content/Context;

.field public final uj:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/byazt/b/rh$c;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Landroid/os/Handler;

.field public x:Landroid/net/ConnectivityManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/b/rh;->ve:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/b/rh;->uj:Landroid/util/SparseArray;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/byazt/b/rh;->sp:I

    .line 24
    .line 25
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/byazt/b/rh;->tt:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/byazt/b/rh;->a()V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/byazt/w/a;->ve()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/byazt/b/rh;->n:Z

    .line 39
    .line 40
    invoke-static {}, Lcom/byazt/g/c;->c()Lcom/byazt/g/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, p0}, Lcom/byazt/g/c;->c(Lcom/byazt/g/c$c;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/k/c;->ve()Lcom/byazt/k/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "use_network_callback"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/byazt/b/rh$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/byazt/b/rh$1;-><init>(Lcom/byazt/b/rh;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic c(Lcom/byazt/b/rh;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/b/rh;->tt:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/b/rh;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/b/rh;->x:Landroid/net/ConnectivityManager;

    return-object p1
.end method

.method public static c()Lcom/byazt/b/rh;
    .locals 2

    .line 5
    sget-object v0, Lcom/byazt/b/rh;->c:Lcom/byazt/b/rh;

    if-nez v0, :cond_1

    .line 6
    const-class v0, Lcom/byazt/b/rh;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/byazt/b/rh;->c:Lcom/byazt/b/rh;

    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lcom/byazt/b/rh;

    invoke-direct {v1}, Lcom/byazt/b/rh;-><init>()V

    sput-object v1, Lcom/byazt/b/rh;->c:Lcom/byazt/b/rh;

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 10
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/b/rh;->c:Lcom/byazt/b/rh;

    return-object v0
.end method

.method private c(IIZ)V
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/byazt/b/rh;->tt:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/byazt/b/rh;->uj:Landroid/util/SparseArray;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/byazt/b/rh;->uj:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/b/rh$c;

    if-nez v2, :cond_1

    .line 66
    monitor-exit v1

    return-void

    .line 67
    :cond_1
    invoke-static {v2}, Lcom/byazt/b/rh$c;->tt(Lcom/byazt/b/rh$c;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 68
    invoke-static {v2, v5}, Lcom/byazt/b/rh$c;->tt(Lcom/byazt/b/rh$c;Z)Z

    .line 69
    iget v3, p0, Lcom/byazt/b/rh;->sp:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/byazt/b/rh;->sp:I

    if-gez v3, :cond_2

    .line 70
    iput v5, p0, Lcom/byazt/b/rh;->sp:I

    .line 71
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "RetryScheduler"

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "doSchedulerRetryInSubThread: downloadId = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", retryCount = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {v2}, Lcom/byazt/b/rh$c;->c(Lcom/byazt/b/rh$c;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mWaitingRetryTasksCount = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/byazt/b/rh;->sp:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v1, v3}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    move-result-object v1

    if-nez v1, :cond_3

    .line 76
    invoke-direct {p0, p1}, Lcom/byazt/b/rh;->ve(I)V

    return-void

    :cond_3
    const-string v3, "RetryScheduler"

    const-string v6, "doSchedulerRetryInSubThread\uff0cid:"

    .line 77
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getRealStatus()I

    move-result v3

    const/4 v6, -0x3

    if-eq v3, v6, :cond_13

    const/4 v6, -0x4

    if-ne v3, v6, :cond_4

    goto/16 :goto_3

    :cond_4
    const/4 v6, -0x5

    const/4 v7, -0x2

    if-eq v3, v6, :cond_10

    if-ne v3, v7, :cond_5

    .line 79
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_2

    :cond_5
    const/4 p1, -0x1

    if-eq v3, p1, :cond_6

    return-void

    :cond_6
    if-nez p2, :cond_8

    .line 80
    iget-boolean v3, v2, Lcom/byazt/b/rh$c;->a:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    const/4 v3, 0x1

    .line 81
    :goto_0
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getFailedException()Lcom/byazt/m/BaseException;

    move-result-object v6

    if-eqz v3, :cond_9

    .line 82
    invoke-static {v6}, Lcom/byazt/w/a;->x(Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 83
    invoke-direct {p0, v1, v6}, Lcom/byazt/b/rh;->c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)Z

    move-result v3

    .line 84
    :cond_9
    invoke-virtual {v2}, Lcom/byazt/b/rh$c;->tt()V

    if-eqz v3, :cond_b

    const-string p2, "RetryScheduler"

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doSchedulerRetry: restart task, ****** id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lcom/byazt/b/rh$c;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/byazt/b/rh$c;->c(J)V

    if-eqz p3, :cond_a

    .line 87
    invoke-virtual {v2}, Lcom/byazt/b/rh$c;->c()V

    .line 88
    :cond_a
    invoke-static {v2}, Lcom/byazt/b/rh$c;->c(Lcom/byazt/b/rh$c;)I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/byazt/t/DownloadInfo;->setRetryScheduleCount(I)V

    .line 89
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getStatus()I

    move-result p2

    if-ne p2, p1, :cond_f

    .line 90
    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/zz/Downloader;->restart(I)V

    return-void

    :cond_b
    if-eqz p3, :cond_c

    .line 91
    invoke-virtual {v2}, Lcom/byazt/b/rh$c;->c()V

    .line 92
    :cond_c
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->isOnlyWifi()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_1

    :cond_d
    const/4 v4, 0x0

    .line 93
    :cond_e
    :goto_1
    invoke-direct {p0, v1, v4, p2}, Lcom/byazt/b/rh;->c(Lcom/byazt/t/DownloadInfo;ZI)V

    :cond_f
    return-void

    :cond_10
    :goto_2
    const/4 p2, 0x3

    if-ne v3, v7, :cond_11

    .line 94
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p3

    invoke-virtual {p3}, Lcom/byazt/zz/Downloader;->getReserveWifiStatusListener()Lcom/byazt/zz/rh;

    move-result-object p3

    if-eqz p3, :cond_11

    const/4 v0, 0x4

    .line 95
    invoke-interface {p3, v1, v0, p2}, Lcom/byazt/zz/rh;->c(Lcom/byazt/t/DownloadInfo;II)V

    .line 96
    :cond_11
    invoke-static {}, Lcom/byazt/zz/ve;->gr()Lcom/byazt/zz/t;

    move-result-object p3

    if-eqz p3, :cond_12

    .line 97
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lcom/byazt/zz/t;->c(Ljava/util/List;I)V

    .line 98
    :cond_12
    invoke-direct {p0, p1}, Lcom/byazt/b/rh;->ve(I)V

    return-void

    .line 99
    :cond_13
    :goto_3
    invoke-direct {p0, p1}, Lcom/byazt/b/rh;->ve(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 100
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private c(IZ)V
    .locals 7

    .line 46
    iget v0, p0, Lcom/byazt/b/rh;->sp:I

    if-gtz v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    monitor-enter p0

    if-nez p2, :cond_1

    .line 49
    :try_start_0
    iget-wide v2, p0, Lcom/byazt/b/rh;->a:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    .line 50
    monitor-exit p0

    return-void

    .line 51
    :cond_1
    iput-wide v0, p0, Lcom/byazt/b/rh;->a:J

    .line 52
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "RetryScheduler"

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scheduleAllTaskRetry, level = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], force = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 54
    iget-object v1, p0, Lcom/byazt/b/rh;->ve:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 55
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 56
    iput v0, v1, Landroid/os/Message;->what:I

    .line 57
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 58
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 59
    iget-object p1, p0, Lcom/byazt/b/rh;->ve:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catchall_0
    move-exception p1

    .line 60
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static c(Lcom/byazt/b/rh$tt;)V
    .locals 0

    .line 11
    sput-object p0, Lcom/byazt/b/rh;->i:Lcom/byazt/b/rh$tt;

    return-void
.end method

.method public static synthetic c(Lcom/byazt/b/rh;IIZ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/b/rh;->c(IIZ)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/b/rh;IZ)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/byazt/b/rh;->c(IZ)V

    return-void
.end method

.method private c(Lcom/byazt/t/DownloadInfo;ZI)V
    .locals 9

    .line 14
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getFailedException()Lcom/byazt/m/BaseException;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/byazt/b/rh;->tt(I)Lcom/byazt/b/rh$c;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/byazt/b/rh$c;->c(Lcom/byazt/b/rh$c;)I

    move-result v2

    iget v3, v1, Lcom/byazt/b/rh$c;->ve:I

    if-le v2, v3, :cond_1

    const-string p1, "RetryScheduler"

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "tryStartScheduleRetry, id = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, v1, Lcom/byazt/b/rh$c;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mRetryCount = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {v1}, Lcom/byazt/b/rh$c;->c(Lcom/byazt/b/rh$c;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", maxCount = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v1, Lcom/byazt/b/rh$c;->ve:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-static {p1, p2}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result v2

    .line 21
    invoke-static {v0}, Lcom/byazt/w/a;->x(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 22
    invoke-static {v0}, Lcom/byazt/w/a;->i(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 23
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->statusInPause()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v0

    if-nez v0, :cond_4

    .line 25
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/byazt/b/rh;->c(Lcom/byazt/b/rh$c;I)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v0, "RetryScheduler"

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "allow error code, id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/byazt/b/rh$c;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_4
    invoke-static {v1, p2}, Lcom/byazt/b/rh$c;->c(Lcom/byazt/b/rh$c;Z)Z

    .line 28
    iget-object v0, p0, Lcom/byazt/b/rh;->uj:Landroid/util/SparseArray;

    monitor-enter v0

    .line 29
    :try_start_0
    invoke-static {v1}, Lcom/byazt/b/rh$c;->tt(Lcom/byazt/b/rh$c;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    .line 30
    invoke-static {v1, v2}, Lcom/byazt/b/rh$c;->tt(Lcom/byazt/b/rh$c;Z)Z

    .line 31
    iget v3, p0, Lcom/byazt/b/rh;->sp:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/byazt/b/rh;->sp:I

    .line 32
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {v1}, Lcom/byazt/b/rh$c;->uj()I

    move-result v0

    const-string v2, "RetryScheduler"

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tryStartScheduleRetry: id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/byazt/b/rh$c;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", delayTimeMills = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mWaitingRetryTasks = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/byazt/b/rh;->sp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-boolean v2, v1, Lcom/byazt/b/rh$c;->a:Z

    if-eqz v2, :cond_9

    if-nez p3, :cond_6

    .line 36
    invoke-virtual {v1}, Lcom/byazt/b/rh$c;->ve()V

    .line 37
    :cond_6
    sget-object v3, Lcom/byazt/b/rh;->i:Lcom/byazt/b/rh$tt;

    if-eqz v3, :cond_7

    int-to-long v5, v0

    move-object v4, p1

    move v7, p2

    move v8, p3

    .line 38
    invoke-interface/range {v3 .. v8}, Lcom/byazt/b/rh$tt;->c(Lcom/byazt/t/DownloadInfo;JZI)V

    .line 39
    :cond_7
    iget-boolean p1, p0, Lcom/byazt/b/rh;->n:Z

    if-eqz p1, :cond_8

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/byazt/b/rh$c;->c(J)V

    .line 41
    invoke-virtual {v1}, Lcom/byazt/b/rh$c;->tt()V

    .line 42
    invoke-virtual {v1}, Lcom/byazt/b/rh$c;->c()V

    :cond_8
    return-void

    :cond_9
    if-eqz p2, :cond_a

    return-void

    .line 43
    :cond_a
    iget-object p2, p0, Lcom/byazt/b/rh;->ve:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    iget-object p2, p0, Lcom/byazt/b/rh;->ve:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    int-to-long v0, v0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_0
    move-exception p1

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private c(Lcom/byazt/b/rh$c;I)Z
    .locals 4

    .line 101
    iget-object p1, p1, Lcom/byazt/b/rh$c;->sp:[I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 102
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    if-ne v3, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private c(Lcom/byazt/t/DownloadInfo;Lcom/byazt/m/BaseException;)Z
    .locals 10

    const-wide/16 v0, 0x0

    .line 110
    :try_start_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/w/a;->uj(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 111
    invoke-static {v2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    move-wide v2, v0

    .line 112
    :goto_0
    instance-of v4, p2, Lcom/byazt/m/uj;

    if-eqz v4, :cond_0

    .line 113
    check-cast p2, Lcom/byazt/m/uj;

    invoke-virtual {p2}, Lcom/byazt/m/uj;->tt()J

    move-result-wide v4

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v6

    sub-long/2addr v4, v6

    :goto_1
    const/4 p2, 0x1

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 115
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object p1

    const-string v4, "space_fill_part_download"

    const/4 v5, 0x0

    .line 116
    invoke-virtual {p1, v4, v5}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, p2, :cond_2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    const-string v4, "space_fill_min_keep_mb"

    const/16 v6, 0x64

    .line 117
    invoke-virtual {p1, v4, v6}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_3

    int-to-long v6, p1

    const-wide/32 v8, 0x100000

    mul-long v6, v6, v8

    sub-long v6, v2, v6

    .line 118
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "retry schedule: available = "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/byazt/w/a;->c(J)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "MB, minKeep = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "MB, canDownload = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {v6, v7}, Lcom/byazt/w/a;->c(J)D

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "RetryScheduler"

    .line 120
    invoke-static {v2, p1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long p1, v6, v0

    if-gtz p1, :cond_3

    const-string p1, "doSchedulerRetryInSubThread: canDownload <= 0 , canRetry = false !!!!"

    .line 121
    invoke-static {v2, p1}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    const-string v0, "download_when_space_negative"

    .line 122
    invoke-virtual {p1, v0, v5}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_3

    :cond_2
    return v5

    :cond_3
    return p2
.end method

.method private c(Ljava/lang/String;)[I
    .locals 4

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, ","

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 106
    array-length v0, p1

    if-gtz v0, :cond_1

    return-object v1

    .line 107
    :cond_1
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 108
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 109
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catchall_0
    return-object v1
.end method

.method public static synthetic n(Lcom/byazt/b/rh;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/b/rh;->uj:Landroid/util/SparseArray;

    return-object p0
.end method

.method private sp()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/byazt/b/rh;->x:Landroid/net/ConnectivityManager;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/b/rh;->tt:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "connectivity"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 19
    .line 20
    iput-object v1, p0, Lcom/byazt/b/rh;->x:Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Lcom/byazt/b/rh;->x:Landroid/net/ConnectivityManager;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    .line 38
    .line 39
    .line 40
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/4 v1, 0x1

    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    return v0

    .line 46
    :cond_2
    return v1

    .line 47
    :catch_0
    :cond_3
    :goto_0
    return v0
.end method

.method public static synthetic tt(Lcom/byazt/b/rh;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/b/rh;->x:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private tt(I)Lcom/byazt/b/rh$c;
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/byazt/b/rh;->uj:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/b/rh$c;

    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/byazt/b/rh;->uj:Landroid/util/SparseArray;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/b/rh;->uj:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/b/rh$c;

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/b/rh;->uj(I)Lcom/byazt/b/rh$c;

    move-result-object v0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/byazt/b/rh;->uj:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private tt(IZ)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/byazt/b/rh$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/b/rh$2;-><init>(Lcom/byazt/b/rh;IZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/b/rh;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/b/rh;->sp()I

    move-result p0

    return p0
.end method

.method private uj(I)Lcom/byazt/b/rh$c;
    .locals 11

    .line 2
    invoke-static {p1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    move-result-object v0

    const-string v1, "retry_schedule"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "retry_schedule_config"

    .line 4
    invoke-virtual {v0, v1}, Lcom/byazt/k/c;->uj(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0x3c

    if-eqz v0, :cond_1

    const-string v3, "max_count"

    .line 5
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "interval_sec"

    .line 6
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "interval_sec_acceleration"

    .line 7
    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 8
    sget-object v6, Lcom/byazt/b/rh;->i:Lcom/byazt/b/rh$tt;

    if-eqz v6, :cond_0

    const-string v6, "use_job_scheduler"

    .line 9
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v6, "allow_error_code"

    .line 10
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byazt/b/rh;->c(Ljava/lang/String;)[I

    move-result-object v0

    move-object v10, v0

    move v0, v1

    move v9, v2

    move v6, v3

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v10, v0

    const/16 v0, 0x3c

    const/16 v6, 0x3c

    const/4 v9, 0x0

    .line 11
    :goto_0
    new-instance v2, Lcom/byazt/b/rh$c;

    mul-int/lit16 v7, v1, 0x3e8

    mul-int/lit16 v8, v0, 0x3e8

    move-object v3, v2

    move v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/byazt/b/rh$c;-><init>(IIIIIZ[I)V

    return-object v2
.end method

.method public static synthetic ve(Lcom/byazt/b/rh;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/b/rh;->sp:I

    return p0
.end method

.method private ve(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/b/rh;->uj:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/byazt/b/rh;->uj:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public c(I)V
    .locals 2

    .line 61
    invoke-static {}, Lcom/byazt/zz/ve;->t()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/byazt/b/rh$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/b/rh$3;-><init>(Lcom/byazt/b/rh;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/t/DownloadInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isOnlyWifi()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->isPauseReserveOnWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    invoke-direct {p0}, Lcom/byazt/b/rh;->sp()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/b/rh;->c(Lcom/byazt/t/DownloadInfo;ZI)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 7
    .line 8
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 9
    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/byazt/b/rh;->tt(IZ)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "handleMessage, doSchedulerRetry, id = "

    .line 22
    .line 23
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v2, p1, Landroid/os/Message;->what:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v2, "RetryScheduler"

    .line 36
    .line 37
    invoke-static {v2, v0}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget p1, p1, Landroid/os/Message;->what:I

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lcom/byazt/b/rh;->c(I)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return v1
.end method

.method public n()V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/byazt/b/rh;->c(IZ)V

    return-void
.end method

.method public tt()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/byazt/b/rh;->c(IZ)V

    return-void
.end method

.method public uj()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/byazt/b/rh;->c(IZ)V

    return-void
.end method

.method public ve()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/byazt/b/rh;->c(IZ)V

    return-void
.end method
