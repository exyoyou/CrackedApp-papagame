.class public Lcom/cloudplay/messagesdk/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/a/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloudplay/messagesdk/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloudplay/messagesdk/a/a;->a:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/cloudplay/messagesdk/a/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
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

.method private static synthetic a(Ljava/lang/String;)V
    .locals 2

    .line 5
    const-class v0, Lcom/cloudplay/messagesdk/a/a;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/cloudplay/messagesdk/a/a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 4

    const-class v0, Lcom/cloudplay/messagesdk/a/a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/cloudplay/messagesdk/a/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    .line 2
    sget-object v1, Lcom/cloudplay/messagesdk/a/a;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/cloudplay/messagesdk/a/k;

    invoke-direct {v2, p0}, Lcom/cloudplay/messagesdk/a/k;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, p2, p3, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 3
    sget-object p3, Lcom/cloudplay/messagesdk/a/a;->a:Ljava/util/Map;

    new-instance v1, Lcom/cloudplay/messagesdk/a/a$a;

    invoke-direct {v1, p1, p2}, Lcom/cloudplay/messagesdk/a/a$a;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Future;)V

    invoke-interface {p3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lcom/cloudplay/messagesdk/a/a;->a:Ljava/util/Map;

    new-instance p3, Lcom/cloudplay/messagesdk/a/a$a;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v1}, Lcom/cloudplay/messagesdk/a/a$a;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Future;)V

    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-class v0, Lcom/cloudplay/messagesdk/a/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/cloudplay/messagesdk/a/a;->a:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/cloudplay/messagesdk/a/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    const/4 p0, 0x0

    .line 16
    return-object p0

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/a/a$a;->a()Ljava/util/concurrent/Future;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/a/a$a;->b()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit v0

    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0

    .line 35
    throw p0
.end method

.method public static synthetic c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloudplay/messagesdk/a/a;->a(Ljava/lang/String;)V

    return-void
.end method
