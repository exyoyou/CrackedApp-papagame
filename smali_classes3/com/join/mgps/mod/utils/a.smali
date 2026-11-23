.class public Lcom/join/mgps/mod/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/mod/utils/a$a;
    }
.end annotation


# static fields
.field private static b:Lcom/join/mgps/mod/utils/a;


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/join/mgps/mod/utils/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/mod/utils/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :cond_0
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/join/mgps/mod/utils/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public static a()Lcom/join/mgps/mod/utils/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/join/mgps/mod/utils/a;->b:Lcom/join/mgps/mod/utils/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/join/mgps/mod/utils/a;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lcom/join/mgps/mod/utils/a;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/join/mgps/mod/utils/a;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/join/mgps/mod/utils/a;->b:Lcom/join/mgps/mod/utils/a;

    .line 14
    .line 15
    monitor-exit v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lcom/join/mgps/mod/utils/a;->b:Lcom/join/mgps/mod/utils/a;

    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "t",
            "local"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/join/mgps/mod/utils/a$a;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/mod/utils/a$a;-><init>(Lcom/join/mgps/mod/utils/a;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/mod/utils/a;->a:Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
