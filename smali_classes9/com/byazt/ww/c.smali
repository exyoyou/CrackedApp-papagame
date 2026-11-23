.class public Lcom/byazt/ww/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xb9,
        0x14
    }
.end annotation


# static fields
.field public static final c:I

.field public static final tt:Lcom/byazt/he/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/he/c$c<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public static final uj:Lcom/byazt/he/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/he/c$c<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static final ve:Lcom/byazt/he/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/he/c$c<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput v0, Lcom/byazt/ww/c;->c:I

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/ww/c$1;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/byazt/ww/c$1;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/byazt/ww/c;->tt:Lcom/byazt/he/c$c;

    .line 17
    .line 18
    new-instance v0, Lcom/byazt/ww/c$2;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/byazt/ww/c$2;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/byazt/ww/c;->ve:Lcom/byazt/he/c$c;

    .line 24
    .line 25
    new-instance v0, Lcom/byazt/ww/c$3;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/byazt/ww/c$3;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/byazt/ww/c;->uj:Lcom/byazt/he/c$c;

    .line 31
    .line 32
    return-void
.end method

.method public static c()Landroid/os/Handler;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ww/c;->uj:Lcom/byazt/he/c$c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/byazt/he/c$c;->ve([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/byazt/ww/c;->uj()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/ww/c;->ve()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic tt()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/ww/c;->c:I

    .line 2
    .line 3
    return v0
.end method

.method private static uj()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ww/c;->ve:Lcom/byazt/he/c$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/he/c$c;->ve([Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    return-object v0
.end method

.method private static ve()Ljava/util/concurrent/Executor;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ww/c;->tt:Lcom/byazt/he/c$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/he/c$c;->ve([Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    return-object v0
.end method
