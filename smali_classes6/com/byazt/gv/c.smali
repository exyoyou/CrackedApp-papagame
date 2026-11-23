.class public Lcom/byazt/gv/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf7,
        0x14
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/gv/ve;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile c:Lcom/byazt/gv/c;

.field public static final n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/byazt/gv/ve;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile tt:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static volatile uj:Ljava/util/concurrent/ScheduledExecutorService;

.field public static volatile ve:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/gv/c;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/byazt/gv/c;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/byazt/gv/n;->c()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/byazt/gv/c;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    .line 10
    invoke-static {}, Lcom/byazt/gv/n;->tt()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/byazt/gv/c;->ve:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    .line 16
    invoke-static {}, Lcom/byazt/gv/n;->ve()Ljava/util/concurrent/ScheduledExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/byazt/gv/c;->uj:Ljava/util/concurrent/ScheduledExecutorService;

    .line 21
    .line 22
    return-void
.end method

.method public static c()Lcom/byazt/gv/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/gv/c;->c:Lcom/byazt/gv/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/gv/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/gv/c;->c:Lcom/byazt/gv/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/gv/c;

    invoke-direct {v1}, Lcom/byazt/gv/c;-><init>()V

    sput-object v1, Lcom/byazt/gv/c;->c:Lcom/byazt/gv/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/gv/c;->c:Lcom/byazt/gv/c;

    return-object v0
.end method


# virtual methods
.method public c(Lcom/byazt/gv/ve;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 7
    sget-object v0, Lcom/byazt/gv/c;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/byazt/gv/c;->tt:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "param is not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
