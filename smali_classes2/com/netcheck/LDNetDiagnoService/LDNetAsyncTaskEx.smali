.class public abstract Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$d;,
        Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$f;,
        Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$e;,
        Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:I = 0x3

.field private static final g:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$e;


# instance fields
.field private volatile a:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;

.field private final b:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$f<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$e;-><init>(Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$a;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->g:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$e;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;->PENDING:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->a:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;

    .line 7
    .line 8
    new-instance v0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$a;-><init>(Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->b:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$f;

    .line 14
    .line 15
    new-instance v1, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$b;

    .line 16
    .line 17
    invoke-direct {v1, p0, v0}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$b;-><init>(Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;Ljava/util/concurrent/Callable;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->c:Ljava/util/concurrent/FutureTask;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic a()Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$e;
    .locals 1

    .line 1
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->g:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$e;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method protected varargs abstract b([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->isCancelled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->f(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;->FINISHED:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->a:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;

    .line 14
    .line 15
    return-void
.end method

.method public final cancel(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->c:Ljava/util/concurrent/FutureTask;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected abstract d()Ljava/util/concurrent/ThreadPoolExecutor;
.end method

.method protected e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->a:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;

    .line 2
    .line 3
    sget-object v1, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;->PENDING:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;

    .line 4
    .line 5
    if-eq v0, v1, :cond_2

    .line 6
    .line 7
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$c;->a:[I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->a:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    aget v0, v0, v1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    const-string v0, "Cannot execute task: the task is already running."

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_2
    :goto_0
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;->RUNNING:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->a:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->g()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->b:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$f;

    .line 48
    .line 49
    iput-object p1, v0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$f;->b:[Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->d()Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->c:Ljava/util/concurrent/FutureTask;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 60
    .line 61
    .line 62
    return-object p0

    .line 63
    :cond_3
    const/4 p1, 0x0

    .line 64
    return-object p1
.end method

.method protected f(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected g()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getStatus()Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->a:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$Status;

    .line 2
    .line 3
    return-object v0
.end method

.method protected varargs h([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected final varargs i([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->g:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$e;

    .line 2
    .line 3
    new-instance v1, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$d;-><init>(Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;[Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x2

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final isCancelled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->c:Ljava/util/concurrent/FutureTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
