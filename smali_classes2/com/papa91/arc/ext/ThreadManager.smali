.class public Lcom/papa91/arc/ext/ThreadManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;
    }
.end annotation


# static fields
.field private static final THREAD_COUNT:I = 0x4

.field private static final THREAD_LOG:I = 0x2

.field private static final THREAD_MAIN:I = 0x1

.field private static final THREAD_UI:I = 0x0

.field private static final THREAD_WRITE:I = 0x3

.field private static final handlers:[Landroid/os/Handler;

.field private static final loopers:[Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Landroid/os/Looper;

    .line 3
    .line 4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    new-instance v2, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;

    .line 12
    .line 13
    const-string v4, "Main"

    .line 14
    .line 15
    invoke-direct {v2, v4}, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v4, 0x1

    .line 26
    aput-object v2, v1, v4

    .line 27
    .line 28
    new-instance v2, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;

    .line 29
    .line 30
    const-string v5, "Log"

    .line 31
    .line 32
    invoke-direct {v2, v5}, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v5, 0x2

    .line 43
    aput-object v2, v1, v5

    .line 44
    .line 45
    new-instance v2, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;

    .line 46
    .line 47
    const-string v6, "Write"

    .line 48
    .line 49
    invoke-direct {v2, v6}, Lcom/papa91/arc/ext/ThreadManager$HandlerThreadEx;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/4 v6, 0x3

    .line 60
    aput-object v2, v1, v6

    .line 61
    .line 62
    new-array v0, v0, [Landroid/os/Handler;

    .line 63
    .line 64
    new-instance v2, Landroid/os/Handler;

    .line 65
    .line 66
    aget-object v7, v1, v3

    .line 67
    .line 68
    invoke-direct {v2, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 69
    .line 70
    .line 71
    aput-object v2, v0, v3

    .line 72
    .line 73
    new-instance v2, Landroid/os/Handler;

    .line 74
    .line 75
    aget-object v3, v1, v4

    .line 76
    .line 77
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 78
    .line 79
    .line 80
    aput-object v2, v0, v4

    .line 81
    .line 82
    new-instance v2, Landroid/os/Handler;

    .line 83
    .line 84
    aget-object v3, v1, v5

    .line 85
    .line 86
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    .line 88
    .line 89
    aput-object v2, v0, v5

    .line 90
    .line 91
    new-instance v2, Landroid/os/Handler;

    .line 92
    .line 93
    aget-object v3, v1, v6

    .line 94
    .line 95
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    .line 97
    .line 98
    aput-object v2, v0, v6

    .line 99
    .line 100
    sput-object v1, Lcom/papa91/arc/ext/ThreadManager;->loopers:[Landroid/os/Looper;

    .line 101
    .line 102
    sput-object v0, Lcom/papa91/arc/ext/ThreadManager;->handlers:[Landroid/os/Handler;

    .line 103
    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static exit()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lcom/papa91/arc/ext/ThreadManager;->loopers:[Landroid/os/Looper;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_1

    .line 15
    :catch_0
    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method private static getHandler(I)Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/ext/ThreadManager;->handlers:[Landroid/os/Handler;

    .line 2
    .line 3
    aget-object p0, v0, p0

    .line 4
    .line 5
    return-object p0
.end method

.method public static getHandlerLogThread()Landroid/os/Handler;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getHandler(I)Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public static getHandlerMainThread()Landroid/os/Handler;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getHandler(I)Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public static getHandlerUiThread()Landroid/os/Handler;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getHandler(I)Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public static getHandlerWriteThread()Landroid/os/Handler;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getHandler(I)Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method private static getLooper(I)Landroid/os/Looper;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/ext/ThreadManager;->loopers:[Landroid/os/Looper;

    .line 2
    .line 3
    aget-object p0, v0, p0

    .line 4
    .line 5
    return-object p0
.end method

.method public static getLooperLogThread()Landroid/os/Looper;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getLooper(I)Landroid/os/Looper;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public static getLooperMainThread()Landroid/os/Looper;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getLooper(I)Landroid/os/Looper;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public static getLooperUiThread()Landroid/os/Looper;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getLooper(I)Landroid/os/Looper;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public static getLooperWriteThread()Landroid/os/Looper;
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->getLooper(I)Landroid/os/Looper;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public static isInLogThread()Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->isInThread(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public static isInMainThread()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->isInThread(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method private static isInThread(I)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/papa91/arc/ext/ThreadManager;->loopers:[Landroid/os/Looper;

    .line 6
    .line 7
    aget-object p0, v1, p0

    .line 8
    .line 9
    if-ne v0, p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static isInUiThread()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public static isInWriteThread()Z
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->isInThread(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method private static run(ILjava/lang/Runnable;Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/papa91/arc/ext/ThreadManager;->loopers:[Landroid/os/Looper;

    .line 2
    .line 3
    const-string v1, "Bad implementation"

    .line 4
    .line 5
    const-string v2, "WF-LOG"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string p1, "loopers"

    .line 12
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v2, v1, p0}, Lcom/papa91/arc/ext/Log$LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    aget-object v3, v0, p0

    .line 21
    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    new-instance p1, Ljava/lang/NullPointerException;

    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, "loopers["

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 p0, 0x5d

    .line 40
    .line 41
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v2, v1, p1}, Lcom/papa91/arc/ext/Log$LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    aget-object v0, v0, p0

    .line 60
    .line 61
    if-ne v1, v0, :cond_3

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    sget-object p2, Lcom/papa91/arc/ext/ThreadManager;->handlers:[Landroid/os/Handler;

    .line 71
    .line 72
    aget-object p0, p2, p0

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    :goto_1
    return-void
.end method

.method public static runOnLogThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/ext/ThreadManager;->run(ILjava/lang/Runnable;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p0

    .line 8
    const-string v0, "WF-LOG"

    .line 9
    .line 10
    const-string v1, "Bad implementation"

    .line 11
    .line 12
    invoke-static {v0, v1, p0}, Lcom/papa91/arc/ext/Log$LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/ext/ThreadManager;->run(ILjava/lang/Runnable;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p0, v0}, Lcom/papa91/arc/ext/ThreadManager;->run(ILjava/lang/Runnable;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static runOnWriteThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, v1}, Lcom/papa91/arc/ext/ThreadManager;->run(ILjava/lang/Runnable;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
