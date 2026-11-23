.class public Lcom/beizi/fusion/tool/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/tool/z$a;
    }
.end annotation


# static fields
.field private static a:Lcom/beizi/fusion/tool/z;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized a()Lcom/beizi/fusion/tool/z;
    .locals 3

    const-class v0, Lcom/beizi/fusion/tool/z;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/beizi/fusion/tool/z;->a:Lcom/beizi/fusion/tool/z;

    if-nez v1, :cond_0

    .line 2
    const-class v1, Lcom/beizi/fusion/tool/z;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v2, Lcom/beizi/fusion/tool/z;

    invoke-direct {v2}, Lcom/beizi/fusion/tool/z;-><init>()V

    sput-object v2, Lcom/beizi/fusion/tool/z;->a:Lcom/beizi/fusion/tool/z;

    .line 4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 5
    :cond_0
    :goto_0
    sget-object v1, Lcom/beizi/fusion/tool/z;->a:Lcom/beizi/fusion/tool/z;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/tool/z;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "userAgent"

    .line 7
    invoke-static {p1, v0}, Lcom/beizi/fusion/tool/as;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/tool/z;->b:Ljava/lang/String;

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/z;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/tool/z;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/beizi/fusion/tool/z;->b:Ljava/lang/String;

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/beizi/fusion/tool/z;->b:Ljava/lang/String;

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/tool/z;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/beizi/fusion/tool/z$a;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {v1, p1, v2}, Lcom/beizi/fusion/tool/z$a;-><init>(Landroid/content/Context;Lcom/beizi/fusion/tool/z$1;)V

    .line 18
    .line 19
    .line 20
    const-wide/16 v2, 0x3a98

    .line 21
    .line 22
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 23
    .line 24
    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 25
    .line 26
    .line 27
    return-void
.end method
