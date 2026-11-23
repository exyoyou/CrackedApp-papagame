.class public Lcom/byazt/ty/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ty/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d8,
        0x14
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/h/c;

.field public final c:Ljava/io/InputStream;

.field public da:Lcom/byazt/h/c;

.field public i:Lcom/byazt/h/c;

.field public m:I

.field public final n:Ljava/lang/Object;

.field public final nu:Ljava/lang/Runnable;

.field public sl:Lcom/byazt/h/c;

.field public sp:Lcom/byazt/h/c;

.field public volatile t:Z

.field public final tt:I

.field public volatile u:Z

.field public final uj:Ljava/lang/Object;

.field public final ve:I

.field public x:Lcom/byazt/h/c;

.field public volatile yp:Ljava/lang/Throwable;

.field public volatile z:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ty/c;->uj:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/ty/c;->n:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Lcom/byazt/ty/c$1;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/byazt/ty/c$1;-><init>(Lcom/byazt/ty/c;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/ty/c;->nu:Ljava/lang/Runnable;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/byazt/ty/c;->c:Ljava/io/InputStream;

    .line 26
    .line 27
    iput p2, p0, Lcom/byazt/ty/c;->tt:I

    .line 28
    .line 29
    if-gtz p3, :cond_0

    .line 30
    .line 31
    const/4 p3, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/16 p1, 0x40

    .line 34
    .line 35
    if-le p3, p1, :cond_1

    .line 36
    .line 37
    const/16 p3, 0x40

    .line 38
    .line 39
    :cond_1
    :goto_0
    iput p3, p0, Lcom/byazt/ty/c;->ve:I

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/byazt/ty/c;->ve()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ty/c;->yp:Ljava/lang/Throwable;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    instance-of v1, v0, Lcom/byazt/h/m;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 10
    .line 11
    const/16 v1, 0x42c

    .line 12
    .line 13
    const-string v2, "async reader closed!"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :cond_0
    const-string v1, "async_read"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/byazt/w/a;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    new-instance v0, Lcom/byazt/m/BaseException;

    .line 25
    .line 26
    const/16 v1, 0x42d

    .line 27
    .line 28
    const-string v2, "async reader terminated!"

    .line 29
    .line 30
    invoke-direct {v0, v1, v2}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method

.method public static synthetic c(Lcom/byazt/ty/c;)Lcom/byazt/h/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/h/m;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/byazt/ty/c;->uj()Lcom/byazt/h/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ty/c;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ty/c;->yp:Ljava/lang/Throwable;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ty/c;Lcom/byazt/h/c;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/ty/c;->ve(Lcom/byazt/h/c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ty/c;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/ty/c;->u:Z

    return p1
.end method

.method private n()Lcom/byazt/h/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ty/c;->sl:Lcom/byazt/h/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, v0, Lcom/byazt/h/c;->uj:Lcom/byazt/h/c;

    .line 7
    .line 8
    iput-object v2, p0, Lcom/byazt/ty/c;->sl:Lcom/byazt/h/c;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/byazt/h/c;->uj:Lcom/byazt/h/c;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/ty/c;->n:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/byazt/ty/c;->i:Lcom/byazt/h/c;

    .line 17
    .line 18
    if-nez v2, :cond_3

    .line 19
    .line 20
    :cond_1
    iget-boolean v2, p0, Lcom/byazt/ty/c;->u:Z

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/byazt/ty/c;->a()V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget-object v2, p0, Lcom/byazt/ty/c;->n:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/byazt/ty/c;->i:Lcom/byazt/h/c;

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    :cond_3
    iget-object v3, v2, Lcom/byazt/h/c;->uj:Lcom/byazt/h/c;

    .line 37
    .line 38
    iput-object v3, p0, Lcom/byazt/ty/c;->sl:Lcom/byazt/h/c;

    .line 39
    .line 40
    iput-object v1, p0, Lcom/byazt/ty/c;->da:Lcom/byazt/h/c;

    .line 41
    .line 42
    iput-object v1, p0, Lcom/byazt/ty/c;->i:Lcom/byazt/h/c;

    .line 43
    .line 44
    iput-object v1, v2, Lcom/byazt/h/c;->uj:Lcom/byazt/h/c;

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-object v2

    .line 48
    :catchall_0
    move-exception v1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw v1
.end method

.method public static synthetic tt(Lcom/byazt/ty/c;)Ljava/io/InputStream;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ty/c;->c:Ljava/io/InputStream;

    return-object p0
.end method

.method private tt(Lcom/byazt/h/c;)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/byazt/ty/c;->uj:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ty/c;->sp:Lcom/byazt/h/c;

    if-nez v1, :cond_0

    .line 12
    iput-object p1, p0, Lcom/byazt/ty/c;->sp:Lcom/byazt/h/c;

    iput-object p1, p0, Lcom/byazt/ty/c;->a:Lcom/byazt/h/c;

    .line 13
    iget-object p1, p0, Lcom/byazt/ty/c;->uj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 14
    :cond_0
    iput-object p1, v1, Lcom/byazt/h/c;->uj:Lcom/byazt/h/c;

    .line 15
    iput-object p1, p0, Lcom/byazt/ty/c;->sp:Lcom/byazt/h/c;

    .line 16
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private uj()Lcom/byazt/h/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/h/m;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ty/c;->x:Lcom/byazt/h/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/byazt/ty/c;->t:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    iget-object v2, v0, Lcom/byazt/h/c;->uj:Lcom/byazt/h/c;

    .line 11
    .line 12
    iput-object v2, p0, Lcom/byazt/ty/c;->x:Lcom/byazt/h/c;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/byazt/h/c;->uj:Lcom/byazt/h/c;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lcom/byazt/h/m;

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/byazt/h/m;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/byazt/ty/c;->uj:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-boolean v2, p0, Lcom/byazt/ty/c;->t:Z

    .line 29
    .line 30
    if-nez v2, :cond_5

    .line 31
    .line 32
    iget-object v2, p0, Lcom/byazt/ty/c;->a:Lcom/byazt/h/c;

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    iget v3, p0, Lcom/byazt/ty/c;->m:I

    .line 37
    .line 38
    iget v4, p0, Lcom/byazt/ty/c;->ve:I

    .line 39
    .line 40
    if-ge v3, v4, :cond_2

    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    iput v3, p0, Lcom/byazt/ty/c;->m:I

    .line 45
    .line 46
    new-instance v1, Lcom/byazt/h/c;

    .line 47
    .line 48
    iget v2, p0, Lcom/byazt/ty/c;->tt:I

    .line 49
    .line 50
    invoke-direct {v1, v2}, Lcom/byazt/h/c;-><init>(I)V

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-object v1

    .line 55
    :cond_2
    :goto_0
    if-nez v2, :cond_4

    .line 56
    .line 57
    iget-object v2, p0, Lcom/byazt/ty/c;->uj:Ljava/lang/Object;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 60
    .line 61
    .line 62
    iget-boolean v2, p0, Lcom/byazt/ty/c;->t:Z

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    iget-object v2, p0, Lcom/byazt/ty/c;->a:Lcom/byazt/h/c;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    new-instance v1, Lcom/byazt/h/m;

    .line 70
    .line 71
    const-string v2, ""

    .line 72
    .line 73
    invoke-direct {v1, v2}, Lcom/byazt/h/m;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw v1

    .line 77
    :cond_4
    iget-object v3, v2, Lcom/byazt/h/c;->uj:Lcom/byazt/h/c;

    .line 78
    .line 79
    iput-object v3, p0, Lcom/byazt/ty/c;->x:Lcom/byazt/h/c;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/byazt/ty/c;->sp:Lcom/byazt/h/c;

    .line 82
    .line 83
    iput-object v1, p0, Lcom/byazt/ty/c;->a:Lcom/byazt/h/c;

    .line 84
    .line 85
    iput-object v1, v2, Lcom/byazt/h/c;->uj:Lcom/byazt/h/c;

    .line 86
    .line 87
    monitor-exit v0

    .line 88
    return-object v2

    .line 89
    :cond_5
    new-instance v1, Lcom/byazt/h/m;

    .line 90
    .line 91
    const-string v2, ""

    .line 92
    .line 93
    invoke-direct {v1, v2}, Lcom/byazt/h/m;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :catchall_0
    move-exception v1

    .line 98
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw v1
.end method

.method public static synthetic ve(Lcom/byazt/ty/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ty/c;->n:Ljava/lang/Object;

    return-object p0
.end method

.method private ve()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/byazt/zz/ve;->nu()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/byazt/ty/c;->nu:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ty/c;->z:Ljava/util/concurrent/Future;

    return-void
.end method

.method private ve(Lcom/byazt/h/c;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/ty/c;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/byazt/ty/c;->da:Lcom/byazt/h/c;

    if-nez v1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/byazt/ty/c;->da:Lcom/byazt/h/c;

    iput-object p1, p0, Lcom/byazt/ty/c;->i:Lcom/byazt/h/c;

    .line 7
    iget-object p1, p0, Lcom/byazt/ty/c;->n:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, v1, Lcom/byazt/h/c;->uj:Lcom/byazt/h/c;

    .line 9
    iput-object p1, p0, Lcom/byazt/ty/c;->da:Lcom/byazt/h/c;

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public c()Lcom/byazt/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/byazt/ty/c;->n()Lcom/byazt/h/c;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/byazt/h/c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/ty/c;->tt(Lcom/byazt/h/c;)V

    return-void
.end method

.method public tt()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/ty/c;->uj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/byazt/ty/c;->t:Z

    .line 4
    iget-object v2, p0, Lcom/byazt/ty/c;->uj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    iget-object v0, p0, Lcom/byazt/ty/c;->z:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 7
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/byazt/ty/c;->z:Ljava/util/concurrent/Future;

    :cond_0
    return-void

    :catchall_1
    move-exception v1

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
