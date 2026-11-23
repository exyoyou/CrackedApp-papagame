.class public Lcom/byazt/yr/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x970,
        0x14
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/yr/c;

.field public static tt:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/yr/c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Lcom/byazt/gqp/t$c;)Lcom/byazt/gqp/t;
    .locals 1

    .line 9
    new-instance v0, Lcom/byazt/xn/ve;

    invoke-direct {v0, p0}, Lcom/byazt/xn/ve;-><init>(Lcom/byazt/gqp/t$c;)V

    return-object v0
.end method

.method public static c()Lcom/byazt/yr/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/yr/c;->c:Lcom/byazt/yr/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/yr/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/yr/c;->c:Lcom/byazt/yr/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/yr/c;

    invoke-direct {v1}, Lcom/byazt/yr/c;-><init>()V

    sput-object v1, Lcom/byazt/yr/c;->c:Lcom/byazt/yr/c;

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
    sget-object v0, Lcom/byazt/yr/c;->c:Lcom/byazt/yr/c;

    return-object v0
.end method

.method public static tt(Lcom/byazt/gqp/t$c;)Lcom/byazt/gqp/t;
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/gu/a;

    invoke-direct {v0, p0}, Lcom/byazt/gu/a;-><init>(Lcom/byazt/gqp/t$c;)V

    return-object v0
.end method


# virtual methods
.method public c(Z)V
    .locals 2

    const-string v0, "set useOkHttp:"

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetClientAdapter"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/byazt/yr/c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public tt()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/yr/c;->tt:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
