.class public Lcom/papa91/arc/ext/ToastManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final lastMonitor:Ljava/lang/Object;

.field private static volatile lastToast:Landroid/widget/Toast;

.field private static final lastUserMonitor:Ljava/lang/Object;

.field private static volatile lastUserToast:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/Toast;",
            ">;"
        }
    .end annotation
.end field

.field private static source:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/arc/ext/ToastManager;->lastMonitor:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/papa91/arc/ext/ToastManager;->lastUserMonitor:Ljava/lang/Object;

    .line 14
    .line 15
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

.method public static synthetic a(Landroid/widget/Toast;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->lambda$show$0(Landroid/widget/Toast;)V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa91/arc/ext/ToastManager;->source:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public static cancel(Landroid/widget/Toast;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/papa91/arc/ext/ToastManager$2;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/papa91/arc/ext/ToastManager$2;-><init>(Landroid/widget/Toast;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static fixToast(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 8

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    .line 2
    .line 3
    const-string v1, "mTN"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    array-length v3, v2

    .line 26
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-ge v4, v3, :cond_3

    .line 28
    .line 29
    aget-object v5, v2, v4

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    const-string v7, "mShow"

    .line 36
    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-nez v7, :cond_1

    .line 42
    .line 43
    const-string v7, "mHide"

    .line 44
    .line 45
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const-string v7, "mHandler"

    .line 53
    .line 54
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_2

    .line 59
    .line 60
    invoke-virtual {v5, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    instance-of v7, v6, Landroid/os/Handler;

    .line 68
    .line 69
    if-eqz v7, :cond_2

    .line 70
    .line 71
    check-cast v6, Landroid/os/Handler;

    .line 72
    .line 73
    invoke-static {v6}, Lcom/papa91/arc/ext/Tools$HandlerWrapper;->wrap(Landroid/os/Handler;)Landroid/os/Handler;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_1
    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    instance-of v7, v6, Ljava/lang/Runnable;

    .line 89
    .line 90
    if-eqz v7, :cond_2

    .line 91
    .line 92
    check-cast v6, Ljava/lang/Runnable;

    .line 93
    .line 94
    invoke-static {v6}, Lcom/papa91/arc/ext/Tools$RunnableWrapper;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .line 100
    .line 101
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    invoke-static {v0}, Lcom/papa91/arc/ext/Log;->badImplementation(Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    :cond_3
    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sput-object p0, Lcom/papa91/arc/ext/ToastManager;->source:Landroid/content/Context;

    .line 6
    .line 7
    return-void
.end method

.method private static synthetic lambda$show$0(Landroid/widget/Toast;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->fixToast(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public static show(Landroid/widget/Toast;)V
    .locals 5

    .line 6
    sget-object v0, Lcom/papa91/arc/ext/ToastManager;->lastUserMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lcom/papa91/arc/ext/ToastManager;->lastUserToast:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast;

    .line 9
    :goto_0
    sput-object v2, Lcom/papa91/arc/ext/ToastManager;->lastUserToast:Ljava/lang/ref/WeakReference;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    new-instance v3, Lcom/papa91/arc/ext/a;

    invoke-direct {v3, p0}, Lcom/papa91/arc/ext/a;-><init>(Landroid/widget/Toast;)V

    .line 12
    monitor-enter v0

    .line 13
    :try_start_1
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v4, Lcom/papa91/arc/ext/ToastManager;->lastUserToast:Ljava/lang/ref/WeakReference;

    .line 14
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    sget-object p0, Lcom/papa91/arc/ext/ToastManager;->lastMonitor:Ljava/lang/Object;

    monitor-enter p0

    .line 16
    :try_start_2
    sget-object v0, Lcom/papa91/arc/ext/ToastManager;->lastToast:Landroid/widget/Toast;

    .line 17
    sput-object v2, Lcom/papa91/arc/ext/ToastManager;->lastToast:Landroid/widget/Toast;

    .line 18
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->cancel(Landroid/widget/Toast;)V

    .line 20
    invoke-static {v1}, Lcom/papa91/arc/ext/ToastManager;->cancel(Landroid/widget/Toast;)V

    .line 21
    invoke-static {}, Lcom/papa91/arc/ext/ThreadManager;->getHandlerUiThread()Landroid/os/Handler;

    move-result-object p0

    .line 22
    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    .line 23
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception p0

    .line 24
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    .line 25
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public static show(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static show(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/papa91/arc/ext/ToastManager;->source:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-static {p0}, Lcom/papa91/arc/ext/ToastManager;->show(Landroid/widget/Toast;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/papa91/arc/ext/ThreadManager;->getHandlerUiThread()Landroid/os/Handler;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/papa91/arc/ext/ToastManager$1;

    invoke-direct {v1, p0, p1}, Lcom/papa91/arc/ext/ToastManager$1;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
