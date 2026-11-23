.class public Lcn/fly/tools/FlyHandlerThread;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/proguard/EverythingKeeper;


# instance fields
.field private looper:Landroid/os/Looper;

.field private priority:I

.field private tid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/fly/tools/FlyHandlerThread;->tid:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/fly/tools/FlyHandlerThread;->priority:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcn/fly/tools/FlyHandlerThread;->tid:I

    .line 6
    iput p1, p0, Lcn/fly/tools/FlyHandlerThread;->priority:I

    return-void
.end method

.method public static newHandler(Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, p0}, Lcn/fly/tools/FlyHandlerThread;->newHandler(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static newHandler(Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, p0, p1}, Lcn/fly/tools/FlyHandlerThread;->newHandler(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcn/fly/tools/FlyHandlerThread;->newHandler(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static newHandler(Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/os/Handler;

    .line 4
    new-instance v1, Lcn/fly/tools/FlyHandlerThread$1;

    invoke-direct {v1, p1, v0, p2}, Lcn/fly/tools/FlyHandlerThread$1;-><init>(Ljava/lang/Runnable;[Landroid/os/Handler;Landroid/os/Handler$Callback;)V

    .line 5
    monitor-enter v0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 6
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    aget-object p0, v0, p1

    if-nez p0, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    aget-object p0, v0, p1

    return-object p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    monitor-enter p0

    .line 10
    :catchall_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcn/fly/tools/FlyHandlerThread;->looper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    iget-object v0, p0, Lcn/fly/tools/FlyHandlerThread;->looper:Landroid/os/Looper;

    .line 26
    .line 27
    return-object v0

    .line 28
    :catchall_1
    move-exception v0

    .line 29
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 30
    throw v0
.end method

.method public getThreadId()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/fly/tools/FlyHandlerThread;->tid:I

    .line 2
    .line 3
    return v0
.end method

.method protected onLooperPrepared()V
    .locals 0

    .line 1
    return-void
.end method

.method protected onLooperPrepared(Landroid/os/Looper;)V
    .locals 0

    .line 2
    return-void
.end method

.method public quit()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/fly/tools/FlyHandlerThread;->getLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public realRun()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcn/fly/tools/FlyHandlerThread;->realRun()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcn/fly/tools/FlyHandlerThread;->tid:I

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 11
    .line 12
    .line 13
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcn/fly/tools/FlyHandlerThread;->looper:Landroid/os/Looper;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 21
    .line 22
    .line 23
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    iget v0, p0, Lcn/fly/tools/FlyHandlerThread;->priority:I

    .line 25
    .line 26
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 33
    :catchall_1
    move-exception v0

    .line 34
    :try_start_5
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    iget-object v0, p0, Lcn/fly/tools/FlyHandlerThread;->looper:Landroid/os/Looper;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcn/fly/tools/FlyHandlerThread;->onLooperPrepared(Landroid/os/Looper;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcn/fly/tools/FlyHandlerThread;->onLooperPrepared()V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 50
    .line 51
    .line 52
    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcn/fly/tools/FlyHandlerThread;->tid:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_2
    move-exception v0

    .line 57
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method
