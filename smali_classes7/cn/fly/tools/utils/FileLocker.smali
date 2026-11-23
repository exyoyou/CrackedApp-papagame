.class public Lcn/fly/tools/utils/FileLocker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/proguard/PublicMemberKeeper;


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Ljava/nio/channels/FileLock;

.field private c:Ljava/nio/channels/FileChannel;

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/fly/tools/utils/FileLocker;->d:Z

    .line 6
    .line 7
    return-void
.end method

.method private a()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/io/Closeable;

    .line 5
    iget-object v2, p0, Lcn/fly/tools/utils/FileLocker;->a:Ljava/io/RandomAccessFile;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    :goto_0
    iput-object v1, p0, Lcn/fly/tools/utils/FileLocker;->c:Ljava/nio/channels/FileChannel;

    .line 8
    iput-object v1, p0, Lcn/fly/tools/utils/FileLocker;->a:Ljava/io/RandomAccessFile;

    return-void

    :catchall_1
    move-exception v0

    .line 9
    iput-object v1, p0, Lcn/fly/tools/utils/FileLocker;->c:Ljava/nio/channels/FileChannel;

    .line 10
    iput-object v1, p0, Lcn/fly/tools/utils/FileLocker;->a:Ljava/io/RandomAccessFile;

    .line 11
    throw v0
.end method

.method private a(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/fly/tools/utils/FileLocker;->c:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/fly/tools/utils/FileLocker;->c:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/fly/tools/utils/FileLocker;->c:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object p1

    .line 4
    :goto_0
    iput-object p1, p0, Lcn/fly/tools/utils/FileLocker;->b:Ljava/nio/channels/FileLock;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public declared-synchronized lock(Ljava/lang/Runnable;Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 24
    :try_start_0
    invoke-virtual {p0, p2}, Lcn/fly/tools/utils/FileLocker;->lock(Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 25
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized lock(Z)Z
    .locals 8

    monitor-enter p0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1f4

    :goto_0
    move-wide v4, v0

    const-wide/16 v6, 0x10

    move-object v2, p0

    move v3, p1

    .line 1
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lcn/fly/tools/utils/FileLocker;->lock(ZJJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized lock(ZJJ)Z
    .locals 8

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcn/fly/tools/utils/FileLocker;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcn/fly/tools/utils/FileLocker;->a:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcn/fly/tools/utils/FileLocker;->c:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v0, :cond_1

    goto :goto_3

    .line 5
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FileLocker;->a(Z)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-lez v4, :cond_6

    .line 6
    :try_start_3
    instance-of v4, v0, Ljava/nio/channels/OverlappingFileLockException;

    if-eqz v4, :cond_6

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p2

    :cond_2
    :goto_0
    cmp-long v6, p2, v2

    if-lez v6, :cond_5

    .line 8
    iget-boolean v6, p0, Lcn/fly/tools/utils/FileLocker;->d:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v6, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    :try_start_4
    invoke-static {p4, p5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 10
    :catchall_1
    :try_start_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v4, p2

    .line 11
    invoke-direct {p0, p1}, Lcn/fly/tools/utils/FileLocker;->a(Z)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v6

    .line 12
    :try_start_6
    instance-of v6, v6, Ljava/nio/channels/OverlappingFileLockException;

    if-eqz v6, :cond_4

    cmp-long v6, p2, v2

    if-gtz v6, :cond_2

    .line 13
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object v6

    const-string v7, "OverlappingFileLockException or IOExcept timeout"

    invoke-virtual {v6, v7}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/String;)I

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const-wide/16 p2, -0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 p1, 0x0

    :goto_2
    cmp-long p4, p2, v2

    if-lez p4, :cond_7

    .line 15
    monitor-exit p0

    return p1

    .line 16
    :cond_6
    :try_start_7
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/Throwable;)I

    .line 17
    :cond_7
    iget-object p1, p0, Lcn/fly/tools/utils/FileLocker;->b:Ljava/nio/channels/FileLock;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p1, :cond_8

    .line 18
    :try_start_8
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    const/4 p1, 0x0

    .line 19
    :try_start_9
    iput-object p1, p0, Lcn/fly/tools/utils/FileLocker;->b:Ljava/nio/channels/FileLock;

    .line 20
    :cond_8
    invoke-direct {p0}, Lcn/fly/tools/utils/FileLocker;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 21
    monitor-exit p0

    return v1

    .line 22
    :cond_9
    :goto_3
    :try_start_a
    invoke-direct {p0}, Lcn/fly/tools/utils/FileLocker;->a()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 23
    monitor-exit p0

    return v1

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized prepareLockFile(Ljava/lang/String;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcn/fly/tools/utils/FileLocker;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    .line 13
    .line 14
    :try_start_2
    new-instance v0, Ljava/io/RandomAccessFile;

    .line 15
    .line 16
    const-string v2, "002Ddjfg"

    .line 17
    .line 18
    invoke-static {v2}, Lcn/fly/commons/o;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcn/fly/tools/utils/FileLocker;->a:Ljava/io/RandomAccessFile;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcn/fly/tools/utils/FileLocker;->c:Ljava/nio/channels/FileChannel;

    .line 32
    .line 33
    iput-boolean v1, p0, Lcn/fly/tools/utils/FileLocker;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    const/4 p1, 0x1

    .line 37
    return p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_3
    invoke-direct {p0}, Lcn/fly/tools/utils/FileLocker;->a()V

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return v1

    .line 51
    :catchall_1
    move-exception p1

    .line 52
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public declared-synchronized release()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcn/fly/tools/utils/FileLocker;->d:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcn/fly/tools/utils/FileLocker;->a:Ljava/io/RandomAccessFile;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcn/fly/tools/utils/FileLocker;->c:Ljava/nio/channels/FileChannel;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcn/fly/tools/utils/FileLocker;->b:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    :try_start_1
    invoke-virtual {p0}, Lcn/fly/tools/utils/FileLocker;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    :try_start_2
    invoke-direct {p0}, Lcn/fly/tools/utils/FileLocker;->a()V

    .line 25
    .line 26
    .line 27
    iput-boolean v0, p0, Lcn/fly/tools/utils/FileLocker;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    :try_start_3
    invoke-direct {p0}, Lcn/fly/tools/utils/FileLocker;->a()V

    .line 33
    .line 34
    .line 35
    iput-boolean v0, p0, Lcn/fly/tools/utils/FileLocker;->d:Z

    .line 36
    .line 37
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 38
    :catchall_1
    move-exception v0

    .line 39
    monitor-exit p0

    .line 40
    throw v0
.end method

.method public declared-synchronized setLockFile(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcn/fly/tools/utils/FileLocker;->prepareLockFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method

.method public declared-synchronized unlock()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcn/fly/tools/utils/FileLocker;->b:Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    .line 11
    .line 12
    :goto_0
    :try_start_2
    iput-object v1, p0, Lcn/fly/tools/utils/FileLocker;->b:Ljava/nio/channels/FileLock;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    :try_start_3
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2, v0}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :goto_1
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :catchall_1
    move-exception v0

    .line 27
    :try_start_4
    iput-object v1, p0, Lcn/fly/tools/utils/FileLocker;->b:Ljava/nio/channels/FileLock;

    .line 28
    .line 29
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 30
    :catchall_2
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
.end method
