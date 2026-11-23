.class public Lcom/haima/hmcp/utils/CacheUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/CacheUtil$Listener;,
        Lcom/haima/hmcp/utils/CacheUtil$Entity;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CacheUtil"

.field private static final mCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/haima/hmcp/utils/CacheUtil$Entity;",
            ">;"
        }
    .end annotation
.end field

.field private static final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;


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
    sput-object v0, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    .line 7
    .line 8
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/haima/hmcp/utils/CacheUtil;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

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

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/CacheUtil;->lambda$put$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/CacheUtil;->lambda$put$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/CacheUtil;->lambda$put$2(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const-class v0, Lcom/haima/hmcp/utils/CacheUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->getValue()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-class v0, Lcom/haima/hmcp/utils/CacheUtil;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {p0}, Lcom/haima/hmcp/utils/CacheUtil;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static synthetic lambda$put$0(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "remove key:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;->EXPIRED:Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;

    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/CacheUtil;->remove(Ljava/lang/String;Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static synthetic lambda$put$1(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "remove key:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;->EXPIRED:Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;

    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/CacheUtil;->remove(Ljava/lang/String;Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static synthetic lambda$put$2(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "remove key:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;->EXPIRED:Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;

    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/CacheUtil;->remove(Ljava/lang/String;Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-class v0, Lcom/haima/hmcp/utils/CacheUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 2
    invoke-static {p0, p1, v1, v2}, Lcom/haima/hmcp/utils/CacheUtil;->put(Ljava/lang/String;Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 4

    const-class v0, Lcom/haima/hmcp/utils/CacheUtil;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",expire:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;->CANCELED:Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;

    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/CacheUtil;->remove(Ljava/lang/String;Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    .line 6
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/haima/hmcp/utils/c;

    invoke-direct {v2, p0}, Lcom/haima/hmcp/utils/c;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, p2, p3, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 7
    sget-object p3, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    new-instance v1, Lcom/haima/hmcp/utils/CacheUtil$Entity;

    invoke-direct {v1, p1, p2}, Lcom/haima/hmcp/utils/CacheUtil$Entity;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Future;)V

    invoke-interface {p3, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p2, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    new-instance p3, Lcom/haima/hmcp/utils/CacheUtil$Entity;

    const/4 v1, 0x0

    invoke-direct {p3, p1, v1}, Lcom/haima/hmcp/utils/CacheUtil$Entity;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Future;)V

    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;JLcom/haima/hmcp/utils/CacheUtil$Listener;)V
    .locals 4

    const-class v0, Lcom/haima/hmcp/utils/CacheUtil;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",expire:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;->CANCELED:Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;

    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/CacheUtil;->remove(Ljava/lang/String;Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    .line 21
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/haima/hmcp/utils/b;

    invoke-direct {v2, p0}, Lcom/haima/hmcp/utils/b;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, p2, p3, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 22
    new-instance p3, Lcom/haima/hmcp/utils/CacheUtil$Entity;

    invoke-direct {p3, p1, p2}, Lcom/haima/hmcp/utils/CacheUtil$Entity;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Future;)V

    .line 23
    invoke-static {p3, p4}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->access$002(Lcom/haima/hmcp/utils/CacheUtil$Entity;Lcom/haima/hmcp/utils/CacheUtil$Listener;)Lcom/haima/hmcp/utils/CacheUtil$Listener;

    .line 24
    sget-object p1, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    invoke-interface {p1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_0
    sget-object p2, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    new-instance p3, Lcom/haima/hmcp/utils/CacheUtil$Entity;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4}, Lcom/haima/hmcp/utils/CacheUtil$Entity;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Future;)V

    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/String;Lcom/haima/hmcp/utils/CacheUtil$Listener;)V
    .locals 4

    const-class v0, Lcom/haima/hmcp/utils/CacheUtil;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",expire:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;->CANCELED:Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;

    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/CacheUtil;->remove(Ljava/lang/String;Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    .line 12
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/haima/hmcp/utils/a;

    invoke-direct {v2, p0}, Lcom/haima/hmcp/utils/a;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, p2, p3, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    .line 13
    new-instance p3, Lcom/haima/hmcp/utils/CacheUtil$Entity;

    invoke-direct {p3, p1, p2}, Lcom/haima/hmcp/utils/CacheUtil$Entity;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Future;)V

    .line 14
    invoke-static {p3, p5}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->access$002(Lcom/haima/hmcp/utils/CacheUtil$Entity;Lcom/haima/hmcp/utils/CacheUtil$Listener;)Lcom/haima/hmcp/utils/CacheUtil$Listener;

    .line 15
    invoke-static {p3, p4}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->access$102(Lcom/haima/hmcp/utils/CacheUtil$Entity;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    sget-object p1, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    invoke-interface {p1, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_0
    sget-object p2, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    new-instance p3, Lcom/haima/hmcp/utils/CacheUtil$Entity;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4}, Lcom/haima/hmcp/utils/CacheUtil$Entity;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Future;)V

    invoke-interface {p2, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const-class v0, Lcom/haima/hmcp/utils/CacheUtil;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haima/hmcp/utils/CacheUtil$Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 5
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 6
    invoke-static {v1}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->access$000(Lcom/haima/hmcp/utils/CacheUtil$Entity;)Lcom/haima/hmcp/utils/CacheUtil$Listener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {v1}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->access$000(Lcom/haima/hmcp/utils/CacheUtil$Entity;)Lcom/haima/hmcp/utils/CacheUtil$Listener;

    move-result-object v2

    invoke-virtual {v1}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;->CANCELED:Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;

    invoke-interface {v2, p0, v3, v4}, Lcom/haima/hmcp/utils/CacheUtil$Listener;->onCacheRemove(Ljava/lang/String;Ljava/lang/Object;Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;)V

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->getValue()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized remove(Ljava/lang/String;Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;)Ljava/lang/Object;
    .locals 4

    const-class v0, Lcom/haima/hmcp/utils/CacheUtil;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haima/hmcp/utils/CacheUtil$Entity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 11
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 13
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 14
    invoke-static {v1}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->access$000(Lcom/haima/hmcp/utils/CacheUtil$Entity;)Lcom/haima/hmcp/utils/CacheUtil$Listener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 15
    invoke-static {v1}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->access$000(Lcom/haima/hmcp/utils/CacheUtil$Entity;)Lcom/haima/hmcp/utils/CacheUtil$Listener;

    move-result-object v2

    invoke-virtual {v1}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p0, v3, p1}, Lcom/haima/hmcp/utils/CacheUtil$Listener;->onCacheRemove(Ljava/lang/String;Ljava/lang/Object;Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;)V

    .line 16
    :cond_1
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->getValue()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized removeByTag(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-class v0, Lcom/haima/hmcp/utils/CacheUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v3, "key:"

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/util/Map$Entry;

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    check-cast v3, Ljava/lang/String;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Lcom/haima/hmcp/utils/CacheUtil$Entity;

    .line 61
    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-nez v4, :cond_0

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/haima/hmcp/utils/CacheUtil$Entity;->getTag()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    sget-object v2, Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;->CANCELED:Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;

    .line 79
    .line 80
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/CacheUtil;->remove(Ljava/lang/String;Lcom/haima/hmcp/utils/CacheUtil$Listener$Status;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v0

    .line 88
    throw p0
.end method

.method public static declared-synchronized size()I
    .locals 2

    .line 1
    const-class v0, Lcom/haima/hmcp/utils/CacheUtil;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/haima/hmcp/utils/CacheUtil;->mCaches:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    return v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    .line 14
    throw v1
.end method
