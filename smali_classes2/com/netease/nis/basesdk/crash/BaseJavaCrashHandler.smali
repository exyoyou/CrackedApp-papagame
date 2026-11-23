.class public abstract Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private e:Lcom/netease/nis/basesdk/crash/CrashStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "https://crash.163.com/uploadCrashLogInfo.do"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "https://crash.163.com/client/api/uploadStartUpInfo.do"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->b:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->c:Z

    .line 14
    .line 15
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/basesdk/crash/CrashReportRunnable;
    .locals 3

    .line 20
    new-instance v0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;

    invoke-virtual {p0, p1}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->buildCrashInfo(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a:Ljava/lang/String;

    new-instance v2, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler$b;

    invoke-direct {v2, p0, p2}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler$b;-><init>(Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;-><init>(Ljava/util/Map;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    return-object v0
.end method

.method static synthetic a(Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;)Lcom/netease/nis/basesdk/crash/CrashStore;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->e:Lcom/netease/nis/basesdk/crash/CrashStore;

    return-object p0
.end method

.method private a()V
    .locals 11

    const-string v0, "check and report crash info"

    .line 2
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->e:Lcom/netease/nis/basesdk/crash/CrashStore;

    invoke-virtual {v0}, Lcom/netease/nis/basesdk/crash/CrashStore;->loadJava()[Ljava/io/File;

    move-result-object v0

    .line 4
    array-length v1, v0

    if-lez v1, :cond_0

    .line 5
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0xa

    invoke-direct {v8, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v9

    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v10}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x5

    const-wide/16 v5, 0x5

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 7
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 8
    :try_start_0
    iget-object v5, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->e:Lcom/netease/nis/basesdk/crash/CrashStore;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/nis/basesdk/crash/CrashStore;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/basesdk/crash/CrashReportRunnable;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v4, "BaseJavaCrashHandler"

    const-string v5, "logInfo encode error"

    .line 9
    invoke-static {v4, v5}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 13
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->e:Lcom/netease/nis/basesdk/crash/CrashStore;

    invoke-virtual {v0, p1}, Lcom/netease/nis/basesdk/crash/CrashStore;->parse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {p0, v0, p1}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/nis/basesdk/crash/CrashReportRunnable;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 16
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0xbb8

    .line 17
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const-string p1, "quick upload isInterrupted"

    .line 19
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 10
    iget-object p1, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->e:Lcom/netease/nis/basesdk/crash/CrashStore;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/nis/basesdk/crash/CrashStore;->store(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "BaseJavaCrashHandler"

    const-string p2, "logInfo encode error"

    .line 12
    invoke-static {p1, p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public allowStartUpload(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method protected abstract buildCrashInfo(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract buildStartInfo()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 6
    .line 7
    :try_start_0
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "JavaCrashHandler setDefaultUncaughtExceptionHandler failed"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "BaseJavaCrashHandler"

    .line 34
    .line 35
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-static {}, Lcom/netease/nis/basesdk/crash/CrashStore;->getInstance()Lcom/netease/nis/basesdk/crash/CrashStore;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->e:Lcom/netease/nis/basesdk/crash/CrashStore;

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/netease/nis/basesdk/crash/CrashStore;->initialize(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->buildStartInfo()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    iget-boolean p1, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->c:Z

    .line 54
    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    new-instance p1, Ljava/lang/Thread;

    .line 58
    .line 59
    new-instance v0, Lcom/netease/nis/basesdk/crash/StartReportRunnable;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->buildStartInfo()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->b:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v3, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler$a;

    .line 68
    .line 69
    invoke-direct {v3, p0}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler$a;-><init>(Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {v0, v1, v2, v3}, Lcom/netease/nis/basesdk/crash/StartReportRunnable;-><init>(Ljava/util/Map;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 79
    .line 80
    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method protected interceptHandleException(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setStartUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setUploadUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public testCrash()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v1, "test java exception"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->interceptHandleException(Ljava/lang/Throwable;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "JavaCrashHandler handleException failed"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "BaseJavaCrashHandler"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/BaseJavaCrashHandler;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 58
    .line 59
    .line 60
    const/16 p1, 0xa

    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
.end method
