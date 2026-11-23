.class Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$b;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;


# direct methods
.method constructor <init>(Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$b;->b:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 7

    .line 1
    const-string v0, "An error occured while executing doInBackground()"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v1

    .line 10
    new-instance v2, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v2

    .line 16
    :catch_0
    invoke-static {}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->a()Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$e;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v2, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$d;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$b;->b:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;

    .line 23
    .line 24
    invoke-direct {v2, v3, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$d;-><init>(Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_1
    move-exception v1

    .line 37
    new-instance v2, Ljava/lang/RuntimeException;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw v2

    .line 47
    :catch_2
    move-exception v0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v2, v0}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    invoke-static {}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->a()Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$e;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v2, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$d;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$b;->b:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;

    .line 70
    .line 71
    const/4 v4, 0x1

    .line 72
    new-array v5, v4, [Ljava/lang/Object;

    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    aput-object v1, v5, v6

    .line 76
    .line 77
    invoke-direct {v2, v3, v5}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$d;-><init>(Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 85
    .line 86
    .line 87
    return-void
.end method
